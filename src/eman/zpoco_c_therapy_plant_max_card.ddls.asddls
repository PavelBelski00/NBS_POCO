@AbapCatalog.sqlViewName: 'ZPOCOCMAXTHCARD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Chart Card: Max Therapy By Plant'
@UI.chart: [{
              title: 'Maximum Quantity of Therapy',
              chartType: #LINE,
              dimensions: ['PlantName'],
              dimensionAttributes: [{dimension: 'PlantName', role: #CATEGORY }],
              measures: ['MaxQuantity'],
              measureAttributes: [{measure: 'MaxQuantity', role: #AXIS_1, asDataPoint: true }] 
           }]
           
@UI.presentationVariant: [{ 
                            qualifier: 'Default',
                            groupBy: ['PlantName'],
                            visualizations: [{element: 'MaxQuantity' }]
                         }]

define view zpoco_c_therapy_plant_max_card 
as select from zpoco_i_therapy_plant_max
{
      @UI.lineItem: [{position: 10 }]
  key MfgPlantId,
      
      @UI.lineItem: [{position: 20, qualifier: 'ChartUp' }]
      PlantName,
      
      @UI.lineItem:  [{ position: 30, label: 'Max. Quantity', type: #AS_DATAPOINT, qualifier: 'ChartUp' }]
      @UI.dataPoint: { title: 'Maximum Quantity',
                       criticalityCalculation: {
                                                 improvementDirection: #MAXIMIZE,
                                                 toleranceRangeLowValue: 15,
                                                 deviationRangeLowValue: 10 
                                               } }
      @Aggregation.default: #MAX
      @UI.kpi: [{ detail: { defaultPresentationVariantQualifier: 'Default' } }]
      max(Quantity) as MaxQuantity,
      /* Associations */
      _Plant
}
group by
  MfgPlantId,
  PlantName
