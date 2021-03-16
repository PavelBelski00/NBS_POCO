@AbapCatalog.sqlViewName: 'ZPOCOCQUANTHERD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Quantity Order-Therapy-Date'
@UI.presentationVariant: [{ qualifier: 'Default',
                            sortOrder: [{by: 'TherapyQuantity', direction: #DESC }] }]

define view zpoco_c_card_quan_therapy_date
  as select from zpoco_i_order
{
      @UI.lineItem: [{ position: 10, importance: #HIGH }]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_c_therapy_vh',
                                                     element: 'Therapy'} }]
  key Therapy,

      @UI.lineItem: [{ position: 20, importance: #HIGH }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,

      @UI.lineItem: [{ position: 30, importance: #HIGH }]
      _Plant.PlantName as PlantName,

      @UI.lineItem: [{ position: 35, importance: #HIGH, label: 'Last Update'  }]
      Day0,

      @UI.lineItem: [{ type:   #AS_DATAPOINT,      importance: #HIGH,
                       label: 'Therapy Quantity',  position: 40 }]

      @UI.dataPoint: { title: 'Therapy Quantity',
                       minimumValue: 0,
                       maximumValue: 5,
                       criticalityCalculation: { improvementDirection: #MAXIMIZE,
                                                 deviationRangeLowValue: 2,
                                                 toleranceRangeLowValue: 4 } }
      count(*)         as TherapyQuantity,
      _Plant
}
where
  Therapy is not initial
group by
  Therapy,
  Day0,
  MfgPlantId,
  _Plant.PlantName
