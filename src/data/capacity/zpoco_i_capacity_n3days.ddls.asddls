@AbapCatalog.sqlViewName: 'ZPOCOICAPCTN3D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity - next 3 days'

define view zpoco_i_capacity_n3days

  as select from zpoco_i_capacity
{
  key CapacityUuid,
      MfgPlantId,
      MfgStartDate,
      ConsumedSlots,
      Priority,
      ProtocolSubjectId,
      TherapyTypeId,
      CountryId,
      NvsId,
      CountryAllocation,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      Today,
      /* Associations */
      _Country,
      _Plant,
      _TType
}

where
      MfgStartDate <= dats_add_days(
    Today, + 3, 'INITIAL'
  )
  and MfgStartDate >= Today
