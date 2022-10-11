Instance: observation112
InstanceOf: BeObservationLaboratory
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* status = #final
* code = $loinc#20563-3 "Carboxyhemoglobin/Hemoglobin.total in Blood"
* code.text = "Hemoglobin"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* valueQuantity = 14.1 'g/dl' "g/dl"
* specimen = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d35)
* referenceRange.low = 11.8 'g/dl' "g/dl"
* referenceRange.high = 14.8 'g/dl' "g/dl"
* referenceRange.type = $referencerange-meaning#normal