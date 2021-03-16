@AbapCatalog.sqlViewName: 'ZPOCOCURRDATE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L1 with current date'
define view zpoco_i_stl1_currdate
  as select from zpoco_i_order
{
  key Day0,
      StatusL1Id,
      _StatusL1.StatusL1Name,
      $session.system_date as Today,
      /* Associations */
      _StatusL1
}
