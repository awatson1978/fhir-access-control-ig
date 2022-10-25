Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Instance: jane-doe
InstanceOf: ConsentExchangePatient
Description: "Jane Doe patient not part of relationship model, used for checking security access."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-09-13T12:21:34.589+00:00"
* meta.source = "#mehi-consent-engine-reference-implementation"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
* extension[=].extension[+].url = "ombCategory"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = http://hl7.org/fhir/us/core/ValueSet/omb-ethnicity#2186-5 "Non Hispanic or Latino"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueString = "Non Hispanic or Latino"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[=].valueCode = #F
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "1042001"
* active = true
* name.family = "DOE"
* name.given = "JANE"
* telecom.system = #phone
* telecom.value = "747-555-7474"
* telecom.use = #home
* gender = #female
* birthDate = "2001-01-15"
* generalPractitioner[0] = Reference(Practitioner/practitioner-alice-yin) "Dr. Alice Yin"
* managingOrganization = Reference(Organization/org-together-health) "Together Health"
* id = "jane-doe"