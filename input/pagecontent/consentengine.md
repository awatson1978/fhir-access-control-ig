
Many first time implementors of guides that include a Consent resource find themselves encountering a common delimma:  they spend weeks or months implementing the Consent records per the FHIR specification, setting up API endpoints, loading example resources into a database, validating the API endpoints return the correct records... and then they hit a wall.  The wall is the following:  how do we connect these Consents records to our security infrastructure?  How do we scope user access to what's in the records?  Which then leads to questions like:  what data should be going into the Consent records to make them into computable consent?

When answering these questions, whether they be for a dedicated service or distributed app such as a blockchain wallet, implementors find themselves often asking how to implement operations on Consents... comparing consent records, rolling up multiple records into a single record, calculating consent differentials, converting to access control lists, creating dynamic OAuth scopes, and so forth.  

For lack of other nomenclature, this collection of functionality is sometimes referred to as a Consent Engine.  

Since Consent Engine functionality involves operations, it doesn't immediately translate to core HTTP API functionality.  Instead, the functionality must either be implemented via in-memory classes or objects, or via the [FHIR operation infrastructure](https://www.hl7.org/fhir/operations.html).  The details regarding how this is done is left to the implementor.  However, we can define a standard API which proxies these functions, as well as functional acceptance tests for how they should behave.  


## Operations Infrastructure:  Methods and Functions

We will now describe the basic methods and functions needed to implement the consent engine, an operations infrustructure API that maps to these functions, and a suite of functional tests suitable for certifying applications.  

#### Consent Rollup (aka Flattening)  
Consent records are conceptually based on allow/deny rules and filtering; insofar as the Consent resource specifies a base policy with inclusions/exlusions via deny/permit provisions.  Pragmatically speaking, Consents are likely to be collected in different locations at different times, and be based on different policies.  

For example, a patient consent might be written as a generic permission for all practitioners at a clinic to access patient records, with exclusions for a specific deny provision for a clinician who has been taken off a case.  Or a consent might be written as a generic deny policy, based on HIPAA privacy interpretations, with specific provisions for the clinicians on a patient care team.

As such, there is need for a "rollup" operation that takes multiple Consent records, and returns a parsed result that "flattens" them into a single object that can then be parsed into an acccess control list.  

```js
// Function
// y == op(x1, x2, x3)

// Desired Functionality
// Consent3 = parseToBundle( Consent1, Consent2 )
// Consent3 = parseToBundle( Consent3 )

let flattenedConsent = ConsentEngine.parse(consent1, consent2, consent3);
let fhirBundle = ConsentEngine.parseToBundle(consent1, consent2, consent3);
let fhirBundle = ConsentEngine.rollup(consent1, consent2, consent3);
```

```sh
# HTTP API
GET /Consent/$parseToBundle?patient=Patient/{patientId}
# returns all consent records belonging to a specific patient, rolled up into a single file

GET /Consent/$parseToBundle?consentor=RelatedPerson/{relatedPersonId}
# returns all consent records belonging to a specific related person, rolled up into a single file

GET /Consent/$parseToBundle?practitioner=Practitioner/{practitionerId}
# returns all consent records belonging to a specific practitioner, rolled up into a single file

GET /Consent/$parseToBundle?organization=Organization/{organizationId}
# returns all consent records belonging to a specific organization, rolled into a single file 
# may not be performant; may be advisable to add additional requirements
```

```sh
# TESTING EXAMPLES  
GET /Consent/?patient=Patient/jennifer-smith
# should return a Bundle of Consent records
# see Bundle/Jennifer-Consents-MA

GET /Consent/$rollup?patient=Patient/jennifer-smith
# should return a single Consent records that merges all records in the system
# see Consent/Jennifer-MA-Rollup
```

#### Idempotency  
Consent Engine functions should be idempotent, meaning that they will produce the same results from the same inputs; and a rollup operation performed on a bundle that's already rolledup should produce the same bundle (i.e. identity operator).  The goal is that different implementations and platforms should all derive the same results when calculating consent record rollups.  

```js
// Function
// op( op(x) ) == op(x)

// Desired Functionality
// digest( Consent1, Consent2 ) == Consent3
// digest( Consent3 ) == Consent3

// Object API
let consentRecord = ConsentEngine.digest(consentRecord);
let fhirBundle = ConsentEngine.digest(fhirBundle);
```

```sh
# HTTP API
PUT /Consent/{bundleId}/$digest
# input a Bundle which contains list of 1 or more Consent records
# returns a flattened Consent that has merged the records
```

```sh
# TESTING EXAMPLES  
PUT /Consent/Jennifer-Consents-MA/$digest 
# Jennifer-Consents-MA is a Bundle that contains two consent records from MA
# returns Jennifer-MA-Rollup (most implementations will use a system generated ID)

PUT /Consent/Jennifer-MA-Rollup/$digest 
# returns Jennifer-MA-Rollup
```

#### Rollup Comparison
Once rollup has been performed on a collection of Consent records, an operation is needed that can compare the rollup to previous rollups, or against a benchmark or policy requirement, or against an external rollup calculation.  The rollups from two different systems of the same Consent records should produce the same rollup.  

```js
// Function
// boolean == equals(Consent1, Consent2)

// Desired Functionality
// boolean = equals( Consent1, Consent2 )

// Object API
let isEqual = ConsentEngine.equals(Consent1, Consent2);
let isEqual = ConsentEngine.equals(Bundle1, Bundle2);
```

```sh
# HTTP API
POST /Consent/{consentId)/$equals 
# payload needs to be a Consent record
# note we are using a POST and not a PUT
# intent with $equals is to compare the incoming payload with the existing record
# and return true/false if they match
```
```sh
# TESTING EXAMPLES  
POST /Consent/Jennifer-Consents-MA/$equals 
# post the Jennifer-Consents-MA record as a payload, should return true
# post the jennifersmith-ma-2 record as a payload, should return false
```

#### Rollup Differentials  
A comparison operation then begs the presence of a differential operation, which can specify how and where two rollups differ.  Perhaps an employee was removed from a careteam between the first time Consent records were collected and provided, and a subsequent time.  Perhaps two states have different laws about how to manage parental access for minors.  

These differentials are particularly important for interstate transfer of data.  So, for instance, when transferring records from a state that requires 1 witness or cosignature to a state that requires 2, appropriate user interface can be provided seeking the additional cosignature.  Similarly, user interface might be provided that allows the removal of records indicating use of medications that are a controlled substane in the state or territory that is being entered.   


```js
// Function
// x2 == op(y, x1)

// Desired Functionality
// Consent3 = compare( Consent1, Consent2 )
// Consent3 = compare( Consent3 )

// Object API
let consentDifferential = ConsentEngine.diff(consent1, consent2);
let bundleDifferential = ConsentEngine.diff(bundle1, bundle2);
```

```sh
# HTTP API
POST /Consent/{consentId}/$diff
```

```sh
# TESTING EXAMPLES  
POST /Consent/Jennifer-Consents-MA/$diff 
# post the Jennifer-Consents-MA record as a payload, should return nil
# post the jennifersmith-ma-1 record as a payload, should return jennifersmith-ma-2
```

#### Access Control List Generation
Once a Consent rollup is performed, an access control list needs to be generated.  This is not necessarily a FHIR Bundle or other FHIR resource.  Rather, this needs to be expressed in the security model of the implementation system.

```js
// Object API
let accessControlList = ConsentEngine.toAcl(flattenedConsent);
let accessControlList = ConsentEngine.toAcl(fhirBundle);
```

```sh
# HTTP API
GET /Consent/$toAcl?patient=Patient/{patientId}
GET /Consent/$toAcl?organization=Organization/{organizationId}
GET /Consent/$toAcl?consentor=RelatedPerson/{relatedPersonId}
```

```sh
# TESTING EXAMPLES  
GET /Consent/$toAcl?patient=Patient/jennifer-smith
# return the access control list for jennifer-smith
# redirect to: GET /Consent/?patient=Patient/jennifer-smith
# once it returns flattened consent is returned, iterate over the provisions
# and generate an array of user ids of who can authenticate and access the record
# should return ["jennifer-smith", "jane-smith", "alice-yin]

```


#### Dynamic OAuth Scopes  
One common security model is that of SMART on FHIR applications.  In this case, the access control list will need to be implemented as dynamic OAuth scopes.  

```js
// Object API
let oauthScopeString = ConsentEngine.toOauthScopes(accessControlList);
let oauthScopeString = ConsentEngine.toOauthScopes(accessControlList);
```

```sh
# HTTP API
GET /Consent/$oauthScopes?patient=Patient/{patientId}
GET /Consent/$oauthScopes?organization=Organization/{organizationId}
GET /Consent/$oauthScopes?consentor=RelatedPerson/{relatedPersonId}
```

```sh
# TESTING EXAMPLES  

GET /Consent/$oauthScopes?patient=Patient/jennifer-smith
# return the oauth scopes approved by jennifer-smith
# redirect to: GET /Consent/?patient=Patient/jennifer-smith
# once it returns flattened consent is returned, iterate over the provisions
# and generate an array of consent content classes, which can be mapped to OAuth scopes

# Authenticated: jane-smith
# should return ["AllergyIntolerance", "Condition", "CareTeam", "Immunization", "Medication", "MedicationStatement", "Patient", "Practitioner", "Observation", "Procedure", "RelatedPerson"]

# Authenticated: john-smith
# should return ["AllergyIntolerance", "Condition", "CareTeam", "Immunization", "Patient", "Practitioner", "Observation", "Procedure", "RelatedPerson"]

# Authenticated: alice-yin
# should return ["AllergyIntolerance", "Condition", "CareTeam", "Immunization", "Medication", "MedicationStatement", "Patient", "Practitioner", "Observation", "Procedure", "RelatedPerson"]

# Authenticated: jane-doe
# should return []
```


#### Identity & Logins  
In the case of Healthcare Agents who manage the care of a dependent, login credentials need to be derived from the available Consent records.  


## References    
[FHIR Operations Infrastructure](https://www.hl7.org/fhir/operations.html)  