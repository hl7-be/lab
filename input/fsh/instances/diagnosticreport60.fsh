Instance: diagnosticreport60
InstanceOf: BeLaboratoryReport
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* meta.versionId = "1"
* language = #en
* identifier[DRID].value = "11530231003.2015110413180000000"
* basedOn = Reference(servicerequest60)
* status = #final
* category.coding[0] = $v2-0074#LAB "Laboratory"
* category.coding[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18769-0 "Microbial susceptibility tests Set"
* code.text = "Microbial susceptibility tests"
* subject = Reference(Patient/patient1)
* effectiveDateTime = "2015-11-03T13:18:00+01:00"
* issued = "2015-11-04T13:18:00+01:00"
* performer = Reference(Organization/organization10)
* resultsInterpreter = Reference(Practitioner/practitioner11)
* specimen = Reference(specimen60)
* result[0] = Reference(mac60)
* result[+] = Reference(cult60)
* conclusion = "This is our conclusion"