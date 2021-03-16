@AbapCatalog.sqlViewName: 'ZPOCOTHERBYTY1M'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Therapy by types - 1 last month'

define view zpoco_c_therclcom_quan1month
  as select from zpoco_c_order_1month_back
{
  key Therapy,
      TherapyTypeId,
      @Aggregation.default: #COUNT_DISTINCT
      count(*) as QuanThTyLast1Month
}
where
      TherapyTypeId is not initial
  and Therapy       is not initial
group by
  Therapy,
  TherapyTypeId
