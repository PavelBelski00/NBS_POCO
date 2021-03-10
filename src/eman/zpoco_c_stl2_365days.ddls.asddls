@AbapCatalog.sqlViewName: 'ZPOCOSTL2D365'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L2 for the period 365'

define view zpoco_c_Stl2_365days
  as select from zpoco_i_STL2_currdate
{
  @ObjectModel.text.element: ['StatusL2Name']
  key StatusL2Id,
      StatusL2Name,
      count( * ) as QuanSTL2_365days
}
where
  Day0 >= dats_add_days(today, - 365, 'INITIAL')
group by StatusL2Id,  
         StatusL2Name
