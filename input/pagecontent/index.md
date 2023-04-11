
### Background  

Modern clinical information systems are regulated by various laws, including (but not limited to) HIPAA, GDPR, and 21st Century Cures.  These laws outline expectations for patient privacy and access that clinicians are bound to.  In practice, these laws specify a default expectation of privacy, with the patient having the right to grant or deny access to their information to others.  When viewed through the lens of computer information systems, these laws detail a combination of data collection forms that need to be implemented and respected, and which inform the access control lists of who may log into which systems, and what information they are allowed to access or modify.    

### Purpose  

The purpose of this implementation guide is to help developers implement systems that exchange consent and advance directives data to be used in generating access control lists.  These systems may range widely from Electronic Medical Records (EHR) running in data warehouses, to Personal Health Records (PHR) running on personal mobile devices, to dedicated Consent Engine services, to graph databases, to blockchains, and many other services or products yet to be imagined.  


### Coat Check Analogy

Regarding the access of other people’s data, the critical vulnerability that this implementation guide is addressing is that of access control tokens.  To explain the issue, consider the following analogy:

Person A goes to a conference or night club, and checks in a thrift store coat and gets coat check ticket 13.  Person B attending the same event checks in a nice Burberry coat and gets coat check ticket 18.  Person A then uses a pen and changes their ticket from a 13 to an 18; returns the modified ticket to coat check, and walks out with an expensive Burberry coat.  

This entire implementation guide is intended to test that a)  users have correct access to the appropriate records, per the specified Consent records; and b) modifying access control tokens wont spill data from another account.  


### Clinical Scenario

Jane Doe is a divorsed single mother, with a 5 year old son named Timmy.  She has a history of domestic violence with her estranged husband, John Doe, who has a history of getting into fist fights and has served 6 months in prison.  Jane and her son are housing insecure, and have moved apartments 3 times in the past 3 years.  

After a recent hurricane, the first floor apartment Jane and Timmy are staying in is drenched in a foot of water, and Jane twists her ankle in the commotion.  Jane goes to the state provider directory, and searches for nearby services, and find information for St. James Infirmary.  

After a visit to the St. James emergency room, she is seen by Dr. Camron, who determines that Jane and Timmy need shelter services.  Dr. Camron uses the state provider directory to look up local shelters; and her role as a physician allows her access to the restricted data of which shelters exist and where.

After referal to the shelter, Jane's records are sent over, and she is given access to the shelter's Patient Portal.  The records are sent over on a daily basis by a system account, using a batch transfer process.  

Upon enrollment, Susan Social, the social worker responsible for managing the shelter, is assigned as a general practitioner for both Jane and Timmy.  Doing so gives her access to both patient records for review.  

After arriving at the shelter, Jane logs into the Patient Portal, which provides her various forms and rules about staying there; as well as copies of her own records, as well as those of her son's.  

While at the shelter, Jane has an altercation with another guest, Kathy Klepto.  Kathy has a history of incarceration and homelessness, and has vague concepts of personal property.  She habitually picks up other people's belongings, especially cell phones and electronic devices.  When presented the opportunity, she tries to turn the devices on and see what apps she can open.  During the incident, Kathy picks up Jane's phone, and tries to open the shelter's Patient Portal and access Jane's records.



### Use Cases 


**Scenario 1A - Directories with Anonymous Access**  
Only unrestricted data is published to client via HTTP or websockets. 

**Scenario 1B - Directories With Restricted Data**  
For the protection of the domestic violence survivors, shelters (St. Dymphna's) are labeled as restricted data, so as not to be listed in public directories.  Only licensed healthcare practicitions (Susan Social, Dr. Camron) have access to the fact that the shelters exists, and where they are located.

**Scenario 2A - PHI System - Anonymous Access**  
No patient data is published to client via HTTP nor websockets.  Only public, unrestricted records are sent to client (i.e. sample records).  

**Scenario 2B - PHI System - Patient Self Access**   
Patient  (Jane Doe) registers and authenticates and receives an access token.  A single Patient record is available via HTTP.  If using FHIR-over-websockets or Subscription API, the user's own Patient record is sent to the client.  Upon logout, user session variables and subscriptions are cleared, and user is no longer able to access patient data (except for the public, unrestricted records).

**Scenario 2C - PHI System - Patient Multi-User Access** 
A second patient registers (Kathy).  Kathy has access to Kathy’s own records, but not to Jane’s.  At the same time, Jane has access to Jane’s records, but not to Kathy’s.  HTTP access and websocket publications/subscriptions are updated accordingly; send the user's own data, but not sending anybody elses.  Upon logout, session variables are cleared, and no access is available.  

**Scenario 2D - PHI System - General Practitioner Access**
General practitioners have access to patients assigned to them.  A clinician / social worker registers (Susan Social), who has access to her own records (self access), as well as both Jane and Kathy’s records.  Susan is listed as a general practitioner on both Jane and Kathy's Patient records.  Neither Kathy nor Jane have access to Susan’s records.  When Susan logs out, she no longer has access to any of records.  

**Scenario 2E - PHI System - Dependents Access**
Patient's (Jane Doe) have access to the healthcare records of their children (Timmy) and dependents (i.e. elder care), by way of custodial records.  

**Scenario 3 - Back End Access**
Organizations can register a client via oauth data flows.  Using the registered client id and secret, an external app can present a Bearer token and operate an $export to synchronize databases.


<!-- #### Use Case 1 - Directories With Restricted Data 
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

> When using the patient portal, Jane has access to both Jane and Timmy's records.  Timmy has access to Timmy's records, but not Jane's.  Katie has access to neither Jane nor Timmy's records. -->


### Prior Art References  

- [PACIO Implemention Guide](https://www.hl7.org/fhir/implementationguide.html)    
- [SDOH Clinical Implementation Guide (Gravity)](https://build.fhir.org/ig/HL7/sdoh-cc/)  
- [ONC LEAP - Consent Management and Enforcement - Connectathon Track](https://confluence.hl7.org/display/FHIR/2021-01+Consent+Management+and+Enforcement+Services+Track)    
- [MEHI Consent Exchange](https://github.com/fhir-consent-exchange/implementation-guide)     
- [FAST National Direcotory - Attestation](https://build.fhir.org/ig/HL7/fhir-directory-attestation/branches/sept22-preview/)  


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
