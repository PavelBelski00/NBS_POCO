@AbapCatalog.sqlViewName: 'ZCAPAC2DEC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity in 2nd decade'
define view zpoco_capac_2decade
  as select from zpoco_i_capacity
{
  key MfgPlantId,
  key ConsumedSlots,

      count(*) as QuanAvailableSlots,
      /* Associations */
      _Plant
}
where
      MfgStartDate  between '20210311' and '20210320'
  and ConsumedSlots =       'Available'
group by
  MfgPlantId,
  ConsumedSlots
