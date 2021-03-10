@EndUserText.label: 'Manufacturing Plant'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity zpoco_c_plant
  as projection on zpoco_i_plant
{

      @Search: {
          defaultSearchElement: true,
          ranking: #HIGH,
          fuzzinessThreshold: 0.8
      }
      
  key MfgPlantId,
      @Search: {
          defaultSearchElement: true,
          ranking: #HIGH,
          fuzzinessThreshold: 0.8
      }
      PlantName,
      PlantImage,

      @Consumption.filter.hidden: true
      CreatedBy,
      @Consumption.filter.hidden: true
      CreatedAt,
      @Consumption.filter.hidden: true
      LastChangedBy,
      @Consumption.filter.hidden: true
      LastChangedAt
}
