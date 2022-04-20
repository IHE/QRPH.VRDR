Profile: DeathDate
Parent: Observation
Id: vrdr-death-date
Title: "Death Date"
Description: "Date of death (Observation).  The PartialDatePartAbsent extension supports partial dates."
* insert RequireMetaProfile(DeathDate)
// * extension contains
//     DeathLocationReference named deathLocationReference 0..1
* status 1..1
* status = #final (exactly)
* code 1..1
* code = $loinc#81956-5 "Date+time of death" (exactly)
* subject 1..1
* subject only Reference(Decedent)
* effective[x] 1..1
* effective[x] only dateTime
* performer 0..1
* performer ^short = "Death Pronouncement Performer using USCorePractioner"
//* performer only Reference(DeathPronouncementPerformer)
// Should be an invariant so that either value[x] or the partial date absent extension are provided.
* value[x] 0..1
* value[x] ^short = "Date/Time of Death"
* value[x] only dateTime
* valueDateTime.extension contains
    PartialDateTime named partialDateTime 0..1 MS
* note 0..1
* method 0..1
//* method from DeathDateMethodsVS (extensible)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    datePronouncedDead 1..1 and
    placeOfDeath 0..1
* component[datePronouncedDead] ^short = "Date/Time Pronounced Dead"
* component[datePronouncedDead].value[x] only dateTime
* component[datePronouncedDead].value[x] 1..1
* component[datePronouncedDead].code = $loinc#80616-6 "Date and time pronounced dead [US Standard Certificate of Death]" (exactly)
* component[placeOfDeath] ^short = "Date/Time Pronounced Dead"
* component[placeOfDeath].value[x] only CodeableConcept
* component[placeOfDeath].value[x] from $place-of-death
* component[placeOfDeath].value[x] 1..1
* component[placeOfDeath].code = $loinc#58332-8 "Location of death" (exactly)