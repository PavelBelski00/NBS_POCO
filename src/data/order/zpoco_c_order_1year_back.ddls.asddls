@AbapCatalog.sqlViewName: 'ZPOCOORDER1Y'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order - 1 year back'
define view zpoco_c_order_1year_back
  as select from zpoco_i_order
{
  key OrderUuid,
  key OosId,
      NvsId,
      Therapy,
      CountryId,
      MfgPlantId,
      TherapyTypeId,
      OrderCreatedDay as LastYear,
      Day0,
      StatusL1Id,
      StatusL2Id,
      OrderingSiteId,
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
      OrderCreatedDay >= dats_add_months(
    Today, - 12, 'INITIAL'
  )
  and OrderCreatedDay <= Today
