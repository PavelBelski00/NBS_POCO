@AbapCatalog.sqlViewName: 'ZPOCOCURRDL2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L2 with current date'

define view zpoco_i_STL2_currdate
  as select from zpoco_i_order
{
  key Day0,
      StatusL2Id,
      _StatusL2.StatusL2Name,
      $session.system_date as today,
      /* Associations */
      _StatusL2
}
where
  StatusL2Id is not initial
