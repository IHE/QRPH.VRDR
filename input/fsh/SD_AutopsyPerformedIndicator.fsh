Profile: AutopsyPerformedIndicator
Parent: Observation
Id: vrdr-autopsy-performed-indicator
Title: "Autopsy Performed Indicator"
Description: "Autopsy Performed Indicator (Observation)"
* insert RequireMetaProfile(AutopsyPerformedIndicator)
* status 1..1
* status only code
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = $loinc#85699-7 "Autopsy was performed" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from YesNoUnknownVS (required)
* valueCodeableConcept ^short = "Autopsy was performed?"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    autopsyResultsAvailable 1..1
* component[autopsyResultsAvailable] ^short = "Autopsy Results Available"
* component[autopsyResultsAvailable].code 1..1
* component[autopsyResultsAvailable].code only CodeableConcept
* component[autopsyResultsAvailable].code = $loinc#69436-4 "Autopsy results available" (exactly)
* component[autopsyResultsAvailable].value[x] 1..1
* component[autopsyResultsAvailable].value[x] only CodeableConcept
* component[autopsyResultsAvailable].value[x] from YesNoUnknownNotApplicableVS (required)
* performer 0..1
* performer ^short = "Autopsy Performer using USCorePractioner"