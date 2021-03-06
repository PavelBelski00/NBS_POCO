@AbapCatalog.sqlViewName: 'ZPOCOIAORDER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Order'
define view zpoco_i_alp_order
  as select from zpoco_i_order
  association [1..1] to zpoco_i_year    as _CalendarYear    on $projection.Day0Year    = _CalendarYear.CalendarYear
  association [1..1] to zpoco_i_quarter as _CalendarQuarter on $projection.Day0Quarter = _CalendarQuarter.CalendarQuarter
  association [1..1] to zpoco_i_month   as _CalendarMonth   on $projection.Day0Month   = _CalendarMonth.CalendarMonthId

{
  key OrderUuid,
      NvsId,
      1                   as NvsIdQuantity,

      case TherapyTypeId
      when 'Commercial' then 1
      else 0
      end                 as TherapyTypeCommercialQuantity,

      case TherapyTypeId
      when 'Clinical' then 1
      else 0
      end                 as TherapyTypeClinicalQuantity,

      Therapy,
      CountryId,
      MfgPlantId,
      TherapyTypeId,
      OrderCreatedDay,

      Day0,

      substring(Day0,1,4) as Day0Year,
            
      case  substring(Day0,5,2)
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
      end                 as Day0Quarter,

      substring(Day0,5,2) as Day0Month,

      StatusL1Id,
      StatusL2Id,
      OrderingSiteId,
      OosId,
      Oos,
      OosDescriptionId,  
      AphDewar,
      FpDewar,
      MaterialQuantity,
      MaterialQuantityUOM,    
      Amount,
      AmountCurrency,
      ActualDay0,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      Today,
      /* Associations */
      _Country,
      _OOSDescription,
      _OOSDetails,
      _Plant,
      _Site,
      _StatusL1,
      _StatusL2,
      _TType,
      _CalendarYear,
      _CalendarQuarter,
      _CalendarMonth,
      _OrderAlert,
      _OrderAlertWorkItem
      
}
