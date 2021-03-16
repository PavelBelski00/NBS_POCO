@AbapCatalog.sqlViewName: 'ZPOCOALERTWIFILT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Card: Alert Work Items'
@UI.presentationVariant: [{ sortOrder: [{ by: 'UpdatedDate', direction:  #ASC }] ,
                            qualifier: 'Default' }]

define view zpoco_c_card_alertwi_filter
  as select from zpoco_i_order
{
      @UI.hidden: true
  key OrderUuid,

      @Consumption.semanticObject: 'NBS_POC_OVP_ALERT'
      @UI.lineItem: [{ position: 10 }]
  key NvsId,

      @UI.lineItem: [{ position: 20 }]
      @EndUserText.label: 'Task Message'
      _AlertWi.AlertMessage as AlertMessage,

      @UI.lineItem: [{ position: 30 }]
      @EndUserText.label: 'Last Update'
      UpdatedDate,

      /* Associations */
      _AlertWi
}
where
  AlertWiUpdateDate is not initial
