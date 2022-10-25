Instance: example2
InstanceOf: Consent
Description: "Example 2"
Usage: #example
* status = #active
* patient = Reference(Patient/patient-john-smith) "SMITH, JOHN"
* dateTime = "2021-12-15"
* policyRule = http://mehi-ig.tranquildata.com/CodeSystem/CmsInteroperabilityPolicyCodes#CMS-9115-F.V "Health Information Exchange and Care Coordination Across Payers"
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Patient Consent"
* category = http://terminology.hl7.org/CodeSystem/consentcategorycodes#64292-6 "Release of information consent"
* provision.type = #permit
* provision.period.start = "2005-02-20"
* provision.period.end = "2020-06-01"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2005-02-20"
* provision.provision[=].period.end = "2020-06-01"
* provision.provision[=].actor.role = http://hl7.org/fhir/CodeSystem/relatedperson-relationshiptype#WIFE "wife"
* provision.provision[=].actor.role.text = "wife"
* provision.provision[=].actor.reference = Reference(RelatedPerson/related-person-jane-smith-wife) "Jane Smith"
* provision.provision[=].action = http://terminology.hl7.org/CodeSystem/consentaction#access "Access"
* provision.provision[=].action.text = "Access"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2005-02-20"
* provision.provision[=].period.end = "2020-06-01"
* provision.provision[=].actor.role = http://hl7.org/fhir/CodeSystem/relatedperson-relationshiptype#DAU "daughter"
* provision.provision[=].actor.role.text = "daughter"
* provision.provision[=].actor.reference = Reference(RelatedPerson/related-person-jennifer-smith-daughter) "Jennifer Smith"
* provision.provision[=].action = http://terminology.hl7.org/CodeSystem/consentaction#access "Access"
* provision.provision[=].action.text = "Access"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2005-02-20"
* provision.provision[=].period.end = "2020-06-01"
* provision.provision[=].actor.role = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* provision.provision[=].actor.role.text = "Healthcare Provider"
* provision.provision[=].actor.reference = Reference(Organization/org-plentyrx) "Plenty RX"
* provision.provision[=].action = http://terminology.hl7.org/CodeSystem/consentaction#access "Access"
* provision.provision[=].action.text = "Access"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2005-02-20"
* provision.provision[=].period.end = "2020-06-01"
* provision.provision[=].actor.role.coding[0] = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* provision.provision[=].actor.role.coding[+] = http://dicom.nema.org/resources/ontology/DCM#110150 "Application"
* provision.provision[=].actor.role.text = "Healthcare Provider"
* provision.provision[=].actor.reference = Reference(Organization/org-together-health) "Together Health"
* provision.provision[=].action = http://terminology.hl7.org/CodeSystem/consentaction#access "Access"
* provision.provision[=].action.text = "Access"