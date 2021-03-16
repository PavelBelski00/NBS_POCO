@AbapCatalog.sqlViewName: 'ZPOCOOOSDETQ1Y'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'OOS Details - quantity for 1 year'
define view zpoco_c_oos_det_quan1year
  as select from ZPOCO_C_ORDER_1YEAR_BACK

{     
      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage', 
                             type: #FOR_INTENT_BASED_NAVIGATION }]
      @ObjectModel.text.element: ['OosDetails']
      key OosId,
      _OOSDetails.OosDetails as OosDetails,
      count(*)               as QuanLast1Year,
      /* Associations */
      _OOSDetails
}
where
  OosId is not initial
group by
  OosId,
  _OOSDetails.OosDetails
