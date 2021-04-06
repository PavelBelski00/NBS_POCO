@AbapCatalog.sqlViewName: 'ZPOCOALERTWIFILT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Alert Work Items'
@UI.presentationVariant: [{ sortOrder: [{ by: 'AlertWIUpdatedDate', direction:  #DESC }],
                            qualifier: 'Default'
                         }]
define view zpoco_c_card_alertwi_filter
  as select from zpoco_i_order
  inner join   zpoco_i_alert_wi as _AlertWI on zpoco_i_order.NvsId = _AlertWI.NvsId
{
      @UI.hidden: true
  key zpoco_i_order.OrderUuid,

      @Consumption.semanticObject: 'NBS_POC_OVP_ALERT'
      @UI.lineItem: [{ position: 10 }]
      _AlertWI.NvsId        as NvsId,

      @UI.lineItem: [{ position: 20 }]
      _AlertWI.AlertMessage as AlertMessage,

      @EndUserText.label: 'Creation Date'
      _AlertWI.UpdatedDate  as AlertWIUpdatedDate

}
where
      _AlertWI.UpdatedDate is not initial
  and _AlertWI.UpdatedDate <= zpoco_i_order.Today
