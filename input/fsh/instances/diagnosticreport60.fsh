Instance: diagnosticreport60
InstanceOf: BeLaboratoryReport
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* meta.versionId = "1"
* language = #en
* identifier[DRID].value = "11530231003.2015110413180000000"
* basedOn = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d97)
* status = #final
* category.coding[0] = $v2-0074#LAB "Laboratory"
* category.coding[+] = $v2-0074#MB "Microbiology"
* code = $loinc#18769-0 "Microbial susceptibility tests Set"
* code.text = "Microbial susceptibility tests"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-03T13:18:00+01:00"
* issued = "2015-11-04T13:18:00+01:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d72)
* resultsInterpreter = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* specimen = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d91)
* result[0] = Reference(urn:uuid:7c16c9c0-c471-4098-ae09-48abcadd9d92)
* result[+] = Reference(urn:uuid:7c16c9c0-c471-4098-ae09-48abcadd9d93)
* conclusion = "This is our conclusion"