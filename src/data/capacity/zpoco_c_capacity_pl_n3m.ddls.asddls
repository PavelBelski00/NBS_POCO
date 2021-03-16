@AbapCatalog.sqlViewName: 'ZPOCOCAPCTPLN3M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity - next 3 months (by Plants)'

define view zpoco_c_capacity_pl_n3m

  as select from zpoco_i_capacity_n3months
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
