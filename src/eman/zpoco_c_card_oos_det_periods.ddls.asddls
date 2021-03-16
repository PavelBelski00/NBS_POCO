@AbapCatalog.sqlViewName: 'ZPOCOCARDOOSDETP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Card: OOS Details'

@UI.chart: [
            {
              title:      'Data for the last Year',
              qualifier:  'LastYear',
              chartType:  #DONUT,
              dimensions: ['OosId'],
              measures:   ['OneYear'],
              dimensionAttributes: [{ dimension:  'OosId',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'OneYear',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:     'Data for the last 6 Months',
              qualifier: 'Last6Months',
              chartType:  #DONUT,
              dimensions: ['OosId'],
              measures:   ['SixMonths'],
              dimensionAttributes: [{ dimension:  'OosId',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'SixMonths',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:     'Data for the last 3 Months',
              qualifier: 'Last3Months',
              chartType:  #DONUT,
              dimensions: ['OosId'],
              measures:   ['ThreeMonths'],
              dimensionAttributes: [{ dimension:  'OosId',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'ThreeMonths',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:      'Data for the last Month',
              qualifier:  'Last1Month',
              chartType:  #DONUT,
              dimensions: ['OosId'],
              measures:   ['OneMonth'],
              dimensionAttributes: [{ dimension:  'OosId',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'OneMonth',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            }
           ]

define view zpoco_c_card_oos_det_periods
  as select from zpoco_c_oos_det_quan1year

  association [1..1] to zpoco_c_oos_det_quan6months as _Last6Months on $projection.OosId = _Last6Months.OosId
  association [1..1] to zpoco_c_oos_det_quan3months as _Last3Months on $projection.OosId = _Last3Months.OosId
  association [1..1] to zpoco_c_oos_det_quan1month  as _Last1Month  on $projection.OosId = _Last1Month.OosId

{

      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage',
                             type: #FOR_INTENT_BASED_NAVIGATION }]
      @ObjectModel.text.element: ['OosDetails']
  key OosId,
      OosDetails,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last Year'
      QuanLast1Year                as OneYear,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last 6 Months'
      _Last6Months.QuanLast6Months as SixMonths,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last 3 Months'
      _Last3Months.QuanLast3Months as ThreeMonths,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last Month'
      _Last1Month.QuanLast1Month   as OneMonth,

      /* Associations */
      _Last6Months,
      _Last3Months,
      _Last1Month
}
