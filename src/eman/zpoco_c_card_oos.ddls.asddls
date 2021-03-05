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
                                      role:        #AXIS_1, 
                                      asDataPoint: true }]
            }
           ]
           
@UI.presentationVariant:[{
                qualifier:      'Default',
                visualizations: [{ type: #AS_CHART, qualifier: 'ChartOosDescription'}]
             }]
           

define view zpoco_c_card_oos
  as select from zpoco_i_order
{
  
      @EndUserText.label: 'Oos Description'
  key OosDescription,
      
      count( * ) as OrdersOosDescription

}
where
  OosDescription is not initial
group by
  OosDescription
