@EndUserText.label: 'Status L2'
@AccessControl.authorizationCheck: #CHECK

define root view entity zpoco_i_stsl2 
  as select from zpoco_c_stsl2_a 
{
  key zpoco_c_stsl2_a.stsl2_id        as StatusL2Id,
      zpoco_c_stsl2_a.stsl2_name      as StatusL2Name,
      @Semantics.user.createdBy: true
      zpoco_c_stsl2_a.created_by      as CreatedBy,
      @EndUserText.label : 'Created At'
      @Semantics.systemDateTime.createdAt: true
      zpoco_c_stsl2_a.created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      zpoco_c_stsl2_a.last_changed_by as LastChangedBy,
      @EndUserText.label : 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true      
      zpoco_c_stsl2_a.last_changed_at as LastChangedAt
}
