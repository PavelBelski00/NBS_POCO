@AbapCatalog.sqlViewName: 'ZPOCOOOSDES6M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'OOS Description - 6 months later'

define view zpoco_c_oos_descr_quan6months
  as select from zpoco_c_order_6months_back
{
  key OosDescriptionId,

      @EndUserText.label: 'OOS Description'
      _OOSDescription.OosDescription as OosDescription,

      @EndUserText.label: 'Quantity for 6 Last Months'
      count( * )                     as QuantityFor6LastMonths
}
where
  OosDescriptionId is not initial
group by
  OosDescriptionId,
  _OOSDescription.OosDescription
