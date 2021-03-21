@AbapCatalog.sqlViewName: 'ZPOCOIMONTH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Month'
define view zpoco_i_month
  as select from zpoco_c_month_a
{     
  key calendar_month_id   as CalendarMonthId,
      calendar_month_name as CalendarMonthName
}
