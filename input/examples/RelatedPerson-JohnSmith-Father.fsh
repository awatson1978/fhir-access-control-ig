Alias: $consent-exchange-relationships = http://hl7.org/fhir/CodeSystem/consent-exchange-relationships
Alias: $relatedperson-relationshiptype = http://hl7.org/fhir/CodeSystem/relatedperson-relationshiptype
Alias: $relationships = http://mehi-ig.tranquildata.com/ValueSet/relationships

Instance: related-person-john-smith
InstanceOf: RelatedPerson
Description: "John Smith - Parental relationship record."
Usage: #example
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><blockquote><p><b>US Core Race Extension</b></p><p><b>value</b>: <span title=\"{urn:oid:2.16.840.1.113883.6.238 2106-3}\">White</span></p></blockquote><blockquote><p><b>US Core Ethnicity Extension</b></p><p><b>value</b>: <span title=\"{urn:oid:2.16.840.1.113883.6.238 2135-2}\">Hispanic or Latino</span></p><p><b>value</b>: <span title=\"{urn:oid:2.16.840.1.113883.6.238 2184-0}\">Dominican</span></p><p><b>value</b>: <span title=\"{urn:oid:2.16.840.1.113883.6.238 2148-5}\">Mexican</span></p><p><b>value</b>: Hispanic or Latino</p></blockquote><p><b>US Core Birth Sex Extension</b>: M</p><p><b>active</b>: true</p><p><b>patient</b>: <a href=\"Patient-jennifer-smith.html\">Jennifer Smith. Generated Summary: Medical Record Number: 1042501 (USUAL); active; JENNIFER SMITH ; Phone: 555-555-5555; gender: female; birthDate: 2005-02-20</a></p><p><b>relationship</b>: <span title=\"Codes: {http://hl7.org/fhir/CodeSystem/relatedperson-relationshiptype FTH}\">father</span>, <span title=\"Codes: {http://hl7.org/fhir/CodeSystem/consent-exchange-relationships Parent}\">Parent</span></p><p><b>name</b>: JOHN SMITH </p><p><b>telecom</b>: ph: 555-555-5553(HOME)</p><p><b>gender</b>: male</p><p><b>birthDate</b>: 1980-04-14</p><p><b>address</b>: </p><ul><li>49 Meadow St Birmingham AL 35242 US </li><li>183 Harbor View St Boston MA 02101 US </li></ul></div>"
* text.status = #generated
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
* patient = Reference(Patient/jennifer-smith) "Jennifer Smith"
* relationship[0].text = "father"
* relationship[=] = $relatedperson-relationshiptype#FTH "father"
* relationship[+].text = "Parent"
* relationship[=] = $consent-exchange-relationships#Parent "Parent"
// * id = related-person-john-smith