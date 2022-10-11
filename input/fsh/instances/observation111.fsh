Instance: observation111
InstanceOf: BeObservationLaboratory
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* status = #final
* code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "Red blood cells (blood)"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* valueQuantity = 4.35 '10*6/uL' "10*6/uL"
* specimen = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d35)
* referenceRange.low = 3.93 '10*6/uL' "10*6/uL"
* referenceRange.high = 5.01 '10*6/uL' "10*6/uL"
* referenceRange.type = $referencerange-meaning#normal