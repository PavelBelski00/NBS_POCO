@AbapCatalog.sqlViewName: 'ZPOCOCACAPACITY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Capacity'
@Metadata.allowExtensions: true
define view zpoco_c_alp_capacity
  as select from zpoco_i_alp_capacity
{
  key CapacityUuid,
      
      @Consumption.semanticObject: 'NBS_POC_OVP_PLANT'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_plant',   element: 'MfgPlantId'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName                 as PlantName,
     
      @Consumption.semanticObject: 'NBS_POC_OVP_ORDER'
      NvsId,

      @EndUserText.label: 'Quantity'
      @Aggregation.default: #SUM
      Quantity,
      
      @EndUserText.label: 'Consumed Slots Quantity'
      @Aggregation.default: #SUM
      ConsumedQuantity,
      
      @EndUserText.label: 'Available Slots Quantity'
      @Aggregation.default: #SUM
      AvailableQuantity,      

      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      MfgStartDate,

      @EndUserText.label: 'Year'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_year',
                                               element: 'CalendarYear'} }]
      MfgStartDateYear,

      @EndUserText.label: 'Quarter'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_quarter',
                                               element: 'CalendarQuarter'} }]
      MfgStartDateQuarter,

      @EndUserText.label: 'Month'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_month',
                                               element: 'CalendarMonthId'} }]
      @ObjectModel.text.element: ['CalendarMonthName']
      MfgStartDateMonth,
      _CalendarMonth.CalendarMonthName as CalendarMonthName,

      ConsumedSlots,
      Priority,
      ProtocolSubjectId,
      
      @Consumption.semanticObject: 'NBS_POC_OVP_TTYPE'
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName           as TherapyTypeName,
      
      @Consumption.semanticObject: 'NBS_POC_OVP_COUNTRY'
      @ObjectModel.text.element: ['CountryName']
      CountryId,
      _Country.CountryName             as CountryName,

      CountryAllocation,

      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      Today,
      /* Associations */
      _Country,
      _Plant,
      _TType
}

