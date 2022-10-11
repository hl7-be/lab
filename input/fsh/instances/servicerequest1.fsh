Instance: servicerequest1
InstanceOf: ServiceRequest
Usage: #definition
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-servicerequest"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* subject = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d74)
* authoredOn = "2015-11-01T14:41:00+01:00"
* requester = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d76)
* specimen = Reference(urn:uuid:7c16c9c0-c471-4098-ae18-48abcadd8d35)