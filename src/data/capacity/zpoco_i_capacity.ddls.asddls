@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity'
define root view entity zpoco_i_capacity
  as select from zpoco_d_capact_a
  association [0..1] to zpoco_i_ttype   as _TType   on $projection.TherapyTypeId = _TType.TherapyTypeId
  association [0..1] to zpoco_i_country as _Country on $projection.CountryId = _Country.CountryId
  association [0..1] to zpoco_i_plant   as _Plant   on $projection.MfgPlantId = _Plant.MfgPlantId
{
  key capacity_uuid   as CapacityUuid,
      mfg_plant_id    as MfgPlantId,
      mfg_start_date  as MfgStartDate,
      cons_slots      as ConsumedSlots,
      priority        as Priority,
      prot_subject_id as ProtocolSubjectId,
      ttype_id        as TherapyTypeId,
      country_id      as CountryId,
      nvs_id          as NvsId,
      country_alloc   as CountryAllocation,
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
      
       case cons_slots
       when 'X' then 1
       else 0
       end            as CountYes,

      case cons_slots
        when '' then 1
        else 0
        end           as CountNo,
        
      _TType,
      _Country,
      _Plant
}
