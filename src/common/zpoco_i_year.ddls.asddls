@AbapCatalog.sqlViewName: 'ZPOCOIYEAR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Year'
define view zpoco_i_year
  as select from zpoco_c_year_a
{
  key calendar_year as CalendarYear
}
