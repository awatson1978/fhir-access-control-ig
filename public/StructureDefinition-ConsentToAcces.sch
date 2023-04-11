<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Consent
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Consent/f:policy</sch:title>
    <sch:rule context="f:Consent/f:policy">
      <sch:assert test="count(f:authority) &lt;= 0">authority: maximum cardinality of 'authority' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Consent/f:provision/f:provision</sch:title>
    <sch:rule context="f:Consent/f:provision/f:provision">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:actor) &gt;= 1">actor: minimum cardinality of 'actor' is 1</sch:assert>
      <sch:assert test="count(f:securityLabel) &gt;= 1">securityLabel: minimum cardinality of 'securityLabel' is 1</sch:assert>
      <sch:assert test="count(f:class) &gt;= 1">class: minimum cardinality of 'class' is 1</sch:assert>
      <sch:assert test="count(f:dataPeriod) &lt;= 1">dataPeriod: maximum cardinality of 'dataPeriod' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Consent/f:provision/f:provision/f:actor</sch:title>
    <sch:rule context="f:Consent/f:provision/f:provision/f:actor">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:role) &gt;= 1">role: minimum cardinality of 'role' is 1</sch:assert>
      <sch:assert test="count(f:role) &lt;= 1">role: maximum cardinality of 'role' is 1</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Consent/f:provision/f:provision/f:data</sch:title>
    <sch:rule context="f:Consent/f:provision/f:provision/f:data">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:meaning) &gt;= 1">meaning: minimum cardinality of 'meaning' is 1</sch:assert>
      <sch:assert test="count(f:meaning) &lt;= 1">meaning: maximum cardinality of 'meaning' is 1</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
