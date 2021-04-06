@AbapCatalog.sqlViewName: 'ZPOCOORDERGLFIL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order Global Filter for OVP'
@Search.searchable: true


define view zpoco_c_order_global_filter
  as select from zpoco_d_order_a
  
  association [0..1] to zpoco_i_ttype     as _TType              on  $projection.TtypeId    = _TType.TherapyTypeId
  association [0..1] to zpoco_i_stsl1     as _StatusL1           on  $projection.Stsl1Id    = _StatusL1.StatusL1Id
  association [0..1] to zpoco_i_stsl2     as _StatusL2           on  $projection.Stsl2Id    = _StatusL2.StatusL2Id
  association [0..1] to zpoco_i_plant     as _Plant              on  $projection.MfgPlantId = _Plant.MfgPlantId
  association [0..1] to zpoco_i_alert     as _OrderAlert         on  $projection.NvsId      = _OrderAlert.NvsId
  association [0..1] to zpoco_i_alert_wi  as _OrderAlertWorkItem on  $projection.NvsId      = _OrderAlertWorkItem.NvsId
  
{
      @UI.hidden: true
  key order_uuid                        as OrderUuid,
      
      @UI.hidden: true
      @Search: {
          defaultSearchElement: true,
          ranking: #HIGH,
          fuzzinessThreshold: 0.8
      }
      nvs_id                            as NvsId,
      
      @UI:{
            lineItem:       [{ position: 20, importance: #HIGH }],
            selectionField: [{ position: 15 }] 
          }
      @Consumption.valueHelpDefinition: [{ 
                                           entity: { name:    'zpoco_c_therapy_vh',   
                                                     element: 'Therapy'} 
                                        }]
      therapy                           as Therapy,
      
      @UI:{
            lineItem:       [{ position: 40, importance: #HIGH }],
            selectionField: [{ position: 40 }] 
          }
      @Consumption.valueHelpDefinition: [{ 
                                           entity: { name:    'zpoco_i_plant',   
                                                     element: 'MfgPlantId'} 
                                        }]          
      @ObjectModel.text.element: ['PlantName']
      mfg_plant_id                      as MfgPlantId,
      _Plant.PlantName                  as PlantName,
      
      
      @UI:{
            lineItem:       [{ position: 50, importance: #HIGH }],
            selectionField: [{ position: 50 }] 
          }
      @Consumption.valueHelpDefinition: [{ 
                                           entity: { name:    'zpoco_i_ttype',   
                                                     element: 'TherapyTypeId'} 
                                        }]
      @ObjectModel.text.element: ['TherapyTypeName']
      ttype_id                          as TtypeId,
      _TType.TherapyTypeName            as TherapyTypeName,
      
      @UI:{
            lineItem:       [{ position: 70, importance: #MEDIUM }],
            selectionField: [{ position: 70 }] 
          }
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      day0                              as Day0,
      
            
      @UI:{
            lineItem:       [{ position: 80, importance: #HIGH }],
            selectionField: [{ position: 80 }] 
          }
      @Consumption.valueHelpDefinition: [{ 
                                           entity: { name:    'zpoco_i_stsl1',   
                                                     element: 'StatusL1Id'} 
                                        }]
      stsl1_id                          as Stsl1Id,
      _StatusL1.StatusL1Name            as StatusL1Name,
      
      @UI:{
            lineItem:       [{ position: 90, importance: #HIGH }],
            selectionField: [{ position: 90 }] 
          }
      @Consumption.valueHelpDefinition: [{ 
                                           entity: { name:    'zpoco_i_stsl2',   
                                                     element: 'StatusL2Id'} 
                                        }]
      stsl2_id                          as Stsl2Id,
      
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      @EndUserText.label:   'Alerts Creation Date'
      @UI.selectionField: [{ position: 145 }]
      _OrderAlert.UpdatedDate           as AlertCreationDate,
           
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  false }
      @EndUserText.label:   'Tasks Creation Date'
      @UI.selectionField: [{ position: 147 }]
      _OrderAlertWorkItem.UpdatedDate   as AlertWICreationDate,
            
      --Assosiations--
      _Plant,
      _StatusL1,
      _StatusL2,
      _TType,
      _OrderAlert,
      _OrderAlertWorkItem
}
