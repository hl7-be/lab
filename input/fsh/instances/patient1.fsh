Instance: patient1
InstanceOf: BePatient
Usage: #definition
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* identifier.use = #official
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin"
* identifier.value = "79121137740"
* active = true
* name.family = "La Paradisio"
* name.given[0] = "Josephine"
* name.given[+] = "Nessa"
* telecom[0].system = #email
* telecom[=].value = "nessa.laparadisio@belgium.be"
* telecom[+].system = #phone
* telecom[=].value = "+322476792979"
* telecom[=].use = #mobile
* telecom[+].system = #phone
* telecom[=].value = "+3226718655"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "+322476799"
* telecom[=].use = #work
* gender = #female
* birthDate = "1979-12-11"
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
* birthDate.extension.valueDateTime = "1979-12-11T13:28:17-05:00"
* address.use = #home
* address.type = #both
* address.text = "Sloordelle 42, 1160 Oudergem"
* address.line = "Sloordelle 42"
* address.city = "Oudergem"
* address.postalCode = "1160"
* address.country = "BE"