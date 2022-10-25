// Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
// Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
// Alias: $consentpolicycodes = http://terminology.hl7.org/CodeSystem/consentpolicycodes
// Alias: $security-role-type = http://hl7.org/fhir/ValueSet/security-role-type
// Alias: $consentaction = http://terminology.hl7.org/CodeSystem/consentaction
// Alias: $sct = http://snomed.info/sct
// Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm
// Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
// Alias: $doc-typecodes = http://hl7.org/fhir/CodeSystem/doc-typecodes

// Instance: Bundle-Scenario-4
// InstanceOf: Bundle
// Description: "Scenario 4 - Payor to Payor Data Exchange"
// Usage: #example
// // * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><p><b>Payor to Payor Data Exchange</b></p></div>"
// // * text.status = #generated
// * type = #searchset
// * total = 24
// * entry[0].fullUrl = "Composition/bundle-scenario-4"
// * entry[=].resource = Inline-Instance-for-Bundle-Scenario-4
// * entry[+].fullUrl = "Consent/johnsmith-consent-org-acme-insurance"
// * entry[=].resource = johnsmith-consent-org-acme-insurance
// * entry[+].fullUrl = "Consent/johnsmith-consent-mass-community-insurance"
// * entry[=].resource = johnsmith-consent-mass-community-insurance
// * entry[+].fullUrl = "Organization/org-together-health"
// * entry[=].resource = org-together-health
// * entry[+].fullUrl = "Organization/org-plentyrx"
// * entry[=].resource = org-plentyrx
// * entry[+].fullUrl = "Organization/org-pillbox"
// * entry[=].resource = org-pillbox
// * entry[+].fullUrl = "Organization/org-acme-insurance"
// * entry[=].resource = org-acme-insurance
// * entry[+].fullUrl = "Organization/org-mass-community-insurance"
// * entry[=].resource = org-mass-community-insurance
// * entry[+].fullUrl = "Patient/patient-john-smith"
// * entry[=].resource = patient-john-smith
// * entry[+].fullUrl = "RelatedPerson/related-person-jennifer-smith-daughter"
// * entry[=].resource = related-person-jennifer-smith-daughter
// * entry[+].fullUrl = "RelatedPerson/related-person-jane-smith-wife"
// * entry[=].resource = related-person-jane-smith-wife

// Instance: Inline-Instance-for-Bundle-Scenario-4
// InstanceOf: Composition
// Usage: #inline
// * status = #preliminary
// * date = "2021-10-30"
// * title = "Continuity of Care Document"
// * confidentiality = #0
// * type = $doc-typecodes#11503-0 "Medical records"
// * author = Reference(Practitioner/system) "System"
// * section[0].entry = Reference(Consent/johnsmith-consent-org-acme-insurance)
// * section[+].entry = Reference(Consent/johnsmith-consent-mass-community-insurance)
// * section[+].entry = Reference(Organization/org-together-health)
// * section[+].entry = Reference(Organization/org-plentyrx)
// * section[+].entry = Reference(Organization/org-pillbox)
// * section[+].entry = Reference(Organization/org-acme-insurance)
// * section[+].entry = Reference(Organization/org-mass-community-insurance)
// * section[+].entry = Reference(Patient/patient-john-smith)
// * section[+].entry = Reference(RelatedPerson/related-person-jennifer-smith-daughter)
// * section[+].entry = Reference(RelatedPerson/related-person-jane-smith-wife)
