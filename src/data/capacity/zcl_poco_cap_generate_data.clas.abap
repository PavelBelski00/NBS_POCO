CLASS zcl_poco_cap_generate_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_poco_cap_generate_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lt_capacity  TYPE TABLE OF zpoco_d_capact_a.

*    lt_capacity = VALUE #(
*    ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA33E53E6C99D65' mfg_plant_id = 'CH12' mfg_start_date = '20210301'  cons_slots = 'X' priority = 'N'
*      prot_subject_id = '' ttype_id = 'Commercial' country_id = 'IT' nvs_id = 'NT58348' country_alloc = ''
*      CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222130500.0912540 '  )
*
*    ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA33E53E6C99D66' mfg_plant_id = 'CH12' mfg_start_date = '20210304'  cons_slots = '' priority = 'Clin'
*      prot_subject_id = '' ttype_id = 'Clinical' country_id = 'IT' nvs_id = 'NT58348' country_alloc = ''
*      CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222130500.0912540 '  )
*
*    ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA33E53E6C99D67' mfg_plant_id = 'CH12' mfg_start_date = '20210304'  cons_slots = '' priority = 'H'
*      prot_subject_id = '' ttype_id = 'Commercial' country_id = 'IT' nvs_id = 'NT58348' country_alloc = ''
*      CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222130500.0912540 '  )
*
*    ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA33E53E6C99D68' mfg_plant_id = 'CH12' mfg_start_date = '20210304'  cons_slots = '' priority = 'N'
*      prot_subject_id = '' ttype_id = 'Commercial' country_id = 'IT' nvs_id = 'NT58348' country_alloc = ''
*      CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222130500.0912540 '  )
* ).
*


*   Delete the possible entries in the database table - in case it was already filled
    DELETE FROM zpoco_d_capact_a.
*   insert the new table entries
*    INSERT zpoco_d_capact_a FROM TABLE @lt_capacity.

*   check the result
    SELECT * FROM zpoco_d_capact_a INTO TABLE @lt_capacity.
    out->write( sy-dbcnt ).
    out->write( 'capacity data inserted successfully!').
  ENDMETHOD.
ENDCLASS.
