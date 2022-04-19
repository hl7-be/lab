Instance: Inline-Instance-for-hematologyStudiesAsFHIRDocument-1
InstanceOf: BeLaboratoryReportComposition
Usage: #inline
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* id = "180f219f-97a8-486d-99d9-ed631fe4fc57"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:dbcf0eb0-d825-11eb-b8bc-0242ac130003"
* status = #final
* type = $loinc#11502-2
* type.text = "Laboratort report"
* subject = Reference(Patient/patient1)
* date = "2013-02-01T12:30:02Z"
* author = Reference(Practitioner/practitioner11)
* title = "Laboratory Report (mandatory to give a title like this in a FHIR document.)"
* relatesTo.code = #replaces
* relatesTo.targetIdentifier.system = "urn:ietf:rfc:3986"
* relatesTo.targetIdentifier.value = "urn:uuid:0c3151bd-1cbf-4d65-b04d-cd9187a4c5e0"
* section.entry = Reference(diagnosticreport1)