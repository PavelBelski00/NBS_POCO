CLASS zcl_poco_gen_data_alert DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_poco_gen_data_alert IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
        DATA: lt_get_data TYPE STANDARD TABLE OF zpoco_c_alert_a.

    lt_get_data = VALUE #(
    ( alert_id = 'AL01' alert_message = 'APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' )
    ( alert_id = 'AL02' alert_message = 'Manufacturing run for Novartis Batch NT66547 is terminated, US33, CA' )
    ( alert_id = 'AL03' alert_message = 'Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' )
    ( alert_id = 'AL04' alert_message = 'Novartis Batch NT34243 is flagged as OOS' )
    ( alert_id = 'AL05' alert_message = 'POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' )
    ( alert_id = 'AL06' alert_message = 'Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' )
    ( alert_id = 'AL07' alert_message = 'Request for subsequent shipment FP99231 has been received for Novartis Batch NT74382' )
    ( alert_id = 'AL08' alert_message = 'Shipping of OOS order with Novartis Batch NTJSKL2 is requested' )
    ( alert_id = 'AL09' alert_message = 'Treatment for Novartis Batch ID NT43278 is cancelled')
    ( alert_id = 'AL10' alert_message = 'Treatment for Novartis Batch ID NT43278 is cancelled, US33, US' )
    ).

    DELETE FROM zpoco_c_alert_a.
    INSERT zpoco_c_alert_a FROM TABLE @lt_get_data.
  ENDMETHOD.

ENDCLASS.
