Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Instance: patient-jennifer-smith
InstanceOf: Patient
Description: "Patient - Jennifer Smith - Patient demographics record."
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
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 "Asian"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2036-2 "Filipino"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Mixed"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2184-0 "Dominican"
* extension[=].extension[+].url = "detailed"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2148-5 "Mexican"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Hispanic or Latino"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[=].valueCode = #F
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "1042501"
* active = true
* name.family = "SMITH"
* name.given = "JENNIFER"
* telecom.system = #phone
* telecom.value = "555-555-5555"
* telecom.use = #home
* gender = #female
* birthDate = "2005-02-20"
* address[0].line = "49 Meadow St"
* address[=].city = "Birmingham"
* address[=].state = "AL"
* address[=].postalCode = "35242"
* address[=].country = "US"
* address[=].period.start = "2005-02-20"
* address[=].period.end = "2020-06-01"
* address[+].line = "183 Harbor View St"
* address[=].city = "Boston"
* address[=].state = "MA"
* address[=].postalCode = "02101"
* address[=].country = "US"
* address[=].period.start = "2020-06-15"
* generalPractitioner[0] = Reference(Practitioner/ractitioner-susan-social) "Susan Social"
* managingOrganization = Reference(Organization/stjames) "St. James"
* id = "patient-jennifer-smith"