Instance: observation112
InstanceOf: BeObservationLaboratory
Usage: #inline
* status = #final
* code = $loinc#20563-3 "Carboxyhemoglobin/Hemoglobin.total in Blood"
* code.text = "Hemoglobin"
* subject = Reference(Patient/patient1)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* performer = Reference(Practitioner/practitioner11)
* valueQuantity = 14.1 'g/dl' "g/dl"
* specimen = Reference(specimen1)
* referenceRange.low = 11.8 'g/dl' "g/dl"
* referenceRange.high = 14.8 'g/dl' "g/dl"
* referenceRange.type = $referencerange-meaning#normal