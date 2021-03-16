@AbapCatalog.sqlViewName: 'ZPOCOIORDCRL1M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order - last 1 Month By Creation Day'

define view zpoco_i_order_creat_l1month
  as select from zpoco_i_order

{
  key StatusL1Id,
      _StatusL1.StatusL1Name as StatusL1Name,
      count( * )             as QuanSTL1_1month
}
where
  OrderCreatedDay >= dats_add_months(
    Today, - 1, 'INITIAL'
  )
group by
  StatusL1Id,
  _StatusL1.StatusL1Name
