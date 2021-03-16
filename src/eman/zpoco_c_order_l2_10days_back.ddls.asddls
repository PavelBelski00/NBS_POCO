@AbapCatalog.sqlViewName: 'ZPOCOL2ORD10D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'L2 - last 10 days by Order Creation'

define view zpoco_c_order_l2_10days_back
  as select from zpoco_c_order_10days_d0back
{

  key StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
      count( * )             as StatusL2Quantity10Days
}
group by
  StatusL2Id,
  _StatusL2.StatusL2Name
