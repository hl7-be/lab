# Test Plan

This document lists cases to be tested for Laboratory Results in FHIR Format.   

Work in progress; following may not be complete:

* References to (Macsys) test protocols and example FHIR files
* Last chapters still need to be written out
* Per test case, the  acceptance criteria are listed.  Implied is "sender is compliant with requirement, sender does not abend (crash, stop executing) or log error messages on the case, receiver does not abend upon or log error messages upon reception of the FHIR file(s) for the test case
* To detail per case, whether the case is relevant to the visualisation tool or not (some cases are only relevant to GP software or hospital systems).  Cases are flagged when not relevant to visualiser
* There are no references yet to MIPS test protocols and example FHIR files

  

## 1.	Structure & Conventions

1A: Results on different levels in hierarchy; panels and “titles” on different sublevels.  Including very complex structures (fruit & food allergies).
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario1
* Acceptance criterion:
  * Title headings and levels match those in pfd version of protocol 

1B: RBC/Glucose in different specimen (Blood/urine/CSF)
* Test files: 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333050
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario1
* Acceptance criterion:
  *  Results clearly indicate which type of sample they refer to (Urine vs blood vs CSF)  

1C: BundleId and DiagnosticReportId conform to Belgian HL7 standards
* Test files:
  *  (need a set that has different versions of the protocol)
* Acceptance criteria:
  *  BundleId is lab riziv number +  "." + laboratory unique identifier; unique for every bundle (i.e. across different versions of the same protocol)
  *  DiagnosticReportId is lab riziv number + "." + laboratory unique identifier unique to the protocol, but identical for different versions of same protocol.

**This test case is not relevant for/not tested by visualisation tool**

1D: Patient with multiple surnames
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333052
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario1
* Acceptance criterion:
  * All surnames in first surname field, concatenated and separated by spaces

1E: Different patient identifier systems

1E.1 Belgian Resident
* Test file:
  *  https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333052
* Acceptance criteria:
  * Patient identified by means of RRN
  * (not for visualiser) patient result data matched with other/previous results for same RRN

1E.2 Patient with Belgian BIS number
* Not tested separately any more and RRN and BIS use same namespace!

1E.3 Patient without Belgian identifiers
* Test file:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333055
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario1
* Acceptance criteria:
  * Patient identified by means of lab identifier
  * (not for visualiser) patient result data matched with other/previous results from same lab/same patient


## 2.	Analyses, Results and Units

2A: Analysis with numeric results
* Test files: 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333041
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333042
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333043
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario2
* Acceptance criteria:
  * All numeric values identical as their counterparts in the pdf version of the protocol
  * Units represented as their counterparts in the pfd version of the protocol

2B: Analysis with alphanumeric results
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario2
* Acceptance criteria:
  * All alphanumeric values identical as their counterparts in the pdf version of the protocol
  * Units represented as their counterparts in the pdf version of the protocol

2C: Analysis that has no units
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333042
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario2
* Acceptance criteria:
  * Where analysis has no units per pdf version of the protocol, no unts are represented off FHIR message either

2D: Analysis without LOINC/RETAM code, Albert code, own encoding system
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333051
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario2
* Acceptance criterion:
  * Analysis is shown un human readable form, based on the non LOINC/RETAM/Albert encoding in the FHIR message and correct as compared to that in the pdf version of the protocol

2E: Free T3 with notion ‘preliminary result’
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333047  -- WRONG FILE REFERENCE
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario2
* Acceptance criterion:
  * Protocol delivered in 2 stages; first version clearly lists "preliminary" and second version lists result
  * Second version "overwrites" first version in receiver database (this criterion is NOT for the visualiser)
  
2F: Interpretation of result: 5 cases: 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario2
*	normal,
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333041
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333043
*	L, 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049
*	LL, 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049
*	H,
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333044
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333045
*	HH
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333050
* Acceptance criteria:
  * Flagging of results matches those of the equivalents in the pdf versions of the protocol, and relative to the reference ranges for the analysis, i.e. none for normal, L for low, LL for very low, H for high and HH for very high


2G: Analysis performed by 3rd lab
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333051 -- TO DOUBLECHECK
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario2
* Acceptance criterion:
  * Analysis performed by 3rd party lab are flagged or labelled as such, and identical to such flagging in the pdf version of the protocol

2H: Accreditation status of analysis 
* Test files:
  *  TBD 
  *  https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario2
* Acceptance criterion:
  * Any test lists its accreditation status, if relevant (i.e. if such status is being communicated in the FHIR message)

2I: Units other than standard lab units

**This case may not apply to all systems: not every producer will have this capability, and receivers are not expected to blindly handle this case.  This case does apply to Macsys.**

2I.1: Results in units other than lab units, by request of receiver
* Test files: 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333053
* Acceptance criterion:
  * Receiver receives in units requested, even if those are different from the ones used by the issueing laboratory
    
2I.2; Results in multiple units, by request of receiver
* Test files: 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333054
* Acceptance criterion:
  * Receiver receives in units requested, even if those are different from the ones used by the issueing laboratory

## 3.	Reference Ranges

3A: Analysis without reference ranges
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario3
* Acceptance criterion:
  * Analysis shown without reference range and without reference range flags 
  
3B: Test with different numeric cases:
*	High and Low
*	Only High (e.g. <= xx,x)
*	Only Low (e.g. >= yy,y)
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333052
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario3
* Acceptance criteria:
  * Reference ranges (functionally but not necessarily literally) shown as in pdf version of protocol


3C: Test with alphanumeric reference range
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333045
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario3
* Acceptance criterion:
  * Reference range literally shown as in pdf version of protocol
  
3D: Reference range for test without units
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333042
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario3
* Acceptance criterion:
  * Reference range literally shown as in pdf version of protocol

## 4.	Comments

### 4.1	Comments in LOINC code

* https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario4

4.1A: “Klinische Gegevens” LOINC 55752-0
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333046
* Acceptance criterion:
  * Comment code shown as in pfd version of protocol

4.1B: “Uitzicht Staal” LOINC  94330-8
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333046 
* Acceptance criterion:
  * Comment code shown as in pfd version of protocol
   
4.1C: Comments (e.g. “Results tentative”) LOINC 86468-6	
* Test files: 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333046 
* Acceptance criterion:
  * Comment code shown as in pfd version of protocol

4.1D: Multiple occurrences of above LOINC code(s)
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333046
* Acceptance criterion:
  * All comment codes shown as in pfd version of protocol

### 4.2 Reference range comments

4.2A: Reference range comments
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333052
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario4
* Acceptance criterion:
  * Reference range comments shown along with the reference range, and identical to representation in the corresponding pfd version of the protocol 

4.2B: Reference range as a table
* Test file: NVT for Macsys (case does not occur in Macsys systems)
* https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario4
* Acceptance criterion:
  *  Receiver correctly renders the reference table along with the analysis

### 4.3 Comments on analysis level

4.3A: Test level comment
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333045
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario4
* Acceptation criterion:
  * All analysis level comments are shown next to (or above/under) the analysis they refer to and are identical to those in the corresponding pfd version of the protocol
  
### 4.4 Comments on level ServiceRequest

4.4A. Comment type “copy to” 
* Test files
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario4
* Acceptation criteria:
  * Comments are shown on protocol level and are identica to those in corresponding pdf version of the protocol  

4.4B: Administrative comments (e.g. missing DOBs)
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333055
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario4
* Acceptation criteria:
  * Comments are shown on protocol level and are identical to those in corresponding pdf version of the protocol 

### 4.5 Comments on level DiagnosticReport 
* https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario4
* macsys: TBD!!!

## 5.	Specimen Management

* https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario5
* * Acceptance critia:
  * Every analysis is linked to (correct) specimen, reception status of specimens is correct 

5A: Specimen identifiers with LOINC encoding of specimen type
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/blob/master/testing/Macsys/815333044/
* Acceptance critia:
  * Every speciment linked to (correct) LOINC speciment type

5B: Analysis linked to specimen
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/blob/master/testing/Macsys/815333044/
* Acceptance critia:
  * Every analysis is linked to (correct) specimen

5C: No specimen
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333051 (nog te bekijken of dit klopt!) 
* Acceptance criteria:
  * Receiving system does not tie analyses to specimens, and does not list any speciment types. 

ISSUE: does this case cover a missing butexpected sample?  If not we need an extra case for this!

5D: Partial specimens (some available, others not, in same protocol)
* Test files
  * TBD
* Acceptance criteria:
  * Analyses tied to specimen types are shown as such; analysis tied to missing specimen do not link to specimen type information (leave empty or simply do not renden anything)

## 6.	Edits on Protocol Level

**This whole section is not relevant for/not tested by visualisation tool**

6A-6F Mips: https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario6

6A: Protocol with partial results followed by same protocol with final results
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333047
* Acceptance criteria
  * Upon reception of preliminary report, any missing or unconfirmed results are flagged as such:
    * Composition.status == "preliminary"
    * Observation.1.0.0.0.status="draft"
  * Upon reception of final report, all data is present, and previously data flagged as missing or unconfirmed is no longer available as such or is (e.g. in an audit trail facility) clearly flagged as no longer valid.
  
6B: Protocol with final results, followed by same protocol with amended result (correction of an individual analysis)
* Test files:
  * TBD
* Acceptance criteria
  * After reception of the first version of the protocol, receiver shows initial test results
  * After reception of the second version (revision) of the protocol, receiver now shows amended results (the ones from the second FHIR, no longer the ones from the original FHIR). Original result data is no longer available or is (e.g. in an audit trail facility) clearly flagged as no longer valid.

6C: Final protocol for Patient A, followed by correction of same protocol, but different patient B (patient inversion)
* Test files:
  * TBD
* Acceptance criteria
  * After reception of the first version of the protocol, receiver shows results for patient A
  * After reception of the second version (revision) of the protocol, receiver now shows teh data for patient B.   Previously avaialable data for patient A is either no longer available in the receiving system, or is (e.g. in an audit trail facility) clearly flagged as no longer valid.

6D: Testing of version numbering: retransfer of same protocol, with different version number but otherwise identical data
* Test files:
  * TBD
* Acceptance criteria
  * Data available for the protocol is identical before and after retransfer (even though the version number is higher)

6E:  Changes in administrative data: prescription date, date of birth, sex of patient, 
* Test files:
  * TBD
* Acceptance criteria
  * After reception of the first version of the protocol, receiver shows administrative data as per FHIR
  * After reception of the second version (revision) of the protocol, administrated data is updated, and data pre-update is no longer available or is (e.g. in an audit trail facility) clearly flagged as being out of date

6F:  Second version of the protocol received before the first version
* Test files:
  * TBD
* Acceptance criteria
  * Upon reception of a protocol, for which the receiver had already received a later version, the data in the receiver system is not updated.  I.e. any data in the older version of the protocol shall not overwrite data from the newer version of the protocol.


## 7.	Time Series

https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario7

7A: Time series, LOINC coded
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333056
* Acceptance criteria:
  * Results encoded as per relevant pdf protocol, all in LOINC 
     
7B: Time series, including encoding not available in LOINC, coded per lab standard
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333057
* Acceptance criteria:
  * Results encoded as per relevant pdf protocol, including those not encoded in LOINC

## 8.	Annexes

8A: Embedded protocol
* Test files
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333058 - DOUBLECHECK of dit nog klopt - was eigenlijk voor andere case bedoeld.
* Acceptance criterion:
  * Embedded protocol is found in PresentedForm is equal to the laboratory protocol pdf linked to the FHIR file in the test data

8B: Embedded Annex in Media
* Test files
  * ???? TBD
* Acceptance criterion:
  * Embedded annex is found in Media, and is equal to the corresponding annex in the laboratory pdf linked to the FHIR file in the test data

8C: Multiple Embedded Annexes in Media
* Test files
  * ???? TBD
* Acceptance criterion:
  * Every embedded annex is found in Media, and is equal to the corresponding annex in the laboratory pdf linked to the FHIR file in the test data

8D: One or annexes are available but are not embedded in the FHIR message
* Test files
  * ???? TBD
* Acceptance criterion:
  * For every non-embedded annex, corresponding media section of the FHIR message lists the existence of the annex, and provides information as to how and where the non-embedded annex may be found or consulted.

8E: Annex on Observation Level

This case is e.g. when the sender prefers to link electrophoresis images to the electrophoresis observation.
This case is not applicable to Macsys
* Test files
  * ???
* Acceptance criterion:
  * TBD for those who provide this case   


## 9.	Microbiology

9A: Microbiology protocol
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933561
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933562
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933563
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933564
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933565
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933566
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933567
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933568
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933569
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933570
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933571
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933572
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933573
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933574

  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/MIPS/UZG_scenario9
* Acceptance criteria:
  * All analyses render correctly, including any comments
  * All antibiogram(s) render correctly and refer to correct analysis (one needs at least one test case specficially for this e:g: Macsys https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933574 )

9B.  Case for additional level of detail (not applicable to Macsys)
TBD

## 10.	Anapath

10A: Protocol with Pathology + Clinical Biology
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333059
* Acceptance criteria
  * Receiver treats both pathology and clinical biology as per relevant pdf version of the protocol

10B: Single pathology protocol
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/501410142
* Acceptance criteria:
  * Receiver captures pathology result as in relevant pfd version of the protocol 

## 11.	Protocols in different languages

11A: 2 versions of same protocol, in 2 different languages
* Test files:
  * TBD
* Acceptance criteria:
  * Structurally and data-wise, both FHIR messages are identical
  * Text-wise, each FHIR is in relevant language, and language differences are identical, content-wise (the same is said in both languages, give and take nuances of translation)

## 12. Joint example from multiple labs for same subject

**This whole section is not relevant for/not tested by visualisation tool**

12A: CMA+AKL

Case is as follows: AKL and CMA are 2 differen labs (2 RIZIV/INAMI numbers). But they use the same analysis encoding, methodolgies, reference ranges etc.  Results from both labs can safely be plotted cumulatively.  Test data consists of 2 protocols for the same patient, generated by different laboratory.
* Test files
  * TBD 
* Acceptance criteria:
  * Receiving system is able to produce cumulative patient report, with values for same analysis plotted on the same line for comparison.  Cumulative report result values match those of the individual protocols (which match what is in the FHIR message per test case in $2 of this plan)

12B:  iLab and MIPS

Case is as follows: MIPS and iLabs are never used at the same time by the same lab.   Whether analyses may be plotted cumulatively depends on LOINC encoding, units etc.
* Test files:
  * TBD
* Acceptance criteria: 
  * Receiving system is able to produce cumulative patient report, with values for same analysis in combination with same LOINC encoding, plotted on the same line for comparison.  Cumulative report result values match those of the individual protocols (which match what is in the FHIR message per test case in $2 of this plan)

## 13. Stress Testing

For this chapter we provide xamples of extreme protocols, either with extreme number of analyses, or extremely large annexes.  Functionally, the examples below do not add any additional functionality to be tested (i.e. all cases in these protocols are tested in earlier test steps; here we are merely testinng volumes and complexity).

13A: large and complex files
* Test files:
  * Macsys FIDLAB example: TBD - without annex
* Acceptance criterium
  *  Generating system manages to output the FHIR messages (no memory or timing issues)
  *  Receiving system manages to process the FHIR messages (no memory or timing issues)

13B: multiple protocols for multiple patients in 1 bundle
* Test files
  * Macsys TBD
* Acceptance criteria
  * Received manages to read and process every protocol in the bundle, and allocate to the appropriate patient 


## 14. Transmission via eHealthbox

**This whole section is not relevant for/not tested by visualisation tool**

* Test files:
  * Any FHIR message can be used
* Acceptance criteria:
  * Message successfully leaves sender system
  * Message successfully arrives @ receiver system
  * Message received equals message sent
  * Metadata encoded in the ADR XML is LAB-FHIR (not 100% certain yet!)
