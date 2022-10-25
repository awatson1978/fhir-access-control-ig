Instance: related-person-jane-smith-wife
InstanceOf: ConsentExchangeRelatedPerson
Description: "Jane Smith - Spouse relationship record."

Usage: #example
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>active</b>: true</p><p><b>patient</b>: <a href=\"http://fhir.org/packages/us.nlm.vsac/Patient/john-smith/expansion\">John Smith</a></p><p><b>relationship</b>: <span title=\"Codes: {http://hl7.org/fhir/CodeSystem/relatedperson-relationshiptype WIFE}\">wife</span>, <span title=\"Codes: {http://hl7.org/fhir/CodeSystem/consent-exchange-relationships Spouse}\">Spouse</span></p><p><b>name</b>: JANE SMITH </p><p><b>gender</b>: female</p><p><b>birthDate</b>: 1981-01-10</p></div>"
* text.status = #generated
* active = true
* name.family = "SMITH"
* name.given = "JANE"
* gender = #female
* birthDate = "1981-01-10"
* patient = Reference(Patient/john-smith) "John Smith"
* relationship[0].text = "wife"
* relationship[=] = $relatedperson-relationshiptype#WIFE "wife"
* relationship[+].text = "Spouse"
* relationship[=] = $consent-exchange-relationships#Spouse "Spouse"



