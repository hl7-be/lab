Instance: org51-levofloxacin
InstanceOf: BeObservationLaboratory
Usage: #inline
* status = #final
* code = $loinc#20396-8 "levoFLOXacin [Susceptibility] by Minimum inhibitory concentration (MIC)"
* code.text = "Levofloxacin"
* subject = Reference(Patient/patient1)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(Practitioner/practitioner11)
* interpretation = $v3-ObservationInterpretation#S "Susceptible"