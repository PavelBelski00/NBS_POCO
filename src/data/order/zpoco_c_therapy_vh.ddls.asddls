@AbapCatalog.sqlViewName: 'ZPOCOTHERAPYVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Therapy Value Help'
define view zpoco_c_therapy_vh 
as select from zpoco_i_order 
{
  key Therapy as Therapy
}
group by
  Therapy
