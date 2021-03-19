@AbapCatalog.sqlViewName: 'ZPOCOCCARDSTL2D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Status L2 by Days'

@UI.chart: [
            {
              title:      'Data for the last 10 days',
              qualifier:  'LastTenDays',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['Last10Days'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'Last10Days',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:     'Data for the last month',
              qualifier: 'LastOneMonth',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['Last1Month'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'Last1Month',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:     'Data for the last 3 months',
              qualifier: 'LastThreeMonths',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['Last3Months'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'Last3Months',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:      'Data for the last Year',
              qualifier:  'LastOneYear',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['LastYear'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'LastYear',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:      'D0 Data for the last 10 days',
              qualifier:  'D0Last10Days',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['Last10DaysD0'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'Last10DaysD0',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:      'Data for the last 15 days',
              qualifier:  'D0Last15Days',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['Last15DaysD0'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'Last15DaysD0',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:      'Data for the last month',
              qualifier:  'D0LastMonth',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['Last1MonthD0'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'Last1MonthD0',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            }, 
            {
              title:      'Data for the last month',
              qualifier:  'D0LastYear',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['Last1YearD0'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'Last1YearD0',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            } 
           ]

define view zpoco_c_card_stl2_by_days
  as select from zpoco_c_order_l2_1year_back

  association [1..1] to zpoco_c_order_l2_3months_back  as _Last3Months  on $projection.StatusL2Id = _Last3Months.StatusL2Id
  association [1..1] to zpoco_c_order_l2_1month_back   as _Last1Month   on $projection.StatusL2Id = _Last1Month.StatusL2Id
  association [1..1] to zpoco_c_order_l2_10days_back   as _Last10Days   on $projection.StatusL2Id = _Last10Days.StatusL2Id

  association [1..1] to zpoco_c_order_l2_1month_D0back as _Last1MonthD0 on $projection.StatusL2Id = _Last1MonthD0.StatusL2Id
  association [1..1] to zpoco_c_order_l2_15days_D0back as _Last15DaysD0 on $projection.StatusL2Id = _Last15DaysD0.StatusL2Id
  association [1..1] to zpoco_c_order_l2_10days_D0back as _Last10DaysD0 on $projection.StatusL2Id = _Last10DaysD0.StatusL2Id
  association [1..1] to zpoco_c_order_l2_1year_D0back  as _Last1YearD0  on $projection.StatusL2Id = _Last1YearD0.StatusL2Id

{
      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage',
                             type: #FOR_INTENT_BASED_NAVIGATION }]
      @ObjectModel.text.element: ['StatusL2Name']
  key StatusL2Id,
      StatusL2Name,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last Year'
      StatusL2Quantity1Year                  as LastYear,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last 3 Months'
      _Last3Months.StatusL2Quantity3Months   as Last3Months,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last Month'
      _Last1Month.StatusL2Quantity1Month     as Last1Month,


      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'Day 0 For last 10 days'
      _Last10Days.StatusL2Quantity10Days     as Last10Days,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'Day 0 For last Month'
      _Last1MonthD0.StatusL2Quantity1MonthD0 as Last1MonthD0,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'Day 0 For last 15 days'
      _Last15DaysD0.StatusL2Quantity10DaysD0 as Last15DaysD0,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'Day 0 For last 10 days'
      _Last10DaysD0.StatusL2Quantity10DaysD0 as Last10DaysD0,
      
      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'Day 0 For last Year'
      _Last1YearD0.StatusL2Quantity1YearD0   as Last1YearD0,

      /*Associations*/
      _Last3Months,
      _Last1Month,
      _Last10Days,

      _Last1MonthD0,
      _Last15DaysD0,
      _Last10DaysD0,
      _Last1YearD0

}
