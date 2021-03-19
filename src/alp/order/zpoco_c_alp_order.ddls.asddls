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
      Day0Year,

      @EndUserText.label: 'Quarter'
      Day0Quarter,

      @EndUserText.label: 'Month'
      Day0Month,

      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      Day0,

      OrderCreatedDay,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_c_therapy_vh',   element: 'Therapy'} }]
      Therapy,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_country', element: 'CountryId'} }]
      @ObjectModel.text.element: ['CountryName']
      CountryId,
      _Country.CountryName           as CountryName,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_plant',   element: 'MfgPlantId'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName               as PlantName,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_ttype',   element: 'TherapyTypeId'} }]
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName         as TherapyTypeName,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_stsl1',   element: 'StatusL1Id'} }]
      @ObjectModel.text.element: ['StatusL1Name']
      StatusL1Id,
      _StatusL1.StatusL1Name         as StatusL1Name,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_stsl2',   element: 'StatusL2Id'} }]
      @ObjectModel.text.element: ['StatusL2Name']
      StatusL2Id,
      _StatusL2.StatusL2Name         as StatusL2Name,


      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_site',    element: 'OrderingSiteId'} }]
      @ObjectModel.text.element: ['OrderingSiteName']
      OrderingSiteId,
      _Site.OrderingSiteName         as OrderingSiteName,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_oos', element: 'OosId' }}]
      @ObjectModel.text.element: ['OosDetails']
      OosId,
      _OOSDetails.OosDetails         as OosDetails,

      Oos,

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_oos_descr', element: 'OosDescriptionId' }}]
      @ObjectModel.text.element: ['OosDescription']
      OosDescriptionId,
      _OOSDescription.OosDescription as OosDescription,

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
      _TType
}
where
  Day0 is not initial
