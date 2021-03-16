@AbapCatalog.sqlViewName: 'ZPOCOL2ORD15DD0'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order L2 - 15 days back by Day0'


define view zpoco_c_order_l2_15days_D0back
  as select from zpoco_c_order_15days_d0back
{

  key StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
      count( * )             as StatusL2Quantity10DaysD0
}
group by
  StatusL2Id,
  _StatusL2.StatusL2Name
