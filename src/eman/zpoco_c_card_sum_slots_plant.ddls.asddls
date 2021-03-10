@AbapCatalog.sqlViewName: 'ZPOCOCSUMSLOTPL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Sum Capacity-Slots-Plant'

@UI.chart: [{
              qualifier:           'ChartSumSlotsPlant',
              title:               'Capacity Overview per Plant',
              chartType:           #COLUMN_STACKED,
              dimensions:          [ 'MfgPlantId' ],
              measures:            [ 'Consumed', 'Available' ],
              dimensionAttributes: [ { dimension: 'MfgPlantId', role: #CATEGORY } ],
              measureAttributes:   [ { measure:   'Consumed',   role: #AXIS_1 },
                                     { measure:   'Available',  role: #AXIS_2 }]
           }]

@UI.presentationVariant:[{
                           qualifier:      'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'ChartSumSlotsPlant' }]
                        }]

define view zpoco_c_card_sum_slots_plant
  as select from zpoco_i_capacity
{   
      @ObjectModel.text.element: ['PlantName']
  key MfgPlantId,
      _Plant.PlantName as PlantName, 
     
      @Aggregation.default: #SUM
      sum( CountYes) as Consumed,
      
      @Aggregation.default: #SUM
      sum(CountNo)   as Available,
     
      /*assotiation*/
      _Plant
}
group by
  _Plant.PlantName, 
  MfgPlantId
