@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DF'
@Metadata.allowExtensions: true
define root view entity zpoco_c_df_operations
  provider contract
  transactional_query
  as projection on zpoco_i_df_operations
{
  key TaskId,
      SalesOrderId,
      ServiceType,
      TicketOwner,
      TaskCreationDate,
      TaskDueDate,
      LastChangeDate,
      TaskDescription,
      CreatedBy,
      @Aggregation.default: #AVG
      Vendorquotetime,
      VendorquotetimeUom,
      StatusText,
      SoMultCategory1,
      SapRefNum,
      SupportTeam,
      SystemId,
      SubStatusText,
      SupportTeamId,
      ReportedBy,
      SoStatusText,
      SoReleaseClassification,
      ProductId,
      SoSupportTeam,
      SoMultCategory2,
      @Aggregation.default: #AVG
      TotalDays,
      @Aggregation.default: #AVG
      DaysInCurrentStatus,
      @Aggregation.default: #AVG
      DaysInOpenStatus,
      @Aggregation.default: #AVG
      DaysInProgress,
      @Aggregation.default: #AVG
      TotalDaysInClarification,
      @Aggregation.default: #AVG
      TimesInClarification,
      @Aggregation.default: #AVG
      DaysInEffortEstimation,
      @Aggregation.default: #AVG
      TotalDaysInDevevelopment,
      @Aggregation.default: #AVG
      TimesInDevelopment,
      @Aggregation.default: #AVG
      DaysInReview,
      @Aggregation.default: #AVG
      TotalDaysInScreening,
      @Aggregation.default: #AVG
      TotalDaysInTesting,
      Priority,
      @Aggregation.default: #AVG
      TimesDueDateChanges,
      @Aggregation.default: #AVG
      DaysInCurrentSubStatus,
      @Aggregation.default: #AVG
      CoordinationTime,
      @Aggregation.default: #AVG
      SolutionDeliveryTime,
      @Aggregation.default: #AVG
      ProposedDevEffort

}
