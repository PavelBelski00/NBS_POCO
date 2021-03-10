@AbapCatalog.sqlViewName: 'ZTHERL1L2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Therapy aggregation by L1 & L2 staus'

@UI.chart: [
            {
              title: 'Therapy quantity by L1 Status',
              qualifier: 'quantityByL1',
              chartType: #DONUT,
              dimensions: ['StatusL1Id'],
              measures: ['SumTherapyQuantity'],
              dimensionAttributes: [{ dimension: 'StatusL1Id',  role: #CATEGORY }],
              measureAttributes:   [{ measure:   'SumTherapyQuantity', role: #AXIS_1, asDataPoint: true }]
            },
            { title: 'Therapy quantity by L2 Status',
              qualifier: 'quantityByL2',
              chartType: #DONUT,
              dimensions: ['StatusL2Id'],
              measures: ['SumTherapyQuantity'],
              dimensionAttributes: [{ dimension: 'StatusL2Id',   role: #CATEGORY }],
              measureAttributes:   [{ measure:   'SumTherapyQuantity', role: #AXIS_1, asDataPoint: true }]
            }
           ]

define view zpoco_c_card_quan_therapy_l1l2
  as select from zpoco_c_count_for_therl1l2
{
  key Therapy,
  
      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage', 
                             type: #FOR_INTENT_BASED_NAVIGATION }]  
      @ObjectModel.text.element: ['StatusL1Name']
      @EndUserText.label: 'L1' 
      StatusL1Id,
      _StatusL1.StatusL1Name as StatusL1Name,

      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage', 
                             type: #FOR_INTENT_BASED_NAVIGATION }]  
      @ObjectModel.text.element: ['StatusL2Name']
      @EndUserText.label: 'L2' 
      StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,

      @UI.dataPoint.visualization: #NUMBER
      @Aggregation.default: #SUM
      sum( TherapyQuantity ) as SumTherapyQuantity,

      /* Associations */
      _StatusL1,
      _StatusL2

}
group by
  Therapy,
  StatusL1Id,
  _StatusL1.StatusL1Name,
  StatusL2Id,
  _StatusL2.StatusL2Name
