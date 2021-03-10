@AbapCatalog.sqlViewName: 'ZPOCOCORDERP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Order with Parameters'


//C_ARCashCollTrackerOvw
//https://ecsc00a030bf.epam.com:8001/sap/bc/ui5_ui5/ui2/ushell/shells/abap/FioriLaunchpad.html?sap-client=100&sap-language=RU#
//Customer-overviewAccountsReceivable&/?sap-iapp-state=ASBYIV86A4MOGBU9MCOPYB5FORGXZ85DH7N07ATR

define view ZPOCO_C_ORDER_PARAM

  with parameters
    //    @Consumption.hidden: true
    //    @Environment.systemField: #SYSTEM_DATE
//    P_Day0     : zpoco_day0_int, 
//    @Consumption.hidden: true
//    @Environment.systemField: #SYSTEM_DATE
//    P_ActualDay0 : zpoco_day0
      
    @Consumption.defaultValue: 'E'
    P_DisplayCurrency       : zpoco_mfg_plant_id
    
  as select from ZPOCO_I_ORDER_PARAM
//  ( P_Day0:       $parameters.P_Day0,
//    P_SYSTDATE:   $parameters.P_SYSTDATE )

{
  key OrderUuid,
//      NvsId,
//      Therapy,
//      CountryId,
////      CountryName,
//      MfgPlantId,
////      PlantName,
//      TherapyTypeId,
////      TherapyTypeName,
//      OrderCreatedDay,
//      Day0,
      StatusL1Id
//      StatusL1Name,
//      StatusL2Id,
////      StatusL2Name,
//      OrderingSiteId,
////      OrderingSiteName,
//      Oos,
//      OosDescription,
//      AphDewar,
//      FpDewar,
//      ActualDay0
//      CreatedBy,
//      CreatedAt,
//      LastChangedBy,
//      LastChangedAt,
//      /* Associations */
//      _Country,
//      _Plant,
//      _Site,
//      _StatusL1,
//      _StatusL2,
//      _TType

  

//      $parameters.P_SYSTDATE as today

}

//where Day0 >= dats_add_days($parameters.P_SYSTDATE, cast( $parameters.P_Day0 as zpoco_day0_int ), 'INITIAL' )
