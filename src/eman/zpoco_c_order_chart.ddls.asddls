@AbapCatalog.sqlViewName: 'ZORDERCHART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection for CDS view Order chart'
@Search.searchable: true
@Metadata.allowExtensions: true

define view zpoco_c_order_chart
  as select from ZPOCO_I_ORDER
//  association [1..1] to zpoco_c_order_therapy_card as _CardTherapy on $projection.TherapyTypeId = _CardTherapy.TherapyTypeId  and
//                                                                      $projection.Therapy       = _CardTherapy.Therapy
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
  @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_c_ther_search_help',   element: 'Therapy'} }]
      Therapy,
  @Search: {
      defaultSearchElement: true,
      ranking: #HIGH,
      fuzzinessThreshold: 0.8
  }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_COUNTRY', element: 'CountryId'} }]
      @ObjectModel.text.element: ['CountryName']
      CountryId,
      _Country.CountryName as CountryName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_PLANT',   element: 'PlantID'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName as PlantName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_TTYPE',   element: 'TherapyTypeID'} }]
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName as TherapyTypeName,
      Day0,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_STSL1',   element: 'StatusL1Id'} }]
      @ObjectModel.text.element: ['StatusL1Name']
      StatusL1Id,
      _StatusL1.StatusL1Name as StatusL1Name,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_STSL2',   element: 'StatusL2Id'} }]
      @ObjectModel.text.element: ['StatusL2Name']
      StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZPOCO_I_SITE',    element: 'OrderingSiteId'} }]
      @ObjectModel.text.element: ['OrderingSiteName']
      OrderingSiteId,
      _Site.OrderingSiteName as OrderingSiteName,
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
//      _CardTherapy
}
