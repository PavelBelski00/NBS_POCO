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
              dimensions: ['L1'],
              measures: ['SumTherapyQuantity'],
              dimensionAttributes: [{ dimension: 'L1',  role: #CATEGORY }],
              measureAttributes:   [{ measure:   'SumTherapyQuantity', role: #AXIS_1, asDataPoint: true }]
            },
            { title: 'Therapy quantity by L2 Status',
              qualifier: 'quantityByL2',
              chartType: #DONUT,
              dimensions: ['L2'],
              measures: ['SumTherapyQuantity'],
              dimensionAttributes: [{ dimension: 'L2',   role: #CATEGORY }],
              measureAttributes:   [{ measure:   'SumTherapyQuantity', role: #AXIS_1, asDataPoint: true }]
            }
           ]

define view zpoco_c_card_quan_therapy_l1l2
  as select from ZPOCO_C_COUNT_FOR_THERL1L2
{
  key Therapy,

      StatusL1Id,
      _StatusL1.StatusL1Name as L1,

      StatusL2Id,
      _StatusL2.StatusL2Name as L2,

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
