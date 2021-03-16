@AbapCatalog.sqlViewName: 'ZPOCOCQUANSLPL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Quantity Capacity-Slots-Plants'

@UI.chart: [
            {
              title:      'Data for the next 3 days',
              qualifier:  'Next3Days',
              chartType:  #COLUMN_STACKED,
              dimensions: ['MfgPlantId', 'ConsumedSlots'],
              measures:   ['SlotsNext3Days'],
              dimensionAttributes: [{ dimension: 'MfgPlantId',    role: #CATEGORY },
                                    { dimension: 'ConsumedSlots', role: #SERIES   } ],
              measureAttributes:   [{ measure:   'SlotsNext3Days', role: #AXIS_1 }]
            },
            {
              title:      'Data for the next 15 days',
              qualifier:  'Next15Days',
              chartType:  #COLUMN_STACKED,
              dimensions: ['MfgPlantId', 'ConsumedSlots'],
              measures:   ['SlotsNext15Days'],
              dimensionAttributes: [{ dimension: 'MfgPlantId',    role: #CATEGORY },
                                    { dimension: 'ConsumedSlots', role: #SERIES   } ],
              measureAttributes:   [{ measure:   'SlotsNext15Days', role: #AXIS_1 }]
            },
            {
              title:      'Data for the next 1 month',
              qualifier:  'Next1Month',
              chartType:  #COLUMN_STACKED,
              dimensions: ['MfgPlantId', 'ConsumedSlots'],
              measures:   ['SlotsNext1Month'],
              dimensionAttributes: [{ dimension: 'MfgPlantId',    role: #CATEGORY },
                                    { dimension: 'ConsumedSlots', role: #SERIES   } ],
              measureAttributes:   [{ measure:   'SlotsNext1Month', role: #AXIS_1 }]
            },
            {
              title:      'Data for the next 3 months',
              qualifier:  'Next3Months',
              chartType:  #COLUMN_STACKED,
              dimensions: ['MfgPlantId', 'ConsumedSlots'],
              measures:   ['SlotsNext3Months'],
              dimensionAttributes: [{ dimension: 'MfgPlantId',    role: #CATEGORY },
                                    { dimension: 'ConsumedSlots', role: #SERIES   } ],
              measureAttributes:   [{ measure:   'SlotsNext3Months', role: #AXIS_1 }]
            }

]

define view zpoco_c_card_quan_slots_plant
  as select from zpoco_c_capacity_pl_n3m as _Next3Months

  association [1..1] to zpoco_c_capacity_pl_n3d  as _Next3Days  on  $projection.MfgPlantId    = _Next3Days.MfgPlantId
                                                                and $projection.ConsumedSlots = _Next3Days.ConsumedSlots
  association [1..1] to zpoco_c_capacity_pl_n15d as _Next15Days on  $projection.MfgPlantId    = _Next15Days.MfgPlantId
                                                                and $projection.ConsumedSlots = _Next15Days.ConsumedSlots
  association [1..1] to zpoco_c_capacity_pl_n1m  as _Next1Month on  $projection.MfgPlantId    = _Next1Month.MfgPlantId
                                                                and $projection.ConsumedSlots = _Next1Month.ConsumedSlots

{

      @Consumption.semanticObject: 'NBS_POC_OVP_CAPACITY'
      @UI.identification: [{ semanticObjectAction: 'manage',
                             type: #FOR_INTENT_BASED_NAVIGATION }]
      @ObjectModel.text.element: ['PlantName']
  key MfgPlantId,
  key ConsumedSlots,
      PlantName,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For next 3 days'
      _Next3Days.ConsumedSlotsQuantity   as SlotsNext3Days,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For next 15 days'
      _Next15Days.ConsumedSlotsQuantity  as SlotsNext15Days,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For next 1 month'
      _Next1Month.ConsumedSlotsQuantity  as SlotsNext1Month,

      @UI.dataPoint.visualization: #NUMBER
      @EndUserText.label: 'For next 3 months'
      _Next3Months.ConsumedSlotsQuantity as SlotsNext3Months,

      _Next3Days,
      _Next15Days,
      _Next1Month
}
