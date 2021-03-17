@AbapCatalog.sqlViewName: 'ZAVAILABLESL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Available slots (Decades)'

@UI.chart: [
            {
              title:      'Of the current month',
              qualifier:  'Dec1',
              chartType:  #COLUMN_STACKED,
              dimensions: ['MfgPlantId'],
              measures:   ['Decade1st'],
              dimensionAttributes: [{ dimension:  'MfgPlantId',
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'Decade1st',
                                      role:        #AXIS_1,
                                      asDataPoint: true }]
            },
            { title:     'Of the current month',
              qualifier: 'Dec2',
              chartType:  #COLUMN_STACKED,
              dimensions: ['MfgPlantId'],
              measures:   ['Decade2nd'],
              dimensionAttributes: [{ dimension: 'MfgPlantId',
                                      role: #CATEGORY }],
              measureAttributes:   [{ measure:   'Decade2nd',
                                      role: #AXIS_1,
                                      asDataPoint: true }]
            },
            { title:      'Of the current month',
              qualifier:  'Dec3',
              chartType:  #COLUMN_STACKED,
              dimensions: ['MfgPlantId'],
              measures:   ['Decade3rd'],
              dimensionAttributes: [{ dimension: 'MfgPlantId',
                                      role: #CATEGORY }],
              measureAttributes:   [{ measure:   'Decade3rd',
                                      role: #AXIS_1,
                                      asDataPoint: true }]
            }
           ]

define view zpoco_c_card_av_slots
  as select from zpoco_capac_1decade

  association [1..1] to zpoco_capac_2decade as _2Decade on  $projection.MfgPlantId    = _2Decade.MfgPlantId
                                                        and $projection.ConsumedSlots = _2Decade.ConsumedSlots
  association [1..1] to zpoco_capac_3decade as _3Decade on  $projection.MfgPlantId    = _3Decade.MfgPlantId
                                                        and $projection.ConsumedSlots = _3Decade.ConsumedSlots

{
      @Consumption.semanticObject: 'NBS_POC_OVP_CAPACITY'
      @UI.identification: [{ semanticObjectAction: 'manage',
                             type: #FOR_INTENT_BASED_NAVIGATION }]
      @ObjectModel.text.element: ['PlantName']
  key MfgPlantId,
  key ConsumedSlots,
      _Plant.PlantName            as PlantName,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: '1st Decade'
      QuanAvailableSlots          as Decade1st,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: '2nd Decade'
      _2Decade.QuanAvailableSlots as Decade2nd,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: '3rd Decade'
      _3Decade.QuanAvailableSlots as Decade3rd,

      /* Associations */
      _Plant,
      _2Decade,
      _3Decade
}
