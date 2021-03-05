@AbapCatalog.sqlViewName: 'ZCOUNTTHERL1L2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Therapy aggregation by L1 & L2 staus'

define view ZPOCO_C_COUNT_FOR_THERL1L2
  as select from zpoco_i_order
{
  key Therapy,
      StatusL1Id,
      StatusL2Id,
//      @Aggregation.default: #COUNT_DISTINCT
      count( * ) as TherapyQuantity,

      /* Associations */
      _StatusL1,
      _StatusL2
}
group by
  Therapy,
  StatusL1Id,
  StatusL2Id
