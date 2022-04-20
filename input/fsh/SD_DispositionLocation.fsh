Profile: DispositionLocation
Parent: USCoreLocation
Id: vrdr-disposition-location
Title: "Disposition Location"
Description: "Disposition Location (USCoreLocation)"
* insert RequireMetaProfile(DispositionLocation)
* name ^short = "Name of Disposition Location"
//* description 0..1
// * type 0..1
//* type.coding from $v3-ServiceDeliveryLocationRoleType (extensible)
* address 1..1
* address.state from StatesTerritoriesAndProvincesVS (required)
// * physicalType 1..1
// * physicalType.coding from LocationType (required)
* insert CityCode
* insert CountyCode
* type = LocationTypeCS#disposition