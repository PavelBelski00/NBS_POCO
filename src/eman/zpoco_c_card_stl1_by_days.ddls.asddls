@AbapCatalog.sqlViewName: 'ZPOCOCARDSTL1BYD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Status L1 by Days'

@UI.chart: [
            {
              title:      'Data for the Last 10 Days',
              qualifier:  'Last10Days',
              chartType:  #DONUT,
              dimensions: ['StatusL1Id'],
              measures:   ['Last10Days'],
              dimensionAttributes: [{ dimension:  'StatusL1Id',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'Last10Days',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:     'Data for the Last 1 Month',
              qualifier: 'Last1Month',
              chartType:  #DONUT,
              dimensions: ['StatusL1Id'],
              measures:   ['Last1Month'],
              dimensionAttributes: [{ dimension:  'StatusL1Id',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'Last1Month',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:     'Data for the Last 3 Months',
              qualifier: 'Last3Months',
              chartType:  #DONUT,
              dimensions: ['StatusL1Id'],
              measures:   ['Last3Months'],
              dimensionAttributes: [{ dimension:  'StatusL1Id',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'Last3Months',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:      'Data for the Last 1 Year',
              qualifier:  'LastYear',
              chartType:  #DONUT,
              dimensions: ['StatusL1Id'],
              measures:   ['LastYear'],
              dimensionAttributes: [{ dimension:  'StatusL1Id',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'LastYear',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:      'Data for the Last 10 Days',
              qualifier:  'D0Last10Days',
              chartType:  #DONUT,
              dimensions: ['StatusL1Id'],
              measures:   ['D0Last10Days'],
              dimensionAttributes: [{ dimension:  'StatusL1Id',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'D0Last10Days',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:      'Data for the last 15 days',
              qualifier:  'D0Last15Days',
              chartType:  #DONUT,
              dimensions: ['StatusL1Id'],
              measures:   ['D0Last15Days'],
              dimensionAttributes: [{ dimension:  'StatusL1Id',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'D0Last15Days',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            {
              title:      'D0 Data for the Last 1 Month',
              qualifier:  'D0Last1Month',
              chartType:  #DONUT,
              dimensions: ['StatusL1Id'],
              measures:   ['D0Last1Month'],
              dimensionAttributes: [{ dimension:  'StatusL1Id',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'D0Last1Month',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            }, 
            {
              title:      'D0 Data for the Last 1 Year',
              qualifier:  'D0Last1Year',
              chartType:  #DONUT,
              dimensions: ['StatusL1Id'],
              measures:   ['D0Last1Year'],
              dimensionAttributes: [{ dimension:  'StatusL1Id',
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'D0Last1Year',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            }
           ]
define view zpoco_c_card_stl1_by_days
  as select from zpoco_c_Stl1_365days

  association [1..1] to zpoco_c_stl1_10days         as _10Days       on $projection.StatusL1Id = _10Days.StatusL1Id
  association [1..1] to zpoco_c_stl1_30days         as _30Days       on $projection.StatusL1Id = _30Days.StatusL1Id

  association [1..1] to zpoco_i_order_creat_l10days as _Last10Days   on $projection.StatusL1Id = _Last10Days.StatusL1Id
  association [1..1] to zpoco_i_order_creat_l1month as _Last1Month   on $projection.StatusL1Id = _Last1Month.StatusL1Id
  association [1..1] to zpoco_i_order_creat_l3month as _Last3Months  on $projection.StatusL1Id = _Last3Months.StatusL1Id
  association [1..1] to zpoco_i_order_creat_l1year  as _Last1Year    on $projection.StatusL1Id = _Last1Year.StatusL1Id

  association [1..1] to zpoco_i_order_day0_l10days  as _D0Last10Days on $projection.StatusL1Id = _D0Last10Days.StatusL1Id
  association [1..1] to zpoco_i_order_day0_l15days  as _D0Last15Days on $projection.StatusL1Id = _D0Last15Days.StatusL1Id
  association [1..1] to zpoco_i_order_day0_l1month  as _D0Last1Month on $projection.StatusL1Id = _D0Last1Month.StatusL1Id
  association [1..1] to zpoco_i_order_day0_l1year   as _D0Last1Year  on $projection.StatusL1Id = _D0Last1Year.StatusL1Id

{
      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage',
                             type: #FOR_INTENT_BASED_NAVIGATION }]
      @ObjectModel.text.element: ['StatusL1Name']
  key StatusL1Id,
      StatusL1Name,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last 10 days'
      _Last10Days.QuanSTL1_10days   as Last10Days,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last Month'
      _Last1Month.QuanSTL1_1month   as Last1Month,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last 3 Months'
      _Last3Months.QuanSTL1_3months as Last3Months,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last 365 days'
      _Last1Year.QuanSTL1_1year     as LastYear,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'Day 0 For last 10 days'
      _D0Last10Days.QuanSTL1_10days as D0Last10Days,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'Day 0 For last 15 days'
      _D0Last15Days.QuanSTL1_15days as D0Last15Days,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'Day 0 For last Month'
      _D0Last1Month.QuanSTL1_1Month as D0Last1Month,
      
      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'Day 0 For last Year'
      _D0Last1Year.QuanSTL1_1Year   as D0Last1Year,

      /*associations*/
      _30Days,
      _10Days,

      _Last10Days,
      _Last1Month,
      _Last3Months,
      _Last1Year,

      _D0Last10Days,
      _D0Last15Days,
      _D0Last1Month,
      _D0Last1Year
}
