@EndUserText.label: 'Capacity'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity zpoco_c_capacity
  as projection on zpoco_i_capacity
{
  key CapacityUuid,
      @Search: {
          defaultSearchElement: true,
          ranking: #HIGH,
          fuzzinessThreshold: 0.8
      }
      @Consumption.semanticObject: 'NBS_POC_OVP_PLANT'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_plant',   element: 'MfgPlantId'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName,
      
      @Search: {
          defaultSearchElement: true,
          ranking: #HIGH,
          fuzzinessThreshold: 0.8
      }
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      MfgStartDate,
      
      ConsumedSlots,
      Priority,
      ProtocolSubjectId,
      
      @Consumption.semanticObject: 'NBS_POC_OVP_TTYPE'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_ttype',   element: 'TherapyTypeId'} }]
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName,
      
      @Consumption.semanticObject: 'NBS_POC_OVP_COUNTRY'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_country', element: 'CountryId'} }]
      @ObjectModel.text.element: ['CountryName']
      CountryId,
      _Country.CountryName,
      
      NvsId,
      CountryAllocation,
      
      @Consumption.filter.hidden: true
      CreatedBy,
      @Consumption.filter.hidden: true
      CreatedAt,
      @Consumption.filter.hidden: true
      LastChangedBy,
      @Consumption.filter.hidden: true
      LastChangedAt,

      _Country,
      _Plant,
      _TType
}
