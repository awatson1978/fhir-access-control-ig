Alias: $livingwill = http://sdhealthconnect.com/leap/adr/livingwill

Instance: leap-livingwill
InstanceOf: Questionnaire
Description: "Sample Legal Document - Living Will"
Usage: #example
* url = "http://34.94.253.50:8080/hapi-fhir-jpaserver/fhir/Questionnaire/leap-livingwill"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2021"
* code = $livingwill#2021-03-01 "Living Will Questionnaire Version 1"
* item[0].linkId = "1"
* item[=].text = "Some general statements about your health care choices are listed below. If you agree with one ofthe statements, you should select that statement. Read all of these statements carefully BEFORE you select your preferred statement. You can also write your own statement concerning life-sustaining treatment and other matters relating to your health care. You may select any combination of items 1, 2, 3 and 4, BUT if you 'select' item 5 the others will not be selected."
* item[=].type = #group
* item[+].linkId = "1.1"
* item[=].text = "If I have a terminal condition I do not want my life to be prolonged, and I do not want lifesustaining treatment, beyond comfort care, that would serve only to artificially delay the moment of my death."
* item[=].type = #boolean
* item[+].linkId = "1.2"
* item[=].text = "If I am in a terminal condition or an irreversible coma or a persistent vegetative state that my doctors reasonably feel to be irreversible or incurable, I do want the medical treatment necessary to provide care that would keep me comfortable, but I DO NOT want the following:"
* item[=].type = #boolean
* item[+].linkId = "1.3"
* item[=].text = "Patient Does Not Want the following:"
* item[=].type = #group
* item[=].enableWhen.question = "1.2"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[=].item[0].linkId = "1.3.1"
* item[=].item[=].text = "Cardiopulmonary resuscitation (CPR). For example: the use of drugs, electric shock and artificial breathing."
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "1.3.2"
* item[=].item[=].text = "Artificially administered food and fluids."
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "1.3.3"
* item[=].item[=].text = "To be taken to a hospital if at all avoidable."
* item[=].item[=].type = #boolean
* item[+].linkId = "1.4"
* item[=].text = "Regardless of any other directions I have given in this Living Will, if I am known to be pregnant, I do not want life-sustaining treatment withheld or withdrawn if it is possible that the embryo/fetus will develop to the point of live birth with the continued application of lifesustaining treatment."
* item[=].type = #boolean
* item[+].linkId = "1.5"
* item[=].text = "Regardless of any other directions I have given in this Living Will, I do want the use of all medical care necessary to treat my condition until my doctors reasonably conclude that my condition is terminal or is irreversible and incurable or I am in a persistent vegetative state."
* item[=].type = #boolean
* item[+].linkId = "1.6"
* item[=].text = "I want my life to be prolonged to the greatest extent possible (If you select here, all others should be unselected)."
* item[=].type = #boolean
* item[+].linkId = "2"
* item[=].text = "Additional Instructions"
* item[=].type = #group
* item[+].linkId = "2.1"
* item[=].text = "I HAVE NOT attached additional special instructions about End of Life Care I want."
* item[=].type = #boolean
* item[+].linkId = "2.2"
* item[=].text = "I HAVE attached additional special provisions or limitations about End of Life Care I want."
* item[=].type = #boolean
* item[+].linkId = "3"
* item[=].text = "Signature Verficiation"
* item[=].type = #group
* item[+].linkId = "3.1"
* item[=].text = "Patient Signature Acquired."
* item[=].type = #boolean
* item[+].linkId = "3.2"
* item[=].text = "Patient Unable to Sign, Alternate's Signature Acquired."
* item[=].type = #boolean
* item[+].linkId = "3.3"
* item[=].text = "Witness Signature Acquired"
* item[=].type = #boolean


