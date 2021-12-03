# Test Plan

This document lists cases to be tested for Laboratory Results in FHIR Format.   Most cases apply to the Visualisation Tools, but not all of them.

Work in progress; following to be added:

* References to (Macsys) test protocols and example FHIR files
* Last chapters still need to be written out
* Per test case, the exact acceptance criteria need to be added to the document
* To detail per case, whether the case is relevant to the visualiation tool or not
* There are no references yet to MIPS test protocols and example FHIR files

  

## 1.	Structure

1A: Results on different levels in hierarchy; panels and “titles” on different sublevels.  Including very complex structures (fruit & food allergies).
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049

1B: RBC/Glucose in different specimen (Blood/urine/CSF)
* Test files: 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333050

## 2.	Analyses, Results and Units

2A: Analysis with numeric results
* Test files: 
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333041
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333042
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333043


2B: Analysis with alphanumeric results
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049

2C: Analysis that has no units
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333042

2D: Analysis without LOINC/RETAM code, Albert code, own encoding system
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333051

2E: Free T3 with notion ‘preliminary result’
* Test files:
  * TODO

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

2G: Analysis performed by 3rd lab
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333051

2H: Accreditation status of Analysis and panel (grouping/title)
* Test files:
  * Any test protocol lists lab accreditation status
  * Test accrfeditation status: TODO

## 3.	Reference Ranges

3A: Analysis without reference ranges
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049
  
3B: Test with different numeric cases:
*	High and Low
*	Only High (e.g. <= xx,x)
*	Only Low (e.g. >= yy,y)
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049


3C: Test with alphanumeric reference range
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333045

3D: Reference range for test without units
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333042


## 4.	Comments

### 4.1	Comments in LOINC code

4.1A: “Klinische Gegevens” LOINC 55752-0
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333046


4.1B: “Uitzicht Staal” LOINC  94330-8
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333049  (nog in detail te herbekijken)
   

4.1C: Comments (e.g. “Results tentative”) LOINC 86468-6	

4.1D: Multiple occurrences of above LOINC code(s)
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333046


### 4.2 Reference range comments

4.2A: Reference range comments
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333052


4.2B: Reference range as a table
* Test file: NVT for Macsys (case does not occur)

### 4.3 Comments on test level

4.3A: Test level comment
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333045
  
  
### 4.4 Comments on level ServiceRequest

4.4A. Comment type “copy to” 

4.4B: Administrative comments (e.g. missing DOBs)

## 5.	Specimen Management

5A: Specimen identifiers with LOINC encoding of specimen type

5B: Analysis linked to specimen

5C: No specimen

5D: Partial specimen (some available, others not, in same protocol)

## 6.	Edits on Protocol Level

6A: Protocol with partial results followed by same protocol with final results
* Test files:
  * https://github.com/hl7-be/hl7-be-fhir-laboratory-report/tree/master/testing/Macsys/815333047

6B: Protocol with final results, followed by same protocol with amended result (correction of an individual analysis)

6C: Final protocol for Patient A, followed by correction of same protocol, but different patient (patient inversion)

6D: Testing of version numbering: retransfer of same protocol, with different version number

6E:  Changes in administrative data: prescription date, date of birth, sex of patient, …

6F:  Second version of the protocol received before the first version
 
## 7.	Time Series

TBD

## 8.	Annexes

TBD

## 9.	MicroBiology

TBD

## 10.	Anapath

TBD

## 11.	Protocols in different languages

TBD

## 12. Joint example from multiple labs for same subject

12A: CMA+AKL

Case is as follows: AKL and CMA are 2 differen labs/RIZIV numbers). But they use the same analysis encoding, methodolgies, reference ranges etc.  Results from both labs can safely be plotted cumulatively.

12B:  iLab and MIPS

Case is as follows: MIPS and iLabs are never used at the same time by the same lab.   Whether analyses may be plotted cumulatively depends on LOINC encoding, units etc.
