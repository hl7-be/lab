Instance: Inline-Instance-for-hematologyStudiesAsFHIRDocument-12
InstanceOf: ServiceRequest
Usage: #inline
* id = "servicerequest1"
* identifier.system = "https://www.GTL-LABO.be/orderingsystem"
* identifier.value = "12334546"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* subject = Reference(Patient/patient1)
* authoredOn = "2015-11-01T14:41:00+01:00"
* requester = Reference(Practitioner/practitioner1)
* specimen = Reference(specimen1)