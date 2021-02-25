@EndUserText.label: 'Projection for CDS view Capacity'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true

define root view entity zpoco_c_capacity_chart
  as projection on zpoco_i_capacity_chart
{
  key CapacityUuid,
      
      @Search: {
                  defaultSearchElement: true,
                  ranking: #HIGH,
                  fuzzinessThreshold: 0.8
                }
       @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_PLANT', element: 'PlantID'} }]
       @ObjectModel.text.element: ['PlantName']
       MfgPlantId,
       _Plant.PlantName,
       
       @Search: {
                  defaultSearchElement: true,
                  ranking: #HIGH,
                  fuzzinessThreshold: 0.8
                }
       MfgStartDate,
       ConsSlots,
       CountYes,
       CountNo,
       Priority,
       ProtSubjectId,
      
       @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_TTYPE', element: 'TherapyTypeID '} }]
       @ObjectModel.text.element: ['TherapyTypeName']      
       TtypeId,
       _TType.TherapyTypeName,
       
       @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_COUNTRY', element: 'CountryId'} }]
       @ObjectModel.text.element: ['CountryName']
       CountryId,
       _Country.CountryName,      
       
       NvsId,
       CountryAlloc,
       CreatedBy,
       CreatedAt,
       LastChangedBy,
       LastChangedAt,
       
       /* Associations */
       _Country,
       _Plant,
       _TType
}
