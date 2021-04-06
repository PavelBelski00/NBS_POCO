@AbapCatalog.sqlViewName: 'ZPOCOPLANTVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Plant Value Help'

@ObjectModel:{
               semanticKey: ['PlantName'],
               representativeKey: 'MfgPlantId',
               resultSet.sizeCategory: #XS,
               dataCategory: #VALUE_HELP
             }
@UI.presentationVariant: [{
                            sortOrder: [{ by: 'MfgPlantId', direction: #ASC  }]
                         }]

define view zpoco_c_plant_vh
  as select from zpoco_i_plant
{

  key MfgPlantId,
      PlantName
     
}
