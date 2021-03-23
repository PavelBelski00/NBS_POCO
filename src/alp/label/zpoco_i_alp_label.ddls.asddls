@AbapCatalog.sqlViewName: 'ZPOCOIALABEL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Label'
@Metadata.allowExtensions: true
define view zpoco_i_alp_label
  as select from zpoco_i_label

{
  key LabelUuid,
      Therapy,
      
      MfgPlantId,
      _Plant.PlantName       as PlantName,
      
      TherapyTypeId,
      _TType.TherapyTypeName as TherapyTypeName,

      NvsId,

      PrintedLabels,

      UsedLabels,
      Reconcile,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      /* Associations */
      _Plant,
      _TType  
}
