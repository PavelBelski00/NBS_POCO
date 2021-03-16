@AbapCatalog.sqlViewName: 'ZPOCOIALERTL10D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Alert -  last 10 days'
define view zpoco_i_alert_l10days
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
where UpdatedDate >= dats_add_days(Today, - 10, 'INITIAL')
  and UpdatedDate <= Today
