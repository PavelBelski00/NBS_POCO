@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'DF'
@Metadata.allowExtensions: true
define root view entity zpoco_c_df_operations
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
      @Aggregation.default: #SUM
      Vendorquotetime,
      VendorquotetimeUom

}
