@EndUserText.label: 'Capacity'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZPOCO_C_CAPACITY
  as projection on ZPOCO_I_CAPACITY
{
  key CapacityUuid,
      @Search: {
          defaultSearchElement: true,
          ranking: #HIGH,
          fuzzinessThreshold: 0.8
      }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_PLANT',   element: 'PlantID'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName,
      @Search: {
          defaultSearchElement: true,
          ranking: #HIGH,
          fuzzinessThreshold: 0.8
      }
      MfgStartDate,
      ConsumedSlots,
      Priority,
      ProtocolSubjectId,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_TTYPE',   element: 'TherapyTypeID'} }]
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_COUNTRY', element: 'CountryId'} }]
      @ObjectModel.text.element: ['CountryName']
      CountryId,
      _Country.CountryName,
      NvsId,
      CountryAllocation,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,

      _Country,
      _Plant,
      _TType
}
