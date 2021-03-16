@AbapCatalog.sqlViewName: 'ZPOCOSTL1M10'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L1 for the period -10'
define view zpoco_c_stl1_10days
  as select from zpoco_i_stl1_currdate
{

  key StatusL1Id,
      StatusL1Name,
      count( * ) as StatusL1Quantity10Days
}
where
  Day0 >= dats_add_days(
    Today, - 10, 'INITIAL'
  )
group by
  StatusL1Id,
  StatusL1Name
