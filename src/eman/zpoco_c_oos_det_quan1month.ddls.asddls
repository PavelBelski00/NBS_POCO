@AbapCatalog.sqlViewName: 'ZPOCOOOSDETQ1M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'OOS Details - quantity for 1 month'
define view zpoco_c_oos_det_quan1month
  as select from zpoco_c_order_1month_back
{

  key OosId,
      _OOSDetails.OosDetails as OosDetails,
      count(*)               as QuanLast1Month,
      /* Associations */
      _OOSDetails
}
where
  OosId is not initial
group by
  OosId,
  _OOSDetails.OosDetails
