// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Instance: HipaaPrivacyToConsent
InstanceOf: StructureMap
Description: "HIPAA Privacy questionnaire to Consent record"
Usage: #definition
* status = #draft
// * sourceUri = "firstName"
// * targetUri = "name.given"


Instance: DnrToConsent
InstanceOf: StructureMap
Description: "Do Not Recussitate questionnaire to Consent record"
Usage: #definition
* status = #draft
// * sourceUri = "firstName"
// * targetUri = "name.given"


Instance: LivingWillToConsent
InstanceOf: StructureMap
Description: "Living Will questionnaire to Consent record"
Usage: #definition
* status = #draft
// * sourceUri = "firstName"
// * targetUri = "name.given"



Instance: PoaQuestinonaireToConsent
InstanceOf: StructureMap
Description: "Power of Attorney questionnaire to Consent record"
Usage: #definition
* status = #draft
// * sourceUri = "firstName"
// * targetUri = "name.given"

Instance: PoaContractToConsent
InstanceOf: StructureMap
Description: "Power of Attorney contract to Consent record"
Usage: #definition
* status = #draft
// * sourceUri = "firstName"
// * targetUri = "name.given"



Instance: PoaMentalHealthToConsent
InstanceOf: StructureMap
Description: "Power of Attorney Mental Health questionnaire to Consent record"
Usage: #definition
* status = #draft
// * sourceUri = "firstName"
// * targetUri = "name.given"

Instance: PolstToConsent
InstanceOf: StructureMap
Description: "Physician Orders for Life Sustaining Treatment (POLST) to Consent record"
Usage: #definition
* status = #draft
// * sourceUri = "firstName"
// * targetUri = "name.given"
