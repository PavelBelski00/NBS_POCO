@EndUserText.label: 'Alert'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity zpoco_c_alert
  as projection on zpoco_i_alert
{
  key AlertUuid,
      @Search: {
          defaultSearchElement: true,
          ranking: #HIGH,
          fuzzinessThreshold: 0.8
      }
  key NvsId,
      @Search: {
          defaultSearchElement: true,
          ranking: #HIGH,
          fuzzinessThreshold: 0.8
      }
      @Consumption.valueHelpDefinition: [{ 
                                          entity:  { 
                                                     name: 'zpoco_i_alp_alert', 
                                                     element: 'AlertMessage'
                                                    } 
                                        }]
      AlertMessage,
      
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      UpdatedDate,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}



