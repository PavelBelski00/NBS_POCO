CLASS zcl_poco_generate_data_df_oper DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS:
      fill_df_operations.

ENDCLASS.



CLASS zcl_poco_generate_data_df_oper IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    me->fill_df_operations(  ).

  ENDMETHOD.
  METHOD fill_df_operations.

    DATA: lt_data TYPE TABLE OF zpoco_c_df_op_a.
    DELETE FROM zpoco_c_df_op_a.

    lt_data  = VALUE #(  ( client = '100'
            task_id = '3300126969'
            so_id = '3100426233'
            service_type = 'Effort Estimate'
            ticket_owner = ''
            task_cr_date = '20210622'
            task_due_date = '20210628'
            last_change_date = '20210622'
            task_descr = 'Enhancement (Quote)'
            created_by = 'GUNUKDE1'
*            created_at = '20212206'
            vendorquotetime = '0.00'
            vendorquotetime_uom = 'D'
        )
        (
            task_id = '3300126926'
            so_id = '3100425701'
            service_type = 'Effort Estimate'
            ticket_owner = 'ASHFASY2'
            task_cr_date = '20210622'
            task_due_date = '20210628'
            last_change_date = '20210622'
            task_descr = 'Creation Z0QCI_DATA_TO_MII_PV_CREATION'
            created_by = 'CHAUDNI7'
*            created_at = '20212206'
            vendorquotetime = '0.00'
            vendorquotetime_uom = 'D'
        )
        (
            task_id = '3300126934'
            so_id = '3100425244'
            service_type = 'Effort Estimate'
            ticket_owner = 'DHARMOM1'
            task_cr_date = '20210622'
            task_due_date = '20210628'
            last_change_date = '20210622'
            task_descr = 'Skip Testing Reporting on CoA'
            created_by = 'ANDUGRA1'
*            created_at = '20212206'
            vendorquotetime = '0.00'
            vendorquotetime_uom = 'D'
        )
        (
            task_id = '3300126993'
            so_id = '3100420281'
            service_type = 'Effort Estimate'
            ticket_owner = 'DONGASU2'
            task_cr_date = '20210622'
            task_due_date = '20210628'
            last_change_date = '20210623'
            task_descr = 'new logic for CoA creation'
            created_by = 'INAMDPR1'
*            created_at = '20212206'
            vendorquotetime = '0.00'
            vendorquotetime_uom = 'D'
        )
        (
            task_id = '3300126935'
            so_id = '3100425469'
            service_type = 'Development'
            ticket_owner = 'NEHABA1'
            task_cr_date = '20210622'
            task_due_date = '20210705'
            last_change_date = '20210622'
            task_descr = 'FUP -Auto stock posting to Blocked stock'
            created_by = 'PARDENI1'
*            created_at = '20212206'
            vendorquotetime = '0.80'
            vendorquotetime_uom = 'D'
        )
        (
            task_id = '3300126965'
            so_id = '3100399749'
            service_type = 'Development'
            ticket_owner = 'NEHABA1'
            task_cr_date = '20210622'
            task_due_date = '20210705'
            last_change_date = '20210622'
            task_descr = 'Batch numbering'
            created_by = 'ANDUGRA1'
*            created_at = '20212206'
            vendorquotetime = '2.27'
            vendorquotetime_uom = 'D'
        )
).

         INSERT zpoco_c_df_op_a FROM TABLE @lt_data.

  ENDMETHOD.

ENDCLASS.


