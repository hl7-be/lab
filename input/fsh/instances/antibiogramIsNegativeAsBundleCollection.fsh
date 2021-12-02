Instance: antibiogramIsNegativeAsBundleCollection
InstanceOf: Bundle
Title: "Structured Negative Antibiogram in collection bundle"
Description: "Structured Negative Antibiogram in collection bundle. (copy-paste    the URL if the link on the left does not work). This example is simplified and presented as a generic bundle (refer to    the example supra for a FHIR Document bundle.)     https://build.fhir.org/ig/hl7-be/hl7-be-fhir-laboratory-report/Bundle-antibiogramIsNegativeAsBundleCollection.html"
Usage: #definition
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0c3201bd-1cbf-4d64-b04d-cd9187a4c6e0"
* type = #collection
* entry[0].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d90"
* entry[=].resource = diagnosticreport60
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d91"
* entry[=].resource = specimen60
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae09-48abcadd9d92"
* entry[=].resource = mac60
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae09-48abcadd9d93"
* entry[=].resource = cult60
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d94"
* entry[=].resource = organization10
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d95"
* entry[=].resource = practitioner11
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d96"
* entry[=].resource = patient1
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d97"
* entry[=].resource = servicerequest60
* entry[+].fullUrl = "urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d98"
* entry[=].resource = practitioner1