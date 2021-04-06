@AbapCatalog.sqlViewName: 'ZPOCOOVPCARDSORD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'OVP Cards for Order'


@UI.chart:[
            { //Chart Maximum for a sample of Therapies
              qualifier:             'TherapyMaxQuan',
              title:                 'Therapy Quantity by Plants',
              chartType:             #LINE,
              dimensions:          [ 'PlantName'],
              measures:            [ 'TherapyCount2'],
              dimensionAttributes: [{ dimension:  'PlantName',     role: #CATEGORY }],
              measureAttributes:   [{ measure:    'TherapyCount2', role: #AXIS_1 }]
            },
          -------------------
            { //Chart  Quantity of Therapies by Status
                //Tab1
              qualifier:             'QuantityByL1',
              title:                 'L1 Status',
              chartType:              #DONUT,
              dimensions:          [ 'StatusL1Name'],
              measures:            [ 'TherapyCount3'],
              dimensionAttributes: [{ dimension: 'StatusL1Name',  role: #CATEGORY }],
              measureAttributes:   [{ measure:   'TherapyCount3', role: #AXIS_1 }]
            },
            {   //Tab2
              qualifier:             'QuantityByL2',
              title:                 'L2 Status',
              chartType:              #DONUT,
              dimensions:          [ 'StatusL2Name'],
              measures:            [ 'TherapyCount3'],
              dimensionAttributes: [{ dimension: 'StatusL2Name',  role: #CATEGORY }],
              measureAttributes:   [{ measure:   'TherapyCount3', role: #AXIS_1 }]
            },
          -------------------
            { //Chart Therapy by types
              qualifier:            'ThByTyPeriods',
              title:                'Quantity by Periods',
              chartType:             #COLUMN_STACKED,
              dimensions:          ['Therapy', 'TherapyTypeName'],
              measures:            ['TherapyTypeCount'],
              dimensionAttributes: [{ dimension: 'Therapy',          role: #CATEGORY },
                                    { dimension: 'TherapyTypeName',  role: #SERIES   } ],
              measureAttributes:   [{ measure:   'TherapyTypeCount', role: #AXIS_1 }]
            },
          -------------------
            { //Chart OOS Details by Periods
              qualifier:            'OOSDetPeriods',
              title:                'Quantity by Periods',
              chartType:            #DONUT,
              dimensions:          ['OosId'],
              measures:            ['OOSDetailsCount'],
              dimensionAttributes: [{ dimension:  'OosId',           role: #CATEGORY }],
              measureAttributes:   [{ measure:    'OOSDetailsCount', role: #AXIS_1 /*, asDataPoint: true*/ }]
            },
          -------------------
            { //Chart OOS Descriptions by Periods
              qualifier:            'OOSDesrcPeriods',
              title:                'Quantity by Periods',
              chartType:            #DONUT,
              dimensions:          ['OosDescrId'],
              measures:            ['OosDescriptionsCount'],
              dimensionAttributes: [{ dimension: 'OosDescrId',           role: #CATEGORY }],
              measureAttributes:   [{ measure:   'OosDescriptionsCount', role: #AXIS_1 }]
            }
          ]
------------------------
@UI.presentationVariant:[
                          { //Chart Maximum for a sample of Therapies
                            qualifier:      'pvTherapyMaxQuan',
                            visualizations: [{
                                               type:      #AS_CHART,
                                               qualifier: 'TherapyMaxQuan'
                                            }]
                          } ,
//                      ---------------
                          { //Chart  Quantity of Therapies by Status
                              //Tab1
                            qualifier:      'pvQuantityByL1',
                            visualizations: [{
                                               type:      #AS_CHART,
                                               qualifier: 'QuantityByL1'
                                            }]
                          },
                          {   //Tab2
                            qualifier:      'pvQuantityByL2',
                            visualizations: [{
                                               type:      #AS_CHART,
                                               qualifier: 'QuantityByL2'
                                            }]
                          },
                        ---------------
                          { //Chart Therapy by types
                            qualifier:      'pvThByTyPeriods',
                            visualizations: [{
                                               type:      #AS_CHART,
                                               qualifier: 'ThByTyPeriods'
                                            }]
                          },
                        ---------------
                          { //Chart OOS Details by Periods
                            qualifier:      'pvOOSDetPeriods',
                            visualizations: [{
                                               type:      #AS_CHART,
                                               qualifier: 'OOSDetPeriods'
                                            }]
                          },
                        ---------------
                          { //Chart OOS Descriptions by Periods by Periods
                            qualifier:      'pvOOSDesrcPeriods',
                            visualizations: [{
                                               type:      #AS_CHART,
                                               qualifier: 'OOSDesrcPeriods'
                                            }]
                          },
                        ---------------
                          { //table  Therapy By Plant
                            qualifier:      'pvTherapyDateQuan',
                            visualizations: [{
                                               type: #AS_LINEITEM,
                                               qualifier: 'TherapyDateQuan'
                                            }],
                            sortOrder: [
                                        {by: 'Therapy',    direction: #DESC},
                                        {by: 'MfgPlantId', direction: #ASC }
                                       ]
                          },
                        ---------------
                          { //Table Alert
                            qualifier:      'pvAlert',
                            visualizations: [{
                                               type:      #AS_LINEITEM,
                                               qualifier: 'Alert'
                                            }]
                          },
                        ---------------
                          { //Table AlertWI
                            qualifier:      'pvAlertWI',
                            visualizations: [{
                                               type:      #AS_LINEITEM,
                                               qualifier: 'AlertWI'
                                            }]
                          }
                        ]

---------------------------------------------------------------------

define view zpoco_c_ovp_cards_order
  as select from zpoco_i_order_for_ovp
{
  key OrderUuid,

      @Consumption.semanticObject: 'NBS_POC_OVP_ALERT'
      @UI.lineItem:  [{ qualifier: 'Alert',   position: 10 },
                      { qualifier: 'AlertWI', position: 10 }]
      NvsId,
      --------
      @UI.lineItem: [{
                       qualifier:'TherapyDateQuan',
                       position:10,
                       importance:#HIGH
                    }]
      Therapy,
      TherapyTypeName,
      OOSDetails,
      OOSDescriptions,

      @UI.lineItem: [{
                       qualifier: 'TherapyDateQuan',
                       position:   20,
                       importance: #HIGH
                    }]
      PlantName,
      Day0,
      StatusL1Name,
      StatusL2Name,

      ---------
      @UI.lineItem: [{
                       qualifier: 'TherapyDateQuan',
                       position:   15,
                       importance: #HIGH
                    }]
      MfgPlantId,
      TtypeId,
      OrderCreatedDay,
      Stsl1Id,
      Stsl2Id,

      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification:          [{ semanticObjectAction: 'manage',
                                      type:                 #FOR_INTENT_BASED_NAVIGATION }]
      @ObjectModel.text.element:   ['OosDetails']
      OosId,
      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification:          [{ semanticObjectAction: 'manage',
                                      type:                 #FOR_INTENT_BASED_NAVIGATION }]
      @ObjectModel.text.element:   ['OOSDescriptions']
      OosDescrId,
      --------
      AlertMassage,
      AlertWIMassage,

      @UI.lineItem: [{ qualifier: 'Alert', position: 15 }]
      OutputAlertMassage,
      @UI.lineItem: [{ qualifier: 'Alert', position: 20 }]
      @EndUserText.label: 'Creation Date'
      AlertCreationDate,


      @UI.lineItem: [{ qualifier: 'AlertWI', position: 15 }]
      OutputAlertWIMassage,
      @UI.lineItem: [{ qualifier: 'AlertWI', position: 20 }]
      @EndUserText.label: 'Creation Date'
      AlertWICreationDate,
      --------

      MaterialQuan,
      MaterialQuanUom,
      Amount,
      AmountCurr,

      @UI:{
            dataPoint: { qualifier:   'dpTherapyDateQuan',
                         criticalityCalculation: { improvementDirection: #MAXIMIZE,
                                                   deviationRangeLowValue: 2,
                                                   toleranceRangeLowValue: 4 }
                       }
          }
      @EndUserText.label:   'Therapy Quantity'
      @Aggregation.default: #SUM
      TherapyCount,

      @UI:{
            dataPoint: { qualifier: 'dpTherapyMaxQuan',

                         criticalityCalculation: { improvementDirection: #MAXIMIZE,
                                                   toleranceRangeLowValue: 15,
                                                   deviationRangeLowValue: 10 },

                         trendCalculation:       { referenceValue:'TargetValue' ,
                                                   downDifference: 0,
                                                   upDifference: 0 }
                      }
          }
      @Aggregation.default: #SUM
      @EndUserText.label: 'Therapy Quantity'
      TherapyCount2,
      TargetValue,

      @UI.dataPoint: {
                       qualifier: 'dpQuantityByL',
                       maximumValue: 300,
                       criticalityCalculation: { improvementDirection: #MAXIMIZE,
                                                 deviationRangeLowValue: 250,
                                                 toleranceRangeLowValue: 200 }
                     }
      @Aggregation.default: #SUM
      @EndUserText.label: 'Therapy Quantity'
      TherapyCount3,

      @UI.dataPoint: {
                       qualifier:   'dpThByTyPeriods',
                       maximumValue: 5,
                       criticalityCalculation: { improvementDirection: #MAXIMIZE,
                                                 deviationRangeLowValue: 2,
                                                 toleranceRangeLowValue: 4 }
                     }
      @Aggregation.default: #SUM
      @EndUserText.label: 'Therapy Type Quantity'
      TherapyTypeCount,

      @Aggregation.default: #SUM
      @UI.dataPoint: { qualifier:               'dpOOSDetPeriods',
                       criticalityCalculation: { improvementDirection: #MINIMIZE,
                                                 deviationRangeHighValue: 250,
                                                 toleranceRangeHighValue: 200 }
                     }
      OOSDetailsCount,

      @Aggregation.default: #SUM
      @UI.dataPoint: {
                       qualifier:               'dpOOSDesrcPeriods',
                       criticalityCalculation: { improvementDirection: #MAXIMIZE,
                                                 deviationRangeLowValue: 250,
                                                 toleranceRangeLowValue: 200 }
                     }
      OosDescriptionsCount

}
