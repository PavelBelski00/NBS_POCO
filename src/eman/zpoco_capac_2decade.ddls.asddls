@AbapCatalog.sqlViewName: 'ZCAPAC2DEC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity in 2nd decade'
define view ZPOCO_CAPAC_2DECADE
  as select from zpoco_i_capacity
{
  key MfgPlantId   as PlantID,
      sum(CountNo) as QuanAvailableSlots,
      /* Associations */
      _Plant
}
where
  MfgStartDate between '20210311' and '20210320'
group by
  MfgPlantId
