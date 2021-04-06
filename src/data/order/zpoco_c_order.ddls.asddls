@EndUserText.label: 'Order'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity zpoco_c_order
  
  as projection on zpoco_i_order  
  

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
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_c_therapy_vh',   element: 'Therapy'} }]
      Therapy,
      

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_country', element: 'CountryId'} }]
      @ObjectModel.text.element: ['CountryName']
      CountryId,
      _Country.CountryName   as CountryName,
      

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_plant',   element: 'MfgPlantId'} }]
      @ObjectModel.text.element: ['PlantName']
      MfgPlantId,
      _Plant.PlantName       as PlantName,
      

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_ttype',   element: 'TherapyTypeId'} }]
      @ObjectModel.text.element: ['TherapyTypeName']
      TherapyTypeId,
      _TType.TherapyTypeName as TherapyTypeName,
      
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      OrderCreatedDay,
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      Day0,
      

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_stsl1',   element: 'StatusL1Id'} }]
      @ObjectModel.text.element: ['StatusL1Name']
      StatusL1Id,
      _StatusL1.StatusL1Name as StatusL1Name,
      

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_stsl2',   element: 'StatusL2Id'} }]
      @ObjectModel.text.element: ['StatusL2Name']
      StatusL2Id,
      _StatusL2.StatusL2Name as StatusL2Name,
     
     

      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_site',    element: 'OrderingSiteId'} }]
      @ObjectModel.text.element: ['OrderingSiteName']
      OrderingSiteId,
      _Site.OrderingSiteName as OrderingSiteName,
      
 
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_oos', element: 'OosId' }}]
      @ObjectModel.text.element: ['OosDetails']
      OosId,
      _OOSDetails.OosDetails as OosDetails,
      
      Oos,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zpoco_i_oos_descr', element: 'OosDescriptionId' }}]
      @ObjectModel.text.element: ['OosDescription']
      OosDescriptionId,
      _OOSDescription.OosDescription as OosDescription,
      
      MaterialQuantity,
      MaterialQuantityUOM,
      Amount,
      AmountCurrency,
      
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      @EndUserText.label: 'Alerts Creation Date'
      UpdatedDate as AlertUpdatedDate,

      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      @EndUserText.label: 'Tasks Creation Date'
      UpdatedDateWI as AlertWIUpdatedDate,
            
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
      _Site,
      _OOSDetails,
      _OOSDescription
      
}
