@AbapCatalog.sqlViewName: 'ZPOCOSTL1D365'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L1 for the period -365 days'
define view zpoco_c_Stl1_365days
  as select from zpoco_i_STL1_currdate
{
  @ObjectModel.text.element: ['StatusL1Name']
  key StatusL1Id,
      StatusL1Name,
      count( * ) as QuanSTL1_365days
}
where
  Day0 >= dats_add_days(today, - 365, 'INITIAL')
group by StatusL1Id,  
         StatusL1Name
