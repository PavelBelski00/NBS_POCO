@AbapCatalog.sqlViewName: 'ZPOCOTHERBYTY1Y'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Therapy by types - 1 year late'

define view zpoco_c_therclcom_quan1year
  as select from zpoco_c_order_1year_back
{
  key Therapy,
      TherapyTypeId,
      @Aggregation.default: #COUNT_DISTINCT
      count(*) as QuanThTyLastYear
}
where
      TherapyTypeId is not initial
  and Therapy       is not initial
group by
  Therapy,
  TherapyTypeId
