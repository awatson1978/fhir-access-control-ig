Alias: $patient-privacy = http://sdhealthconnect.com/leap/patient-privacy

Instance: leap-patient-privacy
InstanceOf: Questionnaire
Description: "Sample Legal Document - HIPAA Patient Privacy"

Usage: #example
* url = "http://34.94.253.50:8080/hapi-fhir-jpaserver/fhir/Questionnaire/leap-patient-privacy"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2021"
* code = $patient-privacy#2021-03-01 "Patient Privacy Questionnaire Version 1"
* item[0].linkId = "1"
* item[=].text = "Set the dates this consent will be in force."
* item[=].type = #group
* item[+].linkId = "1.1"
* item[=].text = "Use Default Option"
* item[=].type = #boolean
* item[+].linkId = "1.2"
* item[=].text = "Custom Date Option"
* item[=].type = #boolean
* item[+].linkId = "1.3"
* item[=].text = "Default date options, beginning today for:"
* item[=].type = #group
* item[=].enableWhen.question = "1.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[=].item[0].linkId = "1.3.1"
* item[=].item[=].text = "24 Hours"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "1.3.2"
* item[=].item[=].text = "1 Year"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "1.3.3"
* item[=].item[=].text = "5 years"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "1.3.4"
* item[=].item[=].text = "10 Years"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "1.3.5"
* item[=].item[=].text = "Calculated start date and time based on option selection"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "1.3.6"
* item[=].item[=].text = "Calculated end date and time based on option selection"
* item[=].item[=].type = #string
* item[+].linkId = "1.4"
* item[=].text = "Set the dates this consent will be in force."
* item[=].type = #group
* item[=].enableWhen.question = "1.2"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[=].item[0].linkId = "1.4.1"
* item[=].item[=].text = "Start date and time"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "1.4.2"
* item[=].item[=].text = "End date and time"
* item[=].item[=].type = #string
* item[+].linkId = "2"
* item[=].text = "Control what types of clinical information are exchanged."
* item[=].type = #group
* item[+].linkId = "2.1"
* item[=].text = "Deny access to the following:"
* item[=].type = #boolean
* item[+].linkId = "2.2"
* item[=].text = "Allow all types of data to be exchange."
* item[=].type = #boolean
* item[+].linkId = "2.1.1"
* item[=].text = "Select from list."
* item[=].type = #string
* item[=].enableWhen.question = "2.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "3"
* item[=].text = "The source of information being exchanged."
* item[=].type = #group
* item[+].linkId = "3.1"
* item[=].text = "Practitioner"
* item[=].type = #boolean
* item[+].linkId = "3.2"
* item[=].text = "Organization"
* item[=].type = #boolean
* item[+].linkId = "3.1.1"
* item[=].text = "Practitioner - Custodian (Select from list)."
* item[=].type = #string
* item[=].enableWhen.question = "3.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "3.2.1"
* item[=].text = "Organization - Custodian (Select from list)."
* item[=].type = #string
* item[=].enableWhen.question = "3.2"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "4"
* item[=].text = "The Person, or Organization, requesting your information."
* item[=].type = #group
* item[+].linkId = "4.1"
* item[=].text = "Practitioner"
* item[=].type = #boolean
* item[+].linkId = "4.2"
* item[=].text = "Organization"
* item[=].type = #boolean
* item[+].linkId = "4.1.1"
* item[=].text = "Practitioner - Recipient (Select from list)."
* item[=].type = #string
* item[=].enableWhen.question = "4.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "4.2.1"
* item[=].text = "Organization - Recipient (Select from list)."
* item[=].type = #string
* item[=].enableWhen.question = "4.2"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "5"
* item[=].text = "If portions of my clinical record are privacy sensitive, I would like to:"
* item[=].type = #group
* item[+].linkId = "5.1"
* item[=].text = "Remove them"
* item[=].type = #boolean
* item[+].linkId = "5.2"
* item[=].text = "I do not have privacy concerns"
* item[=].type = #boolean
* item[+].linkId = "5.1.1"
* item[=].text = "Select All - This will remove all information flagged as confidential"
* item[=].type = #boolean
* item[=].enableWhen.question = "5.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "6"
* item[=].text = "This last step will capture your signature and create a human readable pdf of this consent. (Electronic signature captured)"
* item[=].type = #boolean