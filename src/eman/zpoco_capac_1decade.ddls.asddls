@AbapCatalog.sqlViewName: 'ZCAPAC1DEC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity in 1st decade'
define view zpoco_capac_1decade
  as select from zpoco_i_capacity
{
  key MfgPlantId   as PlantID,
      sum(CountNo) as QuanAvailableSlots,
      /* Associations */
      _Plant
}
where
  MfgStartDate between '20210301' and '20210310'
group by
  MfgPlantId
