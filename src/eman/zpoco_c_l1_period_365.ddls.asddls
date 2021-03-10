@AbapCatalog.sqlViewName: 'ZPOCOL1365'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Status L1 for the period 365'
define view zpoco_c_L1_period_365
//  with parameters
//    @Consumption.hidden: true
//    @Environment.systemField: #SYSTEM_DATE
//    P_today : abap.dats
    

  as select from zpoco_i_order
//    ( P_today: $parameters.P_today)
{

  key Day0,
      StatusL1Id,
      $session.system_date as today,
//      @UI.hidden: true
//      $parameters.P_today as today,
      /* Associations */
      _StatusL1
}
//where
//   Day0 >= $session.system_date 
//  Day0 < dats_add_days($parameters.P_today, -10, 'FAIL') //and 
//    //dats_add_days( $parameters.P_today, - 100, 'FAIL')
