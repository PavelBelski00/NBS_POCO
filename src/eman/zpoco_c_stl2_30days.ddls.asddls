@AbapCatalog.sqlViewName: 'ZPOCOSTL2D30'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L2 for the period -30 days'

define view zpoco_c_Stl2_30days
  as select from zpoco_i_STL2_currdate
{
  @ObjectModel.text.element: ['StatusL2Name']
  key StatusL2Id,
      StatusL2Name,
      count( * ) as QuanSTL2_30days
}
where
  Day0 >= dats_add_days(today, - 30, 'INITIAL')
group by StatusL2Id,  
         StatusL2Name
