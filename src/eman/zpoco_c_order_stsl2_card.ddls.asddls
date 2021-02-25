@AbapCatalog.sqlViewName: 'ZORDERSTSL2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View for STSL2 card'

@UI.chart: [{
              qualifier:           'STSL2',
              chartType:           #DONUT,
              dimensions:          [ 'StatusL2Id' ],
              measures:            [ 'StatusL2_quontity' ],
              dimensionAttributes: [ { dimension: 'StatusL2Id',   role: #CATEGORY } ],
              measureAttributes:   [ { measure:   'StatusL2_quontity', role: #AXIS_1 }]
           }]

@UI.presentationVariant:[{
                           qualifier:      'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'STSL2' }]
                        }]

 
define view zpoco_c_order_stsl2_card
  as select from ZPOCO_I_ORDER
{
  key StatusL2Id,
      _StatusL2.StatusL2Name,
      count( * ) as StatusL2_quontity,
      /* Associations */
      _StatusL2
}
group by 
  StatusL2Id,
  _StatusL2.StatusL2Name
