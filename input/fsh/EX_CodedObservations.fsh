Instance: AutomatedUnderlyingCauseOfDeath-Example1
InstanceOf: AutomatedUnderlyingCauseOfDeath
Usage: #example
Description: "AutomatedUnderlyingCauseOfDeath-Example1"
* insert AddMetaProfile(AutomatedUnderlyingCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#E08.8 "Diabetes mellitus due to underlying condition with unspecified complications"

Instance: RecordAxisCauseOfDeath-Example1
InstanceOf: RecordAxisCauseOfDeath
Usage: #example
Description: "RecordAxisCauseOfDeath-Example1"
* insert AddMetaProfile(RecordAxisCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#E08.8 "Diabetes mellitus due to underlying condition with unspecified complications"
* component[position].valueInteger = 1

Instance: EntityAxisCauseOfDeath-Example1
InstanceOf: EntityAxisCauseOfDeath
Usage: #example
Description: "EntityAxisCauseOfDeath-Example1"
* insert AddMetaProfile(EntityAxisCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#E08.8 "Diabetes mellitus due to underlying condition with unspecified complications"
* component[lineNumber].valueInteger = 1
* component[position].valueInteger = 1

Instance: ManualUnderlyingCauseOfDeath-Example1
InstanceOf: ManualUnderlyingCauseOfDeath
Usage: #example
Description: "ManualUnderlyingCauseOfDeath-Example1"
* insert AddMetaProfile(ManualUnderlyingCauseOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#E08.8 "Diabetes mellitus due to underlying condition with unspecified complications"

Instance: PlaceOfInjury-Example1
InstanceOf: PlaceOfInjury
Usage: #example
Description: "PlaceOfInjury-Example1"
* insert AddMetaProfile(PlaceOfInjury)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = $icd10#E08.8 "Diabetes mellitus due to underlying condition with unspecified complications"

Instance: ActivityAtTimeOfDeath-Example1
InstanceOf: ActivityAtTimeOfDeath
Usage: #example
Description: "ActivityAtTimeOfDeath-Example1"
* insert AddMetaProfile(ActivityAtTimeOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = ActivityAtTimeOfDeathCS#1 "While engaged in leisure activities."

Instance: CodedRaceAndEthnicity-Example1
InstanceOf: CodedRaceAndEthnicity
Usage: #example
Description: "CodedRaceAndEthnicity-Example1"
* insert AddMetaProfile(CodedRaceAndEthnicity)
* status = #final
* subject.display = "NCHS generated"
* component[FirstEditedCode].valueCodeableConcept = RaceCodeCS#101 "White"
* component[SecondEditedCode].valueCodeableConcept = RaceCodeCS#122 "Israeli"
* component[HispanicCode].valueCodeableConcept = HispanicOriginCS#233 "Chilean"
* component[RECODE40].valueCodeableConcept = RaceRecode40CS#20 "AIAN and Asian"

Instance: InputRaceAndEthnicity-Example1
InstanceOf: InputRaceAndEthnicity
Usage: #example
Description: "InputRaceAndEthnicity-Example1"
* insert AddMetaProfile(InputRaceAndEthnicity)
* status = #final
* subject.display = "NCHS generated"
* component[White].valueBoolean = true
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[BlackOrAfricanAmerican].valueBoolean = false
* component[AmericanIndianOrAlaskaNative].valueBoolean = false
* component[AsianIndian].valueBoolean = false
* component[Chinese].valueBoolean = false
* component[Filipino].valueBoolean = false
* component[Japanese].valueBoolean = false
* component[Korean].valueBoolean = false
* component[Vietnamese].valueBoolean = false
* component[OtherAsian].valueBoolean = false
* component[NativeHawaiian].valueBoolean = false
* component[GuamanianOrChamorro].valueBoolean = false
* component[Samoan].valueBoolean = false
* component[OtherPacificIslander].valueBoolean = false
* component[OtherRace].valueBoolean = false
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y
* component[HispanicMexican].valueCodeableConcept = $v2-0136#Y


Instance: CodedContentDocument-Example1
InstanceOf: CodedContentDocument
Usage: #example
Description: "CodedContentDocument-Example1"
* insert AddMetaProfile(CodedContentDocument)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "000182"
* identifier.extension[auxiliaryStateIdentifier1].valueString = "000000000001"
* identifier.extension[auxiliaryStateIdentifier2].valueString = "100000000001"
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Observation, CodedRaceAndEthnicity-Example1)
* insert addentry(Observation, ActivityAtTimeOfDeath-Example1)
* insert addentry(Observation, PlaceOfInjury-Example1)
* insert addentry(Observation, ManualUnderlyingCauseOfDeath-Example1)
* insert addentry(Observation, AutomatedUnderlyingCauseOfDeath-Example1)
* insert addentry(Observation, RecordAxisCauseOfDeath-Example1)
* insert addentry(Observation, EntityAxisCauseOfDeath-Example1)
