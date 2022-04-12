Instance: servicerequest1
InstanceOf: ServiceRequest
Usage: #definition
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/lab/StructureDefinition/be-servicerequest"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* subject = Reference(Patient/patient1)
* authoredOn = "2015-11-01T14:41:00+01:00"
* requester = Reference(Practitioner/practitioner1)
* specimen = Reference(specimen1)