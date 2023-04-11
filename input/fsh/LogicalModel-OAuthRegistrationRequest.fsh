Logical: OAuthRegistrationRequest
Id: OAuthRegistrationRequest
Title: "OAuth Registration Request"
Description: "This structure defines an OAuth registration request body"
* ^url = "http://hl7.org/fhir/tools/StructureDefinition/OAuthRegistrationRequest"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "HL7 International / FHIR Infrastructure"  
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/fhir-i"
* ^jurisdiction.coding.system = "http://unstats.un.org/unsd/methods/m49/m49.htm"
* ^jurisdiction.coding.code = #001
* ^type = "OAuthRegistrationRequest"
* . ^short = "The response to the discovery endpoint"
* . ^definition = "The response to the discovery endpoint"
// * resourceType 0..1 string "OAuthRegistrationRequest"

* resourceType 0..1 string "Resource type"
* id 0..1 string "identifer"
* client_name 0..1 string "Name of the client application."
* initiate_login_uri 0..1 string "Initiate login uri."
* scope 0..1 string "Scope"
* token_endpoint_auth_method 0..1 string "Token endpoint authenticaiton method."
* grant_types 0..* string "Grant types."
* redirect_uris 0..* string "Redirect URIs"

