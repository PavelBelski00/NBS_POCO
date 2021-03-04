@EndUserText.label: 'Alert Work Item'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity zpoco_c_alert_wi
  as projection on zpoco_i_alert_wi
{
  key AlertWorkItemUuid,
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
      AlertMessage,

      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      UpdatedDate,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
