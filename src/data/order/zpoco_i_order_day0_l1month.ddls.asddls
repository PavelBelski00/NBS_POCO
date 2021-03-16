@AbapCatalog.sqlViewName: 'ZPOCOIORDD0L1M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order - last 1 Month By Day0'

define view zpoco_i_order_day0_l1month
  as select from zpoco_i_order

{
  key StatusL1Id,
      _StatusL1.StatusL1Name as StatusL1Name,
      count( * )             as QuanSTL1_1Month
}
where
  Day0 >= dats_add_months(
    Today, - 1, 'INITIAL'
  )
group by
  StatusL1Id,
  _StatusL1.StatusL1Name
