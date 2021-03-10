@AbapCatalog.sqlViewName: 'ZPOCOCALERT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Alert List'
@UI.presentationVariant: [{ qualifier: 'Default' }]
define view zpoco_c_card_alert
  as select from zpoco_i_alert
{
      @UI.hidden: true
  key AlertUuid,
      
      @Consumption.semanticObject: 'NBS_POC_OVP_ALERT'
      @UI.lineItem: [{ position: 10 }]
      NvsId, 
      
      @Consumption.filter.hidden: true
      @UI.lineItem: [{ position: 20 }]
      AlertMessage,
      
      @UI.hidden: true
      UpdatedDate
}
