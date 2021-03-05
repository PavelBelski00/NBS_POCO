@AbapCatalog.sqlViewName: 'ZPOCOCQUANTHER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Quantity Order-Therapy'
 
@UI.chart: [{
              qualifier:           'ChartTherapyQuantity',
              title:               'Number of Orders per Therapy',
              chartType:           #COLUMN_STACKED,
              dimensions:          [ 'Therapy' ],
              measures:            [ 'TherapyQuantity' ],
              dimensionAttributes: [ { dimension: 'Therapy',         role: #CATEGORY } ],
              measureAttributes:   [ { measure:   'TherapyQuantity', role: #AXIS_1 }]
           }]

@UI.presentationVariant:[{
                           qualifier:      'Default',
                           sortOrder:      [{ by: 'TherapyTypeId', direction:  #ASC }],
                           visualizations: [{ type: #AS_CHART, qualifier: 'ChartTherapyQuantity'}]
                        }]
                        
define view zpoco_c_card_quan_therapy
as select from zpoco_i_order 
{
  key Therapy,
  key TherapyTypeId,
  
      @EndUserText.label:'Therapy Quantity'
      count( * ) as TherapyQuantity
}
group by
  TherapyTypeId,
  Therapy
