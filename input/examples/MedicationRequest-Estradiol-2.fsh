Instance: medreq-22348957
InstanceOf: MedicationRequest
Description: "Medication prescription writtin in Massachuesetts by Dr. Yin"
Usage: #example
* status = #active
* intent = #plan
* subject = Reference(Patient/jennifer-smith) "SMITH, JENNIFER"
* authoredOn = "2020-09-02"
* requester.reference = "Practitioner/practitioner-alice-yin"
* requester.display = "YIN, ALICE"
* medicationReference = Reference(Medication/estrodiol-contraceptive) "Estradiol"
