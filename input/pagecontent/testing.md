
This implementation guide was originally conceived during the FAST National Directory connectathons, as an implementation solution to the 'restricted data' use case, also referred to as the Protected Women's Shelter usecase.  We set out to implement an access control solution based on the FHIR Consent resource, which was first demoed at the  CMS Connectathon in July 2022.  Afterwards, we set out to generalize the approach into a more solution that could model access control for multi-user systems in general.  

<!-- 
### Use cases 

**Scenario 1 - Anonymous Access**  
No patient data is published to client via HTTP nor websockets.  Only public, unrestricted records are sent to client.  

**Scenario 2 - Patient Self Access (Jane Doe)**   
Patient registers (Jane) and authenticates and receives an access token.  A single Patient record is available via HTTP.  If using FHIR-over-websockets or Subscription API, the user's own Patient record is sent to the client.  Upon logout, user session variables and subscriptions are cleared, and user is no longer able to access patient data (except for the public, unrestricted records).

**Scenario 3 - Patient Multi-User Access (Kathy Klepto)** 
A second patient registers (Kathy).  Kathy has access to Kathy’s own records, but not to Jane’s.  At the same time, Jane has access to Jane’s records, but not to Kathy’s.  HTTP access and websocket publications/subscriptions are updated accordingly; send the user's own data, but not sending anybody elses.  Upon logout, session variables are cleared, and no access is available.  

**Scenario 4 - General Practitioner Access**
General practitioners have access to patients assigned to them.  A clinician / social worker registers (Susan Social), who has access to her own records (self access), as well as both Jane and Kathy’s records.  Susan is listed as a general practitioner on both Jane and Kathy's Patient records.  Neither Kathy nor Jane have access to Susan’s records.  When Susan logs out, she no longer has access to any of records.  

**Scenario 5 - Back End Access**
Organizations can register a client via oauth data flows.  Using the registered client id and secret, an external app can present a Bearer token and operate an $export to synchronize databases.  


### Coat Check Analogy

Regarding the access of other people’s data, these usecases and associated tests are designed to test access control tokens.   The preferred analogy that is typically used, is that of a coat check.  Imagine the following scenario:  Person A checks in a thrift store coat and gets coat check ticket 13.  Person B checks in a nice Burberry coat and gets coat check ticket 18.  Person A then uses a pen and changes their ticket from a 13 to an 18; returns the modified ticket to coat check, and walks out with an expensive Burberry coat.  

What we're testing here, is a) that users have correct access to the appropriate records, per the specified Consent records; and b) that modifying access control tokens wont spill data from another account.   -->

### Functional Testing 

To properly test this, we must use a bank of negative tests, which send various malformed records to your server, testing that incorrect queries don't return the wrong data.  This is the Kathy Klepto problem... being a kelptomaniac, this user behaves contrary to terms and conditions and other expected behaviors, and attempts to send invalid credentials and/or access records that are not hers.  

To build up to this kind of testing, however, we need to begin with basic happy-path testing, and establish a baseline of expected functionality.  To do so, we express the scenarios as follows:

```sh
# Test script preamble / setup
PUT /Patient/patient13
PUT /Patient/patient18

# Authentication
Authenticate patient 13

# API Tests
GET /Patient?_id=patient13  #(should return TRUE)
GET /Patient?_id=patient18  #(should return FALSE)
```

Behind the scenes, implementors will need to know how to implement a database driven access-control-list.  The simple case is one patient one record, so the login ID scopes down to the appropriate records.  For instance:  

```sh
# Authenticate patient 13
GET /Patient                #(BAD, returns everything)
GET /Patient?_id=patient13  #(GOOD, should returns just patient record)
```

Note:  make sure that patient13 is logged in and has an active session, which requires an additional database lookup; and is more difficult than simply checking for a Bearer token.  But otherwise, .  

The above discribes the relatively simple case of a basic 1-record-to-1-person schema, which generally maps to an n-tree or file system layout.

Tthe challenge the FHIR ecosystem is currently facing is that implementors figure this much out on their own, but then stall when it comes time to implement dependent relations (children, elder care) or things like Power of Attorney.  Suddenly, what used to be a 1-to-1 relationship requires linked trees, graph databases, recursive parsing algorithms and similar algorithmic solutions.  Which is typically out of scope for an initial prototype, and gets punted untill the next round of funding


#### Identity & Logins  
In the case of Healthcare Agents who manage the care of a dependent, login credentials need to be derived from the available Consent records.  



## Certification Test Script (Draft)

```sh
# Test script preamble / setup
PUT /Patient/jennifer-smith
PUT /Patient/jane-doe
PUT /RelatedPerson/related-person-jane-smith
PUT /RelatedPerson/related-person-john-smith
PUT /RelatedPerson/stranger-001
PUT /Practitioner/alice-yin
PUT /Consent/jennifersmith-ma-1
PUT /Consent/jennifersmith-ma-2

# Authentication
Authenticate:  Patient/jennifer-smith

# API Tests
GET /Patient?_id=Patient/jennifer-smith  #(should return TRUE)
GET /Patient?_id=Patient/jane-doe  #(should return FALSE)
```

Behind the scenes, implementors will need to know how to implement a database driven access-control-list.  The simple case is one patient one record, so the login ID scopes down to the appropriate records.  For instance:  

```sh
# Authenticate: jennifer-smith
GET /Patient                                    #(LIMITED, should not be accessible; or only return jennifer-smith records)
GET /Patient?_id=Patient/jennifer-smith         #(GOOD, should returns just patient record)
GET /Patient?_id=Patient/jane-doe               #(BAD, should not return record)
GET /RelatedPerson?_id=Patient/jennifer-smith   #(GOOD, should return jane-smith record)
GET /RelatedPerson?_id=Patient/jane-doe         #(BAD, should not return record)
GET /RelatedPerson/jane-smith                   #(GOOD, should return record)
GET /RelatedPerson/stranger-001                 #(BAD, should not return record)

# Authenticate: jane-doe
GET /Patient                                    #(LIMITED, should not be accessible; or only return jane-doe records)
GET /Patient?_id=Patient/jennifer-smith         #(BAD, should not return record) 
GET /Patient?_id=Patient/jane-doe               #(GOOD, should returns just patient record)
GET /RelatedPerson?_id=Patient/jennifer-smith   #(BAD, should not return record)
GET /RelatedPerson?_id=Patient/jane-doe         #(GOOD, should return jane-smith record)
GET /RelatedPerson/jane-smith                   #(BAD, should not return record)
GET /RelatedPerson/stranger-001                 #(BAD, should not return record)

# Authenticate: alice-yin
GET /RelatedPerson                              #(GOOD, should return jane-doe and jennifer-smith records)
GET /Patient?_id=Patient/jennifer-smith         #(GOOD, should return record) 
GET /Patient?_id=Patient/jane-doe               #(GOOD, should return record) 

# Authenticate: jane-smith
GET /RelatedPerson                              #(LIMITED, should return jane-smith records)
GET /RelatedPerson/stranger-001                 #(BAD, should not return record) 
GET /Patient                                    #(LIMITED, should return jane-smith and jennifer-smith records)
GET /Patient?_id=Patient/jennifer-smith         #(GOOD, should return record) 
GET /Patient?_id=Patient/jane-smith             #(GOOD, should return record) 
GET /Patient?_id=Patient/jane-doe               #(BAD, should not return record) 

GET /Consent/$canAccess?actor=RelatedPerson/jennifer-smith
# return list of consents Jennifer Smith has access to, including all children (and husband)

GET /Consent/$canAccess?_id=Patient/jennifer-smith&actor=RelatedPerson/jennifer-smith
# if daughter's record returns, should be true
# if no records return, no records match, and cannot access

GET /Consent/$oauthScopes?actor=RelatedPerson/jennifer-smith
# ["AllergyIntolerance", "Condition", "CareTeam", "Immunization", "Medication", "MedicationStatement", "Patient", "Practitioner", "Observation", "Procedure", "RelatedPerson"]

GET /Consent/$oauthScopes?actor=RelatedPerson/jennifer-smith&class=Medication
# true

GET /Consent/$oauthScopes?actor=RelatedPerson/john-smith&class=Medication
# false
```

## References    
[FHIR Operations Infrastructure](https://www.hl7.org/fhir/operations.html)  