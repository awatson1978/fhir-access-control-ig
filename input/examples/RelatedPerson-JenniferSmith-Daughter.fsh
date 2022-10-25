Instance: related-person-jennifer-smith-daughter
InstanceOf: ConsentExchangeRelatedPerson
Description: "Jennifer Smith - Daughter relationship record."

Usage: #example
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>active</b>: true</p><p><b>patient</b>: <a href=\"http://fhir.org/packages/us.nlm.vsac/Patient/john-smith/expansion\">Jennifer Smith</a></p><p><b>relationship</b>: <span title=\"Codes: {http://hl7.org/fhir/CodeSystem/relatedperson-relationshiptype DAU}\">daughter</span>, <span title=\"Codes: {http://hl7.org/fhir/CodeSystem/consent-exchange-relationships Dependant}\">Dependant</span></p><p><b>name</b>: JENNIFER SMITH </p><p><b>gender</b>: female</p><p><b>birthDate</b>: 1981-01-10</p></div>"
* text.status = #generated
* active = true
* name.family = "SMITH"
* name.given = "JENNIFER"
* gender = #female
* birthDate = "1981-01-10"
* patient = Reference(Patient/john-smith) "Jennifer Smith"
* relationship[0].text = "daughter"
* relationship[=] = $relatedperson-relationshiptype#DAU "daughter"
* relationship[+].text = "Dependant"
* relationship[=] = $consent-exchange-relationships#Dependant "Dependant"





