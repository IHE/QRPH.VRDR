Instance: ContributoryTobaccoUseCM
InstanceOf: ConceptMap
Usage: #definition
* insert ConceptMapIntro(Contributory Tobacco Use, ContributoryTobaccoUseVS)
* insert AddGroup("IJE",$sct)
* insert MapConcept( #Y,  "Yes",#373066001, "Yes")
* insert MapConcept( #N,  "No",#373067005, "No")
* insert MapConcept( #P,  "Probably",#2931005, "Probably")
* insert AddGroup("None",$v3-NullFlavor)
* insert MapConcept( #U,  "Unknown",#UNK, "Unknown")
* insert MapConcept( #C,  "Not on certificate",#NI, "No Information")