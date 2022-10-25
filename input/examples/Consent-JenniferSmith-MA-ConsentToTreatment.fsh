Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $consentpolicycodes = http://terminology.hl7.org/CodeSystem/consentpolicycodes
Alias: $security-role-type = http://hl7.org/fhir/ValueSet/security-role-type
Alias: $consentaction = http://terminology.hl7.org/CodeSystem/consentaction
Alias: $contract-signer-type-codes = http://terminology.hl7.org/CodeSystem/contractsignertypecodes

Instance: jennifersmith-ma-1
InstanceOf: Consent
Description: "Consent record from Massachuesetts for treatment."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-01T00:00:00.0000+00:00"
* meta.source = "node-on-fhir.mitre.org#mehi-consent-engine"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent-Base-1"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $v3-ActCode#IDSCL "information disclosure"
* patient = Reference(Patient/jennifer-smith) "SMITH, JENNIFER"
* dateTime = "2021-09-01"
* organization = Reference(Organization/org-together-health) "Together Health"
* policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"
* provision.type = #permit
* provision.period.start = "2021-09-02"
* provision.actor[0].role.text = "Event Witness"
* provision.actor[=].role = $contract-signer-type-codes#EVTWIT "Event Witness"
* provision.actor[=].reference.reference = "Pracitioner/practitioner-alice-yin"
* provision.actor[+].role.text = "Validator"
* provision.actor[=].role = $contract-signer-type-codes#VALID "Validator"
* provision.actor[=].reference.reference = "Pracitioner/practitioner-alice-yin"
* provision.action[0].text = "Collect"
* provision.action[=] = $consentaction#collect "Collect"
* provision.action[+].text = "Access"
* provision.action[=] = $consentaction#access "Access"
* provision.action[+].text = "Access and Correct"
* provision.action[=] = $consentaction#correct "Access and Correct"
* id = "jennifersmith-ma-1"
