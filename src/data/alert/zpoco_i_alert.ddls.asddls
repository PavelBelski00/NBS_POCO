@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Alerts'
define root view entity zpoco_i_alert
  as select from zpoco_d_alert_a
{
  key alert_uuid      as AlertUuid,
      nvs_id          as NvsId,
      alert_message   as AlertMessage,
      updated_date    as UpdatedDate,
      @Semantics.user.createdBy: true
      created_by      as CreatedBy,
      @EndUserText.label : 'Created At'
      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by as LastChangedBy,
      @EndUserText.label : 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at as LastChangedAt
}
