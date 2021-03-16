@AbapCatalog.sqlViewName: 'ZPOCOOOSDES1M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'OOS Description - 1 month later'

define view zpoco_c_oos_descr_quan1month
  as select from zpoco_c_order_1month_back
{
  key OosDescriptionId,
  
  @EndUserText.label: 'OOS Description'
  _OOSDescription.OosDescription as OosDescription,

  @EndUserText.label: 'Quantity for 1 Last Month'
  count( * )                     as QuantityFor1LastMonth
}
where
  OosDescriptionId is not initial
group by
  OosDescriptionId,
  _OOSDescription.OosDescription
