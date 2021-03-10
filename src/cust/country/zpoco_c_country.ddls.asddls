@EndUserText.label: 'Manufacturing Plant'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity zpoco_c_country
  as projection on zpoco_i_country
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
      
      @Consumption.filter.hidden: true
      CreatedBy,
      @Consumption.filter.hidden: true
      CreatedAt,
      @Consumption.filter.hidden: true
      LastChangedBy,
      @Consumption.filter.hidden: true
      LastChangedAt
}
