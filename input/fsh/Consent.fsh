Profile:  ConsentToAcces
Parent: Consent
Id:  ConsentToAcces
Title: "AccessControlConsent"
Description: "Restriction on use/release of exchanged information"
* ^status = #active
* ^date = "2017-12-15T01:01:31.325+11:00"
* . ^short = "A policy may permit or deny recipients or roles to perform actions for specific purposes and periods of time"
* status MS
* status ^short = "Indicates the current state of this restriction"
* status ^comment = "This element is labeled as a modifier because the status contains the codes rejected and entered-in-error that mark the restriction as not currently valid."
* category MS
* category ^label = "Type"
* category ^short = "Type of restriction"
* category ^definition = "Type of restriction (conditional release (per DUA); requires flowdown agreement (for redisclosure); internal use only; release defined by access rights (as specified by the national source))"
* dateTime MS
* dateTime ^label = "last updated"
* dateTime ^short = "date/time of last update for this restriction"
* dateTime ^definition = "When this Restriction was issued / created / indexed."
* policy MS
* policy.authority ..0 MS
* policy.uri MS
* policy.uri ^short = "Specific policy covered by this restriction"
* provision MS
* provision ^short = "Access rights"
* provision.type = #deny (exactly) 
* provision.provision.type = #permit (exactly)
* provision.provision.type MS
* provision.provision.actor 1..* MS
* provision.provision.actor.role 1..1 MS
* provision.provision.securityLabel 1..* MS
* provision.provision.class 1..* 