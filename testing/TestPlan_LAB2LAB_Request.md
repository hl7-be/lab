## Test Cases for the LAB 2 LAB request 


### L2L01. Create a request bundle containing a Lab2Lab request with the following sender data: 
* NIHDI number of the lab,
* name of the lab,
* address of the lab,
* phone number of the lab, 
* email of the lab


#### Acceptation criteria:
* The full bundle must be compliant with the profile for a Lab2Lab request bundle
* There will be additional checks for the presence of the NIHDI number, name, address, phone number and email of the sending lab.

### L2L02. Create a request bundle containing a Lab2Lab request with the following data for the responsible clinical biologist at the sending side:
* name of the responsible clinical biologist,
* NIHDI number of the responsible clinical biologist.

#### Acceptation criteria:
* The full bundle must be compliant with the profile for a Lab2Lab request bundle
* There will be additional checks for the presence of the NIHDI number and the name of the responsible clinical biologist.

### L2L03. Create a request bundle containing a Lab2Lab request with the following data for the hospital where the patient is staying:
* name of the hospital,
* NIHDI number of the hospital,
* address of the hospital

#### Acceptation criteria:
* The full bundle must be compliant with the profile for a Lab2Lab request bundle
* There will be additional checks for the presence of the NIHDI number and the name of the hospital. For the address, at least street, number, postal code and city must be present.

### L2L04. Create a request bundle containing a Lab2Lab request with the following data for the billing service of the hospital where the patient is staying (Account):
* name of the billing service,
* address of the billing service

#### Acceptation criteria:
* The full bundle must be compliant with the profile for a Lab2Lab request bundle
* There must be a hospital in which the patient is staying
* There will be additional checks for the presence of the name of the billing service. For the address, at least street, number, postal code and city must be present.

### L2L05. Create a request bundle containing a Lab2Lab request with the following data for a patient not staying at the hospital:
* name of the patient,
* SSIN of the patient,
* address of the patient,
* birthdate of the patient,
* gender of the patient

#### Acceptation criteria:
* The full bundle must be compliant with the profile for a Lab2Lab request bundle
* There must not be a hospital in which the patient is staying
* There will be additional checks for the presence of the name of the patient, the SSIN of the patient, the birthdate of the patient and the gender of the patient. For the address, at least street, number, postal code and city must be present.

### L2L06. Create a request bundle containing a Lab2Lab request with the following data for a patient staying at the hospital:
* name of the ward,
* date of arrival,
* time of arrival,
* identification of the stay

#### Acceptation criteria:
* The full bundle must be compliant with the profile for a Lab2Lab request bundle
* There must be a hospital in which the patient is staying
* There must be patient data available
* There will be additional checks for the presence of the name of the patient, the SSIN of the patient, the birthdate of the patient and the gender of the patient. For the address, at least street, number, postal code and city must be present.

### L2L07. Create a request bundle containing a Lab2Lab request with specimen data:
* type of specimen
* date and time the specimen was collected
* date and time when the specimen was received at the sending lab


#### Acceptation criteria:
* The full bundle must be compliant with the profile for a Lab2Lab request bundle
* There will be additional checks for the presence of a specimen, the type of specimen, the date and time of collection and the date of reception.

### L2L08. Create a request bundle containing a Lab2Lab request with (service) request data:
* original requester
* requester of the analysis (if different)
* code of analysis: LOINC
* code of analysis: receiving lab
* comments


#### Acceptation criteria:
* The full bundle must be compliant with the profile for a Lab2Lab request bundle
* There must be a sender
* There must be a receiver
* There must be a patient
* There will be additional checks for the presence of a LOINC code, an additional code, the original requester, the requester of the analysis.

### L2L09. Create a request bundle containing a Lab2Lab request with auxiliary information:
* The bundle must contain additional Observations, at least each one of these must be present: 
  * LOINC 3167-4, 
  * LOINC 2161-8,
  * LOINC 55752-0,
  * LOINC 39112-8

#### Acceptation criteria:
* The full bundle must be compliant with the profile for a Lab2Lab request bundle
* There will be additional checks for the presence at least 4 Observations in the bundle, minimally one of each LOINC-code.







