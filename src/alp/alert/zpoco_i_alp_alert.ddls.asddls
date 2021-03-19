@AbapCatalog.sqlViewName: 'ZPOCOIAALERT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'ALP Alert'


define view zpoco_i_alp_alert
  as select from zpoco_i_alert

{
  key UpdatedDate,
      NvsId                        as OrderNumber,
      AlertMessage,
      substring(UpdatedDate, 7, 2) as AlertDay,
      substring(UpdatedDate, 5, 2) as AlertMonth,
      case substring(UpdatedDate, 5, 2)
        when '01' then 'January'
        when '02' then 'February'
        when '03' then 'March'
        when '04' then 'April'
        when '05' then 'May'
        when '06' then 'June'
        when '07' then 'July'
        when '08' then 'August'
        when '09' then 'September'
        when '10' then 'October'
        when '11' then 'November'
        when '12' then 'December'
      end                          as MonthNames,
      substring(UpdatedDate, 1, 4) as AlertYear,
      case substring(UpdatedDate, 5, 2)
        when '01' then 1
        when '02' then 1
        when '03' then 1
        when '04' then 2
        when '05' then 2
        when '06' then 2
        when '07' then 3
        when '08' then 3
        when '09' then 3
        when '10' then 4
        when '11' then 4
        when '12' then 4
      end                          as AlertQuarter,
      count(distinct NvsId)        as OrdersQuantity
}
group by 
UpdatedDate,
NvsId,
AlertMessage
