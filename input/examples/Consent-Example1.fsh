Instance: example1
InstanceOf: Consent
Description: "Example 1"
Usage: #example
* status = #active
* patient = Reference(Patient/patient-john-smith) "SMITH, JOHN"
* dateTime = "2021-06-01"
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Patient Consent"
* category = http://terminology.hl7.org/CodeSystem/consentcategorycodes#64292-6 "Release of information consent"
* organization = Reference(Organization/org-mass-community-insurance) "Massachusetts Community Insurance"
* policyRule = http://mehi-ig.tranquildata.com/CodeSystem/CmsInteroperabilityPolicyCodes#CMS-9115-F.V "Health Information Exchange and Care Coordination Across Payers"
* provision.type = #permit
* provision.period.start = "2021-06-01"
* provision.period.end = "2022-06-01"
* provision.actor.role = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV "healthcare provider"
* provision.actor.reference = Reference(Organization/org-acme-insurance) "ACME Insurance"
* provision.action = http://terminology.hl7.org/CodeSystem/consentaction#access "Access"
* provision.action.text = "Access"