@AbapCatalog.sqlViewName: 'ZPOCOOOSDES3M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'OOS Description - 3 months later'

define view zpoco_c_oos_descr_quan3months
  as select from zpoco_c_order_3months_back
{
  key OosDescriptionId,

      @EndUserText.label: 'OOS Description'
      _OOSDescription.OosDescription as OosDescription,

      @EndUserText.label: 'Quantity for 3 Last Months'
      count( * )                     as QuantityFor3LastMonths
}
where
  OosDescriptionId is not initial
group by
  OosDescriptionId,
  _OOSDescription.OosDescription
