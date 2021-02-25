@AbapCatalog.sqlViewName: 'ZPOCOPLANTSCARD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View for Plants card'

@UI.chart: [{
              qualifier:           'Plants',
              chartType:           #DONUT,
              dimensions:          [ 'MfgPlantId' ],
              measures:            [ 'PlantsQuontity' ],
              dimensionAttributes: [{ dimension: 'MfgPlantId',     role: #CATEGORY }],
              measureAttributes:   [{ measure:   'PlantsQuontity', role: #AXIS_1 }]
           }]

@UI.presentationVariant:[{
                           qualifier: 'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'Plants' }]
                        }]

define view zpoco_c_plants_card
  as select from zpoco_i_capacity_chart
{
  key MfgPlantId,
      _Plant.PlantName,
      count(*) as PlantsQuontity,
      /* Associations */
      _Plant
}
group by
  MfgPlantId,
  _Plant.PlantName
