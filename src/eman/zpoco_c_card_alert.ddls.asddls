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

      @UI.lineItem: [{ position: 10 }]
      NvsId,

      @UI.lineItem: [{ position: 20 }]
      AlertMessage,
      
      @UI.hidden: true
      UpdatedDate
}
