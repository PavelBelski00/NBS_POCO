@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Digital Factory Operations'
define root view entity zpoco_i_df_operations
  as select from zpoco_c_df_op_a
{
  key task_id             as TaskId,
      so_id               as SalesOrderId,
      service_type        as ServiceType,
      ticket_owner        as TicketOwner,
      task_cr_date        as TaskCreationDate,
      task_due_date       as TaskDueDate,
      last_change_date    as LastChangeDate,
      task_descr          as TaskDescription,
      created_by          as CreatedBy,
      vendorquotetime     as Vendorquotetime,
      vendorquotetime_uom as VendorquotetimeUom

}
