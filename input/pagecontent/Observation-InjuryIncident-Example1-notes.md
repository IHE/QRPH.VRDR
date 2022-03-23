```
Instance: InjuryIncident-Example1
InstanceOf: InjuryIncident
Title: "InjuryIncident-Example1"
Description: "InjuryIncident-Example1"
Usage: #example
* status = #final
* code = http://loinc.org#11374-6 "Injury incident description Narrative"
* component[0].code = http://loinc.org#69450-5 "Place of injury Facility"
* component[=].valueCodeableConcept.text = "Home"
* component[+].code = http://loinc.org#69444-8 "Did death result from injury at work"
* component[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0136#N "No"
* extension.url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/InjuryLocationReference"
* extension.valueReference.reference = "Location/InjuryLocation-Example1"
* subject.reference = "Patient/Decedent-Example1"
* effectiveDateTime = "2019-11-02T13:00:00-05:00"
* valueCodeableConcept.text = "drug toxicity"
```