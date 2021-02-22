@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity'
define root view entity ZPOCO_I_CAPACITY
  as select from zpoco_d_capact_a
  association [0..1] to ZPOCO_I_TTYPE   as _TType    on $projection.TherapyTypeId  = _TType.TherapyTypeID
  association [0..1] to ZPOCO_I_COUNTRY as _Country  on $projection.CountryId      = _Country.CountryId
  association [0..1] to ZPOCO_I_PLANT   as _Plant    on $projection.MfgPlantId     = _Plant.PlantID
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
      _TType,
      _Country,
      _Plant
}
