@EndUserText.label: 'OOS Details'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity zpoco_c_oos
  as projection on zpoco_i_oos
{
      @Search: {
                 defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8
               }
  key OosId,

      @Search: {
                 defaultSearchElement: true,
                 ranking: #HIGH,
                 fuzzinessThreshold: 0.8
               }
      @EndUserText.label: 'OOS Details'
      OosDetails,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      OosDetailsCriticality
}
