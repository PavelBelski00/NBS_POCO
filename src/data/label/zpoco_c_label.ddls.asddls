@EndUserText.label: 'Label'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity zpoco_c_label
  as projection on zpoco_i_label
{
  key LabelUuid,
            
      @Search: { defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8 }
      Therapy,
      
      @Search: { defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8 }

      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_PLANT',   element: 'MfgPlantId'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName,
      
      @Search: { defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8 }

      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_TTYPE',   element: 'TherapyTypeId'} }]
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
