Instance: stranger-001
InstanceOf: RelatedPerson
Description: "A random stranger to test security access against."
Usage: #example
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><br /><b>A random stranger</b></p><p>This record is intended to have no relationship to the patient in the use case or testing scenario.  The intention is to have a record that the test runner can confirm is NOT accessible.  Primarily intended for access control and null case testing.</p><p><b>active</b>: true</p><p><b>patient</b>: <a href=\"http://fhir.org/packages/us.nlm.vsac/Patient/nobody/expansion\">Nobody</a></p><p><b>name</b>: RANDOM STRANGER </p><p><b>telecom</b>: ph: 212-555-1253(HOME)</p><p><b>gender</b>: female</p><p><b>birthDate</b>: 1983-01-14</p></div>"
* text.status = #generated
* active = true
* name.family = "STRANGER"
* name.given = "RANDOM"
* telecom.system = #phone
* telecom.value = "212-555-1253"
* telecom.use = #home
* gender = #female
* birthDate = "1983-01-14"
* patient = Reference(Patient/nobody) "Nobody"
