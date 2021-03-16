@AbapCatalog.sqlViewName: 'ZPOCOORDER6M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order - 6 months back'
define view zpoco_c_order_6months_back
  as select from zpoco_i_order
{
  key OrderUuid,
  key OosId,
      NvsId,
      Therapy,
      CountryId,
      MfgPlantId,
      TherapyTypeId,
      OrderCreatedDay as Last6Months,
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
      OrderCreatedDay >= dats_add_months(
    Today, - 6, 'INITIAL'
  )
  and OrderCreatedDay <= Today
