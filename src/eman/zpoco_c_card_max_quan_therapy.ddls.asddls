@AbapCatalog.sqlViewName: 'ZPOCOCMAXQUANTH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Max Quantity Order-Therapy-Plant'

@UI.chart: [{
              title: 'Data by Plants',
              chartType: #LINE,
              dimensions: ['PlantName'],
              measures: ['MaxQuantity'],
              dimensionAttributes: [{ dimension: 'PlantName',   role: #CATEGORY }],
              measureAttributes:   [{ measure:   'MaxQuantity', role: #AXIS_1, 
                                      asDataPoint: true }] 
           }]

@UI.selectionPresentationVariant: [{ qualifier: 'Default',
                                     presentationVariantQualifier: 'Default',
                                     selectionVariantQualifier: 'Default' }]           
@UI.presentationVariant: [{ 
                            qualifier: 'Default',
                            groupBy: ['PlantName'],
                            visualizations: [{element: 'MaxQuantity' }],
                            selectionFieldsQualifier: 'Default'
                         }]

@UI.selectionVariant: [{ qualifier: 'Default'  }]                         
define view zpoco_c_card_max_quan_therapy 
as select from zpoco_i_sum_quan_therapy_pl 
{

      @UI.selectionField: [{ position: 10, qualifier: 'Default' }]
      @UI.lineItem: [{position: 10 }]
  key MfgPlantId,
      
      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage', 
                             type: #FOR_INTENT_BASED_NAVIGATION }]
      @UI.lineItem: [{position: 20, qualifier: 'ChartUp' }]
      PlantName,
      
      @UI.lineItem:  [{ position: 30,           
                        importance: #HIGH,  
                        label: 'Max. Quantity', 
                        type: #AS_DATAPOINT,  
                        qualifier: 'ChartUp' 
                     }]
      @UI.dataPoint: { title: 'Maximum Quantity',
                       criticalityCalculation: {
                                                 improvementDirection: #MAXIMIZE,
                                                 toleranceRangeLowValue: 15,
                                                 deviationRangeLowValue: 10 
                                               },
                       targetValue: 7,                        
                       trendCalculation: { 
                                           referenceValue:'TherapySum' ,
                                           downDifference: 0, 
//                                           strongUpDifference: 2,
//                                           strongDownDifference: 2 ,
                                           upDifference: 0 
                                         }
                     }
      @Aggregation.default: #MAX
      @UI.kpi: [{ detail: { defaultPresentationVariantQualifier: 'Default' } }]
      max(TherapyQuantitySum) as MaxQuantity,
     
      TherapyQuantitySum * 0 + 12 as TherapySum 
}
group by
  MfgPlantId,
  PlantName,
  TherapyQuantitySum
