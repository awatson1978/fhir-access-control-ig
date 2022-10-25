Instance: ConsentAnonOrg
InstanceOf: Consent
Description:  "Policy rule to allow general citizenry and anonymous users access to public listings of Organization records."
Usage: #example
* id = "ConsentAnonOrg"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL "information disclosure"
* organization = Reference(https://national-directory.meteorapp.com/) "National Care Directory"
* dateTime = "2022-09-18T00:00:00.000Z"
* policy.uri = "https://docs.google.com/document/d/10Y-rEtVQiTWTy7tU-Slw5urAv5RVN38DwSGMVz84Phg/edit?usp=sharing"
* provision[0].type = #deny
* provision[=].provision[0].type = #permit
* provision[=].provision[=].actor.role[0].coding = http://terminology.hl7.org/CodeSystem/v3-RoleClass#CIT "citizen"
* provision[=].provision[=].actor.role[=].coding.userSelected = true
* provision[=].provision[=].actor.reference = Reference(AnonRole)
* provision[=].provision[=].securityLabel.system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* provision[=].provision[=].securityLabel.code = #N
* provision[=].provision[=].securityLabel.display = "normal"
* provision[=].provision[=].securityLabel.userSelected = true
* provision[=].provision[=].class = #Organization "Organization"
* meta.versionId = "1"
* meta.lastUpdated = "2022-09-18T23:01:14.992Z"

Instance: ConsentAnonLoc
InstanceOf: Consent
Description:  "Policy rule to allow general citizenry and anonymous users access to public listings of Location records."
Usage: #example
* id = "ConsentAnonLoc"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL "information disclosure"
* dateTime = "2022-09-18T00:00:00.000Z"
* policy.uri = "https://docs.google.com/document/d/10Y-rEtVQiTWTy7tU-Slw5urAv5RVN38DwSGMVz84Phg/edit?usp=sharing"
* provision[0].type = #deny
* provision[=].provision[0].type = #permit
* provision[=].provision[=].actor.role[0].coding = http://terminology.hl7.org/CodeSystem/v3-RoleClass#CIT "citizen"
* provision[=].provision[=].actor.role[=].coding.userSelected = true
* provision[=].provision[=].actor.reference = Reference(AnonRole)
* provision[=].provision[=].securityLabel.system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* provision[=].provision[=].securityLabel.code = #N
* provision[=].provision[=].securityLabel.display = "normal"
* provision[=].provision[=].securityLabel.userSelected = true
* provision[=].provision[=].class = #Location "Location"
* meta.versionId = "1"
* meta.lastUpdated = "2022-09-19T00:00:42.562Z"


Instance: ConsentAnonPrac
InstanceOf: Consent
Description:  "Policy rule to allow general citizenry and anonymous users access to public listings of Practitioner records."
Usage: #example
* id = "ConsentAnonPrac"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL "information disclosure"
* dateTime = "2022-09-18T00:00:00.000Z"
* policy.uri = "https://docs.google.com/document/d/10Y-rEtVQiTWTy7tU-Slw5urAv5RVN38DwSGMVz84Phg/edit?usp=sharing"
* provision[0].type = #deny
* provision[=].provision[0].type = #permit
* provision[=].provision[=].actor.role[0].coding = http://terminology.hl7.org/CodeSystem/v3-RoleClass#CIT "citizen"
* provision[=].provision[=].actor.role[=].coding.userSelected = true
* provision[=].provision[=].actor.reference = Reference(AnonRole)
* provision[=].provision[=].securityLabel.system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* provision[=].provision[=].securityLabel.code = #N
* provision[=].provision[=].securityLabel.display = "normal"
* provision[=].provision[=].securityLabel.userSelected = true
* provision[=].provision[=].class = #Practitioner "Practitioner"
* meta.versionId = "1"
* meta.lastUpdated = "2022-09-19T00:02:14.335Z"


Instance: ConsentClinicianOrg
InstanceOf: Consent
Description:  "Policy rule to allow authenticated healthcare practitioners access to restricted Organization records."
Usage: #example
* id = "ConsentClinicianOrg"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL "information disclosure"
* dateTime = "2022-09-18T00:00:00.000Z"
* policy.uri = "https://docs.google.com/document/d/10Y-rEtVQiTWTy7tU-Slw5urAv5RVN38DwSGMVz84Phg/edit?usp=sharing"
* provision[0].type = #deny
* provision[=].provision[0].type = #permit
* provision[=].provision[=].actor.role[0].coding = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV "healthcare provider"
* provision[=].provision[=].actor.role[=].coding.userSelected = true
* provision[=].provision[=].actor.reference = Reference(CounselorRole1)
* provision[=].provision[=].securityLabel.system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* provision[=].provision[=].securityLabel.code = #R
* provision[=].provision[=].securityLabel.display = "restricted"
* provision[=].provision[=].securityLabel.userSelected = true
* provision[=].provision[=].class = #Organization "Organization"
* meta.versionId = "1"
* meta.lastUpdated = "2022-09-19T00:02:41.128Z"


Instance: ConsentClinicianLoc
InstanceOf: Consent
Description:  "Policy rule to allow authenticated healthcare practitioners access to restricted Location records."
Usage: #example
* id = "ConsentClinicianLoc"
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"
* category = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL "information disclosure"
* dateTime = "2022-09-18T00:00:00.000Z"
* policy.uri = "https://docs.google.com/document/d/10Y-rEtVQiTWTy7tU-Slw5urAv5RVN38DwSGMVz84Phg/edit?usp=sharing"
* provision[0].type = #deny
* provision[=].provision[0].type = #permit
* provision[=].provision[=].actor.role[0].coding = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV "healthcare provider"
* provision[=].provision[=].actor.role[=].coding.userSelected = true
* provision[=].provision[=].actor.reference = Reference(CounselorRole1)
* provision[=].provision[=].securityLabel.system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* provision[=].provision[=].securityLabel.code = #R
* provision[=].provision[=].securityLabel.display = "restricted"
* provision[=].provision[=].securityLabel.userSelected = true
* provision[=].provision[=].class = #Location "Location"
* meta.versionId = "1"
* meta.lastUpdated = "2022-09-19T00:02:49.362Z"