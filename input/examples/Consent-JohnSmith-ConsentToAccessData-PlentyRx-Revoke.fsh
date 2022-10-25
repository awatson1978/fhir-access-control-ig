Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $consentpolicycodes = http://terminology.hl7.org/CodeSystem/consentpolicycodes
Alias: $security-role-type = http://hl7.org/fhir/ValueSet/security-role-type
Alias: $consentaction = http://terminology.hl7.org/CodeSystem/consentaction
Alias: $contract-signer-type-codes = http://terminology.hl7.org/CodeSystem/contractsignertypecodes

Instance: johnsmith-consent-plentyrx-revoke
InstanceOf: Consent
Description: "Consent to access data for PlentyRx app after it was revoked."
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2021-09-01T00:00:00.0000+00:00"
* meta.source = "node-on-fhir.mitre.org#mehi-consent-engine"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent-Base-1"
* status = #inactive
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $v3-ActCode#IDSCL "information disclosure"
* patient = Reference(Patient/patient-john-smith) "SMITH, JOHN"
* dateTime = "2021-06-15"
* organization = Reference(Organization/org-plentyrx) "PlentyRx"
* policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"
* provision.type = #permit
* provision.period.start = "2021-01-01"
* provision.actor.role.text = "Event Witness"
* provision.actor.role = $contract-signer-type-codes#EVTWIT "Event Witness"
* provision.actor.reference.reference = "Organization/plentyrx"
* provision.action.text = "Access"
* provision.action = $consentaction#access "Access"
