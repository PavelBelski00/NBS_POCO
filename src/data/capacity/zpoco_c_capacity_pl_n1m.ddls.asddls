@AbapCatalog.sqlViewName: 'ZPOCOCAPCTPLN1M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity - next 10 days (by Plants)'

define view zpoco_c_capacity_pl_n1m

  as select from zpoco_i_capacity_n1month
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
