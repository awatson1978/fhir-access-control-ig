Alias: $poamentalhealth = http://sdhealthconnect.com/leap/adr/poamentalhealth

Instance: leap-poamentalhealth
InstanceOf: Questionnaire
Description: "Sample Legal Document - Power of Attorney - Mental Health"
Usage: #example
* url = "http://34.94.253.50:8080/hapi-fhir-jpaserver/fhir/Questionnaire/leap-poamentalhealth"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2021"
* code = $poamentalhealth#2021-03-01 "Power of Attorney Mental Health Questionnaire Version 1"
* item[0].linkId = "1"
* item[=].text = "GENERAL INFORMATION AND INSTRUCTIONS: Use this questionnaire if you want to select a person, called an agent, to make future health care decisions for you so that if you become too ill or cannot make those decisions for yourself the person you choose and trust can make medical decisions for you. Be sure you review and understand the importance of the document that is created at the end of this process. It is a good idea to talk to your doctor and loved ones if you have questions about the type of health care you do or do not want."
* item[=].type = #group
* item[+].linkId = "1.1"
* item[=].text = "Selection of my Mental Healthcare Power of Attorney and Alternate: I choose the following person to act as my agent to make mental health care decisions for me."
* item[=].type = #group
* item[+].linkId = "1.1.1"
* item[=].text = "Name"
* item[=].type = #string
* item[+].linkId = "1.1.2"
* item[=].text = "Address"
* item[=].type = #string
* item[+].linkId = "1.1.3"
* item[=].text = "Home Phone"
* item[=].type = #string
* item[+].linkId = "1.1.4"
* item[=].text = "Work Phone"
* item[=].type = #string
* item[+].linkId = "1.1.5"
* item[=].text = "Cell Phone"
* item[=].type = #string
* item[+].linkId = "1.2"
* item[=].text = "Selection of my Mental Healthcare Power of Attorney and Alternate: I choose the following person to act as an alternate to make mental health care decisions for me if my first agent is unavailable, unwilling, or unable to make decisions for me."
* item[=].type = #group
* item[+].linkId = "1.2.1"
* item[=].text = "Name"
* item[=].type = #string
* item[+].linkId = "1.2.2"
* item[=].text = "Address"
* item[=].type = #string
* item[+].linkId = "1.2.3"
* item[=].text = "Home Phone"
* item[=].type = #string
* item[+].linkId = "1.2.4"
* item[=].text = "Work Phone"
* item[=].type = #string
* item[+].linkId = "1.2.5"
* item[=].text = "Cell Phone"
* item[=].type = #string
* item[+].linkId = "2"
* item[=].text = "Mental health treatments that I AUTHORIZE if I am unable to make decisions for myself:\n\nHere are the mental health treatments I authorize my agent to make for me if I become incapable of making my own mental health care decisions due to mental or physical illness, injury, disability, or incapacity. This appointment is effective unless and until it is revoked by me or by an order of a court. My agent is authorized to do the following which I have initialed or marked:"
* item[=].type = #group
* item[+].linkId = "2.1"
* item[=].text = "To receive medical records and information regarding my mental health treatment and to receive, review, and consent to disclosure of any of my medical records related to that treatment.)"
* item[=].type = #boolean
* item[+].linkId = "2.2"
* item[=].text = "To consent to the administration of any medications recommended by my treating physician."
* item[=].type = #boolean
* item[+].linkId = "2.3"
* item[=].text = "To admit me to an inpatient or partial psychiatric hospitalization program."
* item[=].type = #boolean
* item[+].linkId = "2.4"
* item[=].text = "Other:"
* item[=].type = #boolean
* item[+].linkId = "2.4.1"
* item[=].text = "Other authorizations:"
* item[=].type = #string
* item[+].linkId = "3"
* item[=].text = "Mental health care treatments that I expressly DO NOT AUTHORIZE if I am unable to make decisions for myself: (Explain or write in \"None\")"
* item[=].type = #string
* item[+].linkId = "4"
* item[=].text = "I intend for my agent to be treated as I would be with respect to my rights regarding the use and disclosure of my individually identifiable health information or other medical records. This release authority applies to any information governed by the Health Insurance Portability and Accountability Act of 1996 (aka HIPAA), 42 USC 1320d and 45 CFR 160-164."
* item[=].type = #boolean
* item[+].linkId = "5"
* item[=].text = "MY SIGNATURE VERIFICATION FOR THE MENTAL HEALTH POWER OF ATTORNEY"
* item[=].type = #boolean
* item[+].linkId = "6"
* item[=].text = "If you are unable to physically sign this document, your witness/notary may sign and initial for you. If applicable have your witness/notary sign below.\n\nWitness/Notary Verification: The principal of this document directly indicated to me that this Mental Health Power of Attorney expresses their wishes and that they intend to adopt it at this time."
* item[=].type = #group
* item[+].linkId = "6.1"
* item[=].text = "Witness or Notary name"
* item[=].type = #string
* item[+].linkId = "6.2"
* item[=].text = "Witness or Notary signature acquired"
* item[=].type = #boolean
* item[+].linkId = "7"
* item[=].text = "SIGNATURE OF WITNESS\n\nI was present when this form was signed (or marked). The principal appeared to be of sound mind and was not forced to sign this form. I affirm that I meet the requirements to be a witness as indicated on page one of the mental health power of attorney form."
* item[=].type = #group
* item[+].linkId = "7.1"
* item[=].text = "Witness name"
* item[=].type = #string
* item[+].linkId = "7.2"
* item[=].text = "Witness address"
* item[=].type = #string
* item[+].linkId = "7.3"
* item[=].text = "Witness signaure acquired"
* item[=].type = #boolean