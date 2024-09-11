
### Online Preview
https://awatson1978.github.io/fhir-access-control-ig/

### Background
Modern clinical information systems are regulated by various laws, including (but not limited to) HIPAA, GDPR, and 21st Century Cures. These laws outline expectations for patient privacy and access that clinicians are bound to. In practice, these laws specify a default expectation of privacy, with the patient having the right to grant or deny access to their information to others. When viewed through the lens of computer information systems, these laws detail a combination of data collection forms that need to be implemented and respected, and which inform the access control lists of who may log into which systems, and what information they are allowed to access or modify.

### Purpose
The purpose of this implementation guide is to help developers implement systems that exchange consent and advance directives data to be used in generating access control lists. These systems may range widely from Electronic Medical Records (EHR) running in data warehouses, to Personal Health Records (PHR) running on personal mobile devices, to dedicated Consent Engine services, to graph databases, to blockchains, and many other services or products yet to be imagined.

### Installation  

```bash 
# install the sushi tool
git clone https://github.com/FHIR/sushi
npm install -g fsh-sushi
sushi --help

# get a copy of the sourcecode
git clone https://github.com/awatson1978/fhir-access-control-ig  
cd fhir-access-control-ig  

# compile the documentation  
./_updatePublisher.sh
./_genonce.sh

# open the documentation (assuming Mac + Chrome)
open output/index.html
```

### Copyright    

This (software/technical data) was produced under Contract Number 6521MT01-01, and is subject to Federal Acquisition Regulation Clause 52.227-14, Rights in Data-General.

No other use other than that granted to the U. S. Government, or to those acting on behalf of the U. S. Government under that Clause is authorized without the express written permission of The MITRE Corporation.

For further information, please contact The MITRE Corporation, Contracts Management Office, 7515 Colshire Drive, McLean, VA 22102-7539, (703) 983-6000.

© 2022 The MITRE Corporation.
