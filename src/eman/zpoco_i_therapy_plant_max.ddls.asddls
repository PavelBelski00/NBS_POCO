@AbapCatalog.sqlViewName: 'ZPOCOIMAXTH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Max Therapy By Plant'
define view zpoco_i_therapy_plant_max
  as select from zpoco_c_therapy_plant_card
{
  key MfgPlantId,
      _Plant.PlantName      as PlantName,
      sum(Therapy_Quantity) as Quantity,
      _Plant
}
group by
  MfgPlantId,
  _Plant.PlantName
