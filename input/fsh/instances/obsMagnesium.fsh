Instance: obsMagnesium
InstanceOf: BeObservationLaboratory
Usage: #definition
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* status = #final
* code = $loinc#2598-1 "Magnesium [Moles/volume] in Urine"
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(Practitioner/practitioner10)
* valueQuantity = 1 'mmol/l' "mmol/l"
* specimen = Reference(urine1)
* referenceRange.low = 1.23 'mmol/l' "mmol/l"
* referenceRange.high = 2.06 'mmol/l' "mmol/l"
* referenceRange.type = $referencerange-meaning#normal