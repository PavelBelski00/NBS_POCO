@AbapCatalog.sqlViewName: 'ZPOCOISUMQUANTH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Sum Quantity Order-Therapy-Plant'
define view zpoco_i_sum_quan_therapy_pl
  as select from zpoco_c_card_quan_therapy_date
{
  key MfgPlantId,
      PlantName,
      sum(Therapy_Quantity) as TherapyQuantitySum
}
group by
  MfgPlantId,
  PlantName
