@AbapCatalog.sqlViewName: 'ZPOCOCAPDOOSDES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Card: OOS Description'

@UI.chart: [
            {
              title:      'Data for the last Year',
              qualifier:  'LastOneYear',
              chartType:  #DONUT,
              dimensions:          ['OosDescriptionId'],
              measures:            ['LastYear'],
              dimensionAttributes: [{ dimension:  'OosDescriptionId',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'LastYear',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:     'Data for the last 6 Months',
              qualifier: 'LastSixMonths',
              chartType:  #DONUT,
              dimensions:          ['OosDescriptionId'],
              measures:            ['Last6Months'],
              dimensionAttributes: [{ dimension:  'OosDescriptionId',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'Last6Months',
                                      role:       #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:     'Data for the last 3 Months',
              qualifier: 'LastThreeMonths',
              chartType:  #DONUT,
              dimensions:          ['OosDescriptionId'],
              measures:            ['Last3Months'],
              dimensionAttributes: [{ dimension:  'OosDescriptionId',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'Last3Months',
                                      role:       #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:      'Data for the last Month',
              qualifier:  'LastOneMonth',
              chartType:  #DONUT,
              dimensions:          ['OosDescriptionId'],
              measures:            ['LastMonth'],
              dimensionAttributes: [{ dimension:  'OosDescriptionId',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'LastMonth',
                                      role:       #AXIS_1,
                                      asDataPoint: true }]
            }
           ]

define view zpoco_c_card_oos_des_period
  as select from zpoco_c_oos_descr_quan1year

  association [1..1] to zpoco_c_oos_descr_quan1month  as _Last1Month  on $projection.OosDescriptionId = _Last1Month.OosDescriptionId
  association [1..1] to zpoco_c_oos_descr_quan3months as _Last3Months on $projection.OosDescriptionId = _Last3Months.OosDescriptionId
  association [1..1] to zpoco_c_oos_descr_quan6months as _Last6Months on $projection.OosDescriptionId = _Last6Months.OosDescriptionId

{
      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage',
                             type: #FOR_INTENT_BASED_NAVIGATION }]
      @ObjectModel.text.element: ['OosDescription']
  key OosDescriptionId,
      OosDescription,

      @UI.dataPoint.visualization: #NUMBER
      QuantityFor1LastYear                as LastYear,

      @UI.dataPoint.visualization: #NUMBER
      _Last6Months.QuantityFor6LastMonths as Last6Months,

      @UI.dataPoint.visualization: #NUMBER
      _Last3Months.QuantityFor3LastMonths as Last3Months,

      @UI.dataPoint.visualization: #NUMBER
      _Last1Month.QuantityFor1LastMonth   as LastMonth,

      /*associations*/
      _Last1Month,
      _Last3Months,
      _Last6Months
}
