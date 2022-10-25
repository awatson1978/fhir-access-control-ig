
### Background  

Modern clinical information systems are regulated by various laws, including (but not limited to) HIPAA, GDPR, and 21st Century Cures.  These laws outline expectations for patient privacy and access that clinicians are bound to.  In practice, these laws specify a default expectation of privacy, with the patient having the right to grant or deny access to their information to others.  When viewed through the lens of computer information systems, these laws detail a combination of data collection forms that need to be implemented and respected, and which inform the access control lists of who may log into which systems, and what information they are allowed to access or modify.    

### Purpose  

The purpose of this implementation guide is to help developers implement systems that exchange consent and advance directives data to be used in generating access control lists.  These systems may range widely from Electronic Medical Records (EHR) running in data warehouses, to Personal Health Records (PHR) running on personal mobile devices, to dedicated Consent Engine services, to graph databases, to blockchains, and many other services or products yet to be imagined.  

### Prior Art References  

- [PACIO Implemention Guide](https://www.hl7.org/fhir/implementationguide.html)    
- [SDOH Clinical Implementation Guide (Gravity)](https://build.fhir.org/ig/HL7/sdoh-cc/)  
- [ONC LEAP - Consent Management and Enforcement - Connectathon Track](https://confluence.hl7.org/display/FHIR/2021-01+Consent+Management+and+Enforcement+Services+Track)    
- [MEHI Consent Exchange](https://github.com/fhir-consent-exchange/implementation-guide)     
- [FAST National Direcotory - Attestation](https://build.fhir.org/ig/HL7/fhir-directory-attestation/branches/sept22-preview/)  




### Use Case Scenarios    

Jane Doe is a divorsed single mother, with a 5 year old son named Timmy.  She has a history of domestic violence with her estranged husband, John Doe, who has a history of getting into fist fights and has served 6 months in prison.  Jane and her son are housing insecure, and have moved apartments 3 times in the past 3 years.  

After a recent hurricane, the first floor apartment Jane and Timmy are staying in is drenched in a foot of water, and Jane twists her ankle in the commotion.  After a visit to St. James Infirmary emergency room, social workers refer Jane and Timmy to St. Dymphna's, a local shelter for women and children that provides up to 3 months of free housing and relocation assistance.

Dr. Allison Camron is the attending physician at the St. James Infirmary.  Florence is the social worker.  And Katie is another woman sheltering at St. Dymphna.  


#### Use Case 1 - Directories With Restricted Data 
For the protection of the domestic violence survivors it houses, St. Dymphna's shelter is labeled as restricted data., so as not to be listed in public directories.  Only licensed healthcare practicitions have access to the fact that St. Dymphnas exists, and where it is located.

> When using the local healthcare directory, Dr. Allison Campron authenticates as a physician, and has access to St. Dymphnia's restricted contact and location information.  As a registered social worker, Florence also has access.  As a non-authorized civilian, John Doe does not.  

#### Use Case 2 - Patients Can Only Access Their Own Data  
Boarders at St. Dymphna's have access to a patient portal, where they can access their medical records.  Each patient has access to their own medical records, but not to anybody else's.  

> When using the patient portal, Jane has access to Jane's records, not Katies.  Katie has access to Katie's records, not Jane's.   


#### Use Case 3 - Clinicians Can Access Any Patients Their Role Authorizes   
Social workers 

> When using the clinciian portal, Florence has access to all three patients currently staying at the shelter - Jane, Timmy, and Katie.  


#### Use Case 4 - Patients Can Access Dependent's Records (Custodial Access)   
Patient's have access to the healthcare records of their children and dependents (i.e. elder care), by way of custodial records.  

> When using the patient portal, Jane has access to both Jane and Timmy's records.  Timmy has access to Timmy's records, but not Jane's.  Katie has access to neither Jane nor Timmy's records.


### Sponsors  

This implementation guide was made possible through generous sponsorship by Tranquil Data, the Massachusetts eHealth Institute (MeHI), the FHIR At Scale Taskforce, and the FAST National Directory project.


### Learning Resources & Background Information  

[Getting Started with FHIR](http://hl7.org/fhir/modules.html)  
[FHIR Resource List](https://www.hl7.org/fhir/resourcelist.html)  
[HL7 Education and Certification Course List](http://www.hl7.org/implement/courseList.cfm?ref=nav)  

# Contact Info  

For project maintenance, please contact:    

Abigail Watson <awatson@mitre.org> 

For community help, please post questions on Zulip:  
[https://chat.fhir.org/](https://chat.fhir.org/)  

### Copyright Notice  

This (software/technical data) was produced under Contract Number 6521MT01-01, and is subject to Federal Acquisition Regulation Clause 52.227-14, Rights in Data-General.

No other use other than that granted to the U. S. Government, or to those acting on behalf of the U. S. Government under that Clause is authorized without the express written permission of The MITRE Corporation.

For further information, please contact The MITRE Corporation, Contracts Management Office, 7515 Colshire Drive, McLean, VA 22102-7539, (703) 983-6000.

&copy; 2022 The MITRE Corporation.
