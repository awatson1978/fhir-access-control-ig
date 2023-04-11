Logical: OAuthTokenResponse
Id: OAuthTokenResponse
Title: "OAuth Token Response"
Description: "This structure defines an OAuth token response body"
* ^url = "http://hl7.org/fhir/tools/StructureDefinition/OAuthTokenResponse"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "HL7 International / FHIR Infrastructure"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/fhir-i"
* ^jurisdiction.coding.system = "http://unstats.un.org/unsd/methods/m49/m49.htm"
* ^jurisdiction.coding.code = #001
* ^type = "OAuthTokenResponse"
* . ^short = "The response to the discovery endpoint"
* . ^definition = "The response to the discovery endpoint"

* resourceType 0..1 string "Resource type"
* id 0..1 string "identifer"
* access_token 0..1 string "Access token"
* token_type 0..1 string "Token type"
* scope 0..1 string "Scope"
* expires_in 0..1 string "Expires in (milliseconds)"
