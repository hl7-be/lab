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
* Acceptance criterion:
  * Title headings and levels match those in pfd version of protocol 

1B: RBC/Glucose in different specimen (Blood/urine/CSF)
* Test files: 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333050
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
* Acceptance criteria:
  * Patient identified by means of lab identifier
  * (not for visualiser) patient result data matched with other/previous results from same lab/same patient


## 2.	Analyses, Results and Units

2A: Analysis with numeric results
* Test files: 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333041
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333042
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333043
* Acceptance criteria:
  * All numeric values identical as their counterparts in the pdf version of the protocol
  * Units represented as their counterparts in the pfd version of the protocol

2B: Analysis with alphanumeric results
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049
* Acceptance criteria:
  * All alphanumeric values identical as their counterparts in the pdf version of the protocol
  * Units represented as their counterparts in the pdf version of the protocol

2C: Analysis that has no units
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333042
* Acceptance criteria:
  * Where analysis has no units per pdf version of the protocol, no unts are represented off FHIR message either

2D: Analysis without LOINC/RETAM code, Albert code, own encoding system
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333051
* Acceptance criterion:
  * Analysis is shown un human readable form, based on the non LOINC/RETAM/Albert encoding in the FHIR message and correct as compared to that in the pdf version of the protocol

2E: Free T3 with notion ‘preliminary result’
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333047
* Acceptance criterion:
  * TBD - SWa?
  
2F: Interpretation of result: 5 cases: 
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
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333051
* Acceptance criterion:
  * Analysis performed by 3rd party lab are flagged or labelled as such, and identical to such flagging in the pdf version of the protocol

2H: Accreditation status of analysis and panel (grouping/title)
* Test files:
  * Any test protocol lists lab accreditation status
  * Test accreditation status: TODO

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
* Acceptance criterion:
  * Analysis shown without reference range and without reference range flags 
  
3B: Test with different numeric cases:
*	High and Low
*	Only High (e.g. <= xx,x)
*	Only Low (e.g. >= yy,y)
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333052
* Acceptance criteria:
  * Reference ranges (functionally but not necessarily literally) shown as in pdf version of protocol


3C: Test with alphanumeric reference range
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333045
* Acceptance criterion:
  * Reference range literally shown as in pdf version of protocol
  
3D: Reference range for test without units
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333042
* Acceptance criterion:
  * Reference range literally shown as in pdf version of protocol

## 4.	Comments

### 4.1	Comments in LOINC code

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
* Acceptance criterion:
  * Reference range comments shown along with the reference range, and identical to representation in the corresponding pfd version of the protocol 

4.2B: Reference range as a table
* Test file: NVT for Macsys (case does not occur in macsys systems)
* Acceptance criterion:

### 4.3 Comments on analysis level

4.3A: Test level comment
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333045
* Acceptation criterion:
  * All analysis level comments are shown next to (or above/under) the analysis they refer to and are identical to those in the corresponding pfd version of the protocol
  
### 4.4 Comments on level ServiceRequest

4.4A. Comment type “copy to” 
* Test files
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049
* Acceptation criteria:
  * Comments are shown on protocol level and are identica to those in corresponding pdf version of the protocol  

4.4B: Administrative comments (e.g. missing DOBs)
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333055
* Acceptation criteria:
  * Comments are shown on protocol level and are identica to those in corresponding pdf version of the protocol 

## 5.	Specimen Management

5A: Specimen identifiers with LOINC encoding of specimen type
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/blob/master/testing/Macsys/815333044/
* Acceptance critia:
  * Every speciment linked to (correct) LOINC speciment type

5B: Analysis linked to specimen
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/blob/master/testing/Macsys/815333044/
* Acceptance critia:
  * Every analysis linked to (correct) specimen

5C: No specimen
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333051 (nog te bekijken of dit klopt!) 

5D: Partial specimens (some available, others not, in same protocol)

## 6.	Edits on Protocol Level

**This whole section is not relevant for/not tested by visualisation tool**

6A: Protocol with partial results followed by same protocol with final results
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333047

6B: Protocol with final results, followed by same protocol with amended result (correction of an individual analysis)

6C: Final protocol for Patient A, followed by correction of same protocol, but different patient (patient inversion)

6D: Testing of version numbering: retransfer of same protocol, with different version number

6E:  Changes in administrative data: prescription date, date of birth, sex of patient, 

6F:  Second version of the protocol received before the first version
 
## 7.	Time Series

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
* Acceptance criteria:
  * All analyses render correctly, including any comments
  * All antibiogram(s) render correctly and refer to correct analysis (one needs at least one test case specficially for this e:g: Macsys https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815933574 )


## 10.	Anapath

10A: Protocol with Pathology + Clinical Biology
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333059
* Acceptance criteria
  * Receiver treats both pathology and clinical biology as per relevant pdf version of the protocol

10B: Single pathology protocol
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333060
* Acceptance criteria:
  * Receiver captures pathology result as in relevant pfd version of the protocol 

## 11.	Protocols in different languages

TBD

## 12. Joint example from multiple labs for same subject

**This whole section is not relevant for/not tested by visualisation tool**

12A: CMA+AKL

Case is as follows: AKL and CMA are 2 differen labs/RIZIV numbers). But they use the same analysis encoding, methodolgies, reference ranges etc.  Results from both labs can safely be plotted cumulatively.

12B:  iLab and MIPS

Case is as follows: MIPS and iLabs are never used at the same time by the same lab.   Whether analyses may be plotted cumulatively depends on LOINC encoding, units etc.

## 13. Stress Testing

For this chapter we provide xamples of extreme protocols, either with extreme number of analyses, or extremely large annexes.  Functionally, the examples below do not add any additional functionality to be tested (i.e. all cases in these protocols are tested in earlier test steps; here we are merely testinng volumes and complexity).

* Test files:
  * Macsys FIDLAB example: TBD 
* Acceptance criterium
  *  Receiving system manages the process the FHIR messages (no memory or timing issues)

## 14. Transmission via eHealthbox

**This whole section is not relevant for/not tested by visualisation tool**

* Test files:
  * Any FHIR message can be used
* Acceptance criteria:
  * Message successfully leaves sender system
  * Message successfully arrives @ receiver system
  * Message received equals message sent
