Profile: BeLaboratoryReport
Parent: DiagnosticReport
Id: be-laboratory-report
Title: "BeLaboratoryReport"
Description: "Belgian profile for a laboratory report"
* ^url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-laboratory-report"
* ^version = "0.0.7"
* ^status = #draft
* ^date = "2020-09-07T12:54:23+00:00"
* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7belgium.org"
* ^jurisdiction = $m49.htm#001
* text.status = #empty
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier for this laboratory report.\r\n\r\n This identifier will be used to determine if a new resource is needed, or if this resource is an update of an existing one. When an identifier is given, a consumer SHALL NOT ignore it."
* identifier contains DRID 1..1
* identifier[DRID] ^definition = "The identifier SHALL at least contain 1 identifier of type BeLabReportDiagnosticReportId. The unicity of this identifier is guaranteed by using the NIHDI number of the lab and a unique number for that lab, separated by a dot."
* identifier[DRID].system = "https://www.ehealth.fgov.be/lab-report/diagnostic-report-id" (exactly)
* identifier[DRID].value 1..1
* basedOn 1..1 MS
* basedOn only Reference(ServiceRequest)
* basedOn ^short = "A reference to a ServiceRequest SHALL be given here that minimally includes the time of prescription."
* basedOn ^definition = "Details concerning the prescription this laboratory report fullfills. A reference to a ServiceRequest SHALL be given here that includes the time of prescription in its .authoredOn element. It is RECOMMENDED to also use the .identifier element of the ServiceRequest to identify the original order number. Note, within the Observation resource it is possible to define they were defined on a different serviceRequest (e.g. to clarify it was a sub ordering)"
* status MS
* status ^short = "Status of the report: consult the HL7 list of permitted values"
* status ^definition = "The status of the diagnostic report. Consult the HL7 list of allowed values here. Note when a report should actually replace a previous one, use the Replaces extension."
* category 1.. MS
* category ^short = "The subject of this specialty, expressed in a LOINC code."
* category ^definition = "The subject of this specialty, expressed in a LOINC code.\r\n\r\nThe choice of what observations to categorize under what specialty are left ultimately to the discretion of the laboratory sending the results. Some non-restrictive guidelines:\r\n*18721-1 (THERAPEUTIC DRUG MONITORING STUDIES) will be used for a section carrying pharmacologyobservations on a patient.\r\n*Mycology and parasitology, as well as bacteriology, are part of the 18725-2 (MICROBIOLOGY STUDIES) specialty.\r\n*665 Virology MAY be included in 18725-2 (MICROBIOLOGY STUDIES) specialty or 18727-8 (SEROLOGY STUDIES)or split between both specialties, depending upon the Content Creator Actor’s choice"
* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "code"
* category.coding ^slicing.rules = #open
* category.coding.system 1..
* category.coding.code 1..
* category.coding.display 1..
* category.coding contains LABREPORT 1..1
* category.coding[LABREPORT].system 1..
* category.coding[LABREPORT].system = "http://terminology.hl7.org/CodeSystem/v2-0074" (exactly)
* category.coding[LABREPORT].code = #LAB (exactly)
* category.coding[LABREPORT].display = "Laboratory" (exactly)
* code MS
* subject 1.. MS
* subject only Reference(BePatient or Group or Device or Location)
* subject ^short = "In the initial iteration of the Belgium lab project: when sending to eHealthBox, this is BePatient."
* effective[x] MS
* effective[x] ^short = "Time of the specimen collection - is overruled when collection time is given in .specimen element."
* effective[x] ^definition = "The time or time-period the observed values are related to. This is the time specimen collection(s)"
* issued 1.. MS
* performer 1.. MS
* performer only Reference(BeOrganization or BePractitioner or CareTeam or BePractitionerRole)
* performer ^short = "In the initial iteration of the Belgium lab project: when sending to eHealthBox, this is BeOrganization."
* performer ^definition = "The diagnostic service that is responsible for issuing the report. In the laboratory report, this is typically an organization (i.e. the laboratory)\r\nNote the Observation MAY have a different performer."
* resultsInterpreter 1.. MS
* resultsInterpreter only Reference(BePractitioner or BePractitionerRole or BeOrganization or CareTeam)
* resultsInterpreter ^short = "In the initial iteration of the Belgium lab project: when sending to eHealthBox, this is BePractitioner."
* specimen only Reference(BeSpecimenLaboratory)
* specimen MS
* result only Reference(BeObservationLaboratory)
* result MS
* media MS
* conclusion MS
* conclusionCode MS
* presentedForm MS
