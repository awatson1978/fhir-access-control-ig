Instance: test-udap-baseline-selfaccess
InstanceOf: TestScript
Usage: #example
* url = "http://hl7.org/fhir/TestScript/consent-engine"
* version = "1.0"
* name = "Consent Engine Script - Baseline - Self Access"
* status = #draft
* experimental = true
* date = "2021-11-08"
* publisher = "HL7"
* contact.name = "Abigail Watson"
* contact.telecom.system = #email
* contact.telecom.value = "awatson@mitre.org"
* contact.telecom.use = #work
* description = "Security test script for Consent Engine.  Confirms that a logged in user (Jessica Smith) can access her own records."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America (the)"
* purpose = "OAuth security testing of access to Patient records, based on authorized Consent."
* copyright = "© MITRE.org 2021"
* metadata.link.url = "http://hl7.org/fhir/patient.html"
* metadata.link.description = "Demographics and other administrative information about an individual or animal receiving care or other health-related services."
* metadata.capability.required = true
* metadata.capability.validated = false
* metadata.capability.description = "Patient Read Operations"
* metadata.capability.link = "http://hl7.org/fhir/http.html#read"
* metadata.capability.capabilities = "CapabilityStatement/example"
* fixture.id = "fixture-patient-create-jennifer-smith"
* fixture.autocreate = true
* fixture.autodelete = false
* fixture.resource = Reference(Patient/jennifer-smith) "Jennifer Smith"
* profile.id = "patient-profile"
* profile = Reference(http://hl7.org/fhir/StructureDefinition/Patient)
* variable.name = "createJenniferSmith"
* variable.path = "Patient/id"
* variable.sourceId = "fixture-patient-create-jennifer-smith"
* setup.action[0].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#delete
* setup.action[=].operation.resource = #Patient
* setup.action[=].operation.label = "SetupDeleteJenniferSmith"
* setup.action[=].operation.description = "Execute a delete operation to insure Jennifer Smith does not exist on the server."
* setup.action[=].operation.accept = #json
* setup.action[=].operation.encodeRequestUrl = true
* setup.action[=].operation.params = "/${createJenniferSmith}"
* setup.action[+].assert.description = "Confirm that the returned HTTP status is 200(OK) or 204(No Content)."
* setup.action[=].assert.direction = #response
* setup.action[=].assert.operator = #in
* setup.action[=].assert.responseCode = "200,204"
* setup.action[=].assert.warningOnly = false
* setup.action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#update
* setup.action[=].operation.resource = #Patient
* setup.action[=].operation.label = "SetupCreatePatient"
* setup.action[=].operation.description = "Create Jennifer Smith on test server"
* setup.action[=].operation.accept = #json
* setup.action[=].operation.contentType = #json
* setup.action[=].operation.encodeRequestUrl = true
* setup.action[=].operation.params = "/${createJenniferSmith}"
* setup.action[=].operation.sourceId = "fixture-patient-create-jennifer-smith"
* setup.action[+].assert.description = "Confirm that the returned HTTP status is 201(Created)."
* setup.action[=].assert.direction = #response
* setup.action[=].assert.responseCode = "201"
* setup.action[=].assert.warningOnly = false
* setup.action[+].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* setup.action[=].operation.resource = #Patient
* setup.action[=].operation.description = "Read the created patient resource on the test server using the id from fixture-patient-create. Verify contents."
* setup.action[=].operation.encodeRequestUrl = true
* setup.action[=].operation.targetId = "fixture-patient-create"
* setup.action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* setup.action[=].assert.direction = #response
* setup.action[=].assert.response = #okay
* setup.action[=].assert.warningOnly = false
* test.id = "01-ReadJessicaSmith"
* test.name = "Read Jessica Smith"
* test.description = "Jessica should be able to access and read her own patient Record."
* test.action[0].operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#read
* test.action[=].operation.resource = #Patient
* test.action[=].operation.description = "Read the patient resource on the test server using the id from fixture-patient-create. Prevent URL encoding of the request."
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.responseId = "fixture-patient-read"
* test.action[=].operation.targetId = "fixture-patient-create-jessica-smith"
* test.action[+].assert.label = "01-ReadPatientOK"
* test.action[=].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test.action[=].assert.direction = #response
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = false
* test.action[+].assert.description = "Confirm that the returned resource type is Patient."
* test.action[=].assert.resource = #Patient
* test.action[=].assert.warningOnly = false
* test.action[+].assert.description = "Confirm that the returned Patient contains the expected family name 'Smith'."
* test.action[=].assert.operator = #equals
* test.action[=].assert.path = "fhir:Patient/fhir:name/fhir:family/@value"
* test.action[=].assert.sourceId = "fixture-patient-read-jennifer-smith"
* test.action[=].assert.value = "Smith"
* test.action[=].assert.warningOnly = false
* test.action[+].assert.description = "Confirm that the returned Patient contains the expected given name 'Jennifer'."
* test.action[=].assert.operator = #equals
* test.action[=].assert.path = "fhir:Patient/fhir:name/fhir:given/@value"
* test.action[=].assert.sourceId = "fixture-patient-read-jennifer-smith"
* test.action[=].assert.value = "Jennifer"
* test.action[=].assert.warningOnly = false
* test.action[+].operation.url = "http://localhost:3000/baseR4/authorize"
* test.action[=].operation.method = #post
* test.action[=].operation.requestHeader.field = ""
* test.action[=].operation.requestHeader.value = ""
* test.action[=].operation.resource = #Patient
* test.action[=].operation.label = "AUTHENTICATE TO SYSTEM"
* test.action[=].operation.accept = #json
* test.action[=].operation.contentType = #json
* test.action[=].operation.encodeRequestUrl = true
* test.action[=].operation.params = "/${loginJessicaSmith}"
* teardown.action.operation.type = http://terminology.hl7.org/CodeSystem/testscript-operation-codes#delete
* teardown.action.operation.resource = #Patient
* teardown.action.operation.description = "Delete the Jennifer Smith patient resource on the test server using the id from fixture-patient-create-jennifer-smith."
* teardown.action.operation.encodeRequestUrl = true
* teardown.action.operation.targetId = "fixture-patient-create-jennifer-smith"