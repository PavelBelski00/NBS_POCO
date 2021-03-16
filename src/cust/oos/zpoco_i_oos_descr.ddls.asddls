@AbapCatalog.sqlViewName: 'ZPOCOIOOSDESCR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'OOS Description'
define view zpoco_i_oos_descr
  as select from zpoco_c_oosdes_a
{
  key oos_descr_id as OosDescriptionId,
      oos_descr    as OosDescription
}
