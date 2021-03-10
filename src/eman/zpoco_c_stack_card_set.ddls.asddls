@AbapCatalog.sqlViewName: 'ZPOCOSTACKCARD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Stack card for orders'

@UI.headerInfo: {
                  typeNamePlural: 'NVS Orders',
                  typeName: 'NVS Order',
                  title:       { 
                                 label: 'Order ID',
                                 value: 'NvsId'
                               },
                  description: {
                                 label: 'Therapy',
                                 value: 'Therapy'
                               }                                      
                }




define view zpoco_c_stack_card_set 
  as select from zpoco_i_order 

{
     @UI.selectionField: [{position: 10}]
     @Consumption.semanticObject: 'Action'
     @UI.lineItem: [
                    { 
                      label:                'NvsOrder',
                      qualifier:            'ordOverView',
                      type:                 #FOR_INTENT_BASED_NAVIGATION,
                      semanticObjectAction: 'zpoco_c_order'
                    },
                    { 
                      position:  10, 
                      qualifier: 'ordOverView', 
                      label:     'Nvs Order'
                    }
                   ]   
     @UI.identification: [{
                            type:                 #FOR_INTENT_BASED_NAVIGATION, 
                            semanticObjectAction: 'zpoco_c_order', 
                            label:                'Navigate to orders', 
                            position:              10 
                         }]
 key NvsId,
    
     Therapy,
     
     @UI.lineItem:  [{ position: 30, 
                       qualifier:'ordOverView', 
                       label: 'Tax Amount'}]
     TherapyTypeId,
     
     @UI.lineItem:  [{ position: 40, 
                       qualifier:'ordOverView', 
                       label: 'Created Day'}]
     OrderCreatedDay,
     
     @UI.fieldGroup: [{ groupLabel: 'L1 Stats', 
                        qualifier:'StatusL1',
                        label:      'L1', 
                        position:    50}]
     StatusL1Id,
     
     @UI.fieldGroup: [{ groupLabel: 'L2 Stats', 
                        label:      'L2', 
                        position:    60, 
                        qualifier:  'StatusL2'}]
     StatusL2Id,
     
     @UI.lineItem:  [{ position: 70, 
                       qualifier:'ordOverView', 
                       label: 'Ordering Site Id'}]
     @UI.identification: [{ type: #WITH_URL, 
                            label: 'Customer Site', 
                            
                            position: 70}]
     OrderingSiteId,
    
    
     /* Associations */
 
     _Site,
     _StatusL1,
     _StatusL2,
     _TType
}
