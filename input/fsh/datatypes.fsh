// Data types

// Coded Annotation - introduces a codeable element as a category in the Annotation 

CodeSystem: BeCSCodedAnnotationTypes
Id: be-cs-coded-annotation-types
Title: "Coded Annotation Type Codes"
Description: "Code System for specific types of coded annotations"
* ^status = #active
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* ^caseSensitive = true
* ^content = #complete
* #lab-test-accreditation "Laboratory Test Accreditation" "Test disclaimer with the report"
* #lab-test-subcontractor "Laboratory Test subcontractor" "Laboratory Test subcontractor"
* #lab-referencerange-comment "Comment on laboratory reference range" "Comment on reference range"


ValueSet: BeVSCodedAnnotationTypes
Id: be-vs-coded-annotation-types
Title: "Coded Annotation Types"
Description: "Value Set for specific types of coded annotations"
* ^status = #active
* include codes from system be-cs-coded-annotation-types


Extension: BeExtAnnotationCode
Id: annotation-code
Title: "Annotation Code"
Description: "Codifies the content of an Annotation"
* ^context.type = #element
* ^context.expression = "Annotation"
* . ^short = "Annotation Code"
* . ^definition = "Codifies the content of an Annotation"
* value[x] only CodeableConcept
* value[x] from be-vs-coded-annotation-types (example)


Profile: BeCodedAnnotation
Parent: Annotation
Id: coded-annotation
Title: "Coded Annotation"
Description: "Annotation DataType with added CodeableConcept extension element"
* extension contains annotation-code named code 0..1
* text ^short = "The annotation - plain text without markdown is strongly recommended"

