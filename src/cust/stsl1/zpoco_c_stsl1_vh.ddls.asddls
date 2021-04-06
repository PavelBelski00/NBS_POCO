@AbapCatalog.sqlViewName: 'ZPOCOSTSL1VH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L1 Value Help'

@ObjectModel:{
               semanticKey: ['StatusL1Name'],
               representativeKey: 'StatusL1Id',
               resultSet.sizeCategory: #XS,
               dataCategory: #VALUE_HELP
             }
@UI.presentationVariant: [{
                            sortOrder: [{ by: 'StatusL1Name', direction: #ASC  }]
                         }]


define view zpoco_c_stsl1_vh
  as select from zpoco_i_stsl1
{
  @ObjectModel.text.element: ['StatusL1Name']
  key StatusL1Id,
      StatusL1Name
}
