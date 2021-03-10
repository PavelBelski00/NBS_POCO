@AbapCatalog.sqlViewName: 'ZPOCOOOSDET'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: OOS Details'

@UI.chart: [{
              qualifier:           'ChartQuanOfCases',
              title:               'Aggregation by OOS Details',
              chartType:           #DONUT,
              dimensions:          [ 'OosDetailsID' ],
              measures:            [ 'QuanOfCases' ],
              dimensionAttributes: [{ dimension: 'OosDetailsID', role: #CATEGORY }],
              measureAttributes:   [{ measure:   'QuanOfCases',  role: #AXIS_1 }]
           }]

@UI.presentationVariant:[{
                           qualifier: 'Default',
                           visualizations: [{ type: #AS_CHART, qualifier: 'ChartQuanOfCases' }]
                        }]



define view zpoco_c_card_oos_details
  as select from zpoco_i_order
{     
      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      @UI.identification: [{ semanticObjectAction: 'manage', 
                             type: #FOR_INTENT_BASED_NAVIGATION }]
      @ObjectModel.text.element: ['OosDetails']
  key OosDetailsID,
      _OOS.OosDetails as OosDetails,
      count(*)        as QuanOfCases,
      /* Associations */
      _OOS
}
where
  OosDetailsID is not initial
group by
  OosDetailsID,
  _OOS.OosDetails
