@AbapCatalog.sqlViewName: 'ZAVAILABLESL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Available slots by dates'

@UI.chart: [
            {
              title:      'Available slots in 1st decade',
              qualifier:  'Dec1',
              chartType:  #COLUMN_STACKED,
              dimensions: ['PlantID'],
              measures:   ['decade_1st'],
              dimensionAttributes: [{ dimension:  'PlantID',  
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'decade_1st', 
                                      role:        #AXIS_1, 
                                      asDataPoint: true }]
            },
            { title:     'Available slots in 2nd decade',
              qualifier: 'Dec2',
              chartType:  #COLUMN_STACKED,
              dimensions: ['PlantID'],
              measures:   ['decade_2nd'],
              dimensionAttributes: [{ dimension: 'PlantID',
                                      role: #CATEGORY }],
              measureAttributes:   [{ measure:   'decade_2nd', 
                                      role: #AXIS_1,
                                      asDataPoint: true }]
            },
            { title:      'Available slots in 3rd decade',
              qualifier:  'Dec3',
              chartType:  #COLUMN_STACKED,
              dimensions: ['PlantID'],
              measures:   ['decade_3rd'],
              dimensionAttributes: [{ dimension: 'PlantID',   
                                      role: #CATEGORY }],
              measureAttributes:   [{ measure:   'decade_3rd', 
                                      role: #AXIS_1, 
                                      asDataPoint: true }]
            }
           ]

define view zpoco_c_card_av_slots
  as select from zpoco_capac_1decade
  
  association [1..1] to ZPOCO_CAPAC_2DECADE 
    as _2Decade on $projection.PlantID = _2Decade.PlantID
  association [1..1] to ZPOCO_CAPAC_3DECADE 
    as _3Decade on $projection.PlantID = _3Decade.PlantID
  
{
  key PlantID,
      @UI.dataPoint.visualization: #NUMBER
      QuanAvailableSlots          as decade_1st,
      @UI.dataPoint.visualization: #NUMBER
      _2Decade.QuanAvailableSlots as decade_2nd,
      @UI.dataPoint.visualization: #NUMBER
      _3Decade.QuanAvailableSlots as decade_3rd,
      
      /* Associations */
      _Plant,
      _2Decade,
      _3Decade
}
