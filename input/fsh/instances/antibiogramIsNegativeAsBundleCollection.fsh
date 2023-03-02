Instance: antibiogramIsNegativeAsBundleCollection
InstanceOf: Bundle
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0c3201bd-1cbf-4d64-b04d-cd9187a4c6e0"
* type = #collection
* entry[0].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d90"
* entry[=].resource = ex03-diagnosticreport60
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d91"
* entry[=].resource = ex03-specimen60
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae09-48abcadd9d92"
* entry[=].resource = ex03-mac60
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae09-48abcadd9d93"
* entry[=].resource = ex03-cult60
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d94"
* entry[=].resource = ex03-organization10
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d95"
* entry[=].resource = ex03-practitioner11
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d96"
* entry[=].resource = ex03-patient1
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d97"
* entry[=].resource = ex03-servicerequest60
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d98"
* entry[=].resource = ex03-practitioner1

Instance:  ex03-diagnosticreport60
InstanceOf: DiagnosticReport
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-laboratory-report"
* language = #en
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* identifier.system = "https://www.ehealth.fgov.be/lab-report/diagnostic-report-id"
* identifier.value = "11530231003.2015110413180000000"
* basedOn = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d97)
* status = #final
* category.coding[0] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB "Laboratory"
* category.coding[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB "Microbiology"
* code = http://loinc.org#18769-0 "Microbial susceptibility tests Set"
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

Instance:  ex03-specimen60
InstanceOf: Specimen
Usage: #inline
* meta.versionId = "1"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-specimen-laboratory"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* identifier.system = "https://www.GTL-LABO.be/"
* identifier.value = "1"
* status = #available
* type = http://snomed.info/sct#119295008 "Aspirate"
* type.text = "A string can be added to nuance or explain."
* receivedTime = "2015-11-04"
* note.text = "Some extra relevant information concerning the specimen"

Instance:  ex03-mac60
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-observation-laboratory"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* status = #final
* code = http://loinc.org#74574-5 "Macroscopic observation [Interpretation] in Unspecified specimen Narrative"
* code.text = "Macroscopic observation"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* valueString = "matig purulent"

Instance:  ex03-cult60
InstanceOf: Observation
Usage: #inline
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-observation-laboratory"
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* status = #final
* code = http://loinc.org#43411-8 "Bacteria identified in Aspirate by Culture"
* code.text = "Culture"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d73)
* valueString = "Commensalen +-"

Instance:  ex03-organization10
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

Instance:  ex03-practitioner11
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

Instance:  ex03-patient1
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

Instance:  ex03-servicerequest60
InstanceOf: ServiceRequest
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* identifier.system = "https://www.GTL-LABO.be/orderingsystem"
* identifier.value = "12334546"
* status = #active
* intent = #order
* category = http://snomed.info/sct#108252007 "Laboratory procedure"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* authoredOn = "2015-11-01T14:41:00+01:00"
* requester = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d76)
* specimen = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d91)

Instance:  ex03-practitioner1
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