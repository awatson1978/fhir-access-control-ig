// // This is a simple example of a FSH file.
// // This file can be renamed, and additional FSH files can be added.
// // SUSHI will look for definitions in any file using the .fsh ending.

// Profile: ConsentExchangePatient // Change the internal identifier of the profile
// Parent:  USCorePatient // Base on US Core's Patient profile rather than the base FHIR resource
// Id:      consent-exchange-patient
// Title:    "ConsentExchangePatient"
// Description: "Patient resource for describing actors in an payor-to-payor data exchange workflow." // Add a description, which will appear in the IG and the computable StructureDefinition
// * name 1..* MS

// // Add an extension because birth place is not supported by a standard element in the base Patient resource
// * extension contains http://hl7.org/fhir/StructureDefinition/patient-birthPlace named birthPlace 0..1 MS

// // Limit the instances referenced by `generalPractitioner` to those conforming to the
// // ConsentEnginePractitioner profile (which we will define momentarily).
// * generalPractitioner only Reference(ConsentExchangePractitioner)

// * contact.relationship from ConsentExchangeRelations