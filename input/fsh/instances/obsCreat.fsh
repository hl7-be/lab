Instance: obsCreat
InstanceOf: BeObservationLaboratory
Title: "Detailed structure of fragment of creatinine panel."
Description: "Detailed structure of fragment of creatinine panel.(Note this example only concerns the Observation structure, a laboratory report SHALL be send leveraging the diagnosticReport resource that uses this Observation to express its results.)"
Usage: #definition
* status = #final
* code = $loinc#65634-8 "Creatinine 24 hour urine panel - 24 hour Urine"
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(Practitioner/practitioner10)
* specimen = Reference(urine1)
* hasMember[0] = Reference(obsUrineScreening)
* hasMember[+] = Reference(obsMagnesium)