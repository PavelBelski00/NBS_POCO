@AbapCatalog.sqlViewName: 'ZPOCOICAPCTN15D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity - next 15 days'

define view zpoco_i_capacity_n15days

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
    Today, + 15, 'INITIAL'
  )
  and MfgStartDate >= Today
