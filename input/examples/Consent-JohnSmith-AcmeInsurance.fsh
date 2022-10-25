Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $consentpolicycodes = http://terminology.hl7.org/CodeSystem/consentpolicycodes
Alias: $security-role-type = http://hl7.org/fhir/ValueSet/security-role-type
Alias: $consentaction = http://terminology.hl7.org/CodeSystem/consentaction
Alias: $contract-signer-type-codes = http://terminology.hl7.org/CodeSystem/contractsignertypecodes
Alias: $role-class = http://terminology.hl7.org/CodeSystem/v3-RoleClass

Instance: johnsmith-consent-org-acme-insurance
InstanceOf: Consent
Description: "Consent for AMCE Insurance to access hospital data."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-07-01T00:00:00.0000+00:00"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent-Base-1"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $v3-ActCode#IDSCL "information disclosure"
* patient = Reference(Patient/patient-john-smith) "SMITH, JOHN"
* dateTime = "2013-02-01"
* organization = Reference(Organization/plentyrx) "Plenty RX"
* policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"

* provision.type = #permit
* provision.period.start = "2021-01-01"
* provision.actor.role.text = "affiliate"
* provision.actor.role = $role-class#AFFL "affiliate"
* provision.actor.reference = Reference(Organization/org-acme-insurance) "ACME Insurance"
* provision.action.text = "Access"
* provision.action = $consentaction#access "Access"
