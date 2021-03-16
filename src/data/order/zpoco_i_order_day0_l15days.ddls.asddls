@AbapCatalog.sqlViewName: 'ZPOCOIORDD0L15D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order - last 15 days By Day0'

define view zpoco_i_order_day0_l15days
  as select from zpoco_i_order

{
  key StatusL1Id,
      _StatusL1.StatusL1Name as StatusL1Name,
      count( * )             as QuanSTL1_15days
}
where
  Day0 >= dats_add_days(
    Today, - 15, 'INITIAL'
  )
group by
  StatusL1Id,
  _StatusL1.StatusL1Name
