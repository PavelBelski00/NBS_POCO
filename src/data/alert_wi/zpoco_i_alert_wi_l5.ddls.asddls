@AbapCatalog.sqlViewName: 'ZPOCOIWIL5D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Alert Work Item - last 5 days'
define view zpoco_i_alert_wi_l5
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
      UpdatedDate >= dats_add_days(
    Today, - 5, 'INITIAL'
  )
  and UpdatedDate <= Today
