@AbapCatalog.sqlViewName: 'ZCOUNTTHERL1L2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order Status L1 and L2'

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
where OrderCreatedDay >= dats_add_months(Today, - 12, 'INITIAL')
  and OrderCreatedDay <= Today
group by
  Therapy,
  StatusL1Id,
  StatusL2Id
