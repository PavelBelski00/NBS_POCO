@EndUserText.label: 'Manufacturing Plant'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZPOCO_C_PLANT
  as projection on ZPOCO_I_PLANT
{
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
  key PlantID,
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
      PlantName,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
