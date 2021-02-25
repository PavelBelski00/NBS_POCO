@AbapCatalog.sqlViewName: 'ZPOCOSLOTSPLANTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View for Slots by Plants card'

@UI.chart: [{
              qualifier:           'Slots',
              chartType:           #COLUMN_STACKED,
              dimensions:          [ 'MfgPlantId' ],
              measures:            [ 'Agreed', 'Rejected' ],
              dimensionAttributes: [ { dimension: 'MfgPlantId',   role: #CATEGORY } ],
              measureAttributes:   [ { measure:   'Agreed', role: #AXIS_1 },
                                     { measure:   'Rejected',  role: #AXIS_2 }]
           }]

@UI.presentationVariant:[{
                           qualifier:      'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'Slots' }]
                        }]


define view ZPOCO_C_SLOTS_PLANTS_CARD
  as select from zpoco_i_capacity_chart
{
  key MfgPlantId,
      @Aggregation.default: #SUM
      sum( CountYes) as Agreed,
      @Aggregation.default: #SUM
      sum(CountNo)   as Rejected
}
group by
  MfgPlantId
