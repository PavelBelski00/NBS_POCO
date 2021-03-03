@AbapCatalog.sqlViewName: 'ZPOCOCTPCARD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Table Card: therapy by plant'

@UI.presentationVariant: [{ qualifier: 'Default', sortOrder: [{by: 'Therapy_Quantity', direction: #DESC }] } ]
define view zpoco_c_therapy_plant_card 
as select from ZPOCO_I_ORDER 
{   
    @UI.lineItem: [{ position: 10, importance: #HIGH }]
    key Therapy,

    @UI.lineItem: [{ position: 20, importance: #HIGH }]
    @ObjectModel.text.element: ['PlantName']
    MfgPlantId,
    
    @UI.lineItem: [{ position: 30, importance: #HIGH }]    
    _Plant.PlantName as PlantName,

    Day0,

      @UI.lineItem: [{
              type: #AS_DATAPOINT,
              importance: #HIGH,
              label: 'Therapy Quantity',
              position: 40
          } ]
          
          @UI.dataPoint: {
              title: 'Therapy Quantity',
              minimumValue: 0,
              maximumValue: 5,
              criticalityCalculation: {
                  improvementDirection: #MAXIMIZE,
                  deviationRangeLowValue: 2,
                  toleranceRangeLowValue: 4
              }
          }
    count(*) as Therapy_Quantity,
    
    _Plant
} group by Therapy, Day0, MfgPlantId, _Plant.PlantName

