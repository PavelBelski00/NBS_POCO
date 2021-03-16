@AbapCatalog.sqlViewName: 'ZPOCOCAPCTN3DAYS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity - next 3 days'

define view zpoco_c_capacity_n3days

  as select from zpoco_i_capacity_n3days
{
  key MfgStartDate,
  key ConsumedSlots,
      count(*) as ConsumedSlotsQuantity
}
group by
  MfgStartDate,
  ConsumedSlots
