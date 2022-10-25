
Instance: patient-john-smith
InstanceOf: ConsentExchangePatient
Description: "John Smith - Patient demographics record."
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[=].extension.url = "ombCategory"
* extension[=].extension.valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
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
* extension[=].valueCode = #M
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "2002501"
* active = true
* name.family = "SMITH"
* name.given = "JOHN"
* telecom.system = #phone
* telecom.value = "555-555-5553"
* telecom.use = #home
* gender = #male
* birthDate = "1980-04-14"
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
