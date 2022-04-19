Profile: BeSpecimenLaboratory
Parent: Specimen
Id: be-specimen-laboratory
Title: "BeSpecimenLaboratory"
Description: "Belgian profile for a specimen in a laboratory report. In some laboratory reports, specimen information is allowed to be minimal as many informations concerning the specimen are implied by the observations done."
* ^url = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-specimen-laboratory"
* ^version = "0.0.7"
* ^status = #draft
* ^date = "2021-11-08T16:57:45+01:00"
* ^publisher = "HL7 Belgium"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7belgium.org"
* ^jurisdiction = $m49.htm#001
* text.status = #empty
* identifier MS
* identifier ^definition = "Business identifier for specimen is RECOMMENDED to include when available."
* status MS
* type MS
* type ^definition = "The kind of material that forms the specimen. RECOMMENDED to include."
* subject only Reference(Group or Device or Substance or Location or BePatient)
* subject MS
* subject ^short = "In the initial iteration of the Belgium lab project: when sending to eHealthBox, this is BePatient."
* receivedTime MS
* parent only Reference(BeSpecimenLaboratory)
* parent MS
* request MS
* collection MS
* collection.collected[x] ^mustSupport = false
* collection.duration ^mustSupport = false
* collection.quantity ^mustSupport = false
* collection.method ^mustSupport = false
* collection.bodySite ^mustSupport = false
* collection.fastingStatus[x] ^mustSupport = false
* processing ^short = "Processing and processing step details to include when not implicit from specimen."
* processing ^mustSupport = false
* container ^mustSupport = false
* condition MS
* note MS
