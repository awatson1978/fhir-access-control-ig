There have been numerous implementation guides already written that have looked at how to collect consent information by way of advanced directives.  This implementation guide takes a slightly different approach from previous work, in that we are specifically interested in computable consent.  For this reason, we are generally leaving the discussion of PDF and CDA documents for another time, and assuming that all records are available or will be made available in XML/JSON/Turtle format.  


#### Structured Data Capture  

The general FHIR approach to forms and structured data inputs is to recognize that specifications change over time, and to anticipate those changing requirements by encoding the form data in a configuration file known as the FHIR Questionnaire resource.  

![ConsentStructuredDataCapture](./ConsentStructuredDataCapture.png){:width="100%"}    

The Questionnaire resource is then displayed in whatever user interface format the implementer choses.  Common design patterns include skeuomorphic forms that replicate white paper documents, dynamic forms showing one question at a time, and interactive chatbots that conversationalize the questionnaire.

Regardless of which user interface is used, the answers provided by the end user are recorded within a QuestionnaireResponse record, referencing the original Questionnaire.  This QuestionnaireResponse is generally sent back to the server for storage and processing.  


#### Consent Questionnaire Types 

This implementation guide recognizes the following Consent record types.  For ease of implementation, examples of these records are provided in the Artifacts section.  

- Do Not Resuscitate  
- Living Will  
- HIPAA Patient Privacy  
- Power of Attorney  
- Power of Attorney - Mental Health   
- National Portable Medical Order  


#### Questionnaire to Consent Data Mapping  

One particularly important use case of interest is the mapping between a HIPAA Patient Privacy form and the Consent resourcs.  

- Questionnaire Item 1.3   > `Consent.dateTime`  
- Questionnaire Item 1.4.1 > `Consent.provision.period.start`  
- Questionnaire Item 1.4.2 > `Consent.provision.period.end`  
- Questionnaire Item 2.1   > `Consent.provision.type` (deny)  
- Questionnaire Item 2.2   > `Consent.provision.type` (permit)  
- Questionnaire Item 2.2   > `Consent.policyRule`  
- Questionnaire Item 2.2   > `Consent.policy.uri`  
- Questionnaire Item 3.1   > `Consent.practitioner`  
- Questionnaire Item 3.2   > `Consent.organization`  
- Questionnaire Item 3.2.1 > `Consent.organization`  
- Questionnaire Item 4.1   > `Consent.provision.actor.reference` 
- Questionnaire Item 4.2   > `Consent.provision.actor.reference`  


#### References  

- [Structured Data Capture (SDC) Implementaiton Guide](https://build.fhir.org/ig/HL7/sdc/)  

