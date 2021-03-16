@AbapCatalog.sqlViewName: 'ZPOCOIORD2CRL2M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order - last 1 Month By Creation Day'

define view zpoco_i_order_l2_creat_L2month
  as select from zpoco_i_order

{
  key StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
      count( * )             as QuanSTL2_1month
}
where
  OrderCreatedDay >= dats_add_months(
    Today, - 1, 'INITIAL'
  )
group by
  StatusL2Id,
  _StatusL2.StatusL2Name
