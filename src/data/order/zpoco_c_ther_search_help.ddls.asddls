@AbapCatalog.sqlViewName: 'ZPOCOTHERSEHELP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Searsh help for Therapy field'
define view zpoco_c_ther_search_help
  as select from ZPOCO_I_ORDER
{
  key Therapy as Therapy
}
group by
  Therapy
