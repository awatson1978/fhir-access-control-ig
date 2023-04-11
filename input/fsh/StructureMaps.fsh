// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.


Instance: FirstNameToGiven
InstanceOf: StructureMap
Description: "First name to given name"
Usage: #definition
* status = #draft
* url = "http://"
* name = "FirstNameToGiven"
* group[0].name = "First"
* group[=].typeMode = #types
* group[=].input[0].name = "FirstName"
* group[=].input[=].mode = #source
* group[=].rule[0].name = "gCaEyGa9vsLFC9aj5"
* group[=].rule[=].source[0].defaultValueString = "FirstName"
* group[=].rule[=].source[0].context = "gCaEyGa9vsLFC9aj5"
* group[=].rule[=].target[0].variable = "name.given"


Instance: LastNameToFamily
InstanceOf: StructureMap
Description: "Last name to family name"
Usage: #definition
* status = #draft
* url = "http://"
* name = "LastNameToFamily"
* group[0].name = "First"
* group[=].typeMode = #types
* group[=].input[0].name = "LastName"
* group[=].input[=].mode = #source
* group[=].rule[0].name = "cNAWCq2xPyKhDXGJZ"
* group[=].rule[=].source[0].defaultValueString = "LastName"
* group[=].rule[=].source[0].context = "cNAWCq2xPyKhDXGJZ"
* group[=].rule[0].target[0].variable = "name.family"




Instance: HipaaPrivacyToConsent
InstanceOf: StructureMap
Description: "HIPAA Privacy questionnaire to Consent record"
Usage: #definition
* status = #draft
* url = "http://"
* name = "HipaaPrivacyToConsent"
* group[0].name = "First"
* group[=].typeMode = #types
* group[=].input[0].name = "HipaaPrivacyToConsent"
* group[=].input[=].mode = #source
* group[=].rule[0].name = "QihW2v3EyoEuqB8Y5"
* group[=].rule[=].source[0].defaultValueString = "First"
* group[=].rule[=].source[0].context = "QihW2v3EyoEuqB8Y5"
* group[=].rule[=].target[0].variable = "name.given"



Instance: DnrToConsent
InstanceOf: StructureMap
Description: "Do Not Recussitate questionnaire to Consent record"
Usage: #definition
* status = #draft
* url = "http://"
* name = "DnrToConsent"
* group[0].name = "First"
* group[=].typeMode = #types
* group[=].input[0].name = "DnrToConsent"
* group[=].input[=].mode = #source
* group[=].rule[0].name = "HCSyJBGnL9c438DrE"
* group[=].rule[=].source[0].defaultValueString = "First"
* group[=].rule[=].source[0].context = "HCSyJBGnL9c438DrE"
* group[=].rule[=].target[0].variable = "name.given"



Instance: LivingWillToConsent
InstanceOf: StructureMap
Description: "Living Will questionnaire to Consent record"
Usage: #definition
* status = #draft
* url = "http://"
* name = "LivingWillToConsent"
* group[0].name = "First"
* group[=].typeMode = #types
* group[=].input[0].name = "LivingWillToConsent"
* group[=].input[=].mode = #source
* group[=].rule[0].name = "GASWmqkfPCcSWb2MY"
* group[=].rule[=].source[0].defaultValueString = "First"
* group[=].rule[=].source[0].context = "GASWmqkfPCcSWb2MY"
* group[=].rule[=].target[0].variable = "name.given"




Instance: PoaQuestinonaireToConsent
InstanceOf: StructureMap
Description: "Power of Attorney questionnaire to Consent record"
Usage: #definition
* status = #draft
* url = "http://"
* name = "PoaQuestinonaireToConsent"
* group[0].name = "First"
* group[=].typeMode = #types
* group[=].input[0].name = "PoaQuestinonaireToConsent"
* group[=].input[=].mode = #source
* group[=].rule[0].name = "6Zzqjx8mENBX5Mdnq"
* group[=].rule[=].source[0].defaultValueString = "First"
* group[=].rule[=].source[0].context = "6Zzqjx8mENBX5Mdnq"
* group[=].rule[=].target[0].variable = "name.given"

// * targetUri = "name.given"

Instance: PoaContractToConsent
InstanceOf: StructureMap
Description: "Power of Attorney contract to Consent record"
Usage: #definition
* status = #draft
* url = "http://"
* name = "PoaContractToConsent"
* group[0].name = "First"
* group[=].typeMode = #types
* group[=].input[0].name = "PoaContractToConsent"
* group[=].input[=].mode = #source
* group[=].rule[0].name = "6k7G75p8ZGja4tgnC"
* group[=].rule[=].source[0].defaultValueString = "First"
* group[=].rule[=].source[0].context = "6k7G75p8ZGja4tgnC"
* group[=].rule[=].target[0].variable = "name.given"




Instance: PoaMentalHealthToConsent
InstanceOf: StructureMap
Description: "Power of Attorney Mental Health questionnaire to Consent record"
Usage: #definition
* status = #draft
* url = "http://"
* name = "PoaMentalHealthToConsent"
* group[0].name = "First"
* group[=].typeMode = #types
* group[=].input[0].name = "PoaMentalHealthToConsent"
* group[=].input[=].mode = #source
* group[=].rule[0].name = "EiuDWq8ByF6aA8BYQ"
* group[=].rule[=].source[0].defaultValueString = "First"
* group[=].rule[=].source[0].context = "EiuDWq8ByF6aA8BYQ"
* group[=].rule[=].target[0].variable = "name.given"


Instance: PolstToConsent
InstanceOf: StructureMap
Description: "Physician Orders for Life Sustaining Treatment (POLST) to Consent record"
Usage: #definition
* status = #draft
* url = "http://"
* name = "PolstToConsent"
* group[0].name = "First"
* group[=].typeMode = #types
* group[=].input[0].name = "PolstToConsent"
* group[=].input[=].mode = #source
* group[=].rule[0].name = "bNnp9yqshCL5AePDP"
* group[=].rule[=].source[0].defaultValueString = "First"
* group[=].rule[=].source[0].context = "bNnp9yqshCL5AePDP"
* group[=].rule[=].target[0].variable = "name.given"

