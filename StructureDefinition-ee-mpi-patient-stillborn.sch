<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile EEMPIPatient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:telecom) &lt;= 0">telecom: maximum cardinality of 'telecom' is 0</sch:assert>
      <sch:assert test="count(f:birthDate) &gt;= 1">birthDate: minimum cardinality of 'birthDate' is 1</sch:assert>
      <sch:assert test="count(f:deceased[x]) &gt;= 1">deceased[x]: minimum cardinality of 'deceased[x]' is 1</sch:assert>
      <sch:assert test="count(f:address) &lt;= 0">address: maximum cardinality of 'address' is 0</sch:assert>
      <sch:assert test="count(f:multipleBirth[x]) &gt;= 1">multipleBirth[x]: minimum cardinality of 'multipleBirth[x]' is 1</sch:assert>
      <sch:assert test="count(f:communication) &lt;= 0">communication: maximum cardinality of 'communication' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name</sch:title>
    <sch:rule context="f:Patient/f:name">
      <sch:assert test="count(f:family) &gt;= 1">family: minimum cardinality of 'family' is 1</sch:assert>
      <sch:assert test="count(f:given) &gt;= 1">given: minimum cardinality of 'given' is 1</sch:assert>
      <sch:assert test="count(f:given) &lt;= 1">given: maximum cardinality of 'given' is 1</sch:assert>
      <sch:assert test="count(f:prefix) &lt;= 1">prefix: maximum cardinality of 'prefix' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:family) &lt;= 0">family: maximum cardinality of 'family' is 0</sch:assert>
      <sch:assert test="count(f:given) &lt;= 0">given: maximum cardinality of 'given' is 0</sch:assert>
      <sch:assert test="count(f:prefix) &lt;= 0">prefix: maximum cardinality of 'prefix' is 0</sch:assert>
      <sch:assert test="count(f:suffix) &lt;= 0">suffix: maximum cardinality of 'suffix' is 0</sch:assert>
      <sch:assert test="count(f:family) &gt;= 1">family: minimum cardinality of 'family' is 1</sch:assert>
      <sch:assert test="count(f:given) &lt;= 1">given: maximum cardinality of 'given' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:birthDate</sch:title>
    <sch:rule context="f:Patient/f:birthDate">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/patient-birthTime']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/patient-birthTime': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.ee/StructureDefinition/ee-patient-age']) &lt;= 1">extension with URL = 'https://fhir.ee/StructureDefinition/ee-patient-age': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.ee/StructureDefinition/ee-date-accuracy-indicator']) &lt;= 1">extension with URL = 'https://fhir.ee/StructureDefinition/ee-date-accuracy-indicator': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
