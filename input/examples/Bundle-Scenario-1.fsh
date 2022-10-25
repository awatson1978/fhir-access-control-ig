// Alias: $consentscope = http://terminology.hl7.org/CodeSystem/consentscope
// Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
// Alias: $consentpolicycodes = http://terminology.hl7.org/CodeSystem/consentpolicycodes
// Alias: $security-role-type = http://hl7.org/fhir/ValueSet/security-role-type
// Alias: $consentaction = http://terminology.hl7.org/CodeSystem/consentaction
// Alias: $sct = http://snomed.info/sct
// Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm
// Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
// Alias: $doc-typecodes = http://hl7.org/fhir/CodeSystem/doc-typecodes

// Instance: Bundle-Scenario-1
// InstanceOf: Bundle
// Description: "Scenario 1 - Interstate Pediatric Continuity of Care"
// Usage: #example
// // * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><p><b>Interstate Continuity of Care</b></p></div>"
// // * text.status = #generated
// * type = #searchset
// * total = 24
// * entry[0].fullUrl = "Composition/5kNfFPZMNrWuF6rcn"
// * entry[=].resource = Inline-Instance-for-Bundle-Scenario-1
// * entry[+].fullUrl = "Consent/related-person-john-smith"
// * entry[=].resource = related-person-john-smith
// * entry[+].fullUrl = "Consent/jennifersmith-al-1"
// * entry[=].resource = jennifersmith-al-1
// * entry[+].fullUrl = "Consent/jennifersmith-ma-2"
// * entry[=].resource = jennifersmith-ma-2
// * entry[+].fullUrl = "Consent/jennifersmith-ma-1"
// * entry[=].resource = jennifersmith-ma-1
// * entry[+].fullUrl = "Device/org-together-health"
// * entry[=].resource = org-together-health
// * entry[+].fullUrl = "Medication/estrodiol-contraceptive"
// * entry[=].resource = estrodiol-contraceptive
// * entry[+].fullUrl = "Organization/org-together-health"
// * entry[=].resource = org-together-health
// * entry[+].fullUrl = "Patient/jennifer-smith"
// * entry[=].resource = jennifer-smith
// * entry[+].fullUrl = "Practitioner/practitioner-alice-yin"
// * entry[=].resource = practitioner-alice-yin
// * entry[+].fullUrl = "Practitioner/practitioner-bernard-shuman"
// * entry[=].resource = practitioner-bernard-shuman
// * entry[+].fullUrl = "RelatedPerson/related-person-john-smith"
// * entry[=].resource = related-person-john-smith
// * entry[+].fullUrl = "RelatedPerson/related-person-jane-smith"
// * entry[=].resource = related-person-jane-smith

// Instance: Inline-Instance-for-Bundle-Scenario-1
// InstanceOf: Composition
// Usage: #inline
// * status = #preliminary
// * date = "2021-10-30"
// * title = "Continuity of Care Document"
// * confidentiality = #0
// * type = $doc-typecodes#11503-0 "Medical records"
// * author = Reference(Practitioner/system) "System"
// * section[0].entry = Reference(Consent/related-person-john-smith)
// * section[+].entry = Reference(Consent/jennifersmith-al-1)
// * section[+].entry = Reference(Consent/jennifersmith-ma-2)
// * section[+].entry = Reference(Consent/jennifersmith-ma-1)
// * section[+].entry = Reference(Device/org-together-health)
// * section[+].entry = Reference(Medication/estrodiol)
// * section[+].entry = Reference(Organization/f8c6df10-5a45-3758-abe9-1d8065a35de8)
// * section[+].entry = Reference(Organization/205d4dac-abf1-32cf-b9e1-91f17f9c5fec)
// * section[+].entry = Reference(Organization/56dea1ac-0aaf-378c-9111-efecdd362186)
// * section[+].entry = Reference(Organization/07345d50-e2dd-3d7d-8cf4-bbb740989b68)
// * section[+].entry = Reference(Organization/8cf132db-f62f-3567-b7eb-48d4f9ad2d8a)
// * section[+].entry = Reference(Organization/dc1a3bcd-37ba-3b9d-9115-1ec6afb264e4)
// * section[+].entry = Reference(Organization/f8c6df10-5a45-3758-abe9-1d8065a35de8)
// * section[+].entry = Reference(Organization/205d4dac-abf1-32cf-b9e1-91f17f9c5fec)
// * section[+].entry = Reference(Organization/56dea1ac-0aaf-378c-9111-efecdd362186)
// * section[+].entry = Reference(Organization/07345d50-e2dd-3d7d-8cf4-bbb740989b68)
// * section[+].entry = Reference(Organization/8cf132db-f62f-3567-b7eb-48d4f9ad2d8a)
// * section[+].entry = Reference(Organization/dc1a3bcd-37ba-3b9d-9115-1ec6afb264e4)
// * section[+].entry = Reference(org-together-health)
// * section[+].entry = Reference(Patient/jennifer-smith)
// * section[+].entry = Reference(Practitioner/practitioner-alice-yin)
// * section[+].entry = Reference(Practitioner/practitioner-bernard-shuman)
// * section[+].entry = Reference(related-person-john-smith)
// * section[+].entry = Reference(RelatedPerson/related-person-jane-smith)

// // Instance: efGZkrsFgaHYLssXx
// // InstanceOf: Consent
// // Usage: #inline
// // * meta.versionId = "1"
// // * meta.lastUpdated = "2021-07-01"
// // * meta.source = "node-on-fhir.mitre.org#mehi-consent-engine"
// // * meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent-Base-1"
// // * status = #active
// // * scope = $consentscope#patient-privacy "Privacy Consent"
// // * category = $v3-ActCode#IDSCL "information disclosure"
// // * patient = Reference(Patient/patient-john-smith) "SMITH, JOHN"
// // * dateTime = "2021-06-15"
// // * organization = Reference(Organization/org-plentyrx) "PlentyRx"
// // * policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"
// // * provision.type = #permit
// // * provision.period.start = "2021-01-01"
// // * provision.actor.role.text = "Event Witness"
// // * provision.actor.role = $security-role-type#EVTWIT "Event Witness"
// // * provision.actor.reference = Reference(Organization/plentyrx)
// // * provision.action.text = "Access"
// // * provision.action = $consentaction#access "Access"

// // Instance: xREJDnPo3LGm2x2Sr
// // InstanceOf: Consent
// // Usage: #inline
// // * meta.versionId = "1"
// // * meta.lastUpdated = "2017-04-17"
// // * meta.source = "node-on-fhir.mitre.org#mehi-consent-engine"
// // * meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent-Base-1"
// // * status = #active
// // * scope = $consentscope#patient-privacy "Privacy Consent"
// // * category = $v3-ActCode#IDSCL "information disclosure"
// // * patient = Reference(Patient/jennifer-smith) "SMITH, JENNIFER"
// // * dateTime = "2017-04-17"
// // * organization = Reference(org-together-health) "Together Health"
// // * policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"
// // * provision.type = #permit
// // * provision.period.start = "2017-04-17"
// // * provision.actor[0].role.text = "Primary Author"
// // * provision.actor[=].role = $security-role-type#EVTWIT "Event Witness"
// // * provision.actor[=].reference = Reference(Pracitioner/practitioner-bernard-shuman) "SHUMAN, BERNARD"
// // * provision.actor[+].role.text = "Event Witness"
// // * provision.actor[=].role = $security-role-type#EVTWIT "Event Witness"
// // * provision.actor[=].reference = Reference(RelatedPerson/related-person-jane-smith) "SMITH, JANE"
// // * provision.action[0].text = "Collect"
// // * provision.action[=] = $consentaction#collect "Collect"
// // * provision.action[+].text = "Access"
// // * provision.action[=] = $consentaction#access "Access"
// // * provision.action[+].text = "Access and Correct"
// // * provision.action[=] = $consentaction#correct "Access and Correct"

// // Instance: X5ohCFRw5SCzXA5jh
// // InstanceOf: Consent
// // Usage: #inline
// // * meta.versionId = "1"
// // * meta.lastUpdated = "2021-09-01"
// // * meta.source = "node-on-fhir.mitre.org#mehi-consent-engine"
// // * meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent-Base-1"
// // * status = #active
// // * scope = $consentscope#patient-privacy "Privacy Consent"
// // * category = $v3-ActCode#IDSCL "information disclosure"
// // * patient = Reference(Patient/jennifer-smith) "SMITH, JENNIFER"
// // * dateTime = "2021-09-02"
// // * organization = Reference(org-together-health) "Together Health"
// // * policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"
// // * provision.type = #permit
// // * provision.period.start = "2021-01-01"
// // * provision.actor.role.text = "Event Witness"
// // * provision.actor.role = $security-role-type#EVTWIT "Event Witness"
// // * provision.actor.reference = Reference(RelatedPerson/related-person-jane-smith)
// // * provision.action.text = "Access"
// // * provision.action = $consentaction#access "Access"

// // Instance: Dq87ah6GMdyZQ5b7R
// // InstanceOf: Consent
// // Usage: #inline
// // * meta.versionId = "1"
// // * meta.lastUpdated = "2021-09-01"
// // * meta.source = "node-on-fhir.mitre.org#mehi-consent-engine"
// // * meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent-Base-1"
// // * status = #active
// // * scope = $consentscope#patient-privacy "Privacy Consent"
// // * category = $v3-ActCode#IDSCL "information disclosure"
// // * patient = Reference(Patient/jennifer-smith) "SMITH, JENNIFER"
// // * dateTime = "2021-09-01"
// // * organization = Reference(org-together-health) "Together Health"
// // * policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"
// // * provision.type = #permit
// // * provision.period.start = "2021-09-02"
// // * provision.actor[0].role.text = "Event Witness"
// // * provision.actor[=].role = $security-role-type#EVTWIT "Event Witness"
// // * provision.actor[=].reference = Reference(Pracitioner/practitioner-alice-yin)
// // * provision.actor[+].role.text = "Validator"
// // * provision.actor[=].role = $security-role-type#VALID "Validator"
// // * provision.actor[=].reference = Reference(Pracitioner/practitioner-alice-yin)
// // * provision.action[0].text = "Collect"
// // * provision.action[=] = $consentaction#collect "Collect"
// // * provision.action[+].text = "Access"
// // * provision.action[=] = $consentaction#access "Access"
// // * provision.action[+].text = "Access and Correct"
// // * provision.action[=] = $consentaction#correct "Access and Correct"

// // Instance: nhQcWW3byNHSE4vKt
// // InstanceOf: Device
// // Usage: #inline
// // * active = true

// // Instance: MzSEf8e5LMtzkvMrH
// // InstanceOf: Medication
// // Usage: #inline
// // * status = #active
// // * form = $sct#385055001 "Tablet dose form (qualifier value)"
// // * ingredient.itemCodeableConcept = $rxnorm#24395 "Estradiol valerate"
// // * ingredient.strength.numerator = 2 'mg'
// // * ingredient.strength.denominator = 1 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#TAB

// // Instance: org-together-health
// // InstanceOf: Organization
// // Usage: #inline
// // * meta.versionId = "1"
// // * meta.lastUpdated = "2021-09-13"
// // * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
// // * active = true
// // * name = "Together Health"
// // * address.text = "132th St, Underland Park, KS 66223"
// // * address.line = "132th Street,"
// // * address.city = "Underland Park"
// // * address.state = "KS"
// // * address.postalCode = "66223"
// // * id = "7Ypyf73BqEFRhwRPe"

// // Instance: BkQHzrgZnczrCp78R
// // InstanceOf: Patient
// // Usage: #inline
// // * meta.versionId = "1"
// // * meta.lastUpdated = "2020-09-13T12:21:34.589+00:00"
// // * meta.source = "#mehi-consent-engine-reference-implementation"
// // * meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
// // * extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
// // * extension[=].extension[0].url = "ombCategory"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
// // * extension[=].extension[+].url = "ombCategory"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
// // * extension[=].extension[+].url = "ombCategory"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 "Asian"
// // * extension[=].extension[+].url = "detailed"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2036-2 "Filipino"
// // * extension[=].extension[+].url = "text"
// // * extension[=].extension[=].valueString = "Mixed"
// // * extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
// // * extension[=].extension[0].url = "ombCategory"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
// // * extension[=].extension[+].url = "detailed"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2184-0 "Dominican"
// // * extension[=].extension[+].url = "detailed"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
// // * extension[=].extension[+].url = "text"
// // * extension[=].extension[=].valueString = "Hispanic or Latino"
// // * extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
// // * extension[=].valueCode = #M
// // * identifier.use = #usual
// // * identifier.type = $v2-0203#MR "Medical Record Number"
// // * identifier.type.text = "Medical Record Number"
// // * identifier.system = "http://hospital.smarthealthit.org"
// // * identifier.value = "1042501"
// // * active = true
// // * name.family = "SMITH"
// // * name.given = "JENNIFER"
// // * telecom.system = #phone
// // * telecom.value = "555-555-5555"
// // * telecom.use = #home
// // * gender = #female
// // * birthDate = "2005-02-20"
// // * address[0].line = "49 Meadow St"
// // * address[=].city = "Birmingham"
// // * address[=].state = "AL"
// // * address[=].postalCode = "35242"
// // * address[=].country = "US"
// // * address[=].period.start = "2005-02-20"
// // * address[=].period.end = "2020-06-01"
// // * address[+].line = "183 Harbor View St"
// // * address[=].city = "Boston"
// // * address[=].state = "MA"
// // * address[=].postalCode = "02101"
// // * address[=].country = "US"
// // * address[=].period.start = "2020-06-15"
// // * generalPractitioner[0] = Reference(Practitioner/practitioner-alice-yin) "Dr. Alice Yin"
// // * generalPractitioner[+] = Reference(Practitioner/practitioner-bernard-shuman) "Dr. Bernard Shuman"
// // * managingOrganization = Reference(org-together-health) "Together Health"

// // Instance: Ax4YsThDZu9wwxvi6
// // InstanceOf: Practitioner
// // Usage: #inline
// // * active = true
// // * name.family = "YIN"
// // * name.given = "ALICE"
// // * telecom.system = #phone
// // * telecom.value = "555-555-8818"
// // * telecom.use = #home
// // * gender = #female
// // * birthDate = "1972-09-04"
// // * address.line = "1235 Bay Ave."
// // * address.city = "Boston"
// // * address.state = "MA"
// // * address.postalCode = "02101"
// // * address.country = "US"

// // Instance: LHBMAgK3G8KQ2rhL6
// // InstanceOf: Practitioner
// // Usage: #inline
// // * active = true
// // * name.family = "SHUMAN"
// // * name.given = "BERNARD"
// // * telecom.system = #phone
// // * telecom.value = "555-555-1120"
// // * telecom.use = #home
// // * gender = #male
// // * birthDate = "1965-03-24"
// // * address.line = "1120 Maple St"
// // * address.city = "Birmingham"
// // * address.state = "AL"
// // * address.postalCode = "35242"
// // * address.country = "US"

// // Instance: related-person-john-smith
// // InstanceOf: RelatedPerson
// // Usage: #inline
// // * extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
// // * extension[=].extension.url = "ombCategory"
// // * extension[=].extension.valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
// // * extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
// // * extension[=].extension[0].url = "ombCategory"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
// // * extension[=].extension[+].url = "detailed"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2184-0 "Dominican"
// // * extension[=].extension[+].url = "detailed"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
// // * extension[=].extension[+].url = "text"
// // * extension[=].extension[=].valueString = "Hispanic or Latino"
// // * extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
// // * extension[=].valueCode = #M
// // * active = true
// // * name.family = "SMITH"
// // * name.given = "JOHN"
// // * telecom.system = #phone
// // * telecom.value = "555-555-5553"
// // * telecom.use = #home
// // * gender = #male
// // * birthDate = "1980-04-14"
// // * address[0].line = "49 Meadow St"
// // * address[=].city = "Birmingham"
// // * address[=].state = "AL"
// // * address[=].postalCode = "35242"
// // * address[=].country = "US"
// // * address[=].period.start = "2005-02-20"
// // * address[=].period.end = "2020-06-01"
// // * address[+].line = "183 Harbor View St"
// // * address[=].city = "Boston"
// // * address[=].state = "MA"
// // * address[=].postalCode = "02101"
// // * address[=].country = "US"
// // * address[=].period.start = "2020-06-15"
// // * patient = Reference(Patient/jennifer-smith) "Jennifer Smith"
// // * relationship.text = "father"
// // * relationship = relatedperson-relationshiptype#FTH "father"
// // * id = "9fnN6vuAkk9avmeFJ"

// // Instance: HpM82478smT7g8jDf
// // InstanceOf: RelatedPerson
// // Usage: #inline
// // * extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
// // * extension[=].extension[0].url = "ombCategory"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
// // * extension[=].extension[+].url = "ombCategory"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
// // * extension[=].extension[+].url = "ombCategory"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 "Asian"
// // * extension[=].extension[+].url = "detailed"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2036-2 "Filipino"
// // * extension[=].extension[+].url = "text"
// // * extension[=].extension[=].valueString = "Mixed"
// // * extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
// // * extension[=].extension[0].url = "ombCategory"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
// // * extension[=].extension[+].url = "detailed"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2184-0 "Dominican"
// // * extension[=].extension[+].url = "detailed"
// // * extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
// // * extension[=].extension[+].url = "text"
// // * extension[=].extension[=].valueString = "Hispanic or Latino"
// // * extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
// // * extension[=].valueCode = #M
// // * active = true
// // * name.family = "SMITH"
// // * name.given = "JANE"
// // * telecom.system = #phone
// // * telecom.value = "555-555-5554"
// // * telecom.use = #home
// // * gender = #female
// // * birthDate = "1981-01-10"
// // * address[0].line = "49 Meadow St"
// // * address[=].city = "Birmingham"
// // * address[=].state = "AL"
// // * address[=].postalCode = "35242"
// // * address[=].country = "US"
// // * address[=].period.start = "2005-02-20"
// // * address[=].period.end = "2020-06-01"
// // * address[+].line = "183 Harbor View St"
// // * address[=].city = "Boston"
// // * address[=].state = "MA"
// // * address[=].postalCode = "02101"
// // * address[=].country = "US"
// // * address[=].period.start = "2020-06-15"
// // * patient = Reference(Patient/jennifer-smith) "Jennifer Smith"
// // * relationship.text = "mother"
// // * relationship = relatedperson-relationshiptype#MTH "mother"