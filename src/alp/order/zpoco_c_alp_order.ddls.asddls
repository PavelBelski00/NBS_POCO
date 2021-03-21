@AbapCatalog.sqlViewName: 'ZPOCOCAORDER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Order'
@Metadata.allowExtensions: true
define view zpoco_c_alp_order
  as select from zpoco_i_alp_order
{
  key OrderUuid,

      NvsId,

      @EndUserText.label: 'Order Quantity'
      @Aggregation.default: #SUM
      NvsIdQuantity,

      @EndUserText.label: 'Year'
      @Consumption.filter.defaultValue: '2021'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_year',
                                                     element: 'CalendarYear'} }]
      Day0Year,

      @EndUserText.label: 'Quarter'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_quarter',
                                                     element: 'CalendarQuarter'} }]
      Day0Quarter,

      @EndUserText.label: 'Month'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_month',
                                                     element: 'CalendarMonthId'} }]
      @ObjectModel.text.element: ['CalendarMonthName']
      Day0Month,
      _CalendarMonth.CalendarMonthName as CalendarMonthName,

      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      Day0,

      OrderCreatedDay,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_c_therapy_vh',   element: 'Therapy'} }]
      Therapy,
      
      @ObjectModel.text.element: ['CountryName']
      CountryId,
      _Country.CountryName             as CountryName,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_plant',   element: 'MfgPlantId'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName                 as PlantName,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_ttype',   element: 'TherapyTypeId'} }]
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName           as TherapyTypeName,

      @ObjectModel.text.element: ['StatusL1Name']
      StatusL1Id,
      _StatusL1.StatusL1Name           as StatusL1Name,

      @ObjectModel.text.element: ['StatusL2Name']
      StatusL2Id,
      _StatusL2.StatusL2Name           as StatusL2Name,


      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_site',    element: 'OrderingSiteId'} }]
      @ObjectModel.text.element: ['OrderingSiteName']
      OrderingSiteId,
      _Site.OrderingSiteName           as OrderingSiteName,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_oos', element: 'OosId' }}]
      @ObjectModel.text.element: ['OosDetails']
      OosId,
      _OOSDetails.OosDetails           as OosDetails,

      Oos,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_oos_descr', element: 'OosDescriptionId' }}]
      @ObjectModel.text.element: ['OosDescription']
      OosDescriptionId,
      _OOSDescription.OosDescription   as OosDescription,

      AphDewar,
      FpDewar,

      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,


      /* Associations */
      _Alert,
      _AlertWi,
      _Country,
      _OOSDescription,
      _OOSDetails,
      _Plant,
      _Site,
      _StatusL1,
      _StatusL2,
      _TType,
      _CalendarYear,
      _CalendarQuarter,
      _CalendarMonth

}
where
  Day0Year is not initial
