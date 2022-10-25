Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $consentpolicycodes = http://terminology.hl7.org/CodeSystem/consentpolicycodes
Alias: $consentaction = http://terminology.hl7.org/CodeSystem/consentaction
// Alias: $security-role-type = http://hl7.org/fhir/CodeSystem/security-role-type

Instance: jennifer-ma-rollup
InstanceOf: Consent
Description: "Example rollup of all Jennifer Smith consent records from Massachuesettes delivered in a single file."  
Usage: #example
* meta.versionId = "1"
* meta.source = "node-on-fhir.mitre.org#mehi-consent-engine"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent-Base-1"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $v3-ActCode#IDSCL "information disclosure"
* patient = Reference(Patient/jennifer-smith) "SMITH, JENNIFER"
* dateTime = "2021-09-02"
* organization = Reference(Organization/org-together-health) "Together Health"
* policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2021-01-01"
* provision.provision[=].actor.role.text = "Event Witness"
* provision.provision[=].actor.role = http://hl7.org/fhir/ValuetSet/security-role-type#EVTWIT "Event Witness"
* provision.provision[=].actor.reference = Reference(RelatedPerson/related-person-jane-smith)
* provision.provision[=].action.text = "Access"
* provision.provision[=].action = $consentaction#access "Access"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2021-09-02"
* provision.provision[=].actor[0].role.text = "Event Witness"
* provision.provision[=].actor[=].role = http://hl7.org/fhir/ValuetSet/security-role-type#EVTWIT "Event Witness"
* provision.provision[=].actor[=].reference = Reference(Pracitioner/practitioner-alice-yin)
* provision.provision[=].actor[+].role.text = "Validator"
* provision.provision[=].actor[=].role = http://hl7.org/fhir/ValuetSet/security-role-type#VALID "Validator"
* provision.provision[=].actor[=].reference = Reference(Pracitioner/practitioner-alice-yin)
* provision.provision[=].action[0].text = "Collect"
* provision.provision[=].action[=] = $consentaction#collect "Collect"
* provision.provision[=].action[+].text = "Access"
* provision.provision[=].action[=] = $consentaction#access "Access"
* provision.provision[=].action[+].text = "Access and Correct"
* provision.provision[=].action[=] = $consentaction#correct "Access and Correct"
* id = "Jennifer-MA-Rollup"