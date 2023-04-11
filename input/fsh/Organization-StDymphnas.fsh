Instance: stdymphnas
InstanceOf: Organization
Description: "Organization - St. Dympha's Womens Shelter"
Title: "Org-StDymphnas"
Usage: #example
* id = "stdymphnas"
* meta.lastUpdated = "2020-07-07T13:26:22.0314215+00:00"
* meta.profile[0] = "http://hl7.org/fhir/us/directory-query/StructureDefinition/NatlDirEndpointQry-Organization"
* meta.profile[+] = "http://hl7.org/fhir/us/davinci-pdex-plan-net/StructureDefinition/plannet-Organization"
* meta.security = #R "restricted"
* language = #en-US
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "NPI999"
* active = true
* type = http://hl7.org/fhir/us/davinci-pdex-plan-net/CodeSystem/OrgTypeCS#fac "Facility"
* name = "St. Dymphna's Women's Shelter"
* telecom[0].system = #phone
* telecom[=].value = "(111)-222-3333"
* telecom[=].rank = 2
* telecom[+].system = #url
* telecom[=].value = "https://www.stdymphna.com"
* telecom[=].rank = 1
* address.line = "555 Side Street"
* address.city = "Hartford"
* address.state = "CT"
* address.postalCode = "00014-1234"
* contact.telecom.system = #phone
* contact.telecom.value = "(111)-222-3333"
* contact.telecom.rank = 1