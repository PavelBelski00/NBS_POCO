@AbapCatalog.sqlViewName: 'ZPOCOIALMESS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Alert message'


define view zpoco_i_alert_message
  as select from zpoco_c_alert_a
{
  key alert_id      as AlertId,
      @EndUserText.label: 'Alert Message'
      alert_message as AlertMessage
}
