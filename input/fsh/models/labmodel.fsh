Logical: LMLabReport
Title: "Logical Model - lab report"
Description: "Logical data model for the lab report"
Parent: Element
* identifier 1..* II "Business identifier for the report"
* language 1..* CD "Language the report is authored and presented in"
//* status 1..1 CD "Status identifier"
* status 1..1 CD "Status of the report" "Status of the overall report; can be different from the statuses of the report entries e.g partial report with some complete lines and some ongoing / canceled lines"
* type 0..1 CD "Type of report"
//* category 1..* CD "Category of the report"
//* code 1..1 CD "Type of the report"
* subject 1..1 II "Subject of the report - patient"
* date 1..1 TS "Date/Time the report was issued"
* author 1..* II "Author(s) of the report"
* title 1..1 TXT "Title of the report"
* relatesTo 0..* TS "Another related report"
* identifier_DRID 1..1 II "Report DSIR identifier"
* identifier_other 0..* II "Other identifier for lab report"
* request 0..1 Class "Information about the request"
//  * requester 1..1 II "Requester"
  * requestTime 1..1 TS "Date/Time of the request"
* issued 1..1 TS "Date/Time the report was issued"
* effectiveDateTime 0..1 TS "Clinically relevant time for report"
* effectivePeriod 0..1 TS "Clinically relevant period for report "
//* performer 0..1 II "Person responsible for issuing the report"
* resultsInterpreter 1..1 II "Person that has interpreted the results in the lab"
* resultLine 1..* LMLabReportEntry "Lab result entries (lines)"



Logical: LMLabReportEntry
Title: "Logical Model - lab result entry"
Description: "Logical data model for the lab result entry"
Parent: Element

* identifier 1..* II "Identifier of the lab report line or entry"
* language 1..* CD "Language the line is written in"
* status 1..1 CD "Status of the report entry"
* code 0..1 CD "Type of result"
* value 0..1 NV "Value of the result"
* specimen 0..* LMLabSpecimen "Specimen used in performing the procedure for the report"
* referenceRange 0..1 RG "Reference range for the results"
* referenceRangeComment 0..1 CD "Notes on the reference range"
* category 1..* CD "Type of result"
* dataAbsentReason 1..* CD "Reason for data being absent"
* bodySite 1..* CD "Body site where the result was measured"
* method 1..* CD "Method for performing the procedure"
* performedDateTime 0..1 TS "Date/Time the procedure for the result was performed"
* issuedDateTime 0..1 TS "Date/Time the result was issued"//
* performer 0..1 II "Who performed the procedure"//
* derivedFrom  1..* II "When the result is derived from another"
* component 1..* Class "Sub-results"
  * relativeTimeQualifier  1..* TS "Relative time of the sub-result"
  * substanceAmountQualifier  1..* CD "How much (amount) of specimen was needed in the component"
  * productNameQualifier  1..* CD "Which product was used in the component"
  * interpretation  1..* CD "Interpretation of the sub-result"
    * media  1..* Bin "Media attached to the sub-result"
    * resultsInterpreter 0..* II "Who interpreted the results" 
    * conclusionText 0..1 TXT "The conclusion for the sub-result"
    * conclusionCode 0..* CD "Coded conclusion"
    * presentedForm  1..* Bin "PresentedForm of the sub-result"
  * note 0..* TXT "Note on the sub-result"
* note 1..* TXT "Notes on the report"





Logical: LMLabSpecimen
Title: "Logical Model - lab specimen"
Description: "Logical data model for the lab specimen"
Parent: Element
* identifier 1..* II "Business identifier for the specimen"
* status 1..1 CD "Status of the specimen"
* type 0..1 CD "Type of specimen"
* subject 0..1 II  "Subject - patient"
* receivedTime 0..1 TS "Date/time specimen received"
* collection 0..1 Class "Specimen collection data"
  * collectedDateTime 0..1 TS "Date/Time the specimen was collected"
  * collector 0..1 II "Who performed the specimen collection"
* parent 1..* II "Parent specimen"
* condition 0..1 II "Condition of the specimen"
* note 1..* TXT "Note"
* request 1..* II "Request that authorise the specimen"


