@AbapCatalog.sqlViewName: 'ZPOCOCLCOMTHER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clinical and commercial Therapies'

@UI.chart: [{
              qualifier:           'ChartTherapyClCom',
              title:               'Number of Orders per Therapy ID',
              chartType:           #COLUMN_STACKED,
              dimensions:          [ 'Therapy','TherapyTypeId' ],
              measures:            [ 'QuanTherapyType' ],
              dimensionAttributes: [ { dimension: 'Therapy',         role: #CATEGORY },
                                     { dimension: 'TherapyTypeId',   role: #SERIES }   ],
              measureAttributes:   [ { measure:   'QuanTherapyType', role: #AXIS_1 }]
           }]

@UI.presentationVariant:[{
                           qualifier:      'Default',
                           sortOrder:      [{ by: 'TherapyTypeId', direction:  #ASC }],
                           visualizations: [{ type: #AS_CHART, qualifier: 'ChartTherapyClCom'}]
                        }]




define view zpoco_c_card_ther_clcom
  as select from zpoco_i_order
{
  key Therapy,
      TherapyTypeId,
      @Aggregation.default: #COUNT_DISTINCT
      count(*) as QuanTherapyType
}
group by
  Therapy,
  TherapyTypeId
