Logical: BeModelLabDocument
Parent: Element
Description: """This is the logical model for any document that is sent in a lab context"""
* identifier 1..* Identifier  "Business identifier of the document. At least the sender of the document should add a uniquely identifiable string to the document"
* status 1..1 Reference "Indicates the status of the document itself"
* type 1..1 code "Indicates the type of the document"
* subject 1..1 Reference "The patient the document is about"
* date 1..1 dateTime "Creation date of the document"
* author 1..1 Reference "The author of the document"
* title 1..1 string "The title of the document"
* section 1..1 Reference "The contents of the document"
* relatesTo 0..1 Reference "A related document"