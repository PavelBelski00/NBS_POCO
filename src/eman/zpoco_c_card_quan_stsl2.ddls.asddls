@AbapCatalog.sqlViewName: 'ZPOCOCQUANSTSL2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Quantity Order-StatusL2'

@UI.chart: [{
              qualifier:           'ChartStatusL2Quantity',
              title:               'Number of Orders per Level 2 Status',
              chartType:           #DONUT,
              dimensions:          [ 'StatusL2Id' ],
              measures:            [ 'StatusL2Quantity' ],
              dimensionAttributes: [ { dimension: 'StatusL2Id',        role: #CATEGORY } ],
              measureAttributes:   [ { measure:   'StatusL2Quantity',  role: #AXIS_1 }]
           }]

@UI.presentationVariant:[{
                           qualifier:      'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'ChartStatusL2Quantity' }]
                        }]
                        
define view zpoco_c_card_quan_stsl2
as select from zpoco_i_order 
{
      @ObjectModel.text.element: ['StatusL2Name']
      key StatusL2Id,
      _StatusL2.StatusL2Name,
      
      @EndUserText.label:'Status L2 Quantity'
      count( * ) as StatusL2Quantity,
      
      _StatusL2
}
group by 
  StatusL2Id,
  _StatusL2.StatusL2Name
