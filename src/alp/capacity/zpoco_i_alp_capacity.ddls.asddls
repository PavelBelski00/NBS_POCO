@AbapCatalog.sqlViewName: 'ZPOCOIACAPACITY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Capacity'
define view zpoco_i_alp_capacity
  as select from zpoco_i_capacity
  association [1..1] to zpoco_i_year    as _CalendarYear    on $projection.MfgStartDateYear = _CalendarYear.CalendarYear
  association [1..1] to zpoco_i_quarter as _CalendarQuarter on $projection.MfgStartDateQuarter = _CalendarQuarter.CalendarQuarter
  association [1..1] to zpoco_i_month   as _CalendarMonth   on $projection.MfgStartDateMonth = _CalendarMonth.CalendarMonthId
{
  key CapacityUuid,
      MfgPlantId,
      NvsId,

      1                           as Quantity,

      case ConsumedSlots
      when 'Consumed' then 1
      else 0
      end                         as ConsumedQuantity,

      case ConsumedSlots
      when 'Available' then 1
      else 0
      end                         as AvailableQuantity,

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
      end                         as MfgStartDateQuarter,

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
      _TType,
      _CalendarYear,
      _CalendarQuarter,
      _CalendarMonth
}
