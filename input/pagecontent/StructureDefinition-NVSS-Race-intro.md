### Usage
| **Name** |  **Field**   |  **Encoding**  |  **IJE Field Name(s)**  |
| ---------------| ------------------------ | ------------- | ------------------- |
| White   | extension[ White].valueBoolean  | boolean | RACE1  |
| Black or African American   | extension[ BlackOrAfricanAmerican].valueBoolean  | boolean | RACE2  |
| American Indian or Alaskan Native   | extension[ AmericanIndianOrAlaskaNative].valueCoding  | boolean | RACE3  |
| Asian Indian   | extension[ AsianIndian].valueBoolean  | boolean | RACE4  |
| Chinese   | extension[ Chinese].valueBoolean  | boolean | RACE5  |
| Filipino   | extension[ Filipino].valueBoolean  | boolean | RACE6  |
| Japanese   | extension[ Japanese].valueBoolean  | boolean | RACE7  |
| Korean   | extension[ Korean].valueBoolean  | boolean | RACE8  |
| Vietnamese   | extension[ Vietnamese].valueBoolean  | boolean | RACE8  |
| Other Asian   | extension[ OtherAsian].valueBoolean  | boolean | RACE9  |
| Native Hawaiian   | extension[ NativeHawaiian].valueBoolean  | boolean | RACE10  |
| Guamanian Or Chamorro   | extension[ GuamanianOrChamorro].valueBoolean  | boolean | RACE11 |
| Samoan   | extension[ Samoan].valueBoolean  | boolean | RACE12 |
| Other Pacific Islander   | extension[ OtherPacificIslander].valueBoolean  | boolean | RACE13 |
| Other Race   | extension[ OtherRace].valueBoolean  | boolean | RACE14 |
| First American Indian or Alaskan Native Literal   | extension[ AmericanIndianorAlaskanNativeLiteral][0].valueString  | String | RACE15 |
| Second American Indian or Alaskan Native Literal   | extension[ AmericanIndianorAlaskanNativeLiteral][1].valueString  | String | RACE16 |
| First Other Asian Literal   | extension[ OtherAsianLiteral].valueString[0]  | String | RACE17 |
| Second Other Asian Literal   | extension[ OtherAsianLiteral].valueString[1]  | String | RACE18 |
| First Other Pacific Island Literal   | extension[ OtherPacificIslandLiteral].valueString[0]  | String | RACE19 |
| Second Other Pacific Island Literal   | extension[ Other Pacific IslandLiteral].valueString[1]  | String | RACE20 |
| First Other Race Literal   | extension[ Other Race Literal].valueString[0]  | String | RACE21  |
| Second Other Race Literal   | extension[ Other Race Literal].valueString[1]  | String | RACE22 |
| Race Missing Value Reason   | extension[ MissingValueReason].valueCoding  | [RaceMissingValueReasonVS] | RACE_MVR |
{: .grid }
### Conformance

{% include markdown-link-references.md %}