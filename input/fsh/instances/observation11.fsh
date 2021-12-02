Instance: observation11
InstanceOf: BeObservationLaboratory
Usage: #inline
* status = #final
* code.text = "SCREENING"
* subject = Reference(Patient/patient1)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* performer = Reference(Practitioner/practitioner11)
* hasMember[0] = Reference(observation111)
* hasMember[+] = Reference(observation112)