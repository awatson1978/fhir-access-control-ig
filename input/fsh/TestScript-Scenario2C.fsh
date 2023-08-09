Instance: TestScript-Scenario2C
InstanceOf: TestScript
Description: "R4 TestScript - PHI System - Patient Multi-User Access (Work in Progress)"
Title: "Scenario 2C"
Usage: #example
* url = "http://"
* status = #draft
* name = "Scenario 2C"
* title = "R4 TestScript - PHI System - Patient Multi-User Access"
* date = "2022-06-14T23:19:30.696Z"
* publisher = "FHIR at Scale Taskforce (FAST) && FHIR Foundry"
* version = "0.0.1"
* jurisdiction = urn:iso:std:iso:3166#US
* fixture[0].id = "73594318-988d-5647-b3d8-1f1841578c27"
* fixture[=].autocreate = true
* fixture[=].autodelete = true
* fixture[=].resource.type = "Location"
* fixture[=].resource = Reference(PharmLoc2) "OrgA CT Location 2"

* test[0].id = "3823df50-2a7e-48e7-8f70-921067974a05"
* test[=].name = "0.1 Create hospital organization"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Hospital Organization"
* test[=].action[=].operation.description = "PUT /baseR4/Organization/J4aabjHFaXv73ZvME"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/baseR4/Organization/J4aabjHFaXv73ZvME"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Organization
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false

* test[+].id = "80ca8957-a591-4a3c-835e-7018bf03660b"
* test[=].name = "0.2  Create Jane Doe patient"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Jane Doe - Patient"
* test[=].action[=].operation.description = "PUT /baseR4/Patient/6kKu6iPnJtMozpaBp"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/baseR4/Patient/6kKu6iPnJtMozpaBp"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Patient
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false

* test[+].id = "ef27765c-a138-5669-b255-17bb91d30cc0"
* test[=].name = "0.3 Create Katie Klepto patient"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Katie Klepto"
* test[=].action[=].operation.description = "PUT /baseR4/Patient/qirz9TRTPfkDgBSs8"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/baseR4/Patient/qirz9TRTPfkDgBSs8"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Patient
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false

* test[+].id = "ed7f8206-22ad-4bce-b3d8-83980dc0af5e"
* test[=].name = "0.5 Create Susan social worker"
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Susan Social"
* test[=].action[=].operation.description = "PUT /baseR4/Practitioner"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/baseR4/Practitioner"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[=].operation.resource = #Practitioner
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false

* test[+].id = "309ca261-92bf-5063-ba69-77f29c52c671"
* test[=].name = "0.6 Create consent records on accessing patient data."
* test[=].action[0].operation.method = #put
* test[=].action[=].operation.label = "Restriction on accessing other patients data"
* test[=].action[=].operation.description = "PUT /baseR4/Consent/cotkDnGQjpHijDsRR"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/baseR4/Consent/cotkDnGQjpHijDsRR"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 201(Success)."
* test[=].action[=].assert.response = #created
* test[=].action[=].assert.warningOnly = false

* test[+].id = "ed7f8206-22ad-4bce-b3d8-83980dc0af5e"
* test[=].name = "1.1.1 Jane authenticates"
* test[=].action[0].operation.method = #get
* test[=].action[=].operation.label = "1.1.1"
* test[=].action[=].operation.description = "GET /oauth/token"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/oauth/token"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[=].operation.resource = #Basic
// * test[=].action[=].operation.body.response_type = "code"
// * test[=].action[=].operation.body.client_id = "12345"
// * test[=].action[=].operation.body.redirect_uri = "https://inferno.healthit.gov/suites/custom/smart/redirect"
// * test[=].action[=].operation.body.scope = "launch fhirUser openid patient/*.rs, organization/*.rs,"
// * test[=].action[=].operation.body.state = "12345"
// * test[=].action[=].operation.body.aud = "http://localhost:3000/baseR4"
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false

* test[+].id = "ed7f8206-22ad-4bce-b3d8-83980d50af5e"
* test[=].name = "1.1.1 Jane tries to access her own records"
* test[=].action[0].operation.method = #get
* test[=].action[=].operation.label = "1.1.1"
* test[=].action[=].operation.description = "GET /baseR4/Patient/6kKu6iPnJtMozpaBp"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/baseR4/Patient/6kKu6iPnJtMozpaBp"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[=].operation.resource = #Binary
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false

* test[+].id = "ed7f8206-22ad-4bce-b3d8-23980dc0af5e"
* test[=].name = "1.1.1 Jane logs out"
* test[=].action[0].operation.method = #get
* test[=].action[=].operation.label = "1.1.1"
* test[=].action[=].operation.description = "GET /oauth/logout"
* test[=].action[=].operation.accept = #json
* test[=].action[=].operation.encodeRequestUrl = true
* test[=].action[=].operation.url = "/oauth/logout"
* test[=].action[=].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test[=].action[=].operation.resource = #OAuth
* test[=].action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test[=].action[=].assert.response = #okay
* test[=].action[=].assert.warningOnly = false

