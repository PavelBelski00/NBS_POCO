@AbapCatalog.sqlViewName: 'ZPOCOTTYPEVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Therapy Type Value Help'

@ObjectModel:{
               semanticKey: ['TherapyTypeId'],
               representativeKey: 'TherapyTypeId',
               resultSet.sizeCategory: #XS,
               dataCategory: #VALUE_HELP
             }
@UI.presentationVariant: [{
                            sortOrder: [{ by: 'TherapyTypeId', direction: #ASC  }]
                         }]


define view zpoco_c_ttype_vh
  as select from zpoco_i_ttype
{
  key TherapyTypeId
}
