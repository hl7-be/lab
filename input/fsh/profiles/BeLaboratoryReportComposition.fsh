Profile: BeLaboratoryReportComposition
Parent: Composition
Id: be-laboratory-report-composition
Title: "BeLaboratoryreportComposition"
Description: "Belgian profile for a composition - to use when a laboratory report is sent as FHIR Document"
* ^url = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-laboratory-report-composition"
* ^version = "0.0.7"
* ^status = #draft
* ^date = "2021-11-08T16:57:45+01:00"
* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7belgium.org"
* ^jurisdiction = $m49.htm#001
//* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
//* ^extension[=].valueInteger = 1
* text.status = #empty
* identifier 1.. MS
* status MS
* type MS
* subject 1.. MS
* subject only Reference(Resource or BePatient)
* date MS
* author only Reference(Device or RelatedPerson or BePractitioner or BePractitionerRole or BePatient or BeOrganization)
* author MS
* title MS
* relatesTo MS
* section 1..1 MS
* section.entry 1..1 MS
* section.entry only Reference(BeLaboratoryReport)
