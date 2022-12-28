
Instance: DeathCertificateDocument-Test1
InstanceOf: DeathCertificateDocument
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate-document"
* timestamp = "2022-12-22T12:58:12-14:00"
* type = #document
* identifier.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CertificateNumber"
* identifier.extension.valueString = "200100"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "2022MI200100"
* entry[0].fullUrl = "urn:uuid:d96792a8-a5c6-47e3-a507-3e243f5fd9ad"
* entry[=].resource.resourceType = "Composition"
* entry[=].resource.id = "urn:uuid:d96792a8-a5c6-47e3-a507-3e243f5fd9ad"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certificate"
* entry[=].resource.status = #final
* entry[=].resource.title = "Death Certificate"
* entry[=].resource.date = "2022-12-19"
* entry[=].resource.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/FilingFormat"
* entry[=].resource.extension[=].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-filing-format-cs#paper "Paper"
* entry[=].resource.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StateSpecificField"
* entry[=].resource.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/ReplaceStatus"
* entry[=].resource.extension[=].valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-replace-status-cs#updated "Updated Submission"
* entry[=].resource.type = http://loinc.org#64297-5 "Death certificate"
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.author.reference = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.attester.mode = #legal
* entry[=].resource.attester.party.reference = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.event.detail.reference = "urn:uuid:8d642f37-085e-467f-b017-03a2dad2df32"
* entry[=].resource.event.code = http://snomed.info/sct#103693007 "Diagnostic procedure (procedure)"
* entry[=].resource.section[0].entry[0].reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:d1fbae15-91cc-48cc-a876-7ccb103f7a8a"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:36ae7566-4641-44d1-b411-da0ac3f9ad8b"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:e8128a7b-414a-480f-a3e3-a598426daba8"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:c92f12c8-78b9-4025-b151-5b81be63c1b5"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:117eedfa-9678-4c43-b058-50d07217c00e"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:0e980b2d-3ccd-4805-9b20-6c13e16a9b23"
* entry[=].resource.section[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DecedentDemographics
* entry[=].resource.section[+].entry[0].reference = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:8d642f37-085e-467f-b017-03a2dad2df32"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:44209d35-2ed3-41ea-99c5-b4a3a8e28aa4"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:c6c6a78f-5252-41f0-86c7-e56b9a7a7761"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:b70135d6-fa37-4e25-b125-93489ece96c1"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:20959afc-6c95-4c8f-89be-23e5d607d221"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:3671e77f-c96f-40e4-bf4d-09754d7f5461"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:75d4978b-b489-4ce6-9acf-9ef5f57b3e8a"
* entry[=].resource.section[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DeathCertification
* entry[=].resource.section[+].entry[0].reference = "urn:uuid:aef60032-d8da-4df5-811e-3512025b5662"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:c1f0a91b-f770-45f8-8537-77c2af1f14a4"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:7f62991c-a3bf-483a-a182-708cc5126c1d"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:b836c1bc-ae51-45e0-9558-63f930f79069"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:aead2835-84aa-42e7-80f0-18f1e9b7c033"
* entry[=].resource.section[=].entry[+].reference = "urn:uuid:74105aa4-6cde-439c-b047-5ed7c2df95a4"
* entry[=].resource.section[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DeathInvestigation
* entry[=].resource.section[+].entry.reference = "urn:uuid:dcb9a71b-07fc-4199-ac90-6653f4900c99"
* entry[=].resource.section[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-document-section-cs#DecedentDisposition
* entry[+].fullUrl = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.resourceType = "Patient"
* entry[=].resource.id = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.name.family = "FHIRLast"
* entry[=].resource.name.use = #official
* entry[=].resource.name.given[0] = "FHIRFirst"
* entry[=].resource.name.given[+] = "N"
* entry[=].resource.name.suffix = "Jr"
* entry[=].resource.birthDate.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDate"
* entry[=].resource.birthDate.extension.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
* entry[=].resource.birthDate.extension.extension[=].valueUnsignedInt = 1949
* entry[=].resource.birthDate.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
* entry[=].resource.birthDate.extension.extension[=].valueUnsignedInt = 12
* entry[=].resource.birthDate.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
* entry[=].resource.birthDate.extension.extension[=].valueUnsignedInt = 5
* entry[=].resource.address.city = "Lansing"
* entry[=].resource.address.state = "MI"
* entry[=].resource.address.district = "Ingham"
* entry[=].resource.address.postalCode = "489131234"
* entry[=].resource.address.country = "US"
* entry[=].resource.address.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetNumber"
* entry[=].resource.address.extension[=].valueString = "100"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PreDirectional"
* entry[=].resource.address.extension[=].valueString = "East"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetName"
* entry[=].resource.address.extension[=].valueString = "Michigan"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/StreetDesignator"
* entry[=].resource.address.extension[=].valueString = "Avenue"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PostDirectional"
* entry[=].resource.address.extension[=].valueString = "East"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/UnitOrAptNumber"
* entry[=].resource.address.extension[=].valueString = "121"
* entry[=].resource.address.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/WithinCityLimitsIndicator"
* entry[=].resource.address.extension[=].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[=].resource.address.district.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode"
* entry[=].resource.address.district.extension.valuePositiveInt = 65
* entry[=].resource.address.city.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode"
* entry[=].resource.address.city.extension.valuePositiveInt = 46000
* entry[=].resource.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/NVSS-SexAtDeath"
* entry[=].resource.extension[=].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"
* entry[=].resource.extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* entry[=].resource.extension[=].valueAddress.state = "Michigan"
* entry[=].resource.extension[=].valueAddress.country = "US"
* entry[=].resource.extension[=].valueAddress.city = "Lansing"
* entry[=].resource.identifier.system = "http://hl7.org/fhir/sid/us-ssn"
* entry[=].resource.identifier.value = "000000000"
* entry[=].resource.identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SB "Social Beneficiary Identifier"
* entry[=].resource.maritalStatus.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* entry[=].resource.maritalStatus.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* entry[=].resource.maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent"
* entry[+].fullUrl = "urn:uuid:aef60032-d8da-4df5-811e-3512025b5662"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:aef60032-d8da-4df5-811e-3512025b5662"
* entry[=].resource.status = #final
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-autopsy-performed-indicator"
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.code = http://loinc.org#85699-7 "Autopsy was performed"
* entry[=].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* entry[=].resource.component.code = http://loinc.org#69436-4 "Autopsy results available"
* entry[=].resource.component.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#Y "Yes"
* entry[+].fullUrl = "urn:uuid:c6c6a78f-5252-41f0-86c7-e56b9a7a7761"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:c6c6a78f-5252-41f0-86c7-e56b9a7a7761"
* entry[=].resource.status = #final
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.performer.reference = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.code = http://loinc.org#69453-9 "Cause of death [US Standard Certificate of Death]"
* entry[=].resource.valueCodeableConcept.text = "Heart Attack"
* entry[=].resource.component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#lineNumber "line number"
* entry[=].resource.component[=].valueInteger = 1
* entry[=].resource.component[+].code = http://loinc.org#69440-6 "Disease onset to death interval"
* entry[=].resource.component[=].valueString = "5 min"
* entry[+].fullUrl = "urn:uuid:b70135d6-fa37-4e25-b125-93489ece96c1"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "b70135d6-fa37-4e25-b125-93489ece96c1"
* entry[=].resource.status = #final
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.performer.reference = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.code = http://loinc.org#69453-9 "Cause of death [US Standard Certificate of Death]"
* entry[=].resource.valueCodeableConcept.text = "Stroke"
* entry[=].resource.component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#lineNumber "line number"
* entry[=].resource.component[=].valueInteger = 2
* entry[=].resource.component[+].code = http://loinc.org#69440-6 "Disease onset to death interval"
* entry[=].resource.component[=].valueString = "10 min"
* entry[+].fullUrl = "urn:uuid:20959afc-6c95-4c8f-89be-23e5d607d221"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:20959afc-6c95-4c8f-89be-23e5d607d221"
* entry[=].resource.status = #final
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.performer.reference = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.code = http://loinc.org#69453-9 "Cause of death [US Standard Certificate of Death]"
* entry[=].resource.valueCodeableConcept.text = "Concusion"
* entry[=].resource.component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#lineNumber "line number"
* entry[=].resource.component[=].valueInteger = 3
* entry[=].resource.component[+].code = http://loinc.org#69440-6 "Disease onset to death interval"
* entry[=].resource.component[=].valueString = "1 hour"
* entry[+].fullUrl = "urn:uuid:3671e77f-c96f-40e4-bf4d-09754d7f5461"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "3671e77f-c96f-40e4-bf4d-09754d7f5461"
* entry[=].resource.status = #final
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part1"
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.performer.reference = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.code = http://loinc.org#69453-9 "Cause of death [US Standard Certificate of Death]"
* entry[=].resource.valueCodeableConcept.text = "Eclampsia"
* entry[=].resource.component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#lineNumber "line number"
* entry[=].resource.component[=].valueInteger = 4
* entry[=].resource.component[+].code = http://loinc.org#69440-6 "Disease onset to death interval"
* entry[=].resource.component[=].valueString = "10 min"
* entry[+].fullUrl = "urn:uuid:75d4978b-b489-4ce6-9acf-9ef5f57b3e8a"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "75d4978b-b489-4ce6-9acf-9ef5f57b3e8a"
* entry[=].resource.status = #final
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-cause-of-death-part2"
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.performer.reference = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.code = http://loinc.org#69441-4 "Other significant causes or conditions of death"
* entry[=].resource.valueCodeableConcept.text = "Smoker"
* entry[+].fullUrl = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.resourceType = "Practitioner"
* entry[=].resource.id = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-certifier"
* entry[=].resource.name.family = "Jones"
* entry[=].resource.name.use = #official
* entry[=].resource.name.given[0] = "Mary"
* entry[=].resource.name.given[+] = "J"
* entry[=].resource.address.city = "Lansing"
* entry[=].resource.address.state = "MI"
* entry[=].resource.address.postalCode = "48912"
* entry[=].resource.address.line = "2909 E Grand River Ave Suite 102"
* entry[+].fullUrl = "urn:uuid:8d642f37-085e-467f-b017-03a2dad2df32"
* entry[=].resource.resourceType = "Procedure"
* entry[=].resource.id = "8d642f37-085e-467f-b017-03a2dad2df32"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-certification"
* entry[=].resource.status = #completed
* entry[=].resource.category = http://snomed.info/sct#103693007 "Diagnostic procedure"
* entry[=].resource.code = http://snomed.info/sct#308646001 "Death certification"
* entry[=].resource.subject.reference = "2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.performer.function = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#OTH "Other"
* entry[=].resource.performer.function.text = "DO"
* entry[=].resource.performer.actor.reference = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[+].fullUrl = "urn:uuid:c1f0a91b-f770-45f8-8537-77c2af1f14a4"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:c1f0a91b-f770-45f8-8537-77c2af1f14a4"
* entry[=].resource.status = #final
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-date"
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.code = http://loinc.org#81956-5 "Date+time of death"
* entry[=].resource.component[0].code = http://loinc.org#58332-8 "Place of death"
* entry[=].resource.component[=].valueCodeableConcept = http://snomed.info/sct#16983000 "Death in hospital"
* entry[=].resource.component[+].code = http://loinc.org#80616-6
* entry[=].resource.component[=].valueDateTime = "2022-12-06T10:00:00-05:00"
* entry[=].resource.valueDateTime.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/PartialDateTime"
* entry[=].resource.valueDateTime.extension.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Year"
* entry[=].resource.valueDateTime.extension.extension[=].valueUnsignedInt = 2022
* entry[=].resource.valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Month"
* entry[=].resource.valueDateTime.extension.extension[=].valueUnsignedInt = 12
* entry[=].resource.valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Day"
* entry[=].resource.valueDateTime.extension.extension[=].valueUnsignedInt = 6
* entry[=].resource.valueDateTime.extension.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/Date-Time"
* entry[=].resource.valueDateTime.extension.extension[=].valueTime = "10:00:00"
* entry[+].fullUrl = "urn:uuid:7f62991c-a3bf-483a-a182-708cc5126c1d"
* entry[=].resource.resourceType = "Location"
* entry[=].resource.id = "urn:uuid:7f62991c-a3bf-483a-a182-708cc5126c1d"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-death-location"
* entry[=].resource.name = "Sparrow Health Systems Sparrow"
* entry[=].resource.address.state = "MI"
* entry[=].resource.address.city = "Lansing"
* entry[=].resource.address.postalCode = "48912"
* entry[=].resource.address.district = "Ingham"
* entry[=].resource.address.country = "US"
* entry[=].resource.address.city.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/CityCode"
* entry[=].resource.address.city.extension.valuePositiveInt = 46000
* entry[=].resource.address.district.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/DistrictCode"
* entry[=].resource.address.district.extension.valuePositiveInt = 65
* entry[=].resource.type = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-location-type-cs#death "death location"
* entry[+].fullUrl = "urn:uuid:d1fbae15-91cc-48cc-a876-7ccb103f7a8a"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:d1fbae15-91cc-48cc-a876-7ccb103f7a8a"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-age"
* entry[=].resource.status = #final
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.code = http://loinc.org#39016-1 "Age at death"
* entry[=].resource.dataAbsentReason = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown "unknown"
* entry[=].resource.valueQuantity = 73 'a' "Years"
* entry[=].resource.valueQuantity.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* entry[=].resource.valueQuantity.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* entry[+].fullUrl = "urn:uuid:dcb9a71b-07fc-4199-ac90-6653f4900c99"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:dcb9a71b-07fc-4199-ac90-6653f4900c99"
* entry[=].resource.status = #final
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-disposition-method"
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.code = http://loinc.org#80905-3 "Body disposition method"
* entry[=].resource.valueCodeableConcept = http://snomed.info/sct#449971000124106 "Burial"
* entry[+].fullUrl = "urn:uuid:36ae7566-4641-44d1-b411-da0ac3f9ad8b"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:36ae7566-4641-44d1-b411-da0ac3f9ad8b"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-education-level"
* entry[=].resource.status = #final
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.code = http://loinc.org#80913-7
* entry[=].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0360#BA "College or baccalaureate degree complete"
* entry[=].resource.valueCodeableConcept.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* entry[=].resource.valueCodeableConcept.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* entry[+].fullUrl = "urn:uuid:e8128a7b-414a-480f-a3e3-a598426daba8"
* entry[=].resource.resourceType = "RelatedPerson"
* entry[=].resource.id = "urn:uuid:e8128a7b-414a-480f-a3e3-a598426daba8"
* entry[=].resource.active = true
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-father"
* entry[=].resource.patient.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH "father"
* entry[=].resource.name.use = #official
* entry[=].resource.name.family = "Hamilton"
* entry[=].resource.name.given[0] = "John"
* entry[=].resource.name.given[+] = "J"
* entry[=].resource.name.suffix = "Sr"
* entry[+].fullUrl = "urn:uuid:c92f12c8-78b9-4025-b151-5b81be63c1b5"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:c92f12c8-78b9-4025-b151-5b81be63c1b5"
* entry[=].resource.status = #final
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-military-service"
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.code = http://loinc.org#55280-2
* entry[=].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[+].fullUrl = "urn:uuid:b836c1bc-ae51-45e0-9558-63f930f79069"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:b836c1bc-ae51-45e0-9558-63f930f79069"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-pregnancy-status"
* entry[=].resource.status = #final
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.code = http://loinc.org#69442-2 "Timing of recent pregnancy in relation to death"
* entry[=].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#NA "Not Applicable"
* entry[=].resource.valueCodeableConcept.extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/BypassEditFlag"
* entry[=].resource.valueCodeableConcept.extension.valueCodeableConcept = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-bypass-edit-flag-cs#0 "Edit Passed"
* entry[+].fullUrl = "urn:uuid:58842067-6a26-46f7-a1bf-515fcc0c2322"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:58842067-6a26-46f7-a1bf-515fcc0c2322"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-injury-incident"
* entry[=].resource.status = #final
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.effectiveDateTime = "2022-12-05T12:00:00-14:00"
* entry[=].resource.code = http://loinc.org#11374-6 "Injury incident description Narrative"
* entry[=].resource.valueCodeableConcept.text = "Fell down the stairs and bumped head"
* entry[=].resource.component[0].code = http://loinc.org#69450-5 "Place of injury Facility"
* entry[=].resource.component[=].valueCodeableConcept.text = "At home"
* entry[=].resource.component[+].code = http://loinc.org#69444-8 "Did death result from injury at work"
* entry[=].resource.component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[+].fullUrl = "urn:uuid:0e980b2d-3ccd-4805-9b20-6c13e16a9b23"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:0e980b2d-3ccd-4805-9b20-6c13e16a9b23"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-input-race-and-ethnicity"
* entry[=].resource.status = #final
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-observations-cs#inputraceandethnicity "Input Race and Ethnicity"
* entry[=].resource.component[0].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#HispanicMexican "HispanicMexican"
* entry[=].resource.component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#HispanicPuertoRican "HispanicPuertoRican"
* entry[=].resource.component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#HispanicCuban "HispanicCuban"
* entry[=].resource.component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[=].resource.component[+].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#HispanicOther "HispanicOther"
* entry[=].resource.component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* entry[=].resource.component[+].valueBoolean = true
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#White "White"
* entry[=].resource.component[+].valueBoolean = true
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#BlackOrAfricanAmerican "BlackOrAfricanAmerican"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#AmericanIndianOrAlaskanNative "AmericanIndianOrAlaskanNative"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#AsianIndian "AsianIndian"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Chinese "Chinese"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Filipino "Filipino"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Japanese "Japanese"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Korean "Korean"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Vietnamese "Vietnamese"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#OtherAsian "OtherAsian"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#NativeHawaiian "NativeHawaiian"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#GuamanianOrChamorro "GuamanianOrChamorro"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#Samoan "Samoan"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#OtherPacificIslander "OtherPacificIslander"
* entry[=].resource.component[+].valueBoolean = false
* entry[=].resource.component[=].code = http://hl7.org/fhir/us/vrdr/CodeSystem/vrdr-component-cs#OtherRace "OtherRace"
* entry[+].fullUrl = "urn:uuid:44209d35-2ed3-41ea-99c5-b4a3a8e28aa4"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:44209d35-2ed3-41ea-99c5-b4a3a8e28aa4"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-manner-of-death"
* entry[=].resource.status = #final
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.performer.reference = "urn:uuid:a1d19edf-bde6-41a1-9c9c-08e5ce0e72b7"
* entry[=].resource.code = http://loinc.org#69449-7 "Manner of death"
* entry[=].resource.valueCodeableConcept = http://snomed.info/sct#7878000 "Accidental death"
* entry[+].fullUrl = "urn:uuid:74105aa4-6cde-439c-b047-5ed7c2df95a4"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:74105aa4-6cde-439c-b047-5ed7c2df95a4"
* entry[=].resource.status = #final
* entry[=].resource.subject.reference = "urn:uuid:2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-tobacco-use-contributed-to-death"
* entry[=].resource.code = http://loinc.org#69443-0 "Did tobacco use contribute to death"
* entry[=].resource.valueCodeableConcept = http://snomed.info/sct#373066001 "Yes"
* entry[+].fullUrl = "urn:uuid:117eedfa-9678-4c43-b058-50d07217c00e"
* entry[=].resource.resourceType = "Observation"
* entry[=].resource.id = "urn:uuid:117eedfa-9678-4c43-b058-50d07217c00e"
* entry[=].resource.meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-decedent-usual-work"
* entry[=].resource.status = #final
* entry[=].resource.subject.reference = "2648d64a-c95d-425e-9f10-59ddfc5204ee"
* entry[=].resource.valueCodeableConcept.text = "Construction"
* entry[=].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "unknown"
* entry[=].resource.category = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* entry[=].resource.code = http://loinc.org#21843-8 "History of Usual occupation"
* entry[=].resource.component.code = http://loinc.org#21844-6 "History of Usual industry"
* entry[=].resource.component.valueCodeableConcept.text = "Labor"
* entry[=].resource.component.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "unknown"