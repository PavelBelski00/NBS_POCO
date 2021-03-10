@EndUserText.label: 'Manufacturing Plant'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity zpoco_c_ttype
  as projection on zpoco_i_ttype
{
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
  key TherapyTypeId,
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
      TherapyTypeName,
      
      @Consumption.filter.hidden: true
      CreatedBy,
      @Consumption.filter.hidden: true
      CreatedAt,
      @Consumption.filter.hidden: true
      LastChangedBy,
      @Consumption.filter.hidden: true
      LastChangedAt
}
