@AbapCatalog.sqlViewName: 'ZPOCOORDER10D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order - 10 days back'
define view zpoco_c_order_10days_back
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
      OrderCreatedDay >= dats_add_days(
    Today, - 10, 'INITIAL'
  )
  and OrderCreatedDay <= Today
