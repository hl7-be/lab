Instance: obsDynamicHead
InstanceOf: BeObservationLaboratory
Title: "Detailed structure of panel that uses qualifiers."
Description: "Details how to structure a panel using qualifiers.(Note this example only concerns the Observation structure, a laboratory report SHALL be send leveraging the diagnosticReport resource that uses this Observation to express its results.)"
Usage: #definition
* text.status = #empty
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>empty</div>"
* status = #final
* code = $loinc#72171-2 "Glucose tolerance 4 hours panel - Serum or Plasma"
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(Practitioner/practitioner10)
* hasMember[0] = Reference(obsDynamic0)
* hasMember[+] = Reference(obsDynamic1)
* hasMember[+] = Reference(obsDynamic2)
* component[0].code = $sct#118555000 "Substance amount"
* component[=].valueQuantity = 75 'g' "g"
* component[+].code = $sct#774167006 "Product name"
* component[=].valueString = "syrupy glucose solution"