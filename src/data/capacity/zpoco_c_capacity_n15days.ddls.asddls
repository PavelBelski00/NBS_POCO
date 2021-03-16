@AbapCatalog.sqlViewName: 'ZPOCOCAPCTN15DAY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity - next 15 days'

define view zpoco_c_capacity_n15days

  as select from zpoco_i_capacity_n15days
{
  key MfgStartDate,
  key ConsumedSlots,
      count(*) as ConsumedSlotsQuantity
}
group by
  MfgStartDate,
  ConsumedSlots
