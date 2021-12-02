Instance: diagnosticreport1
InstanceOf: BeLaboratoryReport
Usage: #inline
* meta.versionId = "1"
* language = #en
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/be-ns-lab-report-diagnostic-report-id"
* identifier.value = "11530231003.2015110413180000000"
* basedOn = Reference(servicerequest1)
* status = #final
* category = $v2-0074#LAB "Laboratory"
* code.coding = $loinc#18723-7 "Hematology studies (set)"
* code.coding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* code.coding.display.extension.extension[0].url = "lang"
* code.coding.display.extension.extension[=].valueCode = #be-nl
* code.coding.display.extension.extension[+].url = "content"
* code.coding.display.extension.extension[=].valueString = "HEMATOLOGIE"
* subject = Reference(Patient/patient1)
* effectiveDateTime = "2015-11-03T13:18:00+01:00"
* issued = "2015-11-04T13:18:00+01:00"
* performer = Reference(Organization/organization10)
* resultsInterpreter = Reference(Practitioner/practitioner11)
* specimen = Reference(specimen1)
* result[0] = Reference(observation10)
* result[+] = Reference(observation11)
* media.comment = "Just as an example here: how to add a link to an image"
* media.link = Reference(media1)
* conclusion = "This is our conclusion"