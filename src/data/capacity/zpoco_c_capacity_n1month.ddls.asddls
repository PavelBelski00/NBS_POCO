@AbapCatalog.sqlViewName: 'ZPOCOCAPCTN1MON'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity - next 10 days'

define view zpoco_c_capacity_n1month

  as select from zpoco_i_capacity_n1month
{
  key MfgStartDate,
  key ConsumedSlots,
      count(*) as ConsumedSlotsQuantity
}
group by
  MfgStartDate,
  ConsumedSlots
