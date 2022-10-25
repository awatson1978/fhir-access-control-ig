Alias: $sct = http://snomed.info/sct
Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm

Instance: estrodiol-contraceptive
InstanceOf: Medication
Description: "Contraceptive birth control medication."
Usage: #example
* status = #active
* form = $sct#385055001 "Tablet dose form (qualifier value)"
* ingredient.itemCodeableConcept = $rxnorm#24395 "Estradiol valerate"
* ingredient.strength.numerator = 2 'mg'
* ingredient.strength.denominator = 1 http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm#TAB
