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

      @UI.hidden: true
      CreatedBy,
      @UI.hidden: true
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
