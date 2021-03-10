@AbapCatalog.sqlViewName: 'ZPOCOCSUMSLOTSD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Sum Capacity-Slots-Date'

@UI.chart: [{
              qualifier:           'ChartSumSlotsDate',
              title: 'Overview of open and consumed slots',
              chartType:           #COLUMN_STACKED,
              dimensions:          ['MfgStartDate'],
              measures:            [ 'Consumed', 'Available' ],
              dimensionAttributes: [ { dimension: 'MfgStartDate', role: #CATEGORY } ],
              measureAttributes:   [ { measure: 'Consumed',   role: #AXIS_1 },
                                     { measure: 'Available', role: #AXIS_2 }]
           }]

@UI.presentationVariant:[{
                           qualifier:      'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'ChartSumSlotsDate' }]
                        }]
                        
define view zpoco_c_card_sum_slots_date 
as select from zpoco_i_capacity 
{ 
  key MfgStartDate,
      @Aggregation.default: #SUM
      sum(CountYes) as Consumed,
      @Aggregation.default: #SUM
      sum(CountNo)   as Available
}
group by
  MfgStartDate
