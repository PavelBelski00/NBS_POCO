@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Ordering Site'
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZPOCO_C_SITE
  as projection on ZPOCO_I_SITE
{
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
  key OrderingSiteId,
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
      OrderingSiteName,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
