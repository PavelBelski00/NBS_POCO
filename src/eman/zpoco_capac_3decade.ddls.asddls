@AbapCatalog.sqlViewName: 'ZCAPAC3DEC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity in 3nd decade'
define view ZPOCO_CAPAC_3DECADE
  as select from zpoco_i_capacity
{
  key MfgPlantId   as PlantID,
      sum(CountNo) as QuanAvailableSlots,
      /* Associations */
      _Plant
}
where
  MfgStartDate between '20210321' and '20210331'
group by
  MfgPlantId
