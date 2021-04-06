@AbapCatalog.sqlViewName: 'ZPOCOOVPCARDSCAP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'OVP Cards for Capacity'

@UI.chart:[
            { //Chart Plant Capacity
              qualifier:            'CardCapacitySlotsPlantSum',
              title:                'Quantity by Periods',
              chartType:             #COLUMN_STACKED,
              dimensions:          ['MfgPlantId'],
              measures:            ['Available', 'Consumed'],
              dimensionAttributes: [{ dimension: 'MfgPlantId',          role: #CATEGORY }],
              measureAttributes:   [{ measure:   'Available', role: #AXIS_1 },
                                    { measure:   'Consumed',  role: #AXIS_2 }]
            },
          -------------------  
            { //Chart Capacity Data
              qualifier:            'CardCapacitySlotsDateSum',
              title:                'Quantity by Periods',
              chartType:             #COLUMN_STACKED,
              dimensions:          ['Day0'],
              measures:            ['Available', 'Consumed'],
              dimensionAttributes: [{ dimension: 'Day0',      role: #CATEGORY }],
              measureAttributes:   [{ measure:   'Available', role: #AXIS_1 },
                                    { measure:   'Consumed',  role: #AXIS_2 }]
            },
          -------------------
            { //Chart  Slots
                //Tab1
              qualifier:             'AvailableSlots',
              title:                 'Available',
              chartType:              #COLUMN,
              dimensions:          [ 'MfgPlantId'],
              measures:            [ 'Available'],
              dimensionAttributes: [{ dimension: 'MfgPlantId', role: #CATEGORY }],
              measureAttributes:   [{ measure:   'Available',  role: #AXIS_1 }]
            },
            {   //Tab2
              qualifier:             'ConsumedSlots',
              title:                 'Consumed',
              chartType:             #COLUMN,
              dimensions:          [ 'MfgPlantId'],
              measures:            [ 'Consumed'],
              dimensionAttributes: [{ dimension: 'MfgPlantId', role: #CATEGORY }],
              measureAttributes:   [{ measure:   'Consumed',   role: #AXIS_1 }]
            }
          ]
------------------------          
@UI.presentationVariant:[ //Chart Plant Capacity
                          {
                            qualifier:      'pvCardCapacitySlotsPlantSum',
                            visualizations: [{
                                               type:      #AS_CHART,
                                               qualifier: 'CardCapacitySlotsPlantSum'
                                            }]
                          },
                          { //Chart Capacity Data
                            qualifier:      'pvCardCapacitySlotsDateSum',
                            visualizations: [{
                                               type:      #AS_CHART,
                                               qualifier: 'CardCapacitySlotsDateSum'
                                            }]
                          },
                        ---------------
                          { //Chart  Slots
                              //Tab1
                            qualifier:      'pvAvailableSlots',
                            visualizations: [{
                                               type:      #AS_CHART,
                                               qualifier: 'AvailableSlots'
                                            }]
                          },
                          {   //Tab2
                            qualifier:      'pvConsumedSlots',
                            visualizations: [{
                                               type:      #AS_CHART,
                                               qualifier: 'ConsumedSlots'
                                            }]
                          }
                        ]

define view zpoco_c_ovp_cards_capacity
  as select from zpoco_i_capacity_for_ovp
{
  key CapacityUuid,
      MfgPlantId,
      PlantName,
      Day0,
      TtypeId,
      ConsumedSlots,
      
      @UI.dataPoint: {
                       qualifier:   'dpConsumedSlotsCount' ,
                       criticality: 'CriticalityValue' 
                     }
      @Aggregation.default: #SUM
      ConsumedSlotsCount,
      CriticalityValue,
 
      @UI.dataPoint: {
                       qualifier:   'dpAvailableSlt' ,
                       criticality: 'CriticalityValue'
                     }
      @Aggregation.default: #SUM
      Available,
      
      @UI.dataPoint: {
                       qualifier:   'dpConsumedSlt' ,
                       criticality: 'CriticalityValue'
                     }
      @Aggregation.default: #SUM
      Consumed
}
