@AbapCatalog.sqlViewName: 'ZPOCOCAPCTPLN15D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity - next 15 days (by Plants)'

define view zpoco_c_capacity_pl_n15d

  as select from zpoco_i_capacity_n15days
{
  key MfgPlantId,
  key ConsumedSlots,
      _Plant.PlantName as PlantName,
      @Aggregation.default: #COUNT_DISTINCT
      count(*)         as ConsumedSlotsQuantity,
      _Plant
}
group by
  MfgPlantId,
  _Plant.PlantName,
  ConsumedSlots
