@AbapCatalog.sqlViewName: 'ZCAPAC3DEC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity in 3nd decade'
define view zpoco_capac_3decade
  as select from zpoco_i_capacity
{
  key MfgPlantId,
  key ConsumedSlots,

      count(*)   as QuanAvailableSlots,
      /* Associations */
      _Plant
}
where
      MfgStartDate  between '20210321' and '20210331'
  and ConsumedSlots =       'Available'
group by
  MfgPlantId,
  ConsumedSlots
