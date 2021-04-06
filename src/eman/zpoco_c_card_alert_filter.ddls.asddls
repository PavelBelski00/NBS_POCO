@AbapCatalog.sqlViewName: 'ZPOCOALERTFILT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Alerts'
@UI.presentationVariant: [{ sortOrder: [{ by: 'AlertUpdatedDate', direction:  #DESC }],
                            qualifier: 'Default'
                         }]

define view zpoco_c_card_alert_filter
  as select from zpoco_i_order
    inner join   zpoco_i_alert as _Alert on zpoco_i_order.NvsId = _Alert.NvsId
{
      @UI.hidden: true
  key zpoco_i_order.OrderUuid,

      @Consumption.semanticObject: 'NBS_POC_OVP_ALERT'
      @UI.lineItem: [{ position: 10 }]
      _Alert.NvsId        as NvsId,

      @UI.lineItem: [{ position: 20 }]
      _Alert.AlertMessage as AlertMessage,

      @EndUserText.label: 'Creation Date'
      _Alert.UpdatedDate  as AlertUpdatedDate

}
where
      _Alert.UpdatedDate is not initial
  and _Alert.UpdatedDate <= zpoco_i_order.Today
