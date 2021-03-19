@AbapCatalog.sqlViewName: 'ZPOCOL2ORD1YD0'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order L2 - last 1 year by Day 0'

define view zpoco_c_order_l2_1year_D0back
  as select from zpoco_c_order_1year_D0back
{

  key StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
      count( * ) as StatusL2Quantity1YearD0
}
group by
StatusL2Id,
_StatusL2.StatusL2Name
