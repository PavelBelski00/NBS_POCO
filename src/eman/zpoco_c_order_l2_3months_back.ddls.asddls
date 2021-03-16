@AbapCatalog.sqlViewName: 'ZPOCOL2ORD3M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'L2 - 3 months back by Order Creation'

define view zpoco_c_order_l2_3months_back
  as select from zpoco_c_order_3months_back
{
  key StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
      count( * )             as StatusL2Quantity3Months
}
group by
  StatusL2Id,
  _StatusL2.StatusL2Name
