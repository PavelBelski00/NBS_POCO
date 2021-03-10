@AbapCatalog.sqlViewName: 'ZPOCOSTL1D30'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L1 for the period -30 days'
define view zpoco_c_Stl1_30days
  as select from zpoco_i_STL1_currdate
{
  @ObjectModel.text.element: ['StatusL1Name']
  key StatusL1Id,
      StatusL1Name,
      count( * ) as QuanSTL1_30days
}
where
  Day0 >= dats_add_days(today, - 30, 'INITIAL')
group by StatusL1Id,  
         StatusL1Name
