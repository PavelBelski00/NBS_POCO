@AbapCatalog.sqlViewName: 'ZPOCOCARDTHERTY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Card: Therapy by types'

@UI.chart: [
            {
              title:       'Data for the Last Year',
              qualifier:   'LastOneYear',
              chartType:   #COLUMN_STACKED,
              dimensions: ['Therapy', 'TherapyTypeId'],
              measures:   ['LastYear'],
              dimensionAttributes: [{ dimension: 'Therapy',       role: #CATEGORY },
                                    { dimension: 'TherapyTypeId', role: #SERIES   } ],
              measureAttributes:   [{ measure:   'LastYear',      role: #AXIS_1 }]
            },
            {
              title:       'Data for the Last 3 Months',
              qualifier:   'LastThreeMonths',
              chartType:   #COLUMN_STACKED,
              dimensions: ['Therapy', 'TherapyTypeId'],
              measures:   ['Last3Months'],
              dimensionAttributes: [{ dimension: 'Therapy',       role: #CATEGORY },
                                    { dimension: 'TherapyTypeId', role: #SERIES   } ],
              measureAttributes:   [{ measure:   'Last3Months',   role: #AXIS_1 }]
            },
            {
              title:       'Data for the Last 1 Month',
              qualifier:   'LastOneMonth',
              chartType:   #COLUMN_STACKED,
              dimensions: ['Therapy', 'TherapyTypeId'],
              measures:   ['LastMonth'],
              dimensionAttributes: [{ dimension: 'Therapy',       role: #CATEGORY },
                                    { dimension: 'TherapyTypeId', role: #SERIES   } ],
              measureAttributes:   [{ measure:   'LastMonth',     role: #AXIS_1 }]
            },
            {
              title:       'Data for the Last 10 Days',
              qualifier:   'LastTenDays',
              chartType:   #COLUMN_STACKED,
              dimensions: ['Therapy', 'TherapyTypeId'],
              measures:   ['Last10Days'],
              dimensionAttributes: [{ dimension: 'Therapy',       role: #CATEGORY },
                                    { dimension: 'TherapyTypeId', role: #SERIES   } ],
              measureAttributes:   [{ measure:   'Last10Days',    role: #AXIS_1 }]
            }
           ]

define view zpoco_c_card_ther_by_ty_period
  as select from zpoco_c_therclcom_quan1year

  association [1..1] to zpoco_c_therclcom_quan3months as _Last3Months on $projection.Therapy = _Last3Months.Therapy
  association [1..1] to zpoco_c_therclcom_quan1month  as _Last1Month  on $projection.Therapy = _Last1Month.Therapy
  association [1..1] to zpoco_c_therclcom_quan10days  as _Last10Days  on $projection.Therapy = _Last10Days.Therapy

{
      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage',
                             type: #FOR_INTENT_BASED_NAVIGATION }]
  key Therapy,
      TherapyTypeId,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For Last Year'
      QuanThTyLastYear                 as LastYear,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For Last 3 Months'
      _Last3Months.QuanThTyLast3Months as Last3Months,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For Last Month'
      _Last1Month.QuanThTyLast1Month   as LastMonth,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For Last 10 Days'
      _Last10Days.QuanThTyLast10Days   as Last10Days,

      /*associations*/
      _Last3Months,
      _Last1Month,
      _Last10Days
}
