@AbapCatalog.sqlViewName: 'ZPOCOL2ORD1M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'L2 - 1 month back by Order Creation'

define view zpoco_c_order_l2_1month_back
  as select from zpoco_c_order_1month_back
{

  key StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
      count( * )             as StatusL2Quantity1Month
}
group by
  StatusL2Id,
  _StatusL2.StatusL2Name
