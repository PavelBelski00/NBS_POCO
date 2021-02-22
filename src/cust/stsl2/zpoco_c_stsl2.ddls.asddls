@EndUserText.label: 'Status L2'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity zpoco_c_stsl2 
  as projection on zpoco_i_stsl2 
{
  @Search: { defaultSearchElement: true,
             ranking: #HIGH,
             fuzzinessThreshold: 0.8 } 
  key StatusL2Id,
  @Search: { defaultSearchElement: true,
             ranking: #HIGH,
             fuzzinessThreshold: 0.8 }
      StatusL2Name,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
