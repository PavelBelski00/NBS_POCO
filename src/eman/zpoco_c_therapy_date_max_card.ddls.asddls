@AbapCatalog.sqlViewName: 'ZPOCOCMAXTH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Max Therapy By Date'
@UI.presentationVariant: [{ qualifier: 'Default', sortOrder: [{by: 'Quantity', direction: #DESC }] } ]
define view zpoco_c_therapy_date_max_card 
as select from zpoco_c_therapy_plant_card 
{
 
  @UI.selectionField: [{ position: 10 }]
  @UI.lineItem:       [{ position: 10 }]
  key Therapy,
    
      @UI.lineItem: [{ 
                       type: #AS_DATAPOINT,
                       importance: #HIGH,
                       position: 20
                    }]
      @UI.dataPoint: { title: 'By Date'}
      Day0 as ByDate,  
  
      @UI.dataPoint: {
                       criticalityCalculation: {
                                                 improvementDirection: #MAXIMIZE, 
                                                 deviationRangeLowValue:  2,
                                                 toleranceRangeLowValue:  4
                                               }
                     }
      @UI.lineItem: [{ 
                       type: #AS_DATAPOINT, 
                       importance: #HIGH,
                       position: 10
                    }]
      sum(Therapy_Quantity) as Quantity
} group by
  Therapy,
  Day0
