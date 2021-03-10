@AbapCatalog.sqlViewName: 'ZPOCOSTL2D10'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L2 for the period -10 days'

define view zpoco_c_Stl2_10days
  as select from zpoco_i_STL2_currdate
{
  @ObjectModel.text.element: ['StatusL2Name']
  key StatusL2Id,
      StatusL2Name,
      count( * ) as QuanSTL2_10days
}
where
  Day0 >= dats_add_days(today, - 10, 'INITIAL')
group by StatusL2Id,  
         StatusL2Name
