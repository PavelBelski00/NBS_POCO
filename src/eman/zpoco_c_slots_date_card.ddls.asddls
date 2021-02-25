@AbapCatalog.sqlViewName: 'ZPOCOSLOTSDATES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View for Slots by Dates card'

@UI.chart: [{
              qualifier:           'Slots',
              chartType:           #COLUMN_STACKED,
              dimensions:          ['MfgStartDate'],
              measures:            [ 'Agreed', 'Rejected' ],
              dimensionAttributes: [ { dimension: 'MfgStartDate', role: #CATEGORY } ],
              measureAttributes:   [ { measure: 'Agreed',   role: #AXIS_1 },
                                     { measure: 'Rejected', role: #AXIS_2 }]
           }]

@UI.presentationVariant:[{
                           qualifier:      'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'Slots' }]
                        }]

define view ZPOCO_C_SLOTS_DATE_CARD
  as select from zpoco_i_capacity_chart
{
  key MfgStartDate,
      @Aggregation.default: #SUM
      sum(CountYes) as Agreed,
      @Aggregation.default: #SUM
      sum(CountNo)   as Rejected
}
group by
  MfgStartDate
