@AbapCatalog.sqlViewName: 'ZPOCOL2ORD1MD0'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order L2 - 1 month back by Day0'

define view zpoco_c_order_l2_1month_D0back
  as select from zpoco_c_order_1month_d0back
{

  key StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
      count( * ) as StatusL2Quantity1MonthD0
}
group by
StatusL2Id,
_StatusL2.StatusL2Name
