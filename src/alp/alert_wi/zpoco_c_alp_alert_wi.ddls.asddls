@AbapCatalog.sqlViewName: 'ZPOCOCAALERTWI'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Alert WI'
@Metadata.allowExtensions: true


define view zpoco_c_alp_alert_wi
  as select from zpoco_i_alp_alert_wi
{
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
  key UpdatedDate,
      
      @Consumption.semanticObject: 'NBS_POC_OVP_ALERT_WI'
      @EndUserText.label:          'Order Number'
      NvsId,
      
      @EndUserText.label:          'Message'
      AlertWIMessage,
      
      @EndUserText.label: 'Day of the Month'
      AlertWIDay,
      
      @EndUserText.label:        'Month'
      @ObjectModel.text.element: ['MonthNames']
      AlertWIMonth,

      MonthNames,
      
      @EndUserText.label: 'Year'
      AlertWIYear,
      
      @EndUserText.label: 'Quarter'
      AlertWIQuarter,
      
      @Aggregation.default: #SUM
      @EndUserText.label:   'Orders Quantity'
      OrdersQuantity
}
