Profile: DecedentDispositionMethod
Parent: Observation
Id: vrdr-decedent-disposition-method
Title: "Decedent Disposition Method"
Description: "Decedent Disposition Method (Observation)"
* insert RequireMetaProfile(DecedentDispositionMethod)
// * extension contains
//     DispositionLocationReference named dispositionLocationReference 0..1
* status 1..1
* status only code
* status = #final
* status ^short = "status"
* code 1..1
* code only CodeableConcept
* code = $loinc#80905-3 // "Body disposition method"
* code ^short = "code"
* subject 1..1
* subject only Reference(Decedent)
* performer ^short = "Mortician"
* performer ^definition = "Performer is optional, but if provided should be the Mortician using a USCorePractitioner."
//  Performer is optional, and if recorded should reference Mortician. Shift to IJE vs DACF focus.
//* performer only Reference(Mortician)
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from MethodOfDispositionVS (required)