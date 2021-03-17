@AbapCatalog.sqlViewName: 'ZPOCOALERTFILT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Alerts'
@UI.presentationVariant: [{ sortOrder: [{ by: 'UpdatedDate', direction:  #ASC }],
                            qualifier: 'Default' }]

define view zpoco_c_card_alert_filter
  as select from zpoco_i_order
{

      @UI.hidden: true
  key OrderUuid,

      @Consumption.semanticObject: 'NBS_POC_OVP_ALERT'
      @UI.lineItem: [{ position: 10 }]
  key NvsId,

      @UI.lineItem: [{ position: 20 }]
      _Alert.AlertMessage as AlertMessage,

      @UI.lineItem: [{ position: 30 }]
      @EndUserText.label: 'Creation Date'
      UpdatedDate,

      /* Associations */
      _Alert
}
where
  AlertUpdateDate is not initial and
  UpdatedDate <= Today
