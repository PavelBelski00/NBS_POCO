@AbapCatalog.sqlViewName: 'ZPOCOCDYNTL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Dynamic xtile for Plants'
define view ZPOCO_C_DYNAMIC_TILE as select from zpoco_i_dynamic_tile {
    key 'Plant'              as Title,       
        'sap-icon://product' as icon,         
        '' as info,         
        '' as infoState,    
//        DynNumber as NUMBER,       
        '1' as numberdigits, 
        '*' as numberfactor, 
        'Critical' as numberstate,  
        'Star' as numberunit,   
        '' as statearrow,   
        'Rating' as subtitle,     
        '' as targetparams 
}
