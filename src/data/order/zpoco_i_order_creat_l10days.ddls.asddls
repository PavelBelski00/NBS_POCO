@AbapCatalog.sqlViewName: 'ZPOCOIORDCRL10D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order - last 10 days By Creation Day'

define view zpoco_i_order_creat_l10days
  as select from zpoco_i_order

{
  key StatusL1Id,
      _StatusL1.StatusL1Name as StatusL1Name,
      count( * )             as QuanSTL1_10days
}
where
  OrderCreatedDay >= dats_add_days(
    Today, - 10, 'INITIAL'
  )
group by
  StatusL1Id,
  _StatusL1.StatusL1Name
