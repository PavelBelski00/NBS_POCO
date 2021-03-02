@AbapCatalog.sqlViewName: 'ZPOCOCTPCARD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Table Card: therapy by plant'

@UI.presentationVariant: [{ qualifier: 'Default' }]
define view zpoco_c_therapy_plant_card 
as select from ZPOCO_I_ORDER 
{   
    @UI.lineItem: [{ position: 10, importance: #HIGH }]
    key Therapy,

    @UI.lineItem: [{ position: 20, importance: #HIGH }]
    MfgPlantId,

    Day0,

    @UI.lineItem: [{ position: 30, label: 'Therapy Quantity', importance: #HIGH }]
    count(*) as Therapy_Quantity,
    
    _Plant
} group by Therapy, Day0, MfgPlantId
