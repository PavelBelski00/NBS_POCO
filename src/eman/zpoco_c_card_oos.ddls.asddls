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
              dimensions: ['Description'],
              measures:   ['OrdersOosDescription'],
              dimensionAttributes: [{ dimension:  'Description',  
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
  as select from zpoco_i_order
{
  
  key OosDescription as  Description,
      @EndUserText.label: 'Oos Description'
      count( * ) as OrdersOosDescription

}
where
  OosDescription is not initial
group by
  OosDescription  
