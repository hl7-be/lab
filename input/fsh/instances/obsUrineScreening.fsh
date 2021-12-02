Instance: obsUrineScreening
InstanceOf: BeObservationLaboratory
Usage: #definition
* status = #final
* code.text = "URINE Screening"
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(Practitioner/practitioner10)
* specimen = Reference(urine1)
* hasMember[0] = Reference(obsKetonen)
* hasMember[+] = Reference(obsUrobili)