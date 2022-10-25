Alias: $poahealthcare = http://sdhealthconnect.com/leap/adr/poahealthcare

Instance: leap-poahealthcare
InstanceOf: Questionnaire
Description: "Sample Legal Document - Power of Attorney"
Usage: #example
* url = "http://34.94.253.50:8080/hapi-fhir-jpaserver/fhir/Questionnaire/leap-poahealthcare"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2021"
* code = $poahealthcare#2021-03-01 "Power of Attorney Healthcare Questionnaire Version 1"
* item[0].linkId = "1"
* item[=].text = "GENERAL INFORMATION AND INSTRUCTIONS: Use this questionnaire if you want to select a person, called an agent, to make future health care decisions for you so that if you become too ill or cannot make those decisions for yourself the person you choose and trust can make medical decisions for you. Be sure you review and understand the importance of the document that is created at the end of this process. It is a good idea to talk to your doctor and loved ones if you have questions about the type of health care you do or do not want."
* item[=].type = #group
* item[+].linkId = "1.1"
* item[=].text = "Selection of my Healthcare Power of Attorney and Alternate: I choose the following person to act as my agent to make health care decisions for me."
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
* item[=].text = "Selection of my Healthcare Power of Attorney and Alternate: I choose the following person to act as an alternate to make health care decisions for me if my first agent is unavailable, unwilling, or unable to make decisions for me."
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
* item[+].linkId = "1.3"
* item[=].text = "I AUTHORIZE my agent to make health care decisions for me when I cannot make or communicate my own health care decisions. I want my agent to make all such decisions for me except any decisions that I have expressly stated in this form that I do not authorize him/her to make. My agent should explain to me any choices he or she made if I am able to understand. I further authorize my agent to have access to my personal protected health care information and medical records. This appointment is effective unless it is revoked by me or by a court order."
* item[=].type = #boolean
* item[+].linkId = "1.4"
* item[=].text = "Health care decisions that I expressly DO NOT AUTHORIZE if I am unable to make decisions for myself: (Explain or write in \"None\")"
* item[=].type = #string
* item[+].linkId = "2"
* item[=].text = "My specific wishes regarding autopsy"
* item[=].type = #group
* item[+].linkId = "2.1"
* item[=].text = "Upon my death, I DO NOT consent to a voluntary autopsy."
* item[=].type = #boolean
* item[+].linkId = "2.2"
* item[=].text = "Upon my death, I DO consent to a voluntary autospy."
* item[=].type = #boolean
* item[+].linkId = "2.3"
* item[=].text = "My agent will give or refuse consent for an autospy"
* item[=].type = #boolean
* item[+].linkId = "3"
* item[=].text = "My specific wishes regarding organ donation"
* item[=].type = #group
* item[+].linkId = "3.1"
* item[=].text = "I DO NOT WANT to make an organ or tissue donation, and I DO NOT want this donation authorized on my behalf by my agent or my family."
* item[=].type = #boolean
* item[+].linkId = "3.2"
* item[=].text = "I have already signed a written agreement or donor card regarding donation with the following individual or institution."
* item[=].type = #boolean
* item[+].linkId = "3.2.1"
* item[=].text = "Institution Name"
* item[=].type = #string
* item[=].enableWhen.question = "3.2"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "3.3"
* item[=].text = "I DO WANT to make an organ or tissue donation when I die. Here are my directions"
* item[=].type = #boolean
* item[+].linkId = "3.3.1"
* item[=].text = "What organs/tissue I choose to donate."
* item[=].type = #group
* item[+].linkId = "3.3.1.1"
* item[=].text = "Whole body"
* item[=].type = #boolean
* item[+].linkId = "3.3.1.2"
* item[=].text = "Any needed parts or organs"
* item[=].type = #boolean
* item[+].linkId = "3.3.1.3"
* item[=].text = "Specific parts or organs"
* item[=].type = #boolean
* item[+].linkId = "3.3.1.4"
* item[=].text = "Specific part or organs only"
* item[=].type = #string
* item[=].enableWhen.question = "3.3.1.3"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "3.3.2"
* item[=].text = "I am donating organ/tissue for"
* item[=].type = #group
* item[+].linkId = "3.3.2.1"
* item[=].text = "Any legally authorized purpose"
* item[=].type = #boolean
* item[+].linkId = "3.3.2.2"
* item[=].text = "Transplant or therapeutic purposes only"
* item[=].type = #boolean
* item[+].linkId = "3.3.2.3"
* item[=].text = "Research only"
* item[=].type = #boolean
* item[+].linkId = "3.3.2.4"
* item[=].text = "Other"
* item[=].type = #boolean
* item[+].linkId = "3.3.2.5"
* item[=].text = "Other purposes"
* item[=].type = #string
* item[=].enableWhen.question = "3.3.2.4"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "3.3.3"
* item[=].text = "The organization or person I want my organs/tissue to go to are"
* item[=].type = #group
* item[+].linkId = "3.3.3.1"
* item[=].text = "My list"
* item[=].type = #boolean
* item[+].linkId = "3.3.3.2"
* item[=].text = "List organizations"
* item[=].type = #string
* item[=].enableWhen.question = "3.3.3.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "3.3.3.3"
* item[=].text = "Any that my agent chooses"
* item[=].type = #boolean
* item[+].linkId = "4"
* item[=].text = "My specific wishes regarding funeral and burial disposition"
* item[=].type = #group
* item[+].linkId = "4.1"
* item[=].text = "Upon my death, I direct my body to be buried.(instead of cremated)"
* item[=].type = #boolean
* item[+].linkId = "4.2"
* item[=].text = "Upon my death, I direct my body to be buried in:"
* item[=].type = #boolean
* item[+].linkId = "4.2.1"
* item[=].text = "I direct my body to be buried in following:"
* item[=].type = #string
* item[=].enableWhen.question = "4.2"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "4.3"
* item[=].text = "Upon my death, I direct my body to be cremated."
* item[=].type = #boolean
* item[+].linkId = "4.4"
* item[=].text = "Upon my death, I direct my body to be created with my ashes to be,"
* item[=].type = #boolean
* item[+].linkId = "4.4.1"
* item[=].text = "I direct the following to be done with my ashes:"
* item[=].type = #string
* item[+].linkId = "4.5"
* item[=].text = "My agent will make all funeral and burial decisions."
* item[=].type = #boolean
* item[+].linkId = "5"
* item[=].text = "Physician Affidavit(Optional)\nYou may wish to ask questions of your physician regarding a particular treatment or about the options in the form. If you do speak with your physician it is a good idea to ask your physician to complete this affidavit and keep a copy for his/her file."
* item[=].type = #group
* item[+].linkId = "5.1"
* item[=].text = "Physicians name"
* item[=].type = #string
* item[+].linkId = "5.2"
* item[=].text = "Physicians signature acquired"
* item[=].type = #boolean
* item[+].linkId = "5.3"
* item[=].text = "Signature date"
* item[=].type = #date
* item[+].linkId = "6"
* item[=].text = "HIPAA WAIVER OF CONFIDENTIALITY FOR MY AGENT"
* item[=].type = #group
* item[+].linkId = "6.1"
* item[=].text = "I intend for my agent to be treated as I would be with respect to my rights regarding the use and disclosure of my individually identifiable health information or other medical records. This release authority applies to any information governed by the Health Insurance Portability and Accountability Act of 1996 (aka HIPAA), 42 USC 1320d and 45 CFR 160-164."
* item[=].type = #boolean
* item[+].linkId = "7"
* item[=].text = "MY SIGNATURE VERIFICATION FOR THE HEALTH CARE POWER OF ATTORNEY"
* item[=].type = #boolean
* item[+].linkId = "8"
* item[=].text = "If you are unable to physically sign this document, your witness/notary may sign and initial for you. If applicable have your witness/notary sign below.\n\nWitness/Notary Verification: The principal of this document directly indicated to me that this Health Care Power of Attorney expresses their wishes and that they intend to adopt it at this time."
* item[=].type = #group
* item[+].linkId = "8.1"
* item[=].text = "Witness or Notary name"
* item[=].type = #string
* item[+].linkId = "8.2"
* item[=].text = "Witness or Notary signature acquired"
* item[=].type = #boolean
* item[+].linkId = "9"
* item[=].text = "SIGNATURE OF WITNESS\n\nI was present when this form was signed (or marked). The principal appeared to be of sound mind and was not forced to sign this form. I affirm that I meet the requirements to be a witness as indicated on page one of the health care power of attorney form."
* item[=].type = #group
* item[+].linkId = "9.1"
* item[=].text = "Witness name"
* item[=].type = #string
* item[+].linkId = "9.2"
* item[=].text = "Witness address"
* item[=].type = #string
* item[+].linkId = "9.3"
* item[=].text = "Witness signaure acquired"
* item[=].type = #boolean