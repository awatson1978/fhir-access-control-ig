ValueSet:   ConsentExchangeScopeCodes
Id: consent-exchange-scope-codes
Title:  "ConsentExchangeScopeCodes"
Description: "Consent Exchange - Scope Codes"
* codes from valueset http://terminology.hl7.org/ValueSet/consent-scope
* exclude ConsentScopeCodes#research
* exclude ConsentScopeCodes#treatment


ValueSet:   ConsentExchangeCategoryCodes
Id: consent-exchange-category-codes
Title: "ConsentExchangeCategoryCodes"
Description:  "Consent Exchange - Category Codes"
* codes from valueset http://hl7.org/fhir/ValueSet/consent-category
* exclude ConsentCategoryCodes#acd
* exclude ConsentCategoryCodes#dnr
* exclude ConsentCategoryCodes#hcd
* exclude ConsentCategoryCodes#npp
* exclude ConsentCategoryCodes#polst
* exclude LNC#57016-8
* exclude LNC#57017-6
* exclude LNC#64292-6



// ValueSet:   ConsentExchangeRelationshipRoleCodes
// Id: consent-exchange-relationship-role-codes
// Title: "RelationshipRoles"
// Description:  "Consent Exchange - Relationship Roles"
// * codes from valueset http://hl7.org/fhir/ValueSet/consent-category
// * codes from valueset http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype


CodeSystem: ConsentExchangeRelationships
Id: ConsentExchangeRelationships
Title: "ConsentExchangeRelationships"
Description: "Relationships used to model and exchange consent relationships"

ValueSet:   ConsentExchangeRelations
Id: ConsentExchangeRelations
Title: "ConsentExchangeRelations"
Description:  "Consent Exchange - Relationships"
* codes from valueset http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype  
* codes from valueset http://hl7.org/fhir/ValueSet/practitioner-role   
* codes from valueset http://hl7.org/fhir/ValueSet/participant-role  
* codes from valueset http://hl7.org/fhir/ValueSet/security-role-type 
* codes from valueset http://hl7.org/fhir/ValueSet/organization-type


CodeSystem: PayorToPayorExchangePolicyCodes
Id: PayorToPayorExchangePolicyCodes
Title: "PayorToPayorExchangePolicyCodes"
Description: "Policy codes used to define legal frameworks under which consent exchange occurs between payors."
* #CMS-9115-P "CMS Interoperability and Patient Access proposed rule"
* #CMS-9115-F "CMS Interoperability and Patient Access final rule"
* #CMS-9123-P "CMS Reducing Provider and Patient Burdern proposed rule"
* #CMS-9123-F "CMS Reducing Provider and Patient Burdern final rule"

CodeSystem: CmsInteroperabilityPolicyCodes
Id: CmsInteroperabilityPolicyCodes
Title: "CmsInteroperabilityPolicyCodes"
Description: "Policy provisions defined under CMS-9115-F, CMS Interoperability and Patient Access final rule"
* #CMS-9115-F.III "Provisions of Patient Access Through APIs"
* #CMS-9115-F.IV "API Access to Published Provider Directory Data Provisions"
* #CMS-9115-F.V "Health Information Exchange and Care Coordination Across Payers"
* #CMS-9115-F.VI "Care Coordination Through Trusted Exchange Networks"
* #CMS-9115-F.VII "Improving the Medicare-Medicaid Dually Eligible Experience"
* #CMS-9115-F.VIII "Information Blocking Background and Public Reporting"
* #CMS-9115-F.IX "Provider Digital Contact Information"
* #CMS-9115-F.X "Conditions of Participation for Hospitals and Critical Access Hospitals"

ValueSet:   ConsentExchangePolicies
Id: ConsentExchangePolicies
Title: "ConsentExchangePolicies"
Description:  "Consent Exchange - Policies"
* codes from system http://mehi-ig.tranquildata.com/CodeSystem/PayorToPayorExchangePolicyCodes
* codes from valueset http://hl7.org/fhir/ValueSet/consent-policy  
// * SCT#54102005 "G1 grade (finding)"