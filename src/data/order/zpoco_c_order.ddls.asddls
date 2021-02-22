@EndUserText.label: 'Order'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZPOCO_C_ORDER
  as projection on ZPOCO_I_ORDER
{
  key OrderUuid,
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
      NvsId,
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
      Therapy,
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_COUNTRY', element: 'CountryId'} }]
      CountryId,
      _Country.CountryName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_PLANT',   element: 'PlantID'} }]
      MfgPlantId,
      _Plant.PlantName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_TTYPE',   element: 'TherapyTypeID'} }]
      TherapyTypeId,
      _TType.TherapyTypeName,
      Day0,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_STSL1',   element: 'StatusL1Id'} }]
      StatusL1Id,
      _StatusL1.StatusL1Name,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_STSL2',   element: 'StatusL2Id'} }]
      StatusL2Id,
      _StatusL2.StatusL2Name,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_SITE',    element: 'OrderingSiteId'} }]
      OrderingSiteId,
      _Site.OrderingSiteName,
      Oos,
      OosDescription,
      AphDewar,
      FpDewar,
      ActualDay0,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      _Plant,
      _TType,
      _StatusL1,
      _StatusL2,
      _Country,
      _Site
}
