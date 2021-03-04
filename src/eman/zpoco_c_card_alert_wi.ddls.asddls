@AbapCatalog.sqlViewName: 'ZPOCOCALERTWI'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Alert Work Item List'
@UI.presentationVariant: [{ qualifier: 'Default' }]
define view zpoco_c_card_alert_wi
  as select from zpoco_i_alert_wi
{
      @UI.hidden: true
  key AlertWorkItemUuid,
      
      @UI.lineItem: [{ position: 10 }]
      NvsId,
      
      @UI.lineItem: [{ position: 20 }]
      AlertMessage,
      
      @UI.hidden: true
      UpdatedDate
}
