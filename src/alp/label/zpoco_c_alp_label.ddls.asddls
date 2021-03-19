@AbapCatalog.sqlViewName: 'ZPOCOCALABEL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Label'
@Metadata.allowExtensions: true
define view zpoco_c_alp_label
  as select from zpoco_i_label
{
  key LabelUuid,
      Therapy,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_plant',   element: 'MfgPlantId'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName       as PlantName,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_ttype',   element: 'TherapyTypeId'} }]
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName as TherapyTypeName,


      NvsId,

      @Aggregation.default: #SUM
      PrintedLabels,

      @Aggregation.default: #SUM
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
