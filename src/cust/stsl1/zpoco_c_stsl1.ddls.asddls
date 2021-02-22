@EndUserText.label: 'Status L1'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZPOCO_C_STSL1
  as projection on ZPOCO_I_STSL1
{
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
  key StatusL1Id,
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
      StatusL1Name,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
