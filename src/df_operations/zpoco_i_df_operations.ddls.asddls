@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Digital Factory Operations'
define root view entity zpoco_i_df_operations
  as select from zpoco_c_df_op_a
{
  key task_id                 as TaskId,
      so_id                   as SalesOrderId,
      service_type            as ServiceType,
      ticket_owner            as TicketOwner,
      task_cr_date            as TaskCreationDate,
      task_due_date           as TaskDueDate,
      last_change_date        as LastChangeDate,
      task_descr              as TaskDescription,
      created_by              as CreatedBy,
      vendorquotetime         as Vendorquotetime,
      vendorquotetime_uom     as VendorquotetimeUom,
      status_text             as StatusText,
      so_mult_category_1      as SoMultCategory1,
      sap_ref_num             as SapRefNum,
      support_team            as SupportTeam,
      system_id               as SystemId,
      sub_status_text         as SubStatusText,
      support_team_id         as SupportTeamId,
      reported_by             as ReportedBy,
      so_status_text          as SoStatusText,
      so_rel_classification   as SoReleaseClassification,
      product_id              as ProductId,
      so_support_team         as SoSupportTeam,
      so_mult_category_2      as SoMultCategory2,
      total_days              as TotalDays,
      days_in_curr_status     as DaysInCurrentStatus,
      days_in_open_status     as DaysInOpenStatus,
      days_in_progress        as DaysInProgress,
      total_days_in_clarif    as TotalDaysInClarification,
      times_in_clarif         as TimesInClarification,
      days_in_effort_estim    as DaysInEffortEstimation,
      total_days_in_dev       as TotalDaysInDevevelopment,
      times_in_dev            as TimesInDevelopment,
      days_in_review          as DaysInReview,
      total_days_in_screen    as TotalDaysInScreening,
      total_days_in_test      as TotalDaysInTesting,
      priority                as Priority,
      times_due_date_changes  as TimesDueDateChanges,
      days_in_curr_sub_status as DaysInCurrentSubStatus,
      coordination_time       as CoordinationTime,
      solution_delivery_time  as SolutionDeliveryTime,
      proposed_dev_effort     as ProposedDevEffort

}
