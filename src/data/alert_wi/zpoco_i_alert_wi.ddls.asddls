@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Alert Work Item'
define root view entity zpoco_i_alert_wi
  as select from zpoco_d_alerwi_a
{
  key alert_wi_uuid   as AlertWorkItemUuid,
      @UI.lineItem:   [{ position: 10 }]
  key nvs_id          as NvsId,
      @UI.lineItem:   [{ position: 20 }]
      alert_message   as AlertMessage,
      @UI.lineItem:   [{ position: 30 }]
      updated_date    as UpdatedDate,
      $session.system_date as Today,
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
