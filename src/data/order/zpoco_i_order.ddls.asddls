@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order'
define root view entity zpoco_i_order

  as select from zpoco_d_order_a
  association [0..1] to zpoco_i_ttype     as _TType              on  $projection.TherapyTypeId = _TType.TherapyTypeId
  association [0..1] to zpoco_i_stsl1     as _StatusL1           on  $projection.StatusL1Id = _StatusL1.StatusL1Id
  association [0..1] to zpoco_i_stsl2     as _StatusL2           on  $projection.StatusL2Id = _StatusL2.StatusL2Id
  association [0..1] to zpoco_i_country   as _Country            on  $projection.CountryId = _Country.CountryId
  association [0..1] to zpoco_i_plant     as _Plant              on  $projection.MfgPlantId = _Plant.MfgPlantId
  association [0..1] to zpoco_i_site      as _Site               on  $projection.OrderingSiteId = _Site.OrderingSiteId
  association [0..1] to zpoco_i_oos       as _OOSDetails         on  $projection.OosId = _OOSDetails.OosId
  association [0..1] to zpoco_i_oos_descr as _OOSDescription     on  $projection.OosDescriptionId = _OOSDescription.OosDescriptionId
  association [0..*] to zpoco_i_alert     as _OrderAlert         on  $projection.NvsId = _OrderAlert.NvsId
  association [0..*] to zpoco_i_alert_wi  as _OrderAlertWorkItem on  $projection.NvsId = _OrderAlertWorkItem.NvsId

{
  key order_uuid                         as OrderUuid,
      nvs_id                             as NvsId,
      therapy                            as Therapy,
      country_id                         as CountryId,
      mfg_plant_id                       as MfgPlantId,
      ttype_id                           as TherapyTypeId,
      @EndUserText.label : 'Order Created Day'
      dats_add_days(day0, -5, 'INITIAL') as OrderCreatedDay,
      day0                               as Day0,
      stsl1_id                           as StatusL1Id,
      stsl2_id                           as StatusL2Id,
      ord_site_id                        as OrderingSiteId,
      oos_id                             as OosId,
      oos                                as Oos,
      oos_descr_id                       as OosDescriptionId,
      aph_dewar                          as AphDewar,
      fp_dewar                           as FpDewar,

      @Semantics.quantity.unitOfMeasure: 'MaterialQuantityUOM'
      material_quan                      as MaterialQuantity,
      material_quan_uom                  as MaterialQuantityUOM,

      @Semantics.amount.currencyCode: 'AmountCurrency'
      amount                             as Amount,
      amount_curr                        as AmountCurrency,

      @Semantics.businessDate: {at: true}
      actual_day0                        as ActualDay0,
      @Semantics.user.createdBy: true
      created_by                         as CreatedBy,
      @EndUserText.label : 'Created At'
      @Semantics.systemDateTime.createdAt: true
      created_at                         as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by                    as LastChangedBy,
      @EndUserText.label : 'Last Changed At'
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at                    as LastChangedAt,
      $session.system_date               as Today,
      
      _OrderAlert.UpdatedDate as UpdatedDate,
      _OrderAlertWorkItem.UpdatedDate as UpdatedDateWI,

      _Country,
      _Plant,
      _StatusL1,
      _StatusL2,
      _TType,
      _Site,
      _OOSDetails,
      _OOSDescription,
      _OrderAlert,
      _OrderAlertWorkItem
}
