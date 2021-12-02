Instance: observation10
InstanceOf: BeObservationLaboratory
Usage: #inline
* status = #final
* code = $loinc#30341-2 "Erythrocyte sedimentation rate"
* subject = Reference(Patient/patient1)
* effectiveDateTime = "2015-11-04T09:16:00-05:00"
* issued = "2015-11-04T09:16:00-05:00"
* performer = Reference(Practitioner/practitioner11)
* valueQuantity = 2 'mm/h' "mm/h"
* interpretation = $v3-ObservationInterpretation#L "Low"
* note.text = "The Bodysite and Method that are given below do not really make any sense here!"
* bodySite = $sct#344001 "Ankle"
* bodySite.text = "ankle (this code was just an example to show the structure)"
* method = $sct#14456009 "Measuring height of patient"
* method.text = "Measuring height of patient (this code was just an example to show the structure)"
* specimen = Reference(specimen1)
* referenceRange.low = 0 'mm/h' "mm/h"
* referenceRange.high = 30 'mm/h' "mm/h"
* referenceRange.type = $referencerange-meaning#normal
* referenceRange.appliesTo = $sct#248153007 "Male"
* referenceRange.text = "Something concerning the reference range that can only be explained in text -->"