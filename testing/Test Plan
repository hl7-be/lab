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

1B: RBC/Glucose in different specimen (Blood/urine/CSF)

## 2.	Analyses, Results and Units

2A: Analysis with numeric results

2B: Analysis with alphanumeric results

2C: Analysis that has no units

2D: Analysis without LOINC/RETAM code, Albert code, own encoding system

2E: Free T3 with notion ‘preliminary result’

2F: Interpretation of result: 5 cases: 
-	normal, 
-	L, 
-	LL, 
-	H,
-	HH

2G: Analysis performed by 3rd lab

2H: Accreditation status of Analysis and panel (grouping/title)

## 3.	Reference Ranges

3A: Analysis without reference ranges
3B: Test with different numeric cases:
-	High and Low
-	Only High (e.g. <= xx,x)
-	Only Low (e.g. >= yy,y)

3C: Test with alphanumeric reference range

3D: Reference range for test without units


## 4.	Comments

### 4.1	Comments in LOINC code

4.1A: “Klinische Gegevens” LOINC 55752-0

4.1B: “Uitzicht Staal” LOINC  94330-8

4.1C: Comments (e.g. “Results tentative”) LOINC 86468-6	

4.1D: Multiple occurrences of above LOINC code(s)

### 4.2 Reference range comments

4.2A: Reference range comments

4.2B: Reference range as a table

### 4.3 Comments on test level

4.3A: Test level comment

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
