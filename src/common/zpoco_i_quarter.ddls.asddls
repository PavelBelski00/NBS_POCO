@AbapCatalog.sqlViewName: 'ZPOCOIQUARTER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Quarter'
define view zpoco_i_quarter
  as select from zpoco_c_quart_a
{ 
  @EndUserText.label: 'Calendar Quarter'
  key calendar_quarter as CalendarQuarter
}
