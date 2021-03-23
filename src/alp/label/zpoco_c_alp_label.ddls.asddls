@AbapCatalog.sqlViewName: 'ZPOCOCALABEL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Label'
@Metadata.allowExtensions: true
@Search.searchable: true
define view zpoco_c_alp_label
  as select from zpoco_i_alp_label
{
  key LabelUuid,

      @Search: { defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8 }  
      Therapy,
      
      @Consumption.semanticObject: 'NBS_POC_OVP_PLANT'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_plant',   element: 'MfgPlantId'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      
      @Search: { defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8 }      
      _Plant.PlantName       as PlantName,
      
      @Consumption.semanticObject: 'NBS_POC_OVP_TTYPE'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_ttype',   element: 'TherapyTypeId'} }]
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName as TherapyTypeName,

      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @Search: { defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8 }      
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
