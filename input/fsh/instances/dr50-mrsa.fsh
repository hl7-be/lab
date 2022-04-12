Instance: dr50-mrsa
InstanceOf: BeObservationLaboratory
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* status = #final
* code = $loinc#35492-8 "Methicillin resistant Staphylococcus aureus (MRSA) DNA [Presence] in Unspecified specimen by NAA with probe detection"
* code.text = "MRSA"
* subject = Reference(Patient/patient1)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(Practitioner/practitioner11)
* valueString = "negative"