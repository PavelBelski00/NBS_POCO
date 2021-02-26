@AbapCatalog.sqlViewName: 'ZPOCOORDERTHER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View for Therapy card'

@UI.chart: [{
              qualifier:           'Therapy',
              chartType:           #COLUMN_STACKED,
              dimensions:          [ 'Therapy' ],
              measures:            [ 'Therapy_quontity' ],
              dimensionAttributes: [ { dimension: 'Therapy',   role: #CATEGORY } ],
              measureAttributes:   [ { measure:   'Therapy_quontity', role: #AXIS_1 }]
           }]

@UI.presentationVariant:[{ 
                           qualifier:      'Default',
                           sortOrder: [{ by: 'TherapyTypeId', direction:  #ASC }],
                           visualizations: [{ type: #AS_CHART, qualifier: 'Therapy'}]
                        }]

define view zpoco_c_order_therapy_card
  as select from ZPOCO_I_ORDER
{
  key TherapyTypeId,
      Therapy,
      count( * ) as Therapy_quontity
} 
group by 
  TherapyTypeId,
  Therapy
 
