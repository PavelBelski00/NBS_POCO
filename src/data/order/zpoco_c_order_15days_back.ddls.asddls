@AbapCatalog.sqlViewName: 'ZPOCOORDER15D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order - 15 days back'
define view zpoco_c_order_15days_back
  as select from zpoco_i_order
{
  key OrderUuid,
      OosId,
      NvsId,
      Therapy,
      CountryId,
      MfgPlantId,
      TherapyTypeId,
      OrderCreatedDay as Last15days,
      Day0,
      StatusL1Id,
      StatusL2Id,
      OrderingSiteId,
      Oos,
      OosDescriptionId,
      AphDewar,
      FpDewar,
      AlertUpdateDate,
      AlertWIUpdateDate,
      UpdatedDate,
      ActualDay0,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      Today,
      /* Associations */
      _Alert,
      _AlertWI,
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
    Today, - 15, 'INITIAL'
  )
  and OrderCreatedDay <= Today
