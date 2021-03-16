@AbapCatalog.sqlViewName: 'ZPOCOIALERTTODAY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Alert - today'
define view zpoco_i_alert_today
  as select from zpoco_i_alert
{
  key AlertUuid,
  key NvsId,
      AlertMessage,
      UpdatedDate,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      Today
}
where
  UpdatedDate = Today
