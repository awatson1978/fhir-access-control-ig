Alias: $polst = http://sdhealthconnect.com/leap/adr/polst

Instance: leap-polst
InstanceOf: Questionnaire
Description: "Sample Legal Document - National Portable Medical Order"
Usage: #example
* url = "http://34.94.253.50:8080/hapi-fhir-jpaserver/fhir/Questionnaire/leap-polst"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2021"
* code = $polst#2021-03-01 "National Portable Medical Order Version 1"
* item[0].linkId = "1"
* item[=].text = "A. Cardiopulmonary Resuscitation Orders - Follow these orders if patient has no pulse and is not breathing."
* item[=].type = #group
* item[+].linkId = "1.1"
* item[=].text = "YES CPR: Attempt Resuscitation, including mechanical ventilation, defibrillation and cardioversion. (Requires choosing Full Treatments in Section B)"
* item[=].type = #boolean
* item[+].linkId = "1.2"
* item[=].text = "NO CPR: Do Not Attempt Resuscitation.</b> (May choose any option in Section B)"
* item[=].type = #boolean
* item[+].linkId = "2"
* item[=].text = "B. Initial Treatment Orders - Follow these orders if patient has a pulse and/or is breathing."
* item[=].type = #group
* item[+].linkId = "2.1"
* item[=].text = "Full Treatments (required if choose CPR in Section A). Goal: Attempt to sustain life by all medically effective means. Provide appropriate medical and surgical treatments as indicated to attempt to prolong life, including intensive care."
* item[=].type = #boolean
* item[+].linkId = "2.2"
* item[=].text = "Selective Treatments. Goal: Attempt to restore function while avoiding intensive care and resuscitation efforts (ventilator, defibrillation and cardioversion). May use non-invasive positive airway pressure, antibiotics and IV fluids as indicated. Avoid intensive care. Transfer to hospital if treatment needs cannot be met in current location."
* item[=].type = #boolean
* item[+].linkId = "2.3"
* item[=].text = "Comfort-focused Treatments. Goal: Maximize comfort through symptom management; allow natural death. Use oxygen, suction and manual treatment of airway obstruction as needed for comfort. Avoid treatments listed in full or select treatments unless consistent with comfort goal. Transfer to hospital <b>only</b> if comfort cannot be achieved in current setting."
* item[=].type = #boolean
* item[+].linkId = "3"
* item[=].text = "C. Additional Orders or Instructions - These orders are in addition to those in section B (e.g., blood products, dialysis). [EMS protocols may limit emergency responder ability to act on orders in this section.]"
* item[=].type = #string
* item[+].linkId = "4"
* item[=].text = "D. Medically Assisted Nutrition - (Offer food by mouth if desired by patient, safe and tolerated)\n\n"
* item[=].type = #group
* item[+].linkId = "4.1"
* item[=].text = "Provide feeding through new or existing surgically-placed tubes"
* item[=].type = #boolean
* item[+].linkId = "4.2"
* item[=].text = "Trial period for artificial nutrition but no surgically-placed tubes"
* item[=].type = #boolean
* item[+].linkId = "4.3"
* item[=].text = "No artificial means of nutrition desired"
* item[=].type = #boolean
* item[+].linkId = "4.4"
* item[=].text = "Discussed but no decision made (standard of care provided)"
* item[=].type = #boolean
* item[+].linkId = "5"
* item[=].text = "E. Signature: Patient or Patient Representative - I understand this form is voluntary. I have discussed my treatment options and goals of care with my provider. If signing as the patient’s representative, the treatments are consistent with the patient’s known wishes and in their best interest.\n\nThe most recently completed valid POLST form supersedes allpreviously completed POLST forms."
* item[=].type = #group
* item[+].linkId = "5.1"
* item[=].text = "Patient signature acquired"
* item[=].type = #boolean
* item[+].linkId = "5.2"
* item[=].text = "If other than patient, enter full name, and provide authority if any."
* item[=].type = #boolean
* item[+].linkId = "5.2.1"
* item[=].text = "Full Name"
* item[=].type = #string
* item[=].enableWhen.question = "5.2"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "5.2.2"
* item[=].text = "Authority"
* item[=].type = #string
* item[=].enableWhen.question = "5.2"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "6"
* item[=].text = "F. Signature: Health Care Provider - Verbal orders are acceptable with follow up signature. I have discussed this order with the patient or his/her representative. The orders reflect the patient’s known wishes, to the best of my knowledge.\n\n[Note: Only licensed health care providers authorized by law to sign POLST form in state where completed may sign this order]\n\n "
* item[=].type = #group
* item[+].linkId = "6.1"
* item[=].text = "Health care provider signature acquired"
* item[=].type = #boolean
* item[+].linkId = "6.2"
* item[=].text = "Health care provider full name"
* item[=].type = #string
* item[+].linkId = "6.3"
* item[=].text = "License/Certification #"
* item[=].type = #string
* item[+].linkId = "6.4"
* item[=].text = "Supervising Physician Signature"
* item[=].type = #group
* item[+].linkId = "6.4.1"
* item[=].text = "Not applicable"
* item[=].type = #boolean
* item[+].linkId = "6.4.2"
* item[=].text = "Supervising signature acquired"
* item[=].type = #boolean
* item[=].enableWhen.question = "6.4.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = false
* item[+].linkId = "6.4.3"
* item[=].text = "License #"
* item[=].type = #string
* item[=].enableWhen.question = "6.4.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = false
* item[+].linkId = "7"
* item[=].text = "Contact Information - Emergency Contact (Optional): Patient’s Emergency Contact. (Note: Listing a person here does NOT grant them authority to be a legal representative. Only an advance directive or state law can grant that authority.)"
* item[=].type = #group
* item[+].linkId = "7.1"
* item[=].text = "Full Name"
* item[=].type = #string
* item[+].linkId = "7.2"
* item[=].text = "Address"
* item[=].type = #string
* item[+].linkId = "7.3"
* item[=].text = "Contact Type"
* item[=].type = #group
* item[+].linkId = "7.3.1"
* item[=].text = "Legal representative"
* item[=].type = #boolean
* item[+].linkId = "7.3.2"
* item[=].text = "Other contact type"
* item[=].type = #boolean
* item[+].linkId = "7.4"
* item[=].text = "Day Phone Number"
* item[=].type = #string
* item[+].linkId = "7.5"
* item[=].text = "Night Phone Number"
* item[=].type = #string
* item[+].linkId = "8"
* item[=].text = "Contact Information - Primary Provider (Optional): Patient’s Emergency Contact."
* item[=].type = #group
* item[+].linkId = "8.1"
* item[=].text = "Primary Provider Name"
* item[=].type = #string
* item[+].linkId = "8.2"
* item[=].text = "Phone Number"
* item[=].type = #string
* item[+].linkId = "9"
* item[=].text = "Contact Information - Hospice Care (Optional)"
* item[=].type = #group
* item[+].linkId = "9.1"
* item[=].text = "Patient is enrolled in Hospice"
* item[=].type = #boolean
* item[+].linkId = "9.2"
* item[=].text = "Name of Agency"
* item[=].type = #string
* item[=].enableWhen.question = "9.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "9.3"
* item[=].text = "Agency Phone Number"
* item[=].type = #string
* item[=].enableWhen.question = "9.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "10"
* item[=].text = "Form Completion Info - Review(Optional): Reviewed patient’s advance directive to confirm no conflict with POLST orders: (A POLST form does not replace an advance directive or living will)"
* item[=].type = #group
* item[+].linkId = "10.1"
* item[=].text = "Yes"
* item[=].type = #boolean
* item[+].linkId = "10.2"
* item[=].text = "Date Reviewed"
* item[=].type = #date
* item[=].enableWhen.question = "10.1"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "10.3"
* item[=].text = "Conflict exists, patient notified(if patient lacks capacity, noted in chart)"
* item[=].type = #boolean
* item[+].linkId = "10.4"
* item[=].text = "Advance directive not available"
* item[=].type = #boolean
* item[+].linkId = "10.5"
* item[=].text = "No Advance directive exists"
* item[=].type = #boolean
* item[+].linkId = "11"
* item[=].text = "Form Completion Info - Participant Types(Optional)"
* item[=].type = #group
* item[+].linkId = "11.1"
* item[=].text = "Patient with decision making capacity"
* item[=].type = #boolean
* item[+].linkId = "11.2"
* item[=].text = "Legal surrogate/Health care agent"
* item[=].type = #boolean
* item[+].linkId = "11.3"
* item[=].text = "Court appointed guardian"
* item[=].type = #boolean
* item[+].linkId = "11.4"
* item[=].text = "Parent of minor"
* item[=].type = #boolean
* item[+].linkId = "11.5"
* item[=].text = "Other"
* item[=].type = #boolean
* item[+].linkId = "11.6"
* item[=].text = "List of others who participated"
* item[=].type = #string
* item[=].enableWhen.question = "10.5"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true
* item[+].linkId = "12"
* item[=].text = "Professional Assisting Health Care Provider w/ Form Completion (if applicable):"
* item[=].type = #group
* item[+].linkId = "12.1"
* item[=].text = "Full Name"
* item[=].type = #string
* item[+].linkId = "12.2"
* item[=].text = "Date Assisted"
* item[=].type = #date
* item[+].linkId = "12.3"
* item[=].text = "Phone Number"
* item[=].type = #string
* item[+].linkId = "12.4"
* item[=].text = "This individual is the patient’s:"
* item[=].type = #group
* item[+].linkId = "12.4.1"
* item[=].text = "Social Worker"
* item[=].type = #boolean
* item[+].linkId = "12.4.2"
* item[=].text = "Nurse"
* item[=].type = #boolean
* item[+].linkId = "12.4.3"
* item[=].text = "Clergy"
* item[=].type = #boolean
* item[+].linkId = "12.4.4"
* item[=].text = "Other"
* item[=].type = #boolean
* item[+].linkId = "12.4.5"
* item[=].text = "Enter Type"
* item[=].type = #string
* item[=].enableWhen.question = "12.4.4"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true