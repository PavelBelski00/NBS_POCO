@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic CDS view for capacity chart'

define root view entity zpoco_i_capacity_chart
  as select from zpoco_d_capact_a
  
  association [0..1] to ZPOCO_I_PLANT   
    as _Plant    on $projection.MfgPlantId = _Plant.PlantID
  
  association [0..1] to ZPOCO_I_TTYPE   as _TType    
    on $projection.TtypeId  = _TType.TherapyTypeID
  
  association [0..1] to ZPOCO_I_COUNTRY 
    as _Country  on $projection.CountryId  = _Country.CountryId
  
{
  key capacity_uuid   as CapacityUuid,
      mfg_plant_id    as MfgPlantId,
      mfg_start_date  as MfgStartDate,
      cons_slots      as ConsSlots,
     
      case cons_slots
        when 'X' then 1 
        else 0
        end           as CountYes,
    
      case cons_slots
        when '' then 1 
        else 0
        end           as CountNo,
      
      priority        as Priority,
      prot_subject_id as ProtSubjectId,
      ttype_id        as TtypeId,
      country_id      as CountryId,
      nvs_id          as NvsId,
      country_alloc   as CountryAlloc,
      @Semantics.user.createdBy: true
      created_by      as CreatedBy,
      @EndUserText.label : 'Created At'
      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by as LastChangedBy,
      @EndUserText.label : 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at as LastChangedAt,
  
      /*association*/
      _Country,
      _TType ,
      _Plant
}
