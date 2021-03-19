@AbapCatalog.sqlViewName: 'ZPOCOIORDD0L1Y'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order L1 - last 1 Year by Day 0'


define view zpoco_i_order_day0_l1year
  as select from zpoco_i_order

{
  key StatusL1Id,
      _StatusL1.StatusL1Name as StatusL1Name,
      count( * )             as QuanSTL1_1Year
}
where
  Day0 >= dats_add_months(
    Today, - 12, 'INITIAL'
  )
group by
  StatusL1Id,
  _StatusL1.StatusL1Name
