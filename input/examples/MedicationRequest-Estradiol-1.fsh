Instance: medreq-1234557
InstanceOf: MedicationRequest
Description: "Medication prescription writtin in Alabama by Dr. Shuman"
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(Patient/jennifer-smith) "SMITH, JENNIFER"
* authoredOn = "2017-04-17"
* requester.reference = "Practitioner/practitioner-bernard-shuman"
* requester.display = "SHUMAN, BERNARD"
* medicationReference = Reference(Medication/estrodiol-contraceptive) "Estradiol"
