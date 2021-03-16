@AbapCatalog.sqlViewName: 'ZPOCOIWITODAY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Alert Work Item - today'
define view zpoco_i_alert_wi_today
  as select from zpoco_i_alert_wi
{
  key AlertWorkItemUuid,
  key NvsId,
      AlertMessage,
      UpdatedDate,
      Today,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}

where
  UpdatedDate = Today
