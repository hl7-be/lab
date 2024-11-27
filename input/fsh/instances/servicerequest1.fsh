Instance:  servicerequest1
InstanceOf: ServiceRequest
Usage: #example
* text.status = #empty
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\r\n                        empty\r\n                    </div>"
* status = #active
* intent = #order
* category = http://snomed.info/sct#108252007 "Laboratory procedure"
* subject = Reference(Patient/patient10)
* authoredOn = "2015-11-01T14:41:00+01:00"
* requester = Reference(Practitioner/practitioner10)
* specimen = Reference(Specimen/urine1)