Instance: diagnosticreport1
InstanceOf: BeLaboratoryReport
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* meta.versionId = "1"
* language = #en
* identifier[DRID].value = "11530231003.2015110413180000000"
* basedOn = Reference(servicerequest1)
* status = #final
* category = $v2-0074#LAB "Laboratory"
* code.coding = $loinc#18723-7 "Hematology studies (set)"
* code.coding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
* code.coding.display.extension.extension[0].url = "lang"
* code.coding.display.extension.extension[=].valueCode = #nl-BE
* code.coding.display.extension.extension[+].url = "content"
* code.coding.display.extension.extension[=].valueString = "HEMATOLOGIE"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-03T13:18:00+01:00"
* issued = "2015-11-04T13:18:00+01:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d72)
* resultsInterpreter = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* specimen = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d35)
* result[0] = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d36)
* result[+] = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d37)
* media.comment = "Just as an example here: how to add a link to an image"
* media.link = Reference(urn:uuid:7c16c9c0-c469-4088-ae18-48abcadd8d40)
* conclusion = "This is our conclusion"