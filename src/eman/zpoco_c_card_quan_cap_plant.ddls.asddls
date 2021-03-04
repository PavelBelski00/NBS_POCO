@AbapCatalog.sqlViewName: 'ZPOCOCQUANCAPPL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Quantity Capacity-Plant'

@UI.chart: [{
              qualifier:           'ChartPlantQuantity',
              title:               'Aggregation by plants',
              chartType:           #DONUT,
              dimensions:          [ 'MfgPlantId' ],
              measures:            [ 'PlantQuantity' ],
              dimensionAttributes: [{ dimension: 'MfgPlantId',    role: #CATEGORY }],
              measureAttributes:   [{ measure:   'PlantQuantity', role: #AXIS_1 }]
           }]

@UI.presentationVariant:[{
                           qualifier: 'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'ChartPlantQuantity' }]
                        }]

define view zpoco_c_card_quan_cap_plant
  as select from zpoco_i_capacity
{
      @ObjectModel.text.element: ['PlantName']
  key MfgPlantId,
      _Plant.PlantName as PlantName,
      count(*)         as PlantQuantity,
      _Plant
}
group by
  MfgPlantId,
  _Plant.PlantName
