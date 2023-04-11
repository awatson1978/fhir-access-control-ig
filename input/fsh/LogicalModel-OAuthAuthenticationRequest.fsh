Logical: OAuthAuthenticationRequest
Id: OAuthAuthenticationRequest
Title: "OAuth Authentication Request"
Description: "This structure defines an OAuth authentication response body"
* ^url = "http://hl7.org/fhir/tools/StructureDefinition/OAuthAuthenticationRequest"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "HL7 International / FHIR Infrastructure"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/fhir-i"
* ^jurisdiction.coding.system = "http://unstats.un.org/unsd/methods/m49/m49.htm"
* ^jurisdiction.coding.code = #001
* ^type = "OAuthAuthenticationRequest"
* . ^short = "The response to the discovery endpoint"
* . ^definition = "The response to the discovery endpoint"

* resourceType 0..1 string "Resource type"
* id 0..1 string "identifer"
* response_type 1..1 string "Response code"
* client_id 1..1 string "Client ID"
* redirect_uri 1..1 string "Redirect URI"
* scope 1..1 string "Scope"
* state 1..1 string "State"
* aud 1..1 string "Audience"






