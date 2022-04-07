RuleSet: ParameterSlicing
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"

RuleSet: ParameterName(name,short,def)
* parameter contains {name} 0..1
* parameter[{name}].name = "{name}"
* parameter[{name}] ^short = "{short}"
* parameter[{name}] ^definition = "{def}"
* parameter[{name}].extension 0..0

RuleSet: ParameterNameType(name, type, short, def)
* insert ParameterName({name},{short}, {def})
* parameter[{name}].value[x] only {type}
* parameter[{name}].value[x] 1..1
* parameter[{name}].resource 0..0
* parameter[{name}].part 0..0
* parameter[{name}].extension 0..0


Profile: CodingStatusValues
Parent: Parameters
Id: vrdr-coding-status-values
Title:  "Coding Status Values"
Description:   "Coding Status Values contains various status flags that result from the coding process"
* insert RequireMetaProfile(CodingStatusValues)
* insert ParameterSlicing
* insert ParameterNameType(shipmentNumber, string, shipment number, shipment number)
* insert ParameterNameType(receiptDate, date, receipt date, receipt date)
* insert ParameterNameType(coderStatus, integer, coder status, coder status)
* insert ParameterNameType(intentionalReject, CodeableConcept, Intentional reject, Intentional reject)
* insert ParameterNameType(acmeSystemReject, CodeableConcept, ACME System Reject, ACME System Reject)
* insert ParameterNameType(transaxConversion, CodeableConcept, ALIAS: Transax Conversion, Transax Conversion)
* parameter[intentionalReject].value[x] from IntentionalRejectVS
* parameter[acmeSystemReject].value[x] from SystemRejectVS
* parameter[transaxConversion].value[x] from TransaxConversionVS
* parameter[receiptDate].valueDate.extension contains
    PartialDate named partialDate 0..1

ValueSet: IntentionalRejectVS
Id: vrdr-intentional-reject-vs
Title: "Intentional Reject ValueSet"
Description: "Intentional Reject ValueSet"
* codes from system IntentionalRejectCS

ValueSet: SystemRejectVS
Id: vrdr-system-reject-vs
Title: "System Reject ValueSet"
Description: "System Reject ValueSet"
* codes from system SystemRejectCS


ValueSet: TransaxConversionVS
Id: vrdr-transax-conversion-vs
Title: "System Reject ValueSet"
Description: "System Reject ValueSet"
* codes from system TransaxConversionCS


RuleSet: NCHSObservationCommon
* subject only Reference(Decedent)
* subject ^short = "Decedent"
// * effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Date/Time when added to death record"

Profile: AutomatedUnderlyingCauseOfDeath
Parent: Observation
Id: vrdr-automated-underlying-cause-of-death
Title: "Automated Underlying Cause Of Death"
Description: "Automated Underlying Cause Of Death"
* insert RequireMetaProfile(Profile: AutomatedUnderlyingCauseOfDeath)
* code = $loinc#80358-5 "Cause of death.underlying [Automated]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // ACME_UC
* value[x] from ICD10CausesOfDeathVS
* insert NCHSObservationCommon

Profile: ManualUnderlyingCauseOfDeath
Parent: Observation
Id: vrdr-manual-underlying-cause-of-death
Title: "Manual Underlying Cause Of Death"
Description: "Manual Underlying Cause Of Death"
* insert RequireMetaProfile(Profile: ManualUnderlyingCauseOfDeath)
* code = $loinc#80359-3 "Cause of death.underlying [Manual]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // MAN_UC
* value[x] from ICD10CausesOfDeathVS (required)
* subject 1..1
* subject only Reference(Decedent)
* insert NCHSObservationCommon

Profile: RecordAxisCauseOfDeath
Parent: Observation
Id: vrdr-record-axis-cause-of-death
Title: "Record Axis Cause Of Death"
Description: "Record Axis Cause Of Death : Up to 20 of instances of this profile may be included in a coding bundle.  Each instance is labeled with its position (1-20).

Additional information on Record Axis Cause of death can be found in the case of multiple causes of death can be found in this CDC [publication](https://www.cdc.gov/nchs/data/dvs/Multiple-Cause-Record-Layout-2020.pdf)
.  Previously a subset of records classified to ICD-10 CHAPTER XV - Pregnancy, childbirth and the puerperium (O00-O99) were flagged by the presence of a '1' in the 5th position of the 2nd condition (position = 2).
These are instances where a decedent < 45 years of age has been classified as a maternal
death using input from the information entered in the [DecedentPregnancyStatus], and the 2nd condition represents the cause of death
to which the given record would be classified had the causes of death been processed without [National Vital Statistics Reports Volume 69, Number 2 January, 2020 (cdc.gov)](https://www.cdc.gov/nchs/data/nvsr/nvsr69/nvsr69-02-508.pdf).


In the FHIR encoding, in lieu of using the 5th position of the ICD10 code, a flag has been added to each Record Cause of Death condition that should be set to true in these cases, and should be absent or false elsewhere.
"
* insert RequireMetaProfile(Profile: RecordAxisCauseOfDeath)
* code = $loinc#80357-7 "Cause of death record axis code [Automated]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // MAN_UC
* value[x] from ICD10CausesOfDeathVS (required)
* subject 1..1
* subject only Reference(Decedent)
* insert NCHSObservationCommon
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    position 1..1 and
    wouldBeUnderlyingCauseOfDeathWithoutPregnancy 0..1
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy] ^short = "wouldBeUnderlyingCauseOfDeathWithoutPregnancy"
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].valueBoolean ^short = "wouldBeUnderlyingCauseOfDeathWithoutPregnancy"
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].code 1..1
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].code = #position "wouldBeUnderlyingCauseOfDeathWithoutPregnancy" (exactly)
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].value[x] 1..1
* component[wouldBeUnderlyingCauseOfDeathWithoutPregnancy].value[x] only boolean
* component[position] ^short = "Position"
* component[position].valueInteger ^short = "Position"
* component[position].code 1..1
* component[position].code = #position "Position" (exactly)
* component[position].value[x] 1..1
* component[position].value[x] only integer
* component[position] ^short = "Position"
* component[position].valueInteger ^short = "Position"




Profile: EntityAxisCauseOfDeath
Parent: Observation
Id: vrdr-entity-axis-cause-of-death
Title: "Entity Axis Cause Of Death"
Description: "Entity Axis Cause Of Death:   Up to 20 of instances of this profile may be included in a coding bundle.  Each instance is labeled with its lineNumber, Position and e-code indicator."
* insert RequireMetaProfile(Profile: EntityAxisCauseOfDeath)
* code = $loinc#80356-9 "Cause of death entity axis code [Automated]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept // EAC
* value[x] from ICD10CausesOfDeathVS (required)
* subject 1..1
* subject only Reference(Decedent)
* insert NCHSObservationCommon
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    lineNumber 1..1 and
    position 1..1 and
    eCodeIndicator 0..1
* component[lineNumber].code 1..1
* component[lineNumber].code = #lineNumber "lineNumber" (exactly)
* component[lineNumber].value[x] 1..1
* component[lineNumber].value[x] only integer
* component[lineNumber] ^short = "lineNumber"
* component[lineNumber].valueInteger ^short = "lineNumber"
* component[position].code 1..1
* component[position].code = #position "Position" (exactly)
* component[position].value[x] 1..1
* component[position].value[x] only integer
* component[position] ^short = "position"
* component[position].valueInteger ^short = "Position"
* component[eCodeIndicator].code 1..1
* component[eCodeIndicator].code = #eCodeIndicator "eCodeIndicator" (exactly)
* component[eCodeIndicator].value[x] 1..1
* component[eCodeIndicator].value[x] only boolean
* component[eCodeIndicator] ^short = "Entity Axis Cause of Death order"
* component[eCodeIndicator].valueBoolean ^short = "eCodeIndicator"

Profile: PlaceOfInjury
Parent: Observation
Id: vrdr-place-of-injury
Title: "Place Of Injury"
Description: "Place Of Injury"
* insert RequireMetaProfile(Profile: PlaceOfInjury)
* code = $loinc#11376-1 "Injury location" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from http://loinc.org/vs/LL1051-3 (required)


ValueSet: ActivityAtTimeOfDeathVS
Id: vrdr-activity-at-time-of-death-vs
Title: "Activity at Time of Death VS"
Description: "Activity at Time of Death"
* ActivityAtTimeOfDeathCS#0 "While engaged in sports activity"
* ActivityAtTimeOfDeathCS#1 "While engaged in leisure activities."
* ActivityAtTimeOfDeathCS#2 "While working for income"
* ActivityAtTimeOfDeathCS#3 "While engaged in other types of work"
* ActivityAtTimeOfDeathCS#4 "While resting, sleeping, eating, or engaging in other vital activities"
* ActivityAtTimeOfDeathCS#8 "While engaged in other specified activities."
* ActivityAtTimeOfDeathCS#9 "During unspecified activity"
* $v3-NullFlavor#UNK "unknown"

Profile: ActivityAtTimeOfDeath
Parent: Observation
Id: vrdr-activity-at-time-of-death
Title: "Activity at Time of Death"
Description: "Activity at Time of Death"
* insert RequireMetaProfile(Profile: ActivityAtTimeOfDeath)
* code = $loinc#80626-5 "Activity at time of death [CDC]" (exactly)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from ActivityAtTimeOfDeathVS (required)


RuleSet: obscodecomponent(code, valueSet)
* component contains {code} 0..1
* component[{code}].code 1..1
* component[{code}].code = #{code} "{code}" (exactly)
* component[{code}].value[x] 1..1
* component[{code}].value[x] only CodeableConcept
* component[{code}] ^short = "{code}"
* component[{code}].value[x] from {valueSet}

RuleSet: primobscodecomponent(code, type)
* component contains {code} 0..1
* component[{code}].code 1..1
* component[{code}].code = #{code} "{code}" (exactly)
* component[{code}].value[x] 1..1
* component[{code}].value[x] only {type}
* component[{code}] ^short = "{code}"

Profile: CodedRaceAndEthnicity
Parent: Observation
Id: vrdr-coded-race-and-ethnicity
Title: "Coded Race and Ethnicity"
Description: "Coded (from NCHS) Race and Ethnicity"
* insert RequireMetaProfile(Profile: CodedRaceAndEthnicity)
* code = #codedraceandethnicity "Coded Race and Ethnicity" (exactly)
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* insert obscodecomponent(FirstEditedCode,RaceCodeVS) // First through eighth edited codes
* insert obscodecomponent(SecondEditedCode,RaceCodeVS)
* insert obscodecomponent(ThirdEditedCode,RaceCodeVS)
* insert obscodecomponent(FourthEditedCode,RaceCodeVS)
* insert obscodecomponent(FifthEditedCode,RaceCodeVS)
* insert obscodecomponent(SixthEditedCode,RaceCodeVS)
* insert obscodecomponent(SeventhEditedCode,RaceCodeVS)
* insert obscodecomponent(EighthEditedCode,RaceCodeVS)
* insert obscodecomponent(FirstAmericanIndianCode,RaceCodeVS)
* insert obscodecomponent(SecondAmericanIndianCode,RaceCodeVS)
* insert obscodecomponent(FirstOtherAsianCode,RaceCodeVS)
* insert obscodecomponent(SecondOtherAsianCode,RaceCodeVS)
* insert obscodecomponent(FirstOtherPacificIslanderCode,RaceCodeVS)
* insert obscodecomponent(SecondOtherPacificIslanderCode,RaceCodeVS)
* insert obscodecomponent(FirstOtherRaceCode,RaceCodeVS)
* insert obscodecomponent(SecondOtherRaceCode,RaceCodeVS)
* insert obscodecomponent(RaceRecode40,RaceRecode40VS)
* insert obscodecomponent(HispanicCode,HispanicOriginVS)
* insert obscodecomponent(HispanicCodeForLiteral,HispanicOriginVS)

Profile: InputRaceAndEthnicity
Parent: Observation
Id: vrdr-input-race-and-ethnicity
Title: "Input Race and Ethnicity"
Description: "Input (from EDRS) Race and Ethnicity"
* insert RequireMetaProfile(Profile: InputRaceAndEthnicity)
* code = #inputraceandethnicity "Input Race and Ethnicity" (exactly)
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* insert primobscodecomponent(White,boolean)
* insert primobscodecomponent(BlackOrAfricanAmerican,boolean)
* insert primobscodecomponent(AmericanIndianOrAlaskaNative,boolean)
* insert primobscodecomponent(AsianIndian,boolean)
* insert primobscodecomponent(Chinese,boolean)
* insert primobscodecomponent(Filipino,boolean)
* insert primobscodecomponent(Japanese,boolean)
* insert primobscodecomponent(Korean,boolean)
* insert primobscodecomponent(Vietnamese,boolean)
* insert primobscodecomponent(OtherAsian,boolean)
* insert primobscodecomponent(NativeHawaiian,boolean)
* insert primobscodecomponent(GuamanianOrChamorro,boolean)
* insert primobscodecomponent(Samoan,boolean)
* insert primobscodecomponent(OtherPacificIslander,boolean)
* insert primobscodecomponent(OtherRace,boolean)
* insert primobscodecomponent(FirstAmericanIndianOrAlaskaNativeLiteral,string)
* insert primobscodecomponent(SecondAmericanIndianOrAlaskaNativeLiteral,string)
* insert primobscodecomponent(FirstOtherAsianLiteral,string)
* insert primobscodecomponent(SecondOtherAsianLiteral,string)
* insert primobscodecomponent(FirstOtherPacificIslanderLiteral,string)
* insert primobscodecomponent(SecondOtherPacificIslanderLiteral,string)
* insert primobscodecomponent(FirstOtherRaceLiteral,string)
* insert primobscodecomponent(SecondOtherRaceLiteral,string)
* insert obscodecomponent(RACEMVR,$raceMissingValueReason)
* insert obscodecomponent(HispanicMexican,YesNoUnknownVS)
* insert obscodecomponent(HispanicPuertoRican,YesNoUnknownVS)
* insert obscodecomponent(HispanicCuban,YesNoUnknownVS)
* insert obscodecomponent(HispanicOther,YesNoUnknownVS)
* insert primobscodecomponent(HispanicLiteral,string)

Profile: CodedContentBundle
Parent: Bundle
Id: vrdr-coded-content-bundle
Title: "Coded Content Bundle"
Description: "A bundle containing instances of the resources comprising coded content."
* insert RequireMetaProfile(CodedContentDocument)
* identifier ^short = "Death Certificate Number"
* identifier ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros)."
* identifier.value ^maxLength = 6
* identifier.extension contains
    AuxiliaryStateIdentifier1 named auxiliaryStateIdentifier1 0..1 and
    AuxiliaryStateIdentifier2 named auxiliaryStateIdentifier2 0..1
* type 1..1
* type only code
* type = #collection (exactly)
* entry.resource 1..1 MS // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
* insert BundleSlice(  ActivityAtTimeOfDeath,  0, 1,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath)
* insert BundleSlice(  AutomatedUnderlyingCauseOfDeath,  0, 1,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath)
* insert BundleSlice(  ManualUnderlyingCauseOfDeath,  0, 1,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath)
* insert BundleSlice(  CodedRaceAndEthnicity,  0, 1,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity)
* insert BundleSlice(  EntityAxisCauseOfDeath,  0, 20,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath)
* insert BundleSlice(  RecordAxisCauseOfDeath,  0, 20,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath)
* insert BundleSlice(  PlaceOfInjury,  0, 1,  PlaceOfInjury,  PlaceOfInjury,  PlaceOfInjury)
* insert BundleSlice(  CodingStatusValues,  0, 1,  CodingStatusValues,  CodingStatusValues,  CodingStatusValues)



ValueSet: ICD10CausesOfDeathVS
Id: vrdr-icd10-causes-of-death-vs
Title: "ICD10 Causes of Death VS"
Description: "ICD10 Causes of Death VS"
* include codes from system $icd10

ValueSet: HispanicOriginVS
Id: vrdr-hispanic-origin-vs
Title: "HispanicOrigin Value Set"
Description: "NCHS HispanicOrigin Value Set"
* include codes from system HispanicOriginCS
* $v3-NullFlavor#UNK "unknown"

ValueSet: RaceCodeVS
Id: vrdr-race-code-vs
Title: "Race Code Value Set"
Description: "NCHS Race Codes"
* include codes from system RaceCodeCS
* $v3-NullFlavor#UNK "unknown"

ValueSet: RaceRecode40VS
Id: vrdr-race-recode-40-vs
Title: "Race Recode 40 Value Set"
Description: "NCHS Race Recode 40 Valueset"
* include codes from system RaceRecode40CS