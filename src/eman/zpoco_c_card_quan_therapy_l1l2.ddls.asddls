@AbapCatalog.sqlViewName: 'ZTHERL1L2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Therapy aggregation by L1 & L2 staus'

define view ZPOCO_C_card_quan_THERAPY_L1L2
  as select from zpoco_i_order
{
  key Therapy,
      
      StatusL1Id,
      _StatusL1.StatusL1Name,
    
      StatusL2Id,
      _StatusL2.StatusL2Name,
      
      @Aggregation.default: #COUNT_DISTINCT
      cast( 1 as abap.int1 ) as TherapyQuantity,
     
      /* Associations */
      _StatusL1,
      _StatusL2
      
}
