Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-RoleClass = http://terminology.hl7.org/CodeSystem/v3-RoleClass
Alias: $consentaction = http://terminology.hl7.org/CodeSystem/consentaction
Alias: $v3-Confidentiality = http://terminology.hl7.org/CodeSystem/v3-Confidentiality

Instance: ConsentClinicianOrg
InstanceOf: Consent
Usage: #example
* id = "ConsentClinicianOrg"
* meta.versionId = "1"
* meta.lastUpdated = "2022-09-19T00:02:41.128Z"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $v3-ActCode#IDSCL "information disclosure"
* dateTime = "2022-09-18T00:00:00.000Z"
* policy.uri = "https://docs.google.com/document/d/10Y-rEtVQiTWTy7tU-Slw5urAv5RVN38DwSGMVz84Phg/edit?usp=sharing"
* provision.type = #deny
* provision.provision.type = #permit
* provision.provision.actor.role = $v3-RoleClass#PROV "healthcare provider"
* provision.provision.actor.reference = Reference(CounselorRole1)
* provision.provision.action.coding[0] = $consentaction#access "Access"
* provision.provision.action.coding[+] = $consentaction#correct "Correct"
* provision.provision.securityLabel = $v3-Confidentiality#R "restricted"
* provision.provision.class = #Organization "Organization"