@AbapCatalog.sqlViewName: 'ZPOCOORD1YD0'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order - last 1 Year by Day 0'

define view zpoco_c_order_1year_D0back
  as select from zpoco_i_order
{
  key OrderUuid,
      NvsId,
      Therapy,
      CountryId,
      MfgPlantId,
      TherapyTypeId,
      OrderCreatedDay,
      Day0,
      StatusL1Id,
      StatusL2Id,
      OrderingSiteId,
      OosId,
      Oos,
      OosDescriptionId,
      AphDewar,
      FpDewar,
      ActualDay0,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      Today,
      /* Associations */
      _Country,
      _OOSDescription,
      _OOSDetails,
      _Plant,
      _Site,
      _StatusL1,
      _StatusL2,
      _TType
}
where
      Day0            >= dats_add_months(
    Today, - 12, 'INITIAL'
  )
  and OrderCreatedDay <= Today
