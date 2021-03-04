@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Ordering Site'

define root view entity zpoco_i_country
  as select from zpoco_c_countr_a
{ 
  
  key zpoco_c_countr_a.country_id      as CountryId,
      zpoco_c_countr_a.country_name    as CountryName,
      @Semantics.user.createdBy: true
      zpoco_c_countr_a.created_by      as CreatedBy,
      @EndUserText.label : 'Created At'
      @Semantics.systemDateTime.createdAt: true
      zpoco_c_countr_a.created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      zpoco_c_countr_a.last_changed_by as LastChangedBy,
      @EndUserText.label : 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true      
      zpoco_c_countr_a.last_changed_at as LastChangedAt
}

