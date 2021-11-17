Instance: be-ns-lab-report-document-id
InstanceOf: NamingSystem
Title: "Lab Report Document Id"
Description: "Unique Identifier for Lab Report Documents"
Usage: #definition
* name = "BeLabReportDocumentId"
* status = #active
* kind = #identifier
* date = "2021-11-17"
* publisher = "HL7 Belgium"
* contact[0].name = "HL7 Belgium"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://hl7belgium.org"
* contact[+].name = "Bart Decuypere"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "bart.decuypere@ehealth.fgov.be"
* contact[=].telecom.use = #work
* description = "Unique Identifier for Lab Report Documents"
* jurisdiction = $m49.htm#001 "World"
* uniqueId.type = #uri
* uniqueId.value = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/be-ns-lab-report-document-id"
* uniqueId.preferred = true