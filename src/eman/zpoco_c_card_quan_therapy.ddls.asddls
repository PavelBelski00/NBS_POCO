@AbapCatalog.sqlViewName: 'ZPOCOCQUANTHER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Quantity Order-Therapy'

@UI.chart: [{
              qualifier:           'ChartTherapyQuantity',
//              title:               'Number of Orders per Therapy',
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
  //  with parameters
  //    @Consumption.hidden: true
  //    @Environment.systemField: #SYSTEM_DATE
  //    P_day0          : zpoco_day0
  as select from zpoco_i_order
  //  ( P_Day0 : $parameters.P_day0 )
{      

      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage', 
                             type: #FOR_INTENT_BASED_NAVIGATION }]  
  key Therapy,
  key TherapyTypeId,

      @EndUserText.label:'Therapy Quantity'
      count( * ) as TherapyQuantity
}
group by
  TherapyTypeId,
  Therapy
