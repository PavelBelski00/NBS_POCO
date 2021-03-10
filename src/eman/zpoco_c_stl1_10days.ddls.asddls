@AbapCatalog.sqlViewName: 'ZPOCOSTL1M10'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L1 for the period -10'
define view zpoco_c_Stl1_10days
  as select from zpoco_i_STL1_currdate
{
  @ObjectModel.text.element: ['StatusL1Name']
  key StatusL1Id,
      StatusL1Name,
      count( * ) as QuanSTL1_10days
}
where
  Day0 >= dats_add_days(today, - 10, 'INITIAL')
group by StatusL1Id,  
         StatusL1Name
