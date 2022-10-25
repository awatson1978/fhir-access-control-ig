Instance: test-udap-consent-crud
InstanceOf: TestScript
Usage: #example
* url = "http://gitlab.mitre.org/bento-box/bento-box-meter/tests"
* name = "Inferno - Bento Box Generated Test - Example 1"
* status = #active
* date = "2021-09-25"
* publisher = "MITRE, Inc"
* contact.name = "Abigail Watson"
* contact.telecom.system = #email
* contact.telecom.value = "awatson@mitre.org"
* contact.telecom.use = #work
* description = "Baseline tests using the JSON format to create, update, retrieve history and search a patient without extensions where the client assigns the resource id. The destination server must support conditional create."
* copyright = "© MITRE, Inc 2021"
* metadata.capability[0].required = true
* metadata.capability[=].description = "Patient read, update, delete, history-instance and search-type operations"
* metadata.capability[=].validated = false
* metadata.capability[=].capabilities = "https://gitlab.mitre.org/awatson/consent-engine-ig"
* metadata.capability[=].link[0] = "http://hl7.org/fhir/R4/http.html#read"
* metadata.capability[=].link[+] = "http://hl7.org/fhir/R4/http.html#update"
* metadata.capability[=].link[+] = "http://hl7.org/fhir/R4/http.html#delete"
* metadata.capability[=].link[+] = "http://hl7.org/fhir/R4/http.html#history"
* metadata.capability[=].link[+] = "http://hl7.org/fhir/R4/http.html#search"
* metadata.capability[=].link[+] = "http://hl7.org/fhir/R4/patient.html"
* metadata.capability[+].required = true
* metadata.capability[=].description = "Consent read, update, delete, history-instance and search-type operations"
* metadata.capability[=].validated = false
* metadata.capability[=].capabilities = "https://gitlab.mitre.org/awatson/consent-engine-ig"
* metadata.capability[=].link[0] = "http://hl7.org/fhir/R4/http.html#read"
* metadata.capability[=].link[+] = "http://hl7.org/fhir/R4/http.html#update"
* metadata.capability[=].link[+] = "http://hl7.org/fhir/R4/http.html#delete"
* metadata.capability[=].link[+] = "http://hl7.org/fhir/R4/http.html#history"
* metadata.capability[=].link[+] = "http://hl7.org/fhir/R4/http.html#search"
* metadata.capability[=].link[+] = "http://hl7.org/fhir/R4/patient.html"
* fixture.id = "patient-create-PeterChalmers"
* fixture.resource = Reference(../_reference/resources/patient-create-client-id-PeterChalmers.json)
* fixture.autocreate = false
* fixture.autodelete = false
* profile[0].id = "bundle-profile"
* profile[=] = Reference(http://hl7.org/fhir/StructureDefinition/Bundle)
* profile[+].id = "patient-profile"
* profile[=] = Reference(http://hl7.org/fhir/StructureDefinition/Patient)
* profile[+].id = "consent-profile"
* profile[=] = Reference(http://hl7.org/fhir/StructureDefinition/Consent)
* variable[0].name = "createResourceId"
* variable[=].path = "Patient/id"
* variable[=].sourceId = "patient-read-PeterChalmers"
* variable[+].name = "createIdentifier"
* variable[=].path = "Patient/identifier/value"
* variable[=].sourceId = "patient-create-PeterChalmers"
* variable[+].name = "searchFamilyName"
* variable[=].path = "Patient/name/family"
* variable[=].sourceId = "patient-create-PeterChalmers"
* variable[+].name = "searchGivenName"
* variable[=].path = "Patient/name/given"
* variable[=].sourceId = "patient-create-PeterChalmers"
* setup.action.operation.type = http://hl7.org/fhir/testscript-operation-codes#delete
* setup.action.operation.resource = #Consent
* setup.action.operation.description = "System-generated search and delete operations from conditional delete to insure the patient does not exist on the server."
* setup.action.operation.accept = #json
* setup.action.operation.contentType = #json
* setup.action.operation.params = "?given=${searchGivenName}&family=${searchFamilyName}"
* setup.action.operation.encodeRequestUrl = false
* test.id = "Step3-ConsentHistory"
* test.name = "Step3-ConsentHistory"
* test.description = "Retrieve the patient's history."
* test.action[0].operation.resource = #Patient
* test.action[=].operation.description = "Retrieve the history for a single, known patient using the known identifier."
* test.action[=].operation.accept = #json
* test.action[=].operation.contentType = #json
* test.action[=].operation.encodeRequestUrl = false
* test.action[=].operation.params = "/Consent/${createResourceId}/_history"
* test.action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test.action[=].assert.response = #okay
* test.action[=].assert.warningOnly = true
* test.action[+].assert.description = "Confirm that the returned format is JSON."
* test.action[=].assert.contentType = #json
* test.action[=].assert.warningOnly = true
* test.action[+].assert.description = "Confirm that the returned resource type is Bundle."
* test.action[=].assert.resource = #Bundle
* test.action[=].assert.warningOnly = true
* test.action[+].assert.description = "Validate that the returned resource conforms to the base FHIR Bundle profile."
* test.action[=].assert.validateProfileId = "bundle-profile"
* test.action[=].assert.warningOnly = true
* test.action[+].assert.description = "Confirm that the returned Bundle.type is history."
* test.action[=].assert.path = "/Bundle/type"
* test.action[=].assert.value = "history"
* test.action[=].assert.warningOnly = true
* test.action[+].assert.description = "Confirm that there is more than one patient history resource returned. Warning only as the server may not support versioning."
* test.action[=].assert.operator = #greaterThan
* test.action[=].assert.path = "/Bundle/total"
* test.action[=].assert.value = "1"
* test.action[=].assert.warningOnly = true
* test.action[+].assert.description = "Confirm that the Bundle total value matches or is greater than the number of entries in the Bundle. Warning only to provide users with reviewable results."
* test.action[=].assert.expression = "Bundle.total.toInteger() >= entry.count()"
* test.action[=].assert.warningOnly = true
* test.action[+].assert.description = "Confirm that bundle contains the most recent updated version of the patient. Warning only to provide users with reviewable results."
* test.action[=].assert.minimumId = "patient-update-PeterChalmers-min"
* test.action[=].assert.warningOnly = true