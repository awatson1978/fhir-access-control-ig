Instance: janedoe-self-lookup
InstanceOf: ExampleScenario
Usage: #definition
* url = "http://example.org/ExampleScenario/janedoe-self-lookup"
* status = #draft
* actor[0].actorId = "jane-doe"
* actor[=].type = #person
* actor[=].name = "Jane Doe"
* actor[=].description = "Jane Doe account."
* actor[+].actorId = "stranger-001"
* actor[=].type = #person
* actor[=].name = "Random Stranger"
* actor[=].description = "Random stranger that Jane Doe is not related to."



Instance: janedoe-cant-access-random-stranger
InstanceOf: ExampleScenario
Description: "Security test script for Consent Engine.  Confirms that a logged in user (Jessica Smith) can't access the patient record of a random stranger."
Usage: #definition
* status = #draft
* actor[0].actorId = "jane-doe"
* actor[=].type = #person
* actor[=].name = "Jane Doe"
* actor[=].description = "Jane Doe account."
* actor[+].actorId = "stranger-001"
* actor[=].type = #person
* actor[=].name = "Random Stranger"
* actor[=].description = "Random stranger that Jane Doe is not related to."


Instance: random-user-cant-access-shelters
InstanceOf: ExampleScenario
Usage: #definition
* url = "http://example.org/ExampleScenario/random-user-cant-access-shelters"
* status = #draft
* actor[0].actorId = "jane-doe"
* actor[=].type = #person
* actor[=].name = "Jane Doe"
* actor[=].description = "Jane Doe account."
* actor[+].actorId = "stranger-001"
* actor[=].type = #person
* actor[=].name = "Random Stranger"
* actor[=].description = "Random stranger that Jane Doe is not related to."
* actor[+].actorId = "practitioner-alice-yin"
* actor[=].type = #person
* actor[=].name = "Dr. Alice Yin"
* actor[=].description = "Dr. Alice Yin with social worker credentials."


