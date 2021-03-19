@AbapCatalog.sqlViewName: 'ZPOCOIACAPACITY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Capacity'
define view zpoco_i_alp_capacity
  as select from zpoco_i_capacity
{
  key CapacityUuid,
      MfgPlantId,
      NvsId,
      
      1 as Quantity,
      
      MfgStartDate,
      substring(MfgStartDate,1,4) as MfgStartDateYear,
      case  substring(MfgStartDate,5,2)
      when '01' then '1'
      when '02' then '1'
      when '03' then '1'
      when '04' then '2'
      when '05' then '2'
      when '06' then '2'
      when '07' then '3'
      when '08' then '3'
      when '09' then '3'
      when '10' then '4'
      when '11' then '4'
      when '12' then '4'
      else ''
      end                 as MfgStartDateQuarter,

      substring(MfgStartDate,5,2) as MfgStartDateMonth,
      
      ConsumedSlots,
      Priority,
      ProtocolSubjectId,
      TherapyTypeId,
      CountryId,
      CountryAllocation,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      Today,
      
      /* Associations */
      _Country,
      _Plant,
      _TType
}
