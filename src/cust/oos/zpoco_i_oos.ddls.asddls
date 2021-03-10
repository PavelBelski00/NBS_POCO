@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'OOS Details'

define root view entity zpoco_i_oos
  as select from zpoco_c_oos_a as o
{
  key o.oos_id          as OosId,
      o.oos_description as OosDetails,
      
      case o.oos_description
        when 'OOS Dose'             then 1
        when 'OOS Sterility'        then 1
        when 'OOS Potency'          then 2
        when 'OOS viability (<70%)' then 2
        when 'OOS Mycopl'           then 2
        when 'OOS Low % CAR'        then 2
        when 'OOS Beads'            then 3
        else 0
      end as OosDetailsCriticality,
      
      @Semantics.user.createdBy: true
      o.created_by      as CreatedBy,
      
      @EndUserText.label : 'Created At'
      @Semantics.systemDateTime.createdAt: true
      o.created_at      as CreatedAt,
      
      @Semantics.user.lastChangedBy: true
      o.last_changed_by as LastChangedBy,
      
      @EndUserText.label : 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true
      o.last_changed_at as LastChangedAt
}
