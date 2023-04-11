Instance: canAccess
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://h7.org/fhir/OperationDefinition/example"
* version = "B"
* name = "User Can Access"
* status = #draft
* kind = #operation
* date = "2015-08-04"
* publisher = "FAST Access Control"
* contact.name = "Abigail Watson"
* contact.telecom.system = #email
* contact.telecom.value = "awatson@mitre.org"
* description = "Determine if a user can access a particular record"
// * useContext.code = http://build.fhir.org/codesystem-usage-context-type#venue "Clinical Venue"
// * useContext.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
// * jurisdiction = urn:iso:std:iso:3166#GB "United Kingdom of Great Britain and Northern Ireland (the)"
* code = #canAccess
// * comment = "Only implemented for Labs and Medications so far"
* base = "OperationDefinition/Consent-canAccess"
* resource = #Consent
* system = false
* type = false
* instance = true
* parameter[0].name = #actor
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "GET /Consent/$canAccess?actor=RelatedPerson/jennifer-smith"
* parameter[=].type = #boolean

* overload[0].parameterName[0] = "actor"
* overload[=].parameterName[+] = "class"
