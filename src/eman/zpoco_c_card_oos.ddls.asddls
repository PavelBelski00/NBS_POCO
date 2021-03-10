@AbapCatalog.sqlViewName: 'ZPOCOOOS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'OOS'

@UI.chart: [
            {
              title:      'OOS Description',
              qualifier:  'ChartOosDescription',
              chartType:  #COLUMN_STACKED,
              dimensions: ['OosDescription'],
              measures:   ['OrdersOosDescription'],
              dimensionAttributes: [{ dimension:  'OosDescription',  
                                      role:       #CATEGORY }],
              measureAttributes:   [{ measure:    'OrdersOosDescription', 
                                      role:        #AXIS_1 }]
            }
           ]
           
@UI.presentationVariant:[{
                           qualifier:      'Default',
                           visualizations: [{ type:       #AS_CHART, 
                                              qualifier: 'ChartOosDescription'}]
                        }]
           

define view zpoco_c_card_oos
//  with parameters
//    @Consumption.hidden: true
//    @Environment.systemField: #SYSTEM_DATE  
//    P_day0          : zpoco_day0
  as select from zpoco_i_order
//  ( P_Day0 : $parameters.P_day0 )
{ 
  key OosDescription,
      @EndUserText.label: 'Oos Description'
      count( * ) as OrdersOosDescription

}
where
  OosDescription is not initial
group by
  OosDescription  
