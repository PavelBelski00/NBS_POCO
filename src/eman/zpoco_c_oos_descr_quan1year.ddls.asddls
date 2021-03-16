@AbapCatalog.sqlViewName: 'ZPOCOOOSDES1Y'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'OOS Description - 1 year later'

define view zpoco_c_oos_descr_quan1year
  as select from zpoco_c_order_1year_back
{
  key OosDescriptionId,

      @EndUserText.label: 'OOS Description'
      _OOSDescription.OosDescription as OosDescription,

      @EndUserText.label: 'Quantity for Last Year'
      count( * )                     as QuantityFor1LastYear
}
where
  OosDescriptionId is not initial
group by
  OosDescriptionId,
  _OOSDescription.OosDescription
