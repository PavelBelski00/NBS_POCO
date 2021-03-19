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
  
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_plant',   element: 'MfgPlantId'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName               as PlantName,
      
      NvsId,
      
      @EndUserText.label: 'Quantity'
      @Aggregation.default: #SUM
      Quantity,
            
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      MfgStartDate,
      
      @EndUserText.label: 'Year'
      @Consumption.filter.defaultValue: '2021'
      MfgStartDateYear,
      
      @EndUserText.label: 'Quarter'
      MfgStartDateQuarter,
      
      @EndUserText.label: 'Month'
      MfgStartDateMonth,
      
      ConsumedSlots,
      Priority,
      ProtocolSubjectId,
      
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_ttype',   element: 'TherapyTypeId'} }]
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName         as TherapyTypeName,
      
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_country', element: 'CountryId'} }]
      @ObjectModel.text.element: ['CountryName']
      CountryId,
      _Country.CountryName           as CountryName,
      
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
