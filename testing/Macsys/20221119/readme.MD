## Content

One example, FHIR result in json and PDF of corresponding protocol.  File nameis  based on order number (our barcodes).
Changes vs previous versions:

- Bundle Id is now completely unique, for every version/update of the protocol
- Bundle Id system refers to Belgian HL7 instead of macsys (be it that the url is not final yet)
- Protocol identifier is nom id of DiagnosticReport
- Report versioning is included and correct (and is used to make bundle Id unique)
- 4 types of comments added, 3 of which are covered by Loinc codes: KLINISCHE GEGEVENS, UITZICHT SERUM, COMMENTAAR OP RAPPORT
- Comment indicating who receives copy has been placed as a note in ServiceRequest.  We found no better place to put it but are open to alternative suggestions
- All narrative have been filled out after we received comment that narratives are obligatory

## Comments

Example data is GDPR safe (patient identifier is dummy; data is dummy and is not copied to e.g. Metahub.)

Results in only one coding system (LOINC).

Comment e.g. Lab accreditaton status not done yet.

Comments of 3rd providers not covered yet.

There is still an issue with non-significant trailing 0s in results.

Treatment of CR/LF in comments may not be perfect/ideal/optimal

## Validation Status

FHIR json tested and valid.
