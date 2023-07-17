Laboratory IG
---
<br> </br>
###
### Publication
This ImplementationGuide is published in the following locations:

Continuous Build: __http://build.fhir.org/ig/hl7-be/lab__  
Canonical / permanent URL: 
<br> </br>

### Issues
Issues and change requests are managed here:  

Issues:  __https://github.com/hl7-be/lab/issues__  
Kanban board:  __https://github.com/hl7-be/lab/projects/1__  

### Implementation help

Implementation help can always be found by searching the issues. Additionally, some FAQs for implementers on the receiving side have been provided by the industry themselves: __https://github.com/hl7-be/lab/blob/master/testing/Lab%20results%20in%20FHIR%20-%20Implementation%20Guide%20for%20Receivers.pdf__

### Successful testcases

5 labs are actively testing

| NUMBER | Reference file provided by |
| :-: | :-: |
| 1A | MACSYS |
| 1C | Labo UZ Leuven |
| 1D | Labo St Luc Bxl |
| 2A1 | Labo UZ Leuven |
| 2A3 | Labo St Luc Bxl |
| 2F2 | Labo St Luc Bxl |
| 2F3 | Labo St Luc Bxl |

Project Digitalisation Labresults – QUESTIONS – ANSWERS



|DOMAIN|SUBJECT|QUESTION|ANSWER|
| :-: | :-: | :-: | :-: |
|LOINC codes| Conversion | What information do I need to provide when requesting a new ReTaM code?| Every request needs to provide the following info when requesting a new ReTaM code:<ol><li>	Label without abbreviation</li><li>	Used/usual abbreviation (may contain abbreviated terms)</li><li>	Sample/matrix </li><li>	Method </li><li>	Type and unit of result </li><li>	Proposed LOINC code </li><li>	If known, Fratem/RSW-code </li><li>	If known, Medidoc-code </li></ol>This makes sure that the requests are sufficiently clear and precise, and prevents work for analyses that already exist in ReTaM|
|LOINC codes|Conversion |<p>How can you do the conversion between the codification system we use now and the LOINC codes ?</p><p></p>|There are mapping tables at your disposal  between LOINC codes and Medidoc and RSW/FRATEM codes, which your LIS provider can use.<br>https://www.vas.ehealth.fgov.be/webretam/retam/home.htm?eventName=MENU_SEARCH|
|LOINC codes|Storage|<p>Where can you find these codes ?</p><p></p>|<https://www.ehealth.fgov.be/standards/kmehr/en/page/retam-exports> <br>See also... https://github.com/hl7-be/lab/issues?q=retam<br>|
|SNOMED CT codes|Conversion|Where can you find these codes?|Some resources (Specimen) use SNOMED CT codes. You can use values from the Belgian edition of SNOMED CT: https://browser.ihtsdotools.org/?perspective=full&conceptId1=404684003&edition=MAIN/SNOMEDCT-BE/2022-03-15&release=&languages=en,nl,fr .<br> If the value is not available in the Belgian edition, you can use a value from the international edition, but signal this use to [terminology@health.fgov.be with subject: New LOINC code in context Lab Result](mailto:terminology@health.fgov.be?subject=New+LOINC+code+in+context+Lab+Result) |
|Issues|eHealth|To whom can you address our questions and issues ?|<p>The created github from eHealth is the place to ask questions or to signal a problem:</p><p><https://github.com/hl7-be/lab/issues></p><p></p>|
|Fhir|Starting with|How do we start with Fhir ?|<p>Technical workshop about Fhir organized by eHealth</p><p>There are technical Q&A sessions organised every 6 weeks. Please send an email to support@be-ehealth-standards.atlassian.net</p><p></p>|
|Visualization tool|Access|How can you start this tool ?|<p>This is the link you need: <https://fhir-testserver.be/index.php/visualization_webapp></p><p>Attention: this is the final link</p>|
|Hub-metahub system|Definition|What is this system ?|<p>The hub-metahub system is a network between hubs (Cozo, VZN KUL,RSW, Abrumet) based referential databases, which can be used by a citizen or a caregiver to retrieve all medical reports for a certain cititzen published by healthcare organizations.</p><p></p>|
|GP software solution|Finding results of medical examinations|How can a GP know the correct reference values in case of multiple tests ?|<p>The GP can refer to the message. He can use a LOINC code. It’s up to each software vendor to foresee a solution by using graphs, stats …</p><p>This subject will be treated by the hubs and a document will be published after analysis containing the parameters that can be used to question the hub-metahub system.</p><p></p>|
|Use cases|Definition|What is use case ?|<p>This term finds its origin in UML (Unified Modeling Language), the theoretical definition says: it’s a description of a behavior of a system that reacts on an input from the outside world.</p><p>On a practical level you need to test a new application and therefore you need a set of real situations in input to be able to test your system and to control the validity of the outcome. The number and the quality of the use cases will determine the risk percentage on errors of your application.</p><p></p>|
|API|Definition|What is an API?|API is short for Application Programming Interface. An API is a technical description of the system-to-system communication in terms of actions and input and output descriptions.|
|JSON|Definition|What is a JSON-file?|A JSON file is a file that contains data in a syntactic format that is currently popular. Other similar, but technically different syntaxes for data are XML, HL7v2, CSV,...|
|Test server| Access |What is the RIZIV/INAMI number of the Test Server eHealthBox| the RIZIV/INAMI number of the eHBox is 17166921 and the HCIType is DOCTOR or 73100906111 and the HCIType is SSIN |
|Test server| Access |What are the SSIN numbers of the different testcases? | The list of SSIN numbers for the testcases can be found here: https://docs.google.com/spreadsheets/d/1Zpkz2_rBUYXOHI0f_eQQTXIrXdaTsiUc1qyOrIk-WmY/edit#gid=0 |
|Test server| Access | Where can I request a user for the testserver? | Request your user here: https://fhir-testserver.be/index.php/login If you send your messages using a eHBox with a RIZIV/INAMI number, do not forget to mention it! Otherwise a CBE is enough.|
|Test server| Documentation | Where is the manual for the test server? |  https://docs.google.com/presentation/d/1mZEasXjsMlOKJKt5jRoWcZc2tCKtnH4T/edit?usp=sharing&ouid=101628904260211620169&rtpof=true&sd=true |




---
