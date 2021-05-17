@AbapCatalog.sqlViewName: 'ZPOCOOOSVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Value Help for OOS Details'

@ObjectModel:{
               semanticKey: ['OosDetails'],
               representativeKey: 'OosId',
               resultSet.sizeCategory: #XS,
               dataCategory: #VALUE_HELP
             }
@UI.presentationVariant: [{
                            sortOrder: [{ by: 'OosId', direction: #ASC  }]
                         }]
                         
                         
define view zpoco_c_oos_vh
  as select from zpoco_i_oos
{
  @ObjectModel.text.element: ['OosDetails']
  key OosId,
      OosDetails
}
