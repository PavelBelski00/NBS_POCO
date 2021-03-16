@AbapCatalog.sqlViewName: 'ZPOCOIALERTL5D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Alert -  last 5 days'
define view zpoco_i_alert_l5days
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
where UpdatedDate >= dats_add_days(Today, - 5, 'INITIAL')
  and UpdatedDate <= Today
