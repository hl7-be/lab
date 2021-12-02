Instance: organization1
InstanceOf: BeOrganization
Usage: #definition
* identifier[0].use = #official
* identifier[=].type = $v2-0203#PRN "Provider Number"
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/cbe"
* identifier[=].value = "0425.222.333"
* identifier[+].use = #official
* identifier[=].type = $v2-0203#MD "Medical License number"
* identifier[=].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi"
* identifier[=].value = "999999999"
* active = true
* type = $cd-hcparty#orghospital
* name = "Enterprise Hospital Ziekenhuis"
* telecom.system = #phone
* telecom.value = "322675199"
* telecom.use = #work
* address[0].extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* address[=].extension.valueCode = #nl
* address[=].use = #work
* address[=].type = #both
* address[=].text = "Vulcansstraat 120, 1000 Brussel"
* address[=].line = "Vulcansstraat 120"
* address[=].line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Vulcansstraat"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "120"
* address[=].city = "Brussel"
* address[=].postalCode = "1000"
* address[=].country = "BE"
* address[+].extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* address[=].extension.valueCode = #fr
* address[=].use = #work
* address[=].type = #both
* address[=].text = "120, Rue des Vulcans, 1000 Bruxelles"
* address[=].line = "120, Rue des Vulcans"
* address[=].line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line.extension[=].valueString = "Rue des Vulcans"
* address[=].line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line.extension[=].valueString = "120"
* address[=].city = "Bruxelles"
* address[=].postalCode = "1000"
* address[=].country = "BE"