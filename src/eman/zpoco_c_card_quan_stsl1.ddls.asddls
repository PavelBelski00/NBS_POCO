@AbapCatalog.sqlViewName: 'ZPOCOCQUANSTSL1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Quantity Order-StatusL1'

@UI.chart: [{
              qualifier:           'ChartStatusL1Quantity',
              title:               'Number of Orders per Level 1 Status',
              chartType:           #DONUT,
              dimensions:          [ 'StatusL1Id' ],
              measures:            [ 'StatusL1Quantity' ],
              dimensionAttributes: [{ dimension: 'StatusL1Id',       role: #CATEGORY  }],
              measureAttributes:   [{ measure:   'StatusL1Quantity', role: #AXIS_1    }]
           }]

@UI.presentationVariant:[{
                           qualifier:      'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'ChartStatusL1Quantity' }]
                        }]
                        
define view zpoco_c_card_quan_stsl1 
as select from zpoco_i_order 
{
      @ObjectModel.text.element: ['StatusL1Name']
      key StatusL1Id,
      _StatusL1.StatusL1Name,
      
      @EndUserText.label:'Status L1 Quantity'
      count( * ) as StatusL1Quantity,

      _StatusL1
}
group by
  StatusL1Id,
  _StatusL1.StatusL1Name
