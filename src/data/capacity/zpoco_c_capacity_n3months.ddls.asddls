@AbapCatalog.sqlViewName: 'ZPOCOCAPCTN3MON'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity - next 3 Months'

define view zpoco_c_capacity_n3months

  as select from zpoco_i_capacity_n3months
{
  key MfgStartDate,
  key ConsumedSlots,
      count(*) as ConsumedSlotsQuantity
}
group by
  MfgStartDate,
  ConsumedSlots
