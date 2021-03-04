@AbapCatalog.sqlViewName: 'ZPOCOIDYNTL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Dynamic xtile for Plants'
define view zpoco_i_dynamic_tile as select from zpoco_i_plant {
    key 'Plant'              as Title,       
        'sap-icon://product' as icon,         
        '' as info,         
        '' as infoState,    
        '5' as DynNumber,       
        '1' as numberdigits, 
        '*' as numberfactor, 
        'Critical' as numberstate,  
        'Star' as numberunit,   
        '' as statearrow,   
        'Rating' as subtitle,     
        '' as targetparams 
}
