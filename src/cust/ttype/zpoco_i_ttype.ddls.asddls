@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Manufacturing Plant'
define root view entity ZPOCO_I_TTYPE
  as select from zpoco_c_ttype_a
{
  key zpoco_c_ttype_a.therapy_type_id   as TherapyTypeID,
      zpoco_c_ttype_a.therapy_type_name as TherapyTypeName,
      @Semantics.user.createdBy: true
      zpoco_c_ttype_a.created_by        as CreatedBy,
      @EndUserText.label : 'Created At'
      @Semantics.systemDateTime.createdAt: true
      zpoco_c_ttype_a.created_at        as CreatedAt,
      @Semantics.user.lastChangedBy: true
      zpoco_c_ttype_a.last_changed_by   as LastChangedBy,
      @EndUserText.label : 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true
      zpoco_c_ttype_a.last_changed_at   as LastChangedAt
}
