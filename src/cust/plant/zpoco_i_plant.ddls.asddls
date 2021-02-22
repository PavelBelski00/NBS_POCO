@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Manufacturing Plant'
define root view entity ZPOCO_I_PLANT
  as select from zpoco_c_plant_a
{
  key zpoco_c_plant_a.plant_id        as PlantID,
      zpoco_c_plant_a.plant_name      as PlantName,
      @Semantics.user.createdBy: true
      zpoco_c_plant_a.created_by      as CreatedBy,
      @EndUserText.label : 'Created At'
      @Semantics.systemDateTime.createdAt: true
      zpoco_c_plant_a.created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      zpoco_c_plant_a.last_changed_by as LastChangedBy,
      @EndUserText.label : 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true
      zpoco_c_plant_a.last_changed_at as LastChangedAt
}
