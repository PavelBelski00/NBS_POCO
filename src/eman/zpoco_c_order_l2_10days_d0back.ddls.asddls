@AbapCatalog.sqlViewName: 'ZPOCOL2ORD10DD0'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order L2 - 10 days back by Day0'


define view zpoco_c_order_l2_10days_D0back
  as select from zpoco_c_order_10days_d0back
{

  key StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
      count( * )             as StatusL2Quantity10DaysD0
}
group by
  StatusL2Id,
  _StatusL2.StatusL2Name
