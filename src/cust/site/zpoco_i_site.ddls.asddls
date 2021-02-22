@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Ordering Site'

define root view entity ZPOCO_I_SITE
  as select from zpoco_c_site_a
{
  key zpoco_c_site_a.ord_site_id     as OrderingSiteId,
      zpoco_c_site_a.ord_site_name   as OrderingSiteName,
      @Semantics.user.createdBy: true
      zpoco_c_site_a.created_by      as CreatedBy,
      @EndUserText.label : 'Created At'
      @Semantics.systemDateTime.createdAt: true
      zpoco_c_site_a.created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      zpoco_c_site_a.last_changed_by as LastChangedBy,
      @EndUserText.label : 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true
      zpoco_c_site_a.last_changed_at as LastChangedAt
}
