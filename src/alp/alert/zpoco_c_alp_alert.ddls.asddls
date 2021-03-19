@AbapCatalog.sqlViewName: 'ZPOCOCAALERT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Alert'
@Search.searchable: true
@Metadata.allowExtensions: true

define view zpoco_c_alp_alert
  as select from zpoco_i_alp_alert
{
      @EndUserText.label: 'Date of creation'
  key UpdatedDate,
      
      OrderNumber,
      
      @EndUserText.label: 'Message'
      @Search: {
                 defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8
               }
      @Consumption.valueHelpDefinition: [{ 
                                           entity: { name: 'zpoco_i_alp_alert', element: 'AlertMessage'} 
                                        }]
      AlertMessage,
     
      AlertDay,
      
      @EndUserText.label: 'Month'
      @ObjectModel.text.element: ['MonthNames']
      AlertMonth,
      
      MonthNames,
      
      AlertYear,
      
      @EndUserText.label: 'Quarter'
      AlertQuarter,
      
      @Aggregation.default: #SUM
      @EndUserText.label: 'Orders Quantity'
      OrdersQuantity
}
