# FHIR Examples for Testing & Discussion

This folder contains test FHIR messages from various providers.   

##Folder structure

Structure is as follows:

> testing / PROVIDER

In which provider is the name of the party the created the FHIR messages (e.g. MIPS, Macsys)

> testing / PROVIDER / YYYYMMDD

In which YYYYMMDD is date of creation of the files in that folder.

> testing / PROVIDER / YYYYMMDD / *
> 
YYYYMMDD folder then contains:
- All files.  
- Preferably for each FHIR message the equivalent laboratory protocol in PDF.
- a readme.MD file that describes the test data in the folder.  Readme describes at least:
  - whether the messages pass validator or not
  - any known issues or limitations 
