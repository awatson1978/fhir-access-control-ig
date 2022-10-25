Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $consentpolicycodes = http://terminology.hl7.org/CodeSystem/consentpolicycodes
Alias: $security-role-type = http://hl7.org/fhir/ValueSet/security-role-type
Alias: $consentaction = http://terminology.hl7.org/CodeSystem/consentaction
Alias: $contract-signer-type-codes = http://terminology.hl7.org/CodeSystem/contractsignertypecodes

Instance: johnsmith-consent-org-pillbox
InstanceOf: Consent
Description: "Consent to access data for Pillbox app"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-05T00:00:00.0000+00:00"
* meta.source = "node-on-fhir.mitre.org#mehi-consent-engine"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent-Base-1"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $v3-ActCode#IDSCL "information disclosure"
* patient = Reference(Patient/patient-john-smith) "SMITH, JOHN"
* dateTime = "2021-09-05"
* organization = Reference(Organization/org-pillbox) "PillBox"
* policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"
* provision.type = #permit
* provision.period.start = "2021-01-01"
* provision.actor.role.text = "Event Witness"
* provision.actor.role = $contract-signer-type-codes#EVTWIT "Event Witness"
* provision.actor.reference.reference = "Organization/org-pillbox"
* provision.action.text = "Access"
* provision.action = $consentaction#access "Access"
