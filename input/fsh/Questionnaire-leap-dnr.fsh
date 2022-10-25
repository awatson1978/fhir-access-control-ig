Alias: $dnr = http://sdhealthconnect.com/leap/adr/dnr

Instance: leap-dnr
InstanceOf: Questionnaire
Description: "Sample Legal Document - Do Not Rescussitate"

Usage: #example
* url = "http://34.94.253.50:8080/hapi-fhir-jpaserver/fhir/Questionnaire/leap-dnr"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2021"
* code = $dnr#2021-03-01 "DNR Questionnaire Version 1"
* item[0].linkId = "1"
* item[=].text = "GENERAL INFORMATION AND INSTRUCTIONS: A Prehospital Medical Care Directive is a document signed by you and your doctor that informs emergency medical technicians (EMTs) or hospital emergency personnel not to resuscitate you. Sometimes this is called a DNR – Do Not Resuscitate. If you have this form, EMTs and other emergency personnel will not use equipment, drugs, or devices to restart your heart or breathing, but they will not withhold medical interventions that are necessary to provide comfort care or to alleviate pain."
* item[=].type = #group
* item[+].linkId = "1.1"
* item[=].text = "In the event of cardiac or respiratory arrest, I refuse any resuscitation measures including cardiac compression, endotracheal intubation and other advanced airway management, artificial ventilation, defibrillation, administration of advanced cardiac life support drugs and related emergency medical procedures. "
* item[=].type = #boolean
* item[+].linkId = "2"
* item[=].text = "If I am unable to communicate my wishes, and I have designated a Health Care Power of Attorney, my elected Health Care agent shall sign"
* item[=].type = #group
* item[+].linkId = "2.1"
* item[=].text = "Name of Healthcare Power of Attorney or Agent"
* item[=].type = #string
* item[+].linkId = "2.2"
* item[=].text = "Healthcare Power of Attorney or Agent Signature Acquired"
* item[=].type = #boolean
* item[+].linkId = "3"
* item[=].text = "Information about my Doctor and Hospice"
* item[=].type = #group
* item[+].linkId = "3.1"
* item[=].text = "Physician Name"
* item[=].type = #string
* item[+].linkId = "3.2"
* item[=].text = "Phone Number"
* item[=].type = #string
* item[+].linkId = "3.3"
* item[=].text = "Hospic program, if applicable(name)"
* item[=].type = #string
* item[+].linkId = "4"
* item[=].text = "SIGNATURE OF DOCTOR OR OTHER HEALTH CARE PROVIDER"
* item[=].type = #group
* item[+].linkId = "4.1"
* item[=].text = "I have explained this form and its consequences to the signer and obtained assurance that the signer understands that death may result from any refused care listed above."
* item[=].type = #boolean
* item[+].linkId = "4.2"
* item[=].text = "Signature of Physician or Healthcare provider acquired"
* item[=].type = #boolean
* item[+].linkId = "5"
* item[=].text = "SIGNATURE OF WITNESS OR NOTARY (NOT BOTH)"
* item[=].type = #group
* item[+].linkId = "5.1"
* item[=].text = "I was present when this form was signed (or marked). The patient then appeared to be of sound mind and free from duress."
* item[=].type = #boolean