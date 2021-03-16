@AbapCatalog.sqlViewName: 'ZPOCOICAPCTN3MON'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity - next 3 Months'

define view zpoco_i_capacity_n3months

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
      MfgStartDate <= dats_add_months(
    Today, + 3, 'INITIAL'
  )
  and MfgStartDate >= Today
