@AbapCatalog.sqlViewName: 'ZPOCOTHERAPYVH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Therapy Value Help'

@ObjectModel:{
               semanticKey: ['Therapy'],
               representativeKey: 'Therapy',
               resultSet.sizeCategory: #XS,
               dataCategory: #VALUE_HELP
             }
@UI.presentationVariant: [{
                            sortOrder: [{ by: 'Therapy', direction: #ASC  }]
                         }]


define view zpoco_c_therapy_vh
  as select from zpoco_i_order
{
  key Therapy as Therapy
}
where Therapy is not initial
group by
  Therapy
