@EndUserText.label: 'Status L1'
@AccessControl.authorizationCheck: #CHECK
define root view entity zpoco_i_stsl1
  as select from zpoco_c_stsl1_a
{
  key zpoco_c_stsl1_a.stsl1_id        as StatusL1Id,
      zpoco_c_stsl1_a.stsl1_name      as StatusL1Name,
      @Semantics.user.createdBy: true
      zpoco_c_stsl1_a.created_by      as CreatedBy,
      @EndUserText.label : 'Created At'
      @Semantics.systemDateTime.createdAt: true
      zpoco_c_stsl1_a.created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      zpoco_c_stsl1_a.last_changed_by as LastChangedBy,
      @EndUserText.label : 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true
      zpoco_c_stsl1_a.last_changed_at as LastChangedAt
}
