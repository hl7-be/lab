# DIGIRELAB Phase 3: proposal for API (to be finetuned)

This is a short description of the target API that was discussed in the DIGIRELAB Phase 2 & 3 meetings with the HUBs (with some representatives from the LABS).

###### The meeting minutes of these meetings can be found here:

* [2025-11-04](https://docs.google.com/document/d/1shwuxzbQbQb-rzLkQvs01xk2qPdhMWJMYAdl_hcdGP0/edit?usp=drive_link)
* [2025-09-03](https://docs.google.com/document/d/1ZHS2k9OqByr7NOE9l6hJ1ew5qAjK2M1R1ADfCAVDHoE/edit?usp=drive_link)
* [2025-07-10](https://docs.google.com/document/d/1B9vjMm-JdfBA8YkfMqkhTlZUqOsrEopU9lM3IijpHdY/edit?usp=drive_link)
* [2025-06-17](https://docs.google.com/document/d/1_U60AonxVh5um5V1m_f7c4fOt5GtYB7jfOqA2uQ22PA/edit?usp=drive_link)
* [2025-05-14](https://docs.google.com/document/d/150QbuCRCBid2KuvZROD7_GiWsuVgfixBzi5DWO9vhjQ/edit?usp=drive_link)
* [2025-03-10](https://docs.google.com/document/d/1jGJsRQk6aRz9OJ3GzPb1rABlhVWnGtQFSEeM1dxq64w/edit?usp=drive_link)
* [2025-08-01](https://docs.google.com/document/d/1nUTDahBf-V3-TG8Kytds6ZeegCEqKESyq800BYBwzHw/edit?usp=drive_link)
* [2024-09-18](https://docs.google.com/document/d/1-z2O10rpGwWtc02zYYvVtWCZQKpC1TnoOp2FkKlq9uU/edit?usp=drive_link)
* [2024-10-24](https://docs.google.com/document/d/11zdsCbOoARx7MU6DnFaFLkofqQcjlmqbesDnR_XEzmQ/edit?usp=drive_link)


###### Early versions of the API descriptions: functionally: 

https://docs.google.com/spreadsheets/d/1Sfcnu13sbDjb93QsTRog5rsfUtzBO6zPFMBa7YA7IjU/edit?usp=drive_link
https://docs.google.com/document/d/1UtfWtjISYsy2Qa3aoaUMd2pUcwIwKYchbfdZn6rpfp0/edit?usp=drive_link


## For resource type Observation:

this covers all search functionality for laboratory test results

[fhir-root]/Observation?code=http://loinc.org|[code]
[fhir-root]/Observation?date=[date] and the comparison operators described here: https://hl7.org/fhir/R4/search.html#date
[fhir-root]/Observation?subject.identifier=http://www.ehealth.fgov.be/standards/fhir/core/NamingSystem/ssin|[SSIN-number] 
[fhir-root]/Observation?_sort=date AND [fhir-root]/Observation?_sort=-date
[fhir-root]/Observation?_count=[integer]

And the combinations of the above using ‘&’ and ‘,’ as described in the FHIR search standard (https://hl7.org/fhir/R4/search.htm )
the use of _include to include all necessary resources in the Bundle

For resource type Composition:
this covers the link to the original report:
[fhir-root]/Composition/[id]/$document where id is the unique identifier of the composition contained in the lab report. ‘$document’ indicates that not the Composition resource should be served, but the entire document associated with it.

For resource type DocumentReference:
this covers the intermediary resource between the Observation and the Composition (this is only necessary for internal FHIR reasons):

[fhir-root]/DocumentReference/[id]

For resource type Bundle:
Two types of Bundles will need to be served as the result to the search calls:

The existing Lab Report, a bundle of type “document”
The synthetic query response, a bundle of type “searchset”











