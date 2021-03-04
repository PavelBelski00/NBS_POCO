@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Ordering Site'
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity zpoco_c_site
  as projection on zpoco_i_site
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
