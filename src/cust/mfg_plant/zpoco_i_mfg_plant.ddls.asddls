@AbapCatalog.sqlViewName: 'ZPOCOIMFGPLANT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Manufacturing Plant'
define view ZPOCO_I_MFG_PLANT as select from zpoco_a_mfg_plnt 
{
    key zpoco_a_mfg_plnt.mfg_plant_id   as MfgPlantID, 
        zpoco_a_mfg_plnt.mfg_plant_name as MfgPlantName 
}
