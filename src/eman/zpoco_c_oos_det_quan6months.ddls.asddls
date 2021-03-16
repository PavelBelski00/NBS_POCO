@AbapCatalog.sqlViewName: 'ZPOCOOOSDETQ6M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'OOS Details - quantity for 6 months'
define view zpoco_c_oos_det_quan6months
  as select from zpoco_c_order_6months_back
{
  key OosId,
      _OOSDetails.OosDetails as OosDetails,
      count(*)               as QuanLast6Months,
      /* Associations */
      _OOSDetails
}
where
  OosId is not initial
group by
  OosId,
  _OOSDetails.OosDetails
