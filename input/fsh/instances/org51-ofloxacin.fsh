Instance: org51-ofloxacin
InstanceOf: BeObservationLaboratory
Usage: #inline
* status = #final
* code = $loinc#375-6 "Ofloxacin [Susceptibility] by Minimum inhibitory concentration (MIC)"
* code.text = "Ofloxacin"
* subject = Reference(Patient/patient1)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(Practitioner/practitioner11)
* interpretation = $v3-ObservationInterpretation#S "Susceptible"