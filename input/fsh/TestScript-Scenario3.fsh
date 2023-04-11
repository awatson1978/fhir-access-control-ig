Instance: TestScript-Scenario3
InstanceOf: TestScript
Description: "R4 TestScript - Back End Acces"
Title: "Scenario 3"
Usage: #example
* url = "http://"
* status = #draft
* name = "Scenario 3"
* title = "R4 TestScript - Back End Acces"
* date = "2022-06-14T23:19:30.696Z"
* publisher = "FHIR at Scale Taskforce (FAST) && FHIR Foundry"
* version = "0.0.1"
* jurisdiction = urn:iso:std:iso:3166#US
* fixture[0].id = "registration-request-3"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "Binary"
* fixture[=].resource = Reference(registration-request-3) "Backend Service - Registration Request"
* fixture[+].id = "registration-response-3"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "Binary"
* fixture[=].resource = Reference(registration-response-3) "Backend Service - Registration Response"


* test[0].id = "2823af51-4a7e-5887-3f72-0a10579b4acc"
* test[=].name = "1.1 Register backend service"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Register backend service"
* test[=].action[=].operation.description = "PUT /oauth/registration"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/oauth/registration"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#create
* test[=].action[=].operation.resource = #Binary
* test[=].action[=].operation.sourceId = "registration-request-3"

* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false
* test[=].action[=].assert.sourceId = "registration-response-3"




// * test[0].id = "3823df50-2a7e-48e7-8f70-921067974a05"
// * test[=].name = "1.1 Create hospital organization"
// * test[=].action[0].operation.method = #put
// * test[=].action[=].operation.label = "Hospital Organization"
// * test[=].action[=].operation.description = "PUT /baseR4/Organization/J4aabjHFaXv73ZvME"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Organization/J4aabjHFaXv73ZvME"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
// * test[=].action[=].operation.resource = #Organization
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
// * test[=].action[=].assert.response = #created
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "f390140a-edd9-4c04-8131-f50e06f8a40a"
// * test[=].name = "1.2 Create women's shelter organization"
// * test[=].action[0].operation.method = #put
// * test[=].action[=].operation.label = "Women's Shelter Organization"
// * test[=].action[=].operation.description = "PUT /baseR4/Organization/lyW5mPW2nf3DHC7h6"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Organization/lyW5mPW2nf3DHC7h6"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
// * test[=].action[=].operation.resource = #Organization
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
// * test[=].action[=].assert.response = #created
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "80ca8957-a591-4a3c-835e-7018bf03660b"
// * test[=].name = "1.3  Create hospital location"
// * test[=].action[0].operation.method = #put
// * test[=].action[=].operation.label = "Hospital Location"
// * test[=].action[=].operation.description = "PUT /baseR4/Location/6kKu6iPnJtMozpaBp"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Location/6kKu6iPnJtMozpaBp"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
// * test[=].action[=].operation.resource = #Location
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
// * test[=].action[=].assert.response = #created
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "ef27765c-a138-5669-b255-17bb91d30cc0"
// * test[=].name = "1.4 Create women's shelter location"
// * test[=].action[0].operation.method = #put
// * test[=].action[=].operation.label = "Women's Shelter Location"
// * test[=].action[=].operation.description = "PUT /baseR4/Location/qirz9TRTPfkDgBSs8"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Location/qirz9TRTPfkDgBSs8"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
// * test[=].action[=].operation.resource = #Location
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
// * test[=].action[=].assert.response = #created
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "ed7f8206-22ad-4bce-b3d8-83980dc0af5e"
// * test[=].name = "1.5 Create social worker"
// * test[=].action[0].operation.method = #put
// * test[=].action[=].operation.label = "Social Worker"
// * test[=].action[=].operation.description = "PUT /baseR4/Practitioner"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Practitioner"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
// * test[=].action[=].operation.resource = #Practitioner
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
// * test[=].action[=].assert.response = #created
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "309ca261-92bf-5063-ba69-77f29c52c671"
// * test[=].name = "1.6 Create restriction on accessing women's shelters"
// * test[=].action[0].operation.method = #put
// * test[=].action[=].operation.label = "Restriction on accessing Women's Shelters"
// * test[=].action[=].operation.description = "PUT /baseR4/Consent/cotkDnGQjpHijDsRR"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Consent/cotkDnGQjpHijDsRR"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
// * test[=].action[=].assert.response = #created
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "ed7f8206-22ad-4bce-b3d8-83980dc0af5e"
// * test[=].name = "2.1.1 SocialWorker tries to anonymously access public organization data (and succeeds)"
// * test[=].action[0].operation.method = #get
// * test[=].action[=].operation.label = "1.1.1"
// * test[=].action[=].operation.description = "GET /baseR4/Organization/J4aabjHFaXv73ZvME"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Organization/J4aabjHFaXv73ZvME"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
// * test[=].action[=].operation.resource = #Organization
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
// * test[=].action[=].assert.response = #okay
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "ed7f8206-22ad-4bce-b3d8-83980dc0af5e"
// * test[=].name = "2.1.2 SocialWorker tries to anonymously access public location data (and succeeds)"
// * test[=].action[0].operation.method = #get
// * test[=].action[=].operation.label = "1.1.2"
// * test[=].action[=].operation.description = "GET /baseR4/Location/6kKu6iPnJtMozpaBp"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Location/6kKu6iPnJtMozpaBp"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
// * test[=].action[=].operation.resource = #Location
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
// * test[=].action[=].assert.response = #okay
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "486e9754-3a48-45c0-b43e-94e16e078d71"
// * test[=].name = "2.2.1 SocialWorker tries to anonymously access private organization data (and fails)"
// * test[=].action[0].operation.method = #get
// * test[=].action[=].operation.label = "1.2.1"
// * test[=].action[=].operation.description = "GET /baseR4/Organization/lyW5mPW2nf3DHC7h6"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Organization/lyW5mPW2nf3DHC7h6"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
// * test[=].action[=].operation.resource = #Organization
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 401(Unauthorized)."
// * test[=].action[=].assert.response = #forbidden
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "486e9754-3a48-45c0-b43e-94e16e078d71"
// * test[=].name = "2.2.2 SocialWorker tries to anonymously access private location data (and fails)"
// * test[=].action[0].operation.method = #get
// * test[=].action[=].operation.label = "1.2.2"
// * test[=].action[=].operation.description = "GET /baseR4/Location/qirz9TRTPfkDgBSs8"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Location/qirz9TRTPfkDgBSs8"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
// * test[=].action[=].operation.resource = #Location
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 401(forbidden)."
// * test[=].action[=].assert.response = #forbidden
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "668a7b70-e747-42d3-a100-632f1a87cd40"
// * test[=].name = "3.1 SocialWorker authenticates."
// * test[=].action[0].operation.method = #get
// * test[=].action[=].operation.label = "2.1"
// * test[=].action[=].operation.description = "GET /oauth/authorize"
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/oauth/authorize?response_type=code&client_id=12345&redirect_uri=https%3A%2F%2Finferno.healthit.gov%2Fsuites%2Fcustom%2Fsmart%2Fredirect&scope=launch%2Fpatient+openid+fhirUser+offline_access+patient%2F*.read&state=b64686e6-5ebb-49c7-845a-821736c7d002&aud=https%3A%2F%2Fnational-directory.meteorapp.com"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.body.response_type = "code"
// // * test[=].action[=].operation.body.client_id = "12345"
// // * test[=].action[=].operation.body.redirect_uri = "https://inferno.healthit.gov/suites/custom/smart/redirect"
// // * test[=].action[=].operation.body.scope = "launch fhirUser openid patient/*.rs, organization/*.rs,"
// // * test[=].action[=].operation.body.state = "12345"
// // * test[=].action[=].operation.body.aud = "http://localhost:3000/baseR4"
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
// * test[=].action[=].assert.response = #okay
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "0580315d-c072-46da-841e-500ad5d5f931"
// * test[=].name = "3.2 Token request"
// * test[=].action[0].operation.method = #get
// * test[=].action[=].operation.label = "2.2"
// * test[=].action[=].operation.description = "GET /oauth/token"
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/oauth/token"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
// * test[=].action[=].assert.response = #okay
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "595cab8f-6302-44f1-a930-6b02da515216"
// * test[=].name = "3.3.1 - SocialWorker tries to anonymously access private location data (and succeeds)"
// * test[=].action[0].operation.method = #get
// * test[=].action[=].operation.label = "2.3.1"
// * test[=].action[=].operation.description = "GET /baseR4/Location/qirz9TRTPfkDgBSs8"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Location/qirz9TRTPfkDgBSs8"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
// * test[=].action[=].operation.resource = #Location
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
// // * test[=].action[=].assert.response = #read
// * test[=].action[=].assert.warningOnly = false
// * test[+].id = "595cab8f-6302-44f1-a930-6b02da515216"
// * test[=].name = "3.3.2 - SocialWorker tries to anonymously access private organization data (and succeeds)"
// * test[=].action[0].operation.method = #get
// * test[=].action[=].operation.label = "2.3.2"
// * test[=].action[=].operation.description = "GET /baseR4/Organization/lyW5mPW2nf3DHC7h6"
// * test[=].action[=].operation.accept = #json
// * test[=].action[=].operation.encodeRequestUrl = true
// // * test[=].action[=].operation.destination = "https://national-directory.meteorapp.com"
// * test[=].action[=].operation.url = "/baseR4/Organization/lyW5mPW2nf3DHC7h6"
// * test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
// * test[=].action[=].operation.resource = #Organization
// * test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
// // * test[=].action[=].assert.response = #read
// * test[=].action[=].assert.warningOnly = false