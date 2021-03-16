@AbapCatalog.sqlViewName: 'ZPOCOTHERBYTY3M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Therapy by types - 3 last months'

define view zpoco_c_therclcom_quan3months
  as select from zpoco_c_order_3months_back
{
  key Therapy,
      TherapyTypeId,
      @Aggregation.default: #COUNT_DISTINCT
      count(*) as QuanThTyLast3Months
}
where
      TherapyTypeId is not initial
  and Therapy       is not initial
group by
  Therapy,
  TherapyTypeId
