@AbapCatalog.sqlViewName: 'ZPOCOORDER1MD0'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order - 1 month back from Day0'
define view zpoco_c_order_1month_d0back
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
      Day0 >= dats_add_months(
    Today, - 1, 'INITIAL'
  )
  and Day0 <= Today
