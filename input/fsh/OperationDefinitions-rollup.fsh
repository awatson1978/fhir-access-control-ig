Instance: rollup
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://h7.org/fhir/OperationDefinition/example"
* version = "B"
* name = "Consent Rollup"
* status = #draft
* kind = #operation
* date = "2015-08-04"
* publisher = "FAST Access Control"
* contact.name = "Abigail Watson"
* contact.telecom.system = #email
* contact.telecom.value = "awatson@mitre.org"
* description = "Rollup multiple Consent records into a Bundle"
// * useContext.code = http://build.fhir.org/codesystem-usage-context-type#venue "Clinical Venue"
// * useContext.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
// * jurisdiction = urn:iso:std:iso:3166#GB "United Kingdom of Great Britain and Northern Ireland (the)"
* code = #rollup
// * comment = "Only implemented for Labs and Medications so far"
* base = "OperationDefinition/Consent-rollup"
* resource = #Consent
* system = false
* type = false
* instance = true
* parameter[0].name = #patient
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Usage:  GET /Consent/$rollup?patient=Patient/{patientId}"
* parameter[=].type = #Reference

* parameter[+].name = #consentor
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Usage:  GET /Consent/$rollup?consentor=RelatedPerson/{relatedPersonId}"
* parameter[=].type = #Reference

* parameter[+].name = #practitioner
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Usage:  GET /Consent/$rollup?practitioner=Practitioner/{practitionerId}"
* parameter[=].type = #Reference


* parameter[+].name = #organization
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Usage:  GET /Consent/$rollup?organization=Organization/{organizationId}"
* parameter[=].type = #Reference

// * parameter[+].name = #return
// * parameter[=].use = #out
// * parameter[=].min = 1
// * parameter[=].max = "1"
// * parameter[=].documentation = "The partially (or fully)-populated set of answers for the specified Questionnaire"
// * parameter[=].type = #QuestionnaireResponse

* overload[0].parameterName[0] = "patient"
* overload[=].parameterName[+] = "consentor"
* overload[=].parameterName[+] = "practitioner"
* overload[=].parameterName[+] = "organization"
// * overload[+].parameterName = "subject"
// * overload[=].comment = "local defaults to false when not passed as a parameter"