Instance: practitionerrole1
InstanceOf: BePractitionerRole
Usage: #definition
* identifier.system = "http://www.acme.org/practitioners"
* identifier.value = "23"
* active = true
* period.start = "2019-08-01T00:00:00.000Z"
* period.end = "2019-12-01T00:00:00.000Z"
* practitioner.reference = "Practitioner/practitioner1"
* practitioner.display = "Dr Katherine Pulaski"
* code = $cd-hcparty#persphysician "physician"
* specialty = $sct#419772000 "Family practice"
* availableTime[0].daysOfWeek[0] = #mon
* availableTime[=].daysOfWeek[+] = #tue
* availableTime[=].daysOfWeek[+] = #wed
* availableTime[=].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "16:30:00"
* availableTime[+].daysOfWeek[0] = #thu
* availableTime[=].daysOfWeek[+] = #fri
* availableTime[=].availableStartTime = "09:00:00"
* availableTime[=].availableEndTime = "16:30:00"
* notAvailable.description = "Katherine will be on extended leave during August 2020"
* notAvailable.during.start = "2020-08-01T00:00:00.000Z"
* notAvailable.during.end = "2020-08-20T00:00:00.000Z"
* availabilityExceptions = "Katherine is generally unavailable on public holidays and during the Christmas/New Year break"