@AbapCatalog.sqlViewName: 'ZPOCOCARDSTL2BYD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Status L2 by Days'

@UI.chart: [
            {
              title:      'Data for the last 10 days',
              qualifier:  'days10',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['Last_10_days'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',  
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'Last_10_days', 
                                      role:        #AXIS_1, 
                                      asDataPoint: true }]
            },
            { 
              title:     'Data for the last 30 days',
              qualifier: 'days30',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['Last_30_days'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'Last_30_days', 
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            { 
              title:      'Data for the last 365 days',
              qualifier:  'days365',
              chartType:  #DONUT,
              dimensions: ['StatusL2Id'],
              measures:   ['Last_365_days'],
              dimensionAttributes: [{ dimension:  'StatusL2Id',   
                                      role:        #CATEGORY }],
              measureAttributes:   [{ measure:    'Last_365_days', 
                                      role:        #AXIS_1, 
                                      asDataPoint: true }]
            }
           ]

define view zpoco_c_card_Stl2_by_days
  as select from zpoco_c_Stl2_365days
  
  association [1..1] to zpoco_c_Stl2_10days 
    as _10days on $projection.StatusL2Id = _10days.StatusL2Id
  association [1..1] to zpoco_c_Stl2_30days 
    as _30days on $projection.StatusL2Id = _30days.StatusL2Id
{
  key StatusL2Id,
      StatusL2Name,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last 10 days'
      _10days.QuanSTL2_10days as Last_10_days,
      
      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last 30 days'
      _30days.QuanSTL2_30days as Last_30_days,
      
      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For last 365 days'
      QuanSTL2_365days        as Last_365_days,
      /*associations*/
      _30days,
      _10days
}
