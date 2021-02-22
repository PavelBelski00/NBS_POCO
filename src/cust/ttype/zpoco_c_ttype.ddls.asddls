@EndUserText.label: 'Manufacturing Plant'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZPOCO_C_TTYPE
  as projection on ZPOCO_I_TTYPE
{
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
  key TherapyTypeID,
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
      TherapyTypeName,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
