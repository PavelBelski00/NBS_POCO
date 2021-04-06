@AbapCatalog.sqlViewName: 'ZPOCOCAPACFOROVP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Capacity for OVP'


define view zpoco_i_capacity_for_ovp
  as select from zpoco_i_capacity
{
  key CapacityUuid,
      
      @ObjectModel.text.element:        ['PlantName']
      MfgPlantId,
      _Plant.PlantName          as PlantName,
      
      MfgStartDate              as Day0,
      
      ConsumedSlots,
      
      1                         as ConsumedSlotsCount,
      3                         as CriticalityValue,
      case ConsumedSlots
        when 'Available' then 1
        else 0
      end                       as Available, 
      
      case ConsumedSlots
        when 'Consumed' then 1
        else 0
      end                       as Consumed, 
      
      TherapyTypeId             as TtypeId
}
