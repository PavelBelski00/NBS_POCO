@EndUserText.label: 'Label'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZPOCO_C_LABEL
  as projection on ZPOCO_I_LABEL
{
  key LabelUuid,
            
      @Search: { defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8 }
      Therapy,
      
      @Search: { defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8 }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_PLANT',   element: 'PlantID'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName,
      
      @Search: { defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8 }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_TTYPE',   element: 'TherapyTypeID'} }]
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName,
      
      @Search: { defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8 }
      NvsId,
      
      PrintedLabels,
      UsedLabels,
      Reconcile,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      _TType,
      _Plant
}
