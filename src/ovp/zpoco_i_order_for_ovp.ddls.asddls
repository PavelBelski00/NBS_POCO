@AbapCatalog.sqlViewName: 'ZPOCOORDFOROVP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order for OVP'


define view zpoco_i_order_for_ovp
  as select from zpoco_d_order_a
  
  association [0..1] to zpoco_i_ttype     as _TType              on  $projection.TtypeId    = _TType.TherapyTypeId
  association [0..1] to zpoco_i_stsl1     as _StatusL1           on  $projection.Stsl1Id    = _StatusL1.StatusL1Id
  association [0..1] to zpoco_i_stsl2     as _StatusL2           on  $projection.Stsl2Id    = _StatusL2.StatusL2Id
  association [0..1] to zpoco_i_plant     as _Plant              on  $projection.MfgPlantId = _Plant.MfgPlantId
  association [0..1] to zpoco_i_oos       as _OOSDetails         on  $projection.OosId      = _OOSDetails.OosId
  association [0..1] to zpoco_i_oos_descr as _OOSDescription     on  $projection.OosDescrId = _OOSDescription.OosDescriptionId
  association [0..1] to zpoco_i_alert     as _OrderAlert         on  $projection.NvsId      = _OrderAlert.NvsId
  association [0..1] to zpoco_i_alert_wi  as _OrderAlertWorkItem on  $projection.NvsId      = _OrderAlertWorkItem.NvsId  
  
{
  key order_uuid                          as OrderUuid,
      nvs_id                              as NvsId,
      
      therapy                             as Therapy,
      case when therapy is not initial 
           then 1
           else 0
      end                                as TherapyCount,
      case when therapy is not initial 
           then 1
           else 0
      end                                as TherapyCount2, 
      case when therapy is not initial 
           then 1
           else 0
      end                                as TherapyCount3, 
      case when therapy is not initial 
           then 1
           else 0
      end                                as TherapyCount4, 
      
      cast(250 as abap.int1)              as TargetValue,    
      
      mfg_plant_id                       as MfgPlantId,
      _Plant.PlantName                   as PlantName,
      
      ttype_id                           as TtypeId,
      _TType.TherapyTypeName             as TherapyTypeName,
      case when ttype_id is not initial 
           then 1
           else 0
      end                                as TherapyTypeCount,
      
      @EndUserText.label : 'Order Created Day'
      dats_add_days(day0, -5, 'INITIAL') as OrderCreatedDay,      
      
      day0                               as Day0,
      
      stsl1_id                           as Stsl1Id,
      _StatusL1.StatusL1Name             as StatusL1Name,
      
      stsl2_id                           as Stsl2Id,
      _StatusL2.StatusL2Name             as StatusL2Name,
      
      oos_id                             as OosId,
      _OOSDetails.OosDetails             as OOSDetails,
      case when oos_id is not initial 
           then 1
           else 0
      end                                as OOSDetailsCount,
      
      oos_descr_id                       as OosDescrId,
      _OOSDescription.OosDescription     as OOSDescriptions,
      case when oos_descr_id is not initial 
           then 1
           else 0
      end                                as OosDescriptionsCount,
      
      _OrderAlert.AlertMessage           as AlertMassage,
      case when _OrderAlert.AlertMessage is not initial 
           then _OrderAlert.AlertMessage
           else 'No alerts'
      end                                as OutputAlertMassage,
      
      _OrderAlert.UpdatedDate            as AlertCreationDate,
      
      _OrderAlertWorkItem.AlertMessage   as AlertWIMassage,
      
      case when _OrderAlertWorkItem.AlertMessage is not initial 
           then _OrderAlertWorkItem.AlertMessage
           else 'No alerts'
      end                                as OutputAlertWIMassage,      
      
      _OrderAlertWorkItem.UpdatedDate    as AlertWICreationDate,
      
      @Semantics.quantity.unitOfMeasure: 'MaterialQuanUom'      
      material_quan                      as MaterialQuan,
      material_quan_uom                  as MaterialQuanUom,
      
      @Semantics.amount.currencyCode: 'AmountCurr'      
      amount                             as Amount,
      amount_curr                        as AmountCurr,
      
      --Associations--
      _Plant,
      _StatusL1,
      _StatusL2,
      _TType,
      _OOSDetails,
      _OOSDescription,
      _OrderAlert,
      _OrderAlertWorkItem

}
