// Instance: 1
// InstanceOf: OAuthRegistrationRequest
// * resourceType = "OAuthRegistrationRequest"
// * client_name = "Automaton 1"
// * scope = "fhir organization/read location/read"
// * token_endpoint_auth_method = "code"
// * grant_types = "code"
// * redirect_uris = "http://localhost:3000/redirect"

Instance: OAuthRegistrationRequest1
Description: "OAuth Registration of Test Harness"
InstanceOf: Basic
* code.coding[0].code = #adminact
* code.coding[=].display = "Administrative Activity"
* extension[0].url = "resourceType"
* extension[=].valueString = "OAuthRegistrationRequest"
* extension[+].url = "client_name"
* extension[=].valueString = "Test Harness"
* extension[+].url = "scope"
* extension[=].valueString = "fhir organization/read location/read"
* extension[+].url = "token_endpoint_auth_method"
* extension[=].valueString = "code"
* extension[+].url = "grant_types"
* extension[=].valueString = "code"
* extension[+].url = "redirect_uris"
* extension[=].valueString = "http://localhost:3000/redirect"


Instance: TestScript-gszMyXpwsdoAjJZeh
InstanceOf: TestScript
Description: "R4 TestScript - SMART on FHIR Client Registration"
Title: "SMART Client Registration"
Usage: #example
* url = "http://"
* status = #draft
* name = "SMART_Client_Registration"
* title = "R4 TestScript - SMART on FHIR Client Registration"
* date = "2022-06-14T23:24:46.024Z"
* publisher = "FHIR at Scale Taskforce (FAST) && FHIR Foundry"
* version = "0.0.1"
* jurisdiction = urn:iso:std:iso:3166#US
* origin.index = 1
* origin.profile.code = #FHIR-Client
* destination.index = 1
* destination.profile.code = #FHIR-Server
* fixture[0].id = "47be8943-2604-5d89-abb9-5c4e13a5120b"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource = Reference(Basic/OAuthRegistrationRequest1)  "Registration Payload 1"
* fixture[+].id = "8b3f5577-4344-5c5e-91a0-ac4942632496"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].id = "b079ec7f-b12a-5fec-bd06-338c44571163"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].id = "f6c54af2-61fd-586d-afde-2d402ebf33af"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[+].id = "ff897a54-61db-5461-aebb-a42fc4ed0e4d"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* test[0].id = "61dcf836-8376-5637-90e0-24ede617b7b7"
* test[=].name = "National Directory - FHIR Metadata"
* test[=].action[0].operation.label = "National Directory - FHIR Metadata"
* test[=].action[=].operation.description = "GET /baseR4/metadata"
* test[=].action[=].operation.method = #get
* test[=].action[=].operation.url = "/baseR4/metadata"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[+].id = "e3daf953-6237-5170-8750-3100c0d76cb3"
* test[=].name = "Registration (SMART on FHIR)"
* test[=].action[0].operation.label = "Registration (SMART on FHIR)"
* test[=].action[=].operation.description = "POST /oauth/registration"
* test[=].action[=].operation.method = #post
* test[=].action[=].operation.url = "/oauth/registration"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.sourceId = "47be8943-2604-5d89-abb9-5c4e13a5120b"
// * test[=].action[=].operation.body.client_name = "Inferno"
// * test[=].action[=].operation.body.initiate_login_uri = "https://inferno.healthit.gov/community/oauth2/static/launch"
// * test[=].action[=].operation.body.redirect_uris = "https://inferno.healthit.gov/community/oauth2/static/redirect"
// * test[=].action[=].operation.body.grant_types = "authorization_code"
// * test[=].action[=].operation.body.scope = "launch launch/patient offline_access openid profile user/*.* patient/*.*"
// * test[=].action[=].operation.body.token_endpoint_auth_method = "none"
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].assert.description = "Body contains the following"
// * test[=].action[=].assert.response.client_id = "xp4Hqg786ymDTAiLf"
// * test[=].action[=].assert.response.client_name = "Inferno Test Runner"
// * test[=].action[=].assert.response.scope = "launch/patient openid fhirUser offline_access patient/*.read"
* test[=].action[=].assert.warningOnly = false
* test[+].id = "dcd8fa9d-767f-5c63-9648-dffa6974d322"
* test[=].name = "Authorize - Stand Alone"
* test[=].action[0].operation.label = "Authorize - Stand Alone"
* test[=].action[=].operation.description = "GET /oauth/authorize"
* test[=].action[=].operation.method = #get
* test[=].action[=].operation.url = "/oauth/authorize"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
// * test[=].action[=].operation.body.response_type = "code"
// * test[=].action[=].operation.body.client_id = "12345"
// * test[=].action[=].operation.body.redirect_uri = "https://inferno.healthit.gov/suites/custom/smart/redirect"
// * test[=].action[=].operation.body.scope = "launch fhirUser openid patient/*.rs, organization/*.rs,"
// * test[=].action[=].operation.body.state = "12345"
// * test[=].action[=].operation.body.aud = "http://localhost:3000/baseR4"
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].assert.description = "Body contains the following"
// * test[=].action[=].assert.response.code = "yamBR8zwCtRT597KW"
// * test[=].action[=].assert.response.state = "12345"
* test[=].action[=].assert.warningOnly = false
* test[+].id = "e61c9e92-fcdc-5ca3-8b0c-c80d55b50e4e"
* test[=].name = "Token request"
* test[=].action[0].operation.label = "Token request"
* test[=].action[=].operation.description = "GET /oauth/token?client_id=12345&code=5KFP8pBZcbqkSuNnY&grant_type=authorization_code&redirect_uri=https%3A%2F%2Finferno.healthit.gov%2Fsuites%2Fcustom%2Fsmart%2Fredirect"
* test[=].action[=].operation.method = #get
* test[=].action[=].operation.url = "/oauth/token"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[=].action[+].assert.description = "Body contains the following"
// * test[=].action[=].assert.response.access_token = "gTJKma3CQMx3sDueP"
// * test[=].action[=].assert.response.token_type = "Bearer"
// * test[=].action[=].assert.response.scope = "openid fhirUser launch offline_access user/*.cruds"
// * test[=].action[=].assert.response.expires_in = 86400
* test[=].action[=].assert.warningOnly = false