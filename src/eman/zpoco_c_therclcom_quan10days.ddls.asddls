@AbapCatalog.sqlViewName: 'ZPOCOTHERBYTY10D'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Therapy by types - 10 last days'

define view zpoco_c_therclcom_quan10days
  as select from zpoco_c_order_10days_back
{
  key Therapy,
      TherapyTypeId,
      @Aggregation.default: #COUNT_DISTINCT
      count(*) as QuanThTyLast10Days
}
where
      TherapyTypeId is not initial
  and Therapy       is not initial
group by
  Therapy,
  TherapyTypeId
