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
      AlertMessage,
      
      @EndUserText.label: 'Alert Day'
      AlertDay,
      
      @EndUserText.label: 'Alert Month Number'
      @ObjectModel.text.element: ['MonthNames']
      AlertMonth,
      
      @EndUserText.label: 'Alert Month'
      MonthNames,
      
      @Consumption.valueHelpDefinition: [{ 
                                           entity: { name: 'zpoco_i_year', element: 'CalendarYear'} 
                                        }]
      @EndUserText.label: 'Alert Year'
      AlertYear,
      
      @EndUserText.label: 'Alert Quarter'
      AlertQuarter,
      
      @Aggregation.default: #SUM
      @EndUserText.label: 'Orders Quantity'
      OrdersQuantity
}
