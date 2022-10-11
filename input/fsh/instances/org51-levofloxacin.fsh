Instance: org51-levofloxacin
InstanceOf: BeObservationLaboratory
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* status = #final
* code = $loinc#20396-8 "levoFLOXacin [Susceptibility] by Minimum inhibitory concentration (MIC)"
* code.text = "Levofloxacin"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* interpretation = $v3-ObservationInterpretation#S "Susceptible"