@AbapCatalog.sqlViewName: 'ZPOCOOOSDETQ3M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'OOS Details - quantity for 3 months'
define view zpoco_c_oos_det_quan3months
  as select from zpoco_c_order_3months_back
{

  key OosId,
      _OOSDetails.OosDetails as OosDetails,
      count(*)               as QuanLast3Months,
      /* Associations */
      _OOSDetails
}
where
  OosId is not initial
group by
  OosId,
  _OOSDetails.OosDetails
