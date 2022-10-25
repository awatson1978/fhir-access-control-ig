Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $consentpolicycodes = http://terminology.hl7.org/CodeSystem/consentpolicycodes
Alias: $security-role-type = http://hl7.org/fhir/ValueSet/security-role-type
Alias: $consentaction = http://terminology.hl7.org/CodeSystem/consentaction
Alias: $contract-signer-type-codes = http://terminology.hl7.org/CodeSystem/contractsignertypecodes
Alias: $role-class = http://terminology.hl7.org/CodeSystem/v3-RoleClass
Alias: $participant-type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType  


Instance: johnsmith-consent-mass-community-insurance
InstanceOf: Consent
Description: "Consent for AMCE Insurance to share data with Mass."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2021-07-01T00:00:00.0000+00:00"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent-Base-1"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $v3-ActCode#IDSCL "information disclosure"
* patient = Reference(Patient/patient-john-smith) "SMITH, JOHN"
* dateTime = "2013-02-01"
* organization = Reference(Organization/org-acme-insurance) "ACME Insurance"
* policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"

* provision.type = #permit
* provision.period.start = "2021-01-01"
* provision.actor.role.text = "custodian"
* provision.actor.role = $participant-type#CST "custodian"
* provision.actor.reference = Reference(Organization/org-acme-insurance) "ACME Insurance"
* provision.action.text = "Access"
* provision.action = $consentaction#access "Access"

* provision.type = #permit
* provision.period.start = "2021-01-01"
* provision.actor.role.text = "healthcare provider"
* provision.actor.role = $role-class#PROV "healthcare provider"
* provision.actor.reference = Reference(Organization/org-mass-community-insurance) "Massachusetts Community Insurance"
* provision.action.text = "Access"
* provision.action = $consentaction#access "Access"
