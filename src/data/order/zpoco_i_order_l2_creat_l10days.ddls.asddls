@AbapCatalog.sqlViewName: 'ZPOCOIORD2CRL10D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order - last 10 days By Creation Day'

define view zpoco_i_order_l2_creat_l10days
  as select from zpoco_i_order

{
  key StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
      count( * )             as QuanSTL2_10days
}
where
  OrderCreatedDay >= dats_add_days(
    Today, - 10, 'INITIAL'
  )
group by
  StatusL2Id,
  _StatusL2.StatusL2Name
