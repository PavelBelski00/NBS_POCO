@EndUserText.label: 'Manufacturing Plant'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZPOCO_C_COUNTRY
  as projection on ZPOCO_I_COUNTRY
{
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }

  key CountryId,
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
      CountryName,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
