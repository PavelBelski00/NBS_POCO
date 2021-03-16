@AbapCatalog.sqlViewName: 'ZPOCOSTL1D30'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L1 for the period -30 days'
define view zpoco_c_stl1_30days
  as select from zpoco_i_stl1_currdate
{
  key StatusL1Id,
      StatusL1Name,
      count( * ) as StatusL1Quantity30Days
}
where
  Day0 >= dats_add_days(
    Today, - 30, 'INITIAL'
  )
group by
  StatusL1Id,
  StatusL1Name
