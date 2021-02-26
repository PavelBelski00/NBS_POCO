@AbapCatalog.sqlViewName: 'ZPOCOORDERSTSL1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for CDS view Order chart'

@UI.chart: [{
              qualifier:           'STSL1',
              chartType:           #DONUT,
              dimensions:          [ 'StatusL1Id' ],
              measures:            [ 'StatusL1_quontity' ],
              dimensionAttributes: [ { dimension: 'StatusL1Id',   role: #CATEGORY } ],
              measureAttributes:   [ { measure:   'StatusL1_quontity', role: #AXIS_1 }]
           }]

@UI.presentationVariant:[{
                           qualifier:      'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'STSL1' }]
                        }]

define view zpoco_c_order_stsl1_card
  as select from ZPOCO_I_ORDER
{
  key StatusL1Id,
      _StatusL1.StatusL1Name,
      @EndUserText.label:'L2 Status quantity'
      count( * ) as StatusL1_quontity,
      /* Associations */
      _StatusL1
}
group by 
  StatusL1Id,
  _StatusL1.StatusL1Name
