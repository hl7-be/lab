Instance: hematologyStudiesAsBundleCollection
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0c3151bd-1cbf-4d65-b04d-cd9187a4c6e0"
* type = #collection
* entry[0].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d34"
* entry[=].resource = ex02-diagnosticreport1
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d35"
* entry[=].resource = ex02-specimen1
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d36"
* entry[=].resource = ex02-observation10
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d37"
* entry[=].resource = ex02-observation11
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d38"
* entry[=].resource = ex02-observation111
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d39"
* entry[=].resource = ex02-observation112
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c469-4088-ae18-48abcadd8d40"
* entry[=].resource = ex02-media1
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d40"
* entry[=].resource = ex02-organization10
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d41"
* entry[=].resource = ex02-practitioner11
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d42"
* entry[=].resource = ex02-patient1
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d43"
* entry[=].resource = ex02-servicerequest1
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d44"
* entry[=].resource = ex02-practitioner1

Instance:  ex02-diagnosticreport1
InstanceOf: DiagnosticReport
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-laboratory-report"
* language = #en
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* identifier.system = "https://www.ehealth.fgov.be/lab-report/diagnostic-report-id"
* identifier.value = "11530231003.2015110413180000000"
* basedOn = Reference(servicerequest1)
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* code.coding = http://loinc.org#18723-7 "Hematology studies (set)"
* code.coding.display.extension.extension[0].url = "lang"
* code.coding.display.extension.extension[=].valueCode = #nl-BE
* code.coding.display.extension.extension[+].url = "content"
* code.coding.display.extension.extension[=].valueString = "HEMATOLOGIE"
* code.coding.display.extension.url = "http://hl7.org/fhir/StructureDefinition/translation"
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

Instance:  ex02-specimen1
InstanceOf: Specimen
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-specimen-laboratory"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* identifier.system = "https://www.GTL-LABO.be/"
* identifier.value = "1"
* status = #available
* type = http://snomed.info/sct#119297000 "Blood specimen"
* type.text = "A string can be added to nuance or explain."
* receivedTime = "2015-11-04"
* collection.collectedDateTime = "2015-11-03"
* collection.method = http://snomed.info/sct#28520004 "Venipuncture for blood test (procedure)"
* collection.bodySite = http://snomed.info/sct#368208006 "Left upper arm structure (body structure)"
* note.text = "Some extra relevant information concerning the specimen"

Instance:  ex02-observation10
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-observation-laboratory"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* status = #final
* code = http://loinc.org#30341-2 "Erythrocyte sedimentation rate"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* valueQuantity = 2 'mm/h' "mm/h"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "Low"
* note.text = "The Bodysite and Method that are given below do not really make any sense here!"
* bodySite = http://snomed.info/sct#344001 "Ankle"
* bodySite.text = "ankle (this code was just an example to show the structure)"
* method = http://snomed.info/sct#14456009 "Measuring height of patient"
* method.text = "Measuring height of patient (this code was just an example to show the structure)"
* specimen = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d35)
* referenceRange.low = 0 'mm/h' "mm/h"
* referenceRange.high = 30 'mm/h' "mm/h"
* referenceRange.type = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal
* referenceRange.appliesTo = http://snomed.info/sct#248153007 "Male"
* referenceRange.text = "Something concerning the reference range that can only be explained in text -->"

Instance:  ex02-observation11
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-observation-laboratory"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* status = #final
* code.text = "SCREENING"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* hasMember[0] = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d38)
* hasMember[+] = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d39)

Instance:  ex02-observation111
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-observation-laboratory"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* status = #final
* code = http://loinc.org#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "Red blood cells (blood)"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* valueQuantity = 4.35 '10*6/uL' "10*6/uL"
* specimen = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d35)
* referenceRange.low = 3.93 '10*6/uL' "10*6/uL"
* referenceRange.high = 5.01 '10*6/uL' "10*6/uL"
* referenceRange.type = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal

Instance:  ex02-observation112
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-observation-laboratory"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* status = #final
* code = http://loinc.org#20563-3 "Carboxyhemoglobin/Hemoglobin.total in Blood"
* code.text = "Hemoglobin"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* valueQuantity = 14.1 'g/dl' "g/dl"
* specimen = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d35)
* referenceRange.low = 11.8 'g/dl' "g/dl"
* referenceRange.high = 14.8 'g/dl' "g/dl"
* referenceRange.type = http://terminology.hl7.org/CodeSystem/referencerange-meaning#normal

Instance:  ex02-media1
InstanceOf: Media
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* status = #completed
* content.contentType = #image/gif
* content.data = "iVBORw0KGgoAAAANSUhEUgAAA+MAAACnCAYAAAB6pY03AAAAAXNSR0IArs4c6QAAAARnQU1BAACx jwv8YQUAAAAJcEhZcwAAEnMAABJzAYwiuQcAADBZSURBVHhe7d09rty218fxrOFfZj/ZQHZgwEiZ gg=="

Instance:  ex02-organization10
InstanceOf: Organization
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-organization"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* identifier.use = #official
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MD "Medical License number"
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* identifier.value = "81165343998"
* active = true
* type = https://www.ehealth.fgov.be/standards/fhir/core/CodeSystem/cd-hcparty#orglaboratory
* name = "GTL - General Testing Laboratory"
* telecom.system = #phone
* telecom.value = "322675199"
* telecom.use = #work
* address.extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* address.extension.valueCode = #nl
* address.use = #work
* address.type = #both
* address.text = "Vulcansstraat 120, 1000 Brussel"
* address.line = "Vulcansstraat 120"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Vulcansstraat"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "120"
* address.city = "Brussel"
* address.postalCode = "1000"
* address.country = "BE"

Instance:  ex02-practitioner11
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* identifier.use = #official
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* identifier.value = "554488997"
* name.use = #official
* name.family = "Davoust"
* name.given = "Nicolas"
* telecom[0].system = #email
* telecom[=].value = "nicolas.davoust@gtl.be"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "022675198"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "022675209"
* telecom[=].use = #work

Instance:  ex02-patient1
InstanceOf: Patient
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-patient"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* identifier.use = #official
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier.value = "79121137740"
* active = true
* name.family = "La Paradisio"
* name.given[0] = "Josephine"
* name.given[+] = "Nessa"
* telecom[0].system = #email
* telecom[=].value = "nessa.laparadisio@belgium.be"
* telecom[+].system = #phone
* telecom[=].value = "+322476792979"
* telecom[=].use = #mobile
* telecom[+].system = #phone
* telecom[=].value = "+3226718655"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "+322476799"
* telecom[=].use = #work
* gender = #female
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
* birthDate.extension.valueDateTime = "1979-12-11T13:28:17-05:00"
* birthDate = "1979-12-11"
* address.use = #home
* address.type = #both
* address.text = "Sloordelle 42, 1160 Oudergem"
* address.line = "Sloordelle 42"
* address.city = "Oudergem"
* address.postalCode = "1160"
* address.country = "BE"

Instance:  ex02-servicerequest1
InstanceOf: ServiceRequest
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* status = #active
* intent = #order
* category = http://snomed.info/sct#108252007 "Laboratory procedure"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* authoredOn = "2015-11-01T14:41:00+01:00"
* requester = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d76)
* specimen = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d35)

Instance:  ex02-practitioner1
InstanceOf: Practitioner
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/core/StructureDefinition/be-practitioner"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* identifier.use = #official
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/nihdi"
* identifier.value = "18749704477"
* name.use = #official
* name.family = "Pulaski"
* name.given = "Katherine"
* name.suffix = "MD"
* telecom[0].system = #email
* telecom[=].value = "katherine.pulaski@enterprisehospital.be"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "022675198"
* telecom[=].use = #work
* telecom[+].system = #fax
* telecom[=].value = "022675209"
* telecom[=].use = #work
* address.use = #home
* address.text = "Jupiterlaan 5, 1853 Grimbergen"
* address.line = "Jupiterlaan 5"
* address.city = "Grimbergen"
* address.postalCode = "1853"
* address.country = "BE"