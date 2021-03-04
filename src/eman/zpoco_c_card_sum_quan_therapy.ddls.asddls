@AbapCatalog.sqlViewName: 'ZPOCOCSUMQUANTH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Sum Quantity Order-Therapy-Date'

@UI.presentationVariant: [{ qualifier:      'Default',
                            groupBy:        ['TherapyName'],
                            sortOrder:      [{by: 'TherapyName', direction: #ASC }],
                            visualizations: [{ element: 'TherapyQuantityMax' }] } ]
                            
define view zpoco_c_card_sum_quan_therapy
  as select from zpoco_c_card_quan_therapy_date
{

      @UI.selectionField: [{ position: 10 }]
      @UI.lineItem:       [{ position: 10 }]
  key Therapy as TherapyName,

      @UI.lineItem: [{ type:       #AS_DATAPOINT, 
                       position:   20, 
                       importance: #HIGH }]
      @UI.dataPoint: { title: 'By Date' }
      Day0                  as ByDate,

      @UI.lineItem: [{ type:       #AS_DATAPOINT, 
                       position:   10, 
                       importance: #HIGH }]
      @UI.dataPoint: { minimumValue: 0,
                       maximumValue: 15,
                       criticalityCalculation: {
                                                 improvementDirection:    #MAXIMIZE,
                                                 toleranceRangeLowValue:  8,
                                                 deviationRangeLowValue:  5
                                               },
                       trendCalculation: { 
                                           referenceValue:'ThQuantity' ,
                                           downDifference: 0, 
//                                           strongUpDifference: 2,
//                                           strongDownDifference: 2 ,
                                           upDifference: 0 
                                         }         
                     }
      @UI.kpi: [{
                  detail: { defaultPresentationVariantQualifier: 'Deafult' }
               }]
      @Aggregation.default: #MAX
      max(Therapy_Quantity) as TherapyQuantityMax,
      
      Therapy_Quantity * 0 + 15 as ThQuantity
}
group by
  Therapy,
  Day0,
  Therapy_Quantity
