@AbapCatalog.sqlViewName: 'ZCOUNTTHERL1L2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Therapy aggregation by L1 & L2 staus'

define view zpoco_c_count_for_therl1l2
  as select from zpoco_i_order
{
  key Therapy,
      StatusL1Id,
      StatusL2Id,

      count( * ) as TherapyQuantity,

      /* Associations */
      _StatusL1,
      _StatusL2
}
group by
  Therapy,
  StatusL1Id,
  StatusL2Id
