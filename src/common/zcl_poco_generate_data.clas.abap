CLASS zcl_poco_generate_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.

  PRIVATE SECTION.
    METHODS:
      fill_countries,
      fill_plants,
      fill_sites,
      fill_stsl1,
      fill_stsl2,
      fill_therapy_type,

      fill_capacity,
      fill_label,
      fill_order,
      fill_alertwi,
      fill_alert,
      fill_oos,
      fill_calendar.

ENDCLASS.



CLASS ZCL_POCO_GENERATE_DATA IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


    me->fill_countries( ).
    me->fill_plants( ).
    me->fill_sites(  ).
    me->fill_stsl1(  ).
    me->fill_stsl2(  ).
    me->fill_therapy_type(  ).
    me->fill_oos( ).

    me->fill_capacity(  ).
    me->fill_order(  ).
    me->fill_label( ).
    me->fill_alert( ).
    me->fill_alertwi( ).
    me->fill_calendar(  ).

  ENDMETHOD.


  METHOD fill_label.
    DATA: lt_create  TYPE TABLE OF zpoco_d_label_a,
          ev_id      TYPE zpoco_d_label_a-label_uuid,
          time_stamp TYPE timestamp.

    DELETE FROM zpoco_d_label_a.

    GET TIME STAMP FIELD time_stamp.

    lt_create  = VALUE #(
    ( therapy         = 'CCTL019G2201J'
      mfg_plant_id    = 'PL1'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57868'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'CCTL019G2201J'
      mfg_plant_id    = 'PL1'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57870'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL US'
      mfg_plant_id    = 'PL1'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57870'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL US'
      mfg_plant_id    = 'PL1'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57872'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL US'
      mfg_plant_id    = 'PL1'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57873'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL US'
      mfg_plant_id    = 'PL1'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57875'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL ISR'
      mfg_plant_id    = 'PL1'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57878'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL EU'
      mfg_plant_id    = 'PL1'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57880'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL EU'
      mfg_plant_id    = 'PL1'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57885'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL US'
      mfg_plant_id    = 'PL1'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57888'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'CYTB323A12101'
      mfg_plant_id    = 'PL2'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57865'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'CYTB323A12101'
      mfg_plant_id    = 'PL2'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57866'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'CYTB323A12101'
      mfg_plant_id    = 'PL2'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57867'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL US'
      mfg_plant_id    = 'PL2'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57876'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL US'
      mfg_plant_id    = 'PL2'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57877'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL EU'
      mfg_plant_id    = 'PL2'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57890'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL EU'
      mfg_plant_id    = 'PL2'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57891'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL EU'
      mfg_plant_id    = 'PL2'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57894'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'CCTL019G2201J'
      mfg_plant_id    = 'PL3'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57869'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL US'
      mfg_plant_id    = 'PL3'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57874'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL EU'
      mfg_plant_id    = 'PL3'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57882'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL EU'
      mfg_plant_id    = 'PL3'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57889'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL EU'
      mfg_plant_id    = 'PL3'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57892'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL US'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57853'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL US'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57854'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL US'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57855'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL US'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57856'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL US'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57857'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL US'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57858'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL US'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57859'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL US'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57871'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL ISR'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57879'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL ISR'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57881'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL EU'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57883'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL EU'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57884'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL EU'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57886'
      printed_labels  = '3'
      used_labels     = '1'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - Pediatric ALL EU'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57887'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL EU'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57895'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'KYMRIAH - DLBCL EU'
      mfg_plant_id    = 'PL4'
      ttype_id        = 'Commercial'
      nvs_id          = 'NT57896'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'CYTB323A12101'
      mfg_plant_id    = 'PL5'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57860'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'CYTB323A12101'
      mfg_plant_id    = 'PL5'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57861'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'CYTB323A12101'
      mfg_plant_id    = 'PL5'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57862'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'CYTB323A12101'
      mfg_plant_id    = 'PL5'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57863'
      printed_labels  = '3'
      used_labels     = '2'
      reconcile       = 'X'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

    ( therapy         = 'CYTB323A12101'
      mfg_plant_id    = 'PL5'
      ttype_id        = 'Clinical'
      nvs_id          = 'NT57864'
      printed_labels  = '3'
      used_labels     = '3'
      reconcile       = '-'
      created_by      = sy-uname
      created_at      = time_stamp
      last_changed_by = sy-uname
      last_changed_at = time_stamp )

     ).

    LOOP AT lt_create ASSIGNING FIELD-SYMBOL(<ls_create>).
      TRY.
          CALL METHOD cl_system_uuid=>if_system_uuid_static~create_uuid_x16
            RECEIVING
              uuid = ev_id.
        CATCH cx_uuid_error .
      ENDTRY.
      <ls_create>-label_uuid = ev_id.
      INSERT zpoco_d_label_a FROM @<ls_create>.
    ENDLOOP.

  ENDMETHOD.


  METHOD fill_countries.

    DATA: lt_country    TYPE TABLE OF zpoco_c_countr_a,
          lv_time_stamp TYPE timestamp.

    lt_country =
    VALUE #( ( client ='100' country_id ='AT' country_name ='Austria' created_by ='CB0000000723' created_at ='20210222072701.9385550 ' last_changed_by ='CB0000000723' last_changed_at ='20210223081713.4293500 '  )
     ( client ='100' country_id ='AU' country_name ='Australia' created_by ='CB0000000723' created_at ='20210222072817.0973310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222072817.0973310 '  )
     ( client ='100' country_id ='BE' country_name ='Belgium' created_by ='CB0000000723' created_at ='20210222072907.9057610 ' last_changed_by ='CB0000000723' last_changed_at ='20210222072907.9057610 '  )
     ( client ='100' country_id ='CZ' country_name ='Czech Republic' created_by ='CB0000000723' created_at ='20210222073000.1701160 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073000.1701160 '  )
     ( client ='100' country_id ='DE' country_name ='Germany' created_by ='CB0000000723' created_at ='20210222073044.3191960 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073044.3191960 '  )
     ( client ='100' country_id ='ES' country_name ='Spain' created_by ='CB0000000723' created_at ='20210222073146.9641330 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073146.9641330 '  )
     ( client ='100' country_id ='FR' country_name ='France' created_by ='CB0000000723' created_at ='20210222073221.2574330 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073221.2574330 '  )
     ( client ='100' country_id ='GR' country_name ='Greece' created_by ='CB0000000723' created_at ='20210222073257.8191680 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073257.8191680 '  )
     ( client ='100' country_id ='HU' country_name ='Hungary' created_by ='CB0000000723' created_at ='20210222073345.9158670 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073345.9158670 '  )
     ( client ='100' country_id ='IL' country_name ='Israel' created_by ='CB0000000723' created_at ='20210222073438.3429870 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073438.3429870 '  )
     ( client ='100' country_id ='IT' country_name ='Italy' created_by ='CB0000000723' created_at ='20210222073532.3312800 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073532.3312800 '  )
     ( client ='100' country_id ='NO' country_name ='Norway' created_by ='CB0000000723' created_at ='20210222073614.0437900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073614.0437900 '  )
     ( client ='100' country_id ='RO' country_name ='Romania' created_by ='CB0000000723' created_at ='20210222073647.4627020 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073647.4627020 '  )
     ( client ='100' country_id ='SE' country_name ='Sweden' created_by ='CB0000000723' created_at ='20210222073725.6496630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073725.6496630 '  )
     ( client ='100' country_id ='UK' country_name ='United Kingdom' created_by ='CB0000000723' created_at ='20210222073847.8180630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222073847.8180630 '  )
     ( client ='100' country_id ='US' country_name ='United States' created_by ='CB0000000723' created_at ='20210222074035.7046200 ' last_changed_by ='CB0000000723' last_changed_at ='20210222074035.7046200 '  )
     ( client ='100' country_id ='BY' country_name ='Belarus' created_by ='CB0000000723' created_at ='20210223081726.1871670 ' last_changed_by ='CB0000000723' last_changed_at ='20210223081726.1871670 '  )
     ( client ='100' country_id ='IN' country_name ='India' created_by ='CB0000000723' created_at ='20210223081736.4770870 ' last_changed_by ='CB0000000723' last_changed_at ='20210223081736.4770870 '  )
     ).

    DELETE FROM zpoco_c_countr_a.
    INSERT zpoco_c_countr_a FROM TABLE @lt_country.

  ENDMETHOD.


  METHOD fill_plants.

    DATA: lt_plant    TYPE TABLE OF zpoco_c_plant_a.

    lt_plant =
VALUE #( ( client ='100' plant_id ='PL1' plant_name ='CH12' created_by ='CB0000000723' created_at ='20210219131923.3721680 ' last_changed_by ='CB0000000723' last_changed_at ='20210219131923.3721680 '
    plant_image = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0eV4FI231N-5rdw0J6ILtrtQsXjjG_QST0Q&usqp=CAU')
 ( client ='100' plant_id ='PL2' plant_name ='FH00' created_by ='CB0000000723' created_at ='20210219131942.6703810 ' last_changed_by ='CB0000000723' last_changed_at ='20210219131942.6703810 '
    plant_image = 'https://img.yicaiglobal.com/cdn/news/novartis-starts-mass-production-of-heart-failure-drug-at-beijing-plant-for-local-market/top.jpg')
 ( client ='100' plant_id ='PL3' plant_name ='FR69' created_by ='CB0000000723' created_at ='20210219132042.2565060 ' last_changed_by ='CB0000000723' last_changed_at ='20210219132042.2565060 '
    plant_image = 'https://www.pmlive.com/__data/assets/image/0011/398837/Novartis_building_body.jpg')
 ( client ='100' plant_id ='PL4' plant_name ='US33' created_by ='CB0000000723' created_at ='20210219132051.0661700 ' last_changed_by ='CB0000000723' last_changed_at ='20210219132051.0661700 '
    plant_image = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1yd5aTNht-lfJiJEGl5MkxdCQ3Lj_iIcrRQ&usqp=CAU')
 ( client ='100' plant_id ='PL5' plant_name ='US34' created_by ='CB0000000723' created_at ='20210219132105.5348630 ' last_changed_by ='CB0000000723' last_changed_at ='20210219132105.5348630 '
    plant_image = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUuTypVx4RsAg99GGusKA5eI-hPRgpeI8-tg&usqp=CAU')
 ).

    DELETE FROM zpoco_c_plant_a.

    INSERT zpoco_c_plant_a FROM TABLE @lt_plant.

  ENDMETHOD.


  METHOD fill_sites.

    DATA: lt_sites TYPE TABLE OF zpoco_c_site_a.

    lt_sites =
VALUE #( ( client ='100' ord_site_id ='OS1' ord_site_name ='Bucharest Hospital' created_by ='CB0000000723' created_at ='20210219142905.1564690 ' last_changed_by ='CB0000000723' last_changed_at ='20210219142905.1564690 '  )
 ( client ='100' ord_site_id ='OS2' ord_site_name ='Oslo Medical Center' created_by ='CB0000000723' created_at ='20210219142916.7859880 ' last_changed_by ='CB0000000723' last_changed_at ='20210219142916.7859880 '  )
 ( client ='100' ord_site_id ='OS3' ord_site_name ='Praha Cancer' created_by ='CB0000000723' created_at ='20210219142936.6671740 ' last_changed_by ='CB0000000723' last_changed_at ='20210219142936.6671740 '  )
 ( client ='100' ord_site_id ='OS4' ord_site_name ='Stuttgart Hospital' created_by ='CB0000000723' created_at ='20210219142950.6976540 ' last_changed_by ='CB0000000723' last_changed_at ='20210219142950.6976540 '  )
 ( client ='100' ord_site_id ='OS5' ord_site_name ='Agia Sophia' created_by ='CB0000000723' created_at ='20210219143003.0091340 ' last_changed_by ='CB0000000723' last_changed_at ='20210219143003.0091340 '  )
 ( client ='100' ord_site_id ='OS6' ord_site_name ='Baylor' created_by ='CB0000000723' created_at ='20210219143014.9388290 ' last_changed_by ='CB0000000723' last_changed_at ='20210219143014.9388290 '  )
 ( client ='100' ord_site_id ='OS7' ord_site_name ='Bologna Cancer Center' created_by ='CB0000000723' created_at ='20210219143033.0655220 ' last_changed_by ='CB0000000723' last_changed_at ='20210219143033.0655220 '  )
 ( client ='100' ord_site_id ='OS8' ord_site_name ='Brussels Hospital' created_by ='CB0000000723' created_at ='20210219143052.2438260 ' last_changed_by ='CB0000000723' last_changed_at ='20210219143052.2438260 '  )
 ( client ='100' ord_site_id ='OS9' ord_site_name ='Budapest Univ. Cancer Hospital' created_by ='CB0000000723' created_at ='20210219143127.8869140 ' last_changed_by ='CB0000000723' last_changed_at ='20210219143127.8869140 '  )
 ( client ='100' ord_site_id ='OS10' ord_site_name ='Childrens Hospital of Philadelphia' created_by ='CB0000000723' created_at ='20210219143921.4608330 ' last_changed_by ='CB0000000723' last_changed_at ='20210219143921.4608330 '  )
 ( client ='100' ord_site_id ='OS11' ord_site_name ='Hamburg Hospital' created_by ='CB0000000723' created_at ='20210219143937.0458000 ' last_changed_by ='CB0000000723' last_changed_at ='20210219143937.0458000 '  )
 ( client ='100' ord_site_id ='OS12' ord_site_name ='Hospital Saint Louis' created_by ='CB0000000723' created_at ='20210219143950.3370020 ' last_changed_by ='CB0000000723' last_changed_at ='20210219143950.3370020 '  )
 ( client ='100' ord_site_id ='S13'  ord_site_name ='Kansas University' created_by ='CB0000000723' created_at ='20210219144003.0033660 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144003.0033660 '  )
 ( client ='100' ord_site_id ='OS14' ord_site_name ='London Imperial Hospital' created_by ='CB0000000723' created_at ='20210219144018.6071210 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144018.6071210 '  )
 ( client ='100' ord_site_id ='OS15' ord_site_name ='Madrid Cancer Center' created_by ='CB0000000723' created_at ='20210219144101.4734150 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144101.4734150 '  )
 ( client ='100' ord_site_id ='OS16' ord_site_name ='Marseille Cancer Hospital' created_by ='CB0000000723' created_at ='20210219144205.8733810 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144205.8733810 '  )
 ( client ='100' ord_site_id ='OS17' ord_site_name ='MD Anderson' created_by ='CB0000000723' created_at ='20210219144227.6181500 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144227.6181500 '  )
 ( client ='100' ord_site_id ='OS18' ord_site_name ='Milano Universitat' created_by ='CB0000000723' created_at ='20210219144251.7848830 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144251.7848830 '  )
 ( client ='100' ord_site_id ='OS19' ord_site_name ='Munchen Center' created_by ='CB0000000723' created_at ='20210219144307.7575150 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144307.7575150 '  )
 ( client ='100' ord_site_id ='OS20' ord_site_name ='Paris Hospital' created_by ='CB0000000723' created_at ='20210219144412.8100290 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144412.8100290 '  )
 ( client ='100' ord_site_id ='OS21' ord_site_name ='Sheba Medical Center' created_by ='CB0000000723' created_at ='20210219144505.2780460 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144505.2780460 '  )
 ( client ='100' ord_site_id ='OS22' ord_site_name ='Stanford' created_by ='CB0000000723' created_at ='20210219144533.9091300 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144538.8593450 '  )
 ( client ='100' ord_site_id ='OS23' ord_site_name ='Stockholm Hospital' created_by ='CB0000000723' created_at ='20210219144610.3886470 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144610.3886470 '  )
 ( client ='100' ord_site_id ='OS24' ord_site_name ='Univ. Hospital Frankfurt' created_by ='CB0000000723' created_at ='20210219144725.2778750 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144725.2778750 '  )
 ( client ='100' ord_site_id ='OS25' ord_site_name ='Wienna University Hospital' created_by ='CB0000000723' created_at ='20210219144857.0433240 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144857.0433240 '  )
 ).

    DELETE FROM zpoco_c_site_a.
    INSERT zpoco_c_site_a FROM TABLE @lt_sites.


  ENDMETHOD.


  METHOD fill_stsl1.

    DATA: lt_stsl1 TYPE TABLE OF zpoco_c_stsl1_a.

    lt_stsl1 =
VALUE #( ( client ='100' stsl1_id ='ST1' stsl1_name ='Cancelled' created_by ='CB0000000723' created_at ='20210219134930.8398120 ' last_changed_by ='CB0000000723' last_changed_at ='20210219134930.8398120 '  )
 ( client ='100' stsl1_id ='ST2' stsl1_name ='Manufacturing' created_by ='CB0000000723' created_at ='20210219134943.0177150 ' last_changed_by ='CB0000000723' last_changed_at ='20210219134943.0177150 '  )
 ( client ='100' stsl1_id ='ST3' stsl1_name ='Ordering & Collection' created_by ='CB0000000723' created_at ='20210219135004.4814060 ' last_changed_by ='CB0000000723' last_changed_at ='20210219135004.4814060 '  )
 ( client ='100' stsl1_id ='ST4' stsl1_name ='Shipment' created_by ='CB0000000723' created_at ='20210219135014.8641700 ' last_changed_by ='CB0000000723' last_changed_at ='20210219135014.8641700 '  )
 ).

    DELETE FROM zpoco_c_stsl1_a.
    INSERT zpoco_c_stsl1_a FROM TABLE @lt_stsl1.

  ENDMETHOD.


  METHOD fill_stsl2.

    DATA: lt_stsl2 TYPE TABLE OF zpoco_c_stsl2_a.

    lt_stsl2 =
VALUE #( ( client ='100' stsl2_id ='ST1' stsl2_name ='ADF Approved' created_by ='CB0000000723' created_at ='20210219143901.0587920 ' last_changed_by ='CB0000000723' last_changed_at ='20210219143901.0587920 '  )
 ( client ='100' stsl2_id ='ST2' stsl2_name ='APH Picked up' created_by ='CB0000000723' created_at ='20210219143945.7706500 ' last_changed_by ='CB0000000723' last_changed_at ='20210219143945.7706500 '  )
 ( client ='100' stsl2_id ='ST10' stsl2_name ='Plant Reserved' created_by ='CB0000000723' created_at ='20210219152448.3905010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222080431.6887650 '  )
 ( client ='100' stsl2_id ='ST4' stsl2_name ='Apheresis Dispositioned' created_by ='CB0000000723' created_at ='20210219144112.5684480 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144112.5684480 '  )
 ( client ='100' stsl2_id ='ST5' stsl2_name ='FP MFG Dispositioned' created_by ='CB0000000723' created_at ='20210219144158.3499730 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144158.3499730 '  )
 ( client ='100' stsl2_id ='ST6' stsl2_name ='FP Received at ship' created_by ='CB0000000723' created_at ='20210219144312.5590650 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144312.5590650 '  )
 ( client ='100' stsl2_id ='ST7' stsl2_name ='FP Shipped from MFG Plant' created_by ='CB0000000723' created_at ='20210219144401.2933060 ' last_changed_by ='CB0000000723' last_changed_at ='20210219144401.2933060 '  )
 ( client ='100' stsl2_id ='ST8' stsl2_name ='Manufacturing Ended' created_by ='CB0000000723' created_at ='20210219152322.4661540 ' last_changed_by ='CB0000000723' last_changed_at ='20210219152322.4661540 '  )
 ( client ='100' stsl2_id ='ST9' stsl2_name ='Manufacturing Started' created_by ='CB0000000723' created_at ='20210219152411.8035660 ' last_changed_by ='CB0000000723' last_changed_at ='20210219152411.8035660 '  )
 ( client ='100' stsl2_id ='ST3' stsl2_name ='Apheresis Received' created_by ='CB0000000723' created_at ='20210219144021.4907560 ' last_changed_by ='CB0000000723' last_changed_at ='20210222080522.3843200 '  )
 ( client ='100' stsl2_id ='ST11' stsl2_name ='PRF Submitted' created_by ='CB0000000723' created_at ='20210219152554.9388290 ' last_changed_by ='CB0000000723' last_changed_at ='20210219152554.9388290 '  )
 ).

    DELETE FROM zpoco_c_stsl2_a.
    INSERT zpoco_c_stsl2_a FROM TABLE @lt_stsl2.

  ENDMETHOD.


  METHOD fill_therapy_type.

    DATA: lt_ttype TYPE TABLE OF zpoco_c_ttype_a.

    lt_ttype =
VALUE #( ( client ='100' therapy_type_id ='Clinical' therapy_type_name ='Clinical' created_by ='CB0000000723' created_at ='20210219140611.2182460 ' last_changed_by ='CB0000000723' last_changed_at ='20210219140611.2182460 '  )
 ( client ='100' therapy_type_id ='Commercial' therapy_type_name ='Commercial' created_by ='CB0000000723' created_at ='20210219140627.8502050 ' last_changed_by ='CB0000000723' last_changed_at ='20210219140627.8502050 '  )
 ).

    DELETE FROM zpoco_c_ttype_a.
    INSERT zpoco_c_ttype_a FROM TABLE @lt_ttype.

  ENDMETHOD.


  METHOD fill_capacity.

    DATA: lt_capacity TYPE TABLE OF zpoco_d_capact_a.

    lt_capacity =
VALUE #( ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872541CAC7' mfg_plant_id ='PL1' mfg_start_date ='20210301' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='IT' nvs_id ='' country_alloc =''
created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872541EAC7' mfg_plant_id ='PL1' mfg_start_date ='20210304' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725420AC7' mfg_plant_id ='PL1' mfg_start_date ='20210304' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725422AC7' mfg_plant_id ='PL1' mfg_start_date ='20210304' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725424AC7' mfg_plant_id ='PL1' mfg_start_date ='20210305' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725426AC7' mfg_plant_id ='PL1' mfg_start_date ='20210306' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725428AC7' mfg_plant_id ='PL1' mfg_start_date ='20210306' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872542AAC7' mfg_plant_id ='PL1' mfg_start_date ='20210307' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872542CAC7' mfg_plant_id ='PL1' mfg_start_date ='20210308' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872542EAC7' mfg_plant_id ='PL1' mfg_start_date ='20210308' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725430AC7' mfg_plant_id ='PL1' mfg_start_date ='20210309' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725432AC7' mfg_plant_id ='PL1' mfg_start_date ='20210311' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725434AC7' mfg_plant_id ='PL1' mfg_start_date ='20210312' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725436AC7' mfg_plant_id ='PL1' mfg_start_date ='20210312' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725438AC7' mfg_plant_id ='PL1' mfg_start_date ='20210312' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872543AAC7' mfg_plant_id ='PL1' mfg_start_date ='20210312' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872543CAC7' mfg_plant_id ='PL1' mfg_start_date ='20210313' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872543EAC7' mfg_plant_id ='PL1' mfg_start_date ='20210313' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725440AC7' mfg_plant_id ='PL1' mfg_start_date ='20210314' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725442AC7' mfg_plant_id ='PL1' mfg_start_date ='20210314' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725444AC7' mfg_plant_id ='PL1' mfg_start_date ='20210314' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725446AC7' mfg_plant_id ='PL1' mfg_start_date ='20210314' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725448AC7' mfg_plant_id ='PL1' mfg_start_date ='20210315' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872544AAC7' mfg_plant_id ='PL1' mfg_start_date ='20210315' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872544CAC7' mfg_plant_id ='PL1' mfg_start_date ='20210316' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872544EAC7' mfg_plant_id ='PL1' mfg_start_date ='20210317' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725450AC7' mfg_plant_id ='PL1' mfg_start_date ='20210317' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725452AC7' mfg_plant_id ='PL1' mfg_start_date ='20210317' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725454AC7' mfg_plant_id ='PL1' mfg_start_date ='20210317' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725456AC7' mfg_plant_id ='PL1' mfg_start_date ='20210318' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725458AC7' mfg_plant_id ='PL1' mfg_start_date ='20210319' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872545AAC7' mfg_plant_id ='PL1' mfg_start_date ='20210320' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872545CAC7' mfg_plant_id ='PL1' mfg_start_date ='20210323' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872545EAC7' mfg_plant_id ='PL1' mfg_start_date ='20210325' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725460AC7' mfg_plant_id ='PL1' mfg_start_date ='20210325' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725462AC7' mfg_plant_id ='PL1' mfg_start_date ='20210326' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725464AC7' mfg_plant_id ='PL1' mfg_start_date ='20210326' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725466AC7' mfg_plant_id ='PL1' mfg_start_date ='20210326' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725468AC7' mfg_plant_id ='PL1' mfg_start_date ='20210327' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872546AAC7' mfg_plant_id ='PL1' mfg_start_date ='20210328' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872546CAC7' mfg_plant_id ='PL1' mfg_start_date ='20210328' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872546EAC7' mfg_plant_id ='PL1' mfg_start_date ='20210328' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725470AC7' mfg_plant_id ='PL1' mfg_start_date ='20210329' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725472AC7' mfg_plant_id ='PL1' mfg_start_date ='20210330' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725474AC7' mfg_plant_id ='PL1' mfg_start_date ='20210330' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725476AC7' mfg_plant_id ='PL1' mfg_start_date ='20210331' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725478AC7' mfg_plant_id ='PL1' mfg_start_date ='20210331' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872547AAC7' mfg_plant_id ='PL2' mfg_start_date ='20210301' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872547CAC7' mfg_plant_id ='PL2' mfg_start_date ='20210301' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872547EAC7' mfg_plant_id ='PL2' mfg_start_date ='20210302' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725480AC7' mfg_plant_id ='PL2' mfg_start_date ='20210304' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725482AC7' mfg_plant_id ='PL2' mfg_start_date ='20210304' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725484AC7' mfg_plant_id ='PL2' mfg_start_date ='20210304' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725486AC7' mfg_plant_id ='PL2' mfg_start_date ='20210305' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725488AC7' mfg_plant_id ='PL2' mfg_start_date ='20210305' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872548AAC7' mfg_plant_id ='PL2' mfg_start_date ='20210306' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872548CAC7' mfg_plant_id ='PL2' mfg_start_date ='20210306' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872548EAC7' mfg_plant_id ='PL2' mfg_start_date ='20210307' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725490AC7' mfg_plant_id ='PL2' mfg_start_date ='20210310' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725492AC7' mfg_plant_id ='PL2' mfg_start_date ='20210310' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725494AC7' mfg_plant_id ='PL2' mfg_start_date ='20210310' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725496AC7' mfg_plant_id ='PL2' mfg_start_date ='20210311' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725498AC7' mfg_plant_id ='PL2' mfg_start_date ='20210311' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872549AAC7' mfg_plant_id ='PL2' mfg_start_date ='20210311' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872549CAC7' mfg_plant_id ='PL2' mfg_start_date ='20210312' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872549EAC7' mfg_plant_id ='PL2' mfg_start_date ='20210312' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254A0AC7' mfg_plant_id ='PL2' mfg_start_date ='20210313' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254A2AC7' mfg_plant_id ='PL2' mfg_start_date ='20210314' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254A4AC7' mfg_plant_id ='PL2' mfg_start_date ='20210314' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254A6AC7' mfg_plant_id ='PL2' mfg_start_date ='20210314' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254A8AC7' mfg_plant_id ='PL2' mfg_start_date ='20210315' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254AAAC7' mfg_plant_id ='PL2' mfg_start_date ='20210417' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254ACAC7' mfg_plant_id ='PL2' mfg_start_date ='20210417' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254AEAC7' mfg_plant_id ='PL2' mfg_start_date ='20210417' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254B0AC7' mfg_plant_id ='PL2' mfg_start_date ='20210317' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254B2AC7' mfg_plant_id ='PL2' mfg_start_date ='20210317' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254B4AC7' mfg_plant_id ='PL2' mfg_start_date ='20210418' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254B6AC7' mfg_plant_id ='PL2' mfg_start_date ='20210419' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254B8AC7' mfg_plant_id ='PL2' mfg_start_date ='20210419' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254BAAC7' mfg_plant_id ='PL2' mfg_start_date ='20210419' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254BCAC7' mfg_plant_id ='PL2' mfg_start_date ='20210420' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254BEAC7' mfg_plant_id ='PL2' mfg_start_date ='20210420' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254C0AC7' mfg_plant_id ='PL2' mfg_start_date ='20210320' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254C2AC7' mfg_plant_id ='PL2' mfg_start_date ='20210321' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254C4AC7' mfg_plant_id ='PL2' mfg_start_date ='20210322' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254C6AC7' mfg_plant_id ='PL2' mfg_start_date ='20210322' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254C8AC7' mfg_plant_id ='PL2' mfg_start_date ='20210323' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254CAAC7' mfg_plant_id ='PL2' mfg_start_date ='20210323' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254CCAC7' mfg_plant_id ='PL2' mfg_start_date ='20210323' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254CEAC7' mfg_plant_id ='PL2' mfg_start_date ='20210323' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254D0AC7' mfg_plant_id ='PL2' mfg_start_date ='20210324' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254D2AC7' mfg_plant_id ='PL2' mfg_start_date ='20210324' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254D4AC7' mfg_plant_id ='PL2' mfg_start_date ='20210325' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254D6AC7' mfg_plant_id ='PL2' mfg_start_date ='20210325' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254D8AC7' mfg_plant_id ='PL2' mfg_start_date ='20210326' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254DAAC7' mfg_plant_id ='PL2' mfg_start_date ='20210327' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254DCAC7' mfg_plant_id ='PL2' mfg_start_date ='20210328' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254DEAC7' mfg_plant_id ='PL2' mfg_start_date ='20210329' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254E0AC7' mfg_plant_id ='PL2' mfg_start_date ='20210329' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254E2AC7' mfg_plant_id ='PL2' mfg_start_date ='20210331' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254E4AC7' mfg_plant_id ='PL2' mfg_start_date ='20210331' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254E6AC7' mfg_plant_id ='PL3' mfg_start_date ='20210401' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254E8AC7' mfg_plant_id ='PL3' mfg_start_date ='20210401' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254EAAC7' mfg_plant_id ='PL3' mfg_start_date ='20210402' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='IT' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254ECAC7' mfg_plant_id ='PL3' mfg_start_date ='20210402' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254EEAC7' mfg_plant_id ='PL3' mfg_start_date ='20210402' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254F0AC7' mfg_plant_id ='PL3' mfg_start_date ='20210403' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254F2AC7' mfg_plant_id ='PL3' mfg_start_date ='20210403' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254F4AC7' mfg_plant_id ='PL3' mfg_start_date ='20210403' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='IT' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254F6AC7' mfg_plant_id ='PL3' mfg_start_date ='20210404' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254F8AC7' mfg_plant_id ='PL3' mfg_start_date ='20210404' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254FAAC7' mfg_plant_id ='PL3' mfg_start_date ='20210404' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254FCAC7' mfg_plant_id ='PL3' mfg_start_date ='20210404' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687254FEAC7' mfg_plant_id ='PL3' mfg_start_date ='20210405' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725500AC7' mfg_plant_id ='PL3' mfg_start_date ='20210406' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725502AC7' mfg_plant_id ='PL3' mfg_start_date ='20210407' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725504AC7' mfg_plant_id ='PL3' mfg_start_date ='20210407' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725506AC7' mfg_plant_id ='PL3' mfg_start_date ='20210408' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725508AC7' mfg_plant_id ='PL3' mfg_start_date ='20210408' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872550AAC7' mfg_plant_id ='PL3' mfg_start_date ='20210409' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872550CAC7' mfg_plant_id ='PL3' mfg_start_date ='20210409' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872550EAC7' mfg_plant_id ='PL3' mfg_start_date ='20210410' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725510AC7' mfg_plant_id ='PL3' mfg_start_date ='20210414' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725512AC7' mfg_plant_id ='PL3' mfg_start_date ='20210414' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725514AC7' mfg_plant_id ='PL3' mfg_start_date ='20210415' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725516AC7' mfg_plant_id ='PL3' mfg_start_date ='20210415' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725518AC7' mfg_plant_id ='PL3' mfg_start_date ='20210416' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872551AAC7' mfg_plant_id ='PL3' mfg_start_date ='20210416' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872551CAC7' mfg_plant_id ='PL3' mfg_start_date ='20210317' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872551EAC7' mfg_plant_id ='PL3' mfg_start_date ='20210317' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725520AC7' mfg_plant_id ='PL3' mfg_start_date ='20210318' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725522AC7' mfg_plant_id ='PL3' mfg_start_date ='20210318' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725524AC7' mfg_plant_id ='PL3' mfg_start_date ='20210319' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725526AC7' mfg_plant_id ='PL3' mfg_start_date ='20210319' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725528AC7' mfg_plant_id ='PL3' mfg_start_date ='20210319' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872552AAC7' mfg_plant_id ='PL3' mfg_start_date ='20210319' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872552CAC7' mfg_plant_id ='PL3' mfg_start_date ='20210320' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872552EAC7' mfg_plant_id ='PL3' mfg_start_date ='20210321' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725530AC7' mfg_plant_id ='PL3' mfg_start_date ='20210321' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725532AC7' mfg_plant_id ='PL3' mfg_start_date ='20210323' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725534AC7' mfg_plant_id ='PL3' mfg_start_date ='20210324' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725536AC7' mfg_plant_id ='PL3' mfg_start_date ='20210324' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725538AC7' mfg_plant_id ='PL3' mfg_start_date ='20210325' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872553AAC7' mfg_plant_id ='PL3' mfg_start_date ='20210325' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872553CAC7' mfg_plant_id ='PL3' mfg_start_date ='20210325' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872553EAC7' mfg_plant_id ='PL3' mfg_start_date ='20210326' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725540AC7' mfg_plant_id ='PL3' mfg_start_date ='20210327' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725542AC7' mfg_plant_id ='PL3' mfg_start_date ='20210327' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725544AC7' mfg_plant_id ='PL3' mfg_start_date ='20210327' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725546AC7' mfg_plant_id ='PL3' mfg_start_date ='20210328' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725548AC7' mfg_plant_id ='PL3' mfg_start_date ='20210329' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872554AAC7' mfg_plant_id ='PL3' mfg_start_date ='20210329' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872554CAC7' mfg_plant_id ='PL4' mfg_start_date ='20210301' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872554EAC7' mfg_plant_id ='PL4' mfg_start_date ='20210301' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725550AC7' mfg_plant_id ='PL4' mfg_start_date ='20210301' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725552AC7' mfg_plant_id ='PL4' mfg_start_date ='20210301' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725554AC7' mfg_plant_id ='PL4' mfg_start_date ='20210302' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='NO' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725556AC7' mfg_plant_id ='PL4' mfg_start_date ='20210302' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='NO' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725558AC7' mfg_plant_id ='PL4' mfg_start_date ='20210303' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='NO' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872555AAC7' mfg_plant_id ='PL4' mfg_start_date ='20210303' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872555CAC7' mfg_plant_id ='PL4' mfg_start_date ='20210303' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872555EAC7' mfg_plant_id ='PL4' mfg_start_date ='20210304' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725560AC7' mfg_plant_id ='PL4' mfg_start_date ='20210305' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725562AC7' mfg_plant_id ='PL4' mfg_start_date ='20210305' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725564AC7' mfg_plant_id ='PL4' mfg_start_date ='20210306' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725566AC7' mfg_plant_id ='PL4' mfg_start_date ='20210306' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725568AC7' mfg_plant_id ='PL4' mfg_start_date ='20210306' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872556AAC7' mfg_plant_id ='PL4' mfg_start_date ='20210306' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872556CAC7' mfg_plant_id ='PL4' mfg_start_date ='20210306' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872556EAC7' mfg_plant_id ='PL4' mfg_start_date ='20210307' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725570AC7' mfg_plant_id ='PL4' mfg_start_date ='20210307' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725572AC7' mfg_plant_id ='PL4' mfg_start_date ='20210307' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725574AC7' mfg_plant_id ='PL4' mfg_start_date ='20210307' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725576AC7' mfg_plant_id ='PL4' mfg_start_date ='20210307' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725578AC7' mfg_plant_id ='PL4' mfg_start_date ='20210307' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872557AAC7' mfg_plant_id ='PL4' mfg_start_date ='20210307' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872557CAC7' mfg_plant_id ='PL4' mfg_start_date ='20210308' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872557EAC7' mfg_plant_id ='PL4' mfg_start_date ='20210308' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725580AC7' mfg_plant_id ='PL4' mfg_start_date ='20210308' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='NO' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725582AC7' mfg_plant_id ='PL4' mfg_start_date ='20210308' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='NO' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725584AC7' mfg_plant_id ='PL4' mfg_start_date ='20210309' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725586AC7' mfg_plant_id ='PL4' mfg_start_date ='20210309' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725588AC7' mfg_plant_id ='PL4' mfg_start_date ='20210309' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872558AAC7' mfg_plant_id ='PL4' mfg_start_date ='20210309' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872558CAC7' mfg_plant_id ='PL4' mfg_start_date ='20210310' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872558EAC7' mfg_plant_id ='PL4' mfg_start_date ='20210310' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725590AC7' mfg_plant_id ='PL4' mfg_start_date ='20210410' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725592AC7' mfg_plant_id ='PL4' mfg_start_date ='20210411' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725594AC7' mfg_plant_id ='PL4' mfg_start_date ='20210411' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725596AC7' mfg_plant_id ='PL4' mfg_start_date ='20210411' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E81668725598AC7' mfg_plant_id ='PL4' mfg_start_date ='20210412' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872559AAC7' mfg_plant_id ='PL4' mfg_start_date ='20210412' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872559CAC7' mfg_plant_id ='PL4' mfg_start_date ='20210413' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='NO' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E8166872559EAC7' mfg_plant_id ='PL4' mfg_start_date ='20210413' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255A0AC7' mfg_plant_id ='PL4' mfg_start_date ='20210413' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255A2AC7' mfg_plant_id ='PL4' mfg_start_date ='20210413' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255A4AC7' mfg_plant_id ='PL4' mfg_start_date ='20210413' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255A6AC7' mfg_plant_id ='PL4' mfg_start_date ='20210413' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255A8AC7' mfg_plant_id ='PL4' mfg_start_date ='20210413' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255AAAC7' mfg_plant_id ='PL4' mfg_start_date ='20210414' cons_slots ='Available' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255ACAC7' mfg_plant_id ='PL4' mfg_start_date ='20210414' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255AEAC7' mfg_plant_id ='PL4' mfg_start_date ='20210414' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255B0AC7' mfg_plant_id ='PL4' mfg_start_date ='20210415' cons_slots ='Available' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255B2AC7' mfg_plant_id ='PL4' mfg_start_date ='20210415' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255B4AC7' mfg_plant_id ='PL4' mfg_start_date ='20210315' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255B6AC7' mfg_plant_id ='PL4' mfg_start_date ='20210315' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255B8AC7' mfg_plant_id ='PL4' mfg_start_date ='20210316' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255BAAC7' mfg_plant_id ='PL4' mfg_start_date ='20210316' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255BCAC7' mfg_plant_id ='PL4' mfg_start_date ='20210317' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255BEAC7' mfg_plant_id ='PL4' mfg_start_date ='20210317' cons_slots ='Consumed' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255C0AC7' mfg_plant_id ='PL4' mfg_start_date ='20210318' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='US' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255C2AC7' mfg_plant_id ='PL4' mfg_start_date ='20210318' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255C4AC7' mfg_plant_id ='PL4' mfg_start_date ='20210318' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='BE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255C6AC7' mfg_plant_id ='PL4' mfg_start_date ='20210318' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255C8AC7' mfg_plant_id ='PL4' mfg_start_date ='20210318' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='BE' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255CAAC7' mfg_plant_id ='PL4' mfg_start_date ='20210318' cons_slots ='Consumed' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='FR' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255CCAC7' mfg_plant_id ='PL4' mfg_start_date ='20210318' cons_slots ='Available' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ( client ='100' capacity_uuid ='02E81366251E1EDB9E816687255CEAC7' mfg_plant_id ='PL4' mfg_start_date ='20210323' cons_slots ='Consumed' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210226081828.0000000 ' last_changed_by ='CB0000000723' last_changed_at ='20210226081828.0000000 '  )
 ).

*    DATA lt_capacity_02 TYPE TABLE OF zpoco_d_capact_a.
*
*    lt_capacity_02 = lt_capacity.
*
*
*    LOOP AT lt_capacity_02 ASSIGNING FIELD-SYMBOL(<ls_capacity>).
*      TRY.
*          CALL METHOD cl_system_uuid=>if_system_uuid_static~create_uuid_x16
*            RECEIVING
*              uuid = DATA(lv_id).
*        CATCH cx_uuid_error .
*      ENDTRY.
*      READ TABLE lt_capacity WITH KEY capacity_uuid = lv_id TRANSPORTING NO FIELDS.
*      IF sy-subrc <> 0.
*        <ls_capacity>-capacity_uuid = lv_id.
*        <ls_capacity>-mfg_start_date+4(2) = '02'.
*      ENDIF.
*    ENDLOOP.
*    APPEND LINES OF lt_capacity_02 TO lt_capacity.
*
*    DATA lt_capacity_03 TYPE TABLE OF zpoco_d_capact_a.
*
*    lt_capacity_03 = lt_capacity.
*
*
*    LOOP AT lt_capacity_03 ASSIGNING <ls_capacity>.
*      TRY.
*          CALL METHOD cl_system_uuid=>if_system_uuid_static~create_uuid_x16
*            RECEIVING
*              uuid = DATA(lv_id3).
*        CATCH cx_uuid_error .
*      ENDTRY.
*      READ TABLE lt_capacity WITH KEY capacity_uuid = lv_id3 TRANSPORTING NO FIELDS.
*      IF sy-subrc <> 0.
*        <ls_capacity>-capacity_uuid = lv_id3.
*        <ls_capacity>-mfg_start_date+4(2) = '01'.
*      ENDIF.
*    ENDLOOP.
*    APPEND LINES OF lt_capacity_03 TO lt_capacity.

    DELETE FROM zpoco_d_capact_a.
    INSERT zpoco_d_capact_a FROM TABLE @lt_capacity.

  ENDMETHOD.


  METHOD fill_order.
    DATA: lt_order TYPE TABLE OF zpoco_d_order_a.

    lt_order =
    VALUE #(
     ( client ='100' order_uuid ='' nvs_id ='NT57853' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210315' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57854' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210315' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
       material_quan = '100.00' material_quan_uom ='PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57855' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210315' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
      material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57856' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210315' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57857' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210316' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
     material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57858' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210316' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
     material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57859' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20210316' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
     material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57891' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20210125' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20'
     material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57892' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20210123' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS16'
     material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171258.6508880 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171258.6508880 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57893' therapy ='KYMRIAH - DLBCL EU' country_id ='NO' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20210122' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS2'
     material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171348.3249220 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171348.3249220 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57894' therapy ='KYMRIAH - DLBCL EU' country_id ='NO' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20210211' stsl1_id ='ST3' stsl2_id ='ST10' ord_site_id ='OS2'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171427.2762910 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171427.2762910 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57895' therapy ='KYMRIAH - DLBCL EU' country_id ='BE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210214' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS8'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171501.2250100 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171501.2250100 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57896' therapy ='KYMRIAH - DLBCL EU' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210210' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )

     ( client ='100' order_uuid ='' nvs_id ='NT57897' therapy ='CCTL019G2201J' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57898' therapy ='KYMRIAH - DLBCL EU' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57899' therapy ='CYTB323A12101' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57900' therapy ='CYTB323A12101' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57901' therapy ='CYTB323A12101' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57902' therapy ='CCTL019G2201J' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57903' therapy ='KYMRIAH - DLBCL EU' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57904' therapy ='CYTB323A12101' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57905' therapy ='CCTL019G2201J' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57907' therapy ='CYTB323A12101' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57908' therapy ='KYMRIAH - Pediatric ALL US' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57909' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='' nvs_id ='NT57910' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
     material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )

*     ( client ='100' order_uuid ='' nvs_id ='NTSKD12' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NTGDH23' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NTJDKS2' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NTJSKL2' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT74382' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT34243' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT43278' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT88843' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT66547' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NTKORD1' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT36138' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT58241' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT58241' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT58241' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT58241' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT58241' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT36064' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT57996' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT35718' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT35975' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
*     ( client ='100' order_uuid ='' nvs_id ='NT36138' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
*       material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr = 'USD'
*       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )

     ).

    DATA: lt_order_02 TYPE TABLE OF zpoco_d_order_a.
    lt_order_02 =
    VALUE #(
    ( nvs_id ='NT33100' therapy ='KYMRIAH - Pediatric ALL US' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33101' therapy ='KYMRIAH - Pediatric ALL US' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33102' therapy ='KYMRIAH - Pediatric ALL US' country_id ='FR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33103' therapy ='CYTB323A12101' country_id ='FR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33104' therapy ='KYMRIAH - DLBCL US' country_id ='FR' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33105' therapy ='CYTB323A12101' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33106' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='FR' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    (  nvs_id ='NT33107' therapy ='CCTL019G2201J' country_id ='FR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33108' therapy ='CYTB323A12101' country_id ='FR' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33109' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='DE' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33110' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33111' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='DE' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33112' therapy ='CYTB323A12101' country_id ='DE' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33113' therapy ='CYTB323A12101' country_id ='DE' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33114' therapy ='CCTL019G2201J' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33115' therapy ='CYTB323A12101' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33116' therapy ='KYMRIAH - Pediatric ALL US' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33117' therapy ='CYTB323A12101' country_id ='AU' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33118' therapy ='CYTB323A12101' country_id ='AU' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33119' therapy ='CYTB323A12101' country_id ='AU' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33120' therapy ='CYTB323A12101' country_id ='ES' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33121' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='ES' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE'
      amount = '900.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33122' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='ES' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE'
      amount = '900.00' amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33123' therapy ='CYTB323A12101' country_id ='CZ' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33124' therapy ='KYMRIAH - DLBCL US' country_id ='CZ' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33125' therapy ='KYMRIAH - DLBCL US' country_id ='CZ' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33126' therapy ='KYMRIAH - DLBCL US' country_id ='CZ' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33127' therapy ='CYTB323A12101' country_id ='CZ' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33128' therapy ='CYTB323A12101' country_id ='IL' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr =  'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33129' therapy ='CYTB323A12101' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33130' therapy ='CYTB323A12101' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33131' therapy ='KYMRIAH - DLBCL US' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33132' therapy ='CYTB323A12101' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33133' therapy ='CYTB323A12101' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33134' therapy ='KYMRIAH - DLBCL US' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33135' therapy ='CYTB323A12101' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33136' therapy ='CYTB323A12101' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33137' therapy ='CYTB323A12101' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33138' therapy ='KYMRIAH - DLBCL US' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
      amount_curr = 'USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
**********************************************************************

** January 2019
*
*     ( nvs_id ='NTJ7853' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
*       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( nvs_id ='NTJ7854' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190115' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
*       oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( nvs_id ='NTJ7855' therapy ='CYTB323A12106' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190115' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( nvs_id ='NTJ7856' therapy ='KYMRIAH - Pediatric ALL US' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20190115' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
*     ( nvs_id ='NTJ7857' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190116' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
*       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
*     ( nvs_id ='NTJ7858' therapy ='KYMRIAH - Pediatric ALL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190116' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
*       oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
*     ( nvs_id ='NTJ7859' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20190116' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
*     ( nvs_id ='NTJ7864' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20190105' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
*       oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )
*
*
** February 2019
*
*     ( nvs_id ='NTF7853' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20190217' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
*       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( nvs_id ='NTF7854' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190219' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
*       oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( nvs_id ='NTF7855' therapy ='KYMRIAH - Pediatric ALL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190215' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( nvs_id ='NTF7856' therapy ='KYMRIAH - Pediatric ALL US' country_id ='US' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20190215' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
*     ( nvs_id ='NTF7857' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190216' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
*       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
*     ( nvs_id ='NTF7858' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190220' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
*       oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
*     ( nvs_id ='NTF7859' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20190216' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
*     ( nvs_id ='NTF7864' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20190225' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
*       oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )
*
*
** March 2019
*
*     ( nvs_id ='NTM7853' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190317' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
*       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( nvs_id ='NTM7854' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190319' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
*       oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( nvs_id ='NTM7855' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190315' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( nvs_id ='NTM7856' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20190315' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
*     ( nvs_id ='NTM7857' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190316' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
*       oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
*     ( nvs_id ='NTM7858' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190320' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
*       oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
*     ( nvs_id ='NTM7859' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20190316' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
*     ( nvs_id ='NTM7864' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20190325' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
*       oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )
*
*
** April 2019
*
*     ( nvs_id ='NTA7810' therapy ='CCTL019G2201J' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190403' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS25'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222163128.3080710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222163128.3080710 '  )
*     ( nvs_id ='NTA7811' therapy ='KYMRIAH - Pediatric ALL US' country_id ='AT' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190406' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS25'
*       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164529.9611200 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164529.9611200 '  )
*     ( nvs_id ='NTA7812' therapy ='KYMRIAH - Pediatric ALL US' country_id ='ES' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190406' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS15'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164620.8244810 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164620.8244810 '  )
*     ( nvs_id ='NTA7813' therapy ='KYMRIAH - Pediatric ALL US' country_id ='ES' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190405' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS15'
*       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164703.0496320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164703.0496320 '  )
*     ( nvs_id ='NTA7814' therapy ='KYMRIAH - Pediatric ALL US' country_id ='CZ' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20190401' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='OS3'
*       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164746.7868270 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164746.7868270 '  )
*     ( nvs_id ='NTA7815' therapy ='KYMRIAH - Pediatric ALL US' country_id ='CZ' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190412' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS3'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222164823.7057140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164823.7057140 '  )
*     ( nvs_id ='NTA7816' therapy ='KYMRIAH - Pediatric ALL US' country_id ='HU' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20190412' stsl1_id ='ST3' stsl2_id ='ST11' ord_site_id ='OS9'
*       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222164901.7047570 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164901.7047570 '  )
*     ( nvs_id ='NTA7817' therapy ='CCTL019G2201J' country_id ='RO' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20190405' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
*       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164939.2093330 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164939.2093330 '  )
*     ( nvs_id ='NTA7818' therapy ='KYMRIAH - Pediatric ALL US' country_id ='RO' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190409' stsl1_id ='ST3' stsl2_id ='ST3' ord_site_id ='OS1'
*       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222165017.0352140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165017.0352140 '  )
*     ( nvs_id ='NTA7819' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200613' stsl1_id ='ST3' stsl2_id ='ST3' ord_site_id ='OS21'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222165059.2628540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165059.2628540 '  )
*     ( nvs_id ='NTA7820' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200605' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='OS21'
*       oos_id ='OOS6' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222165139.2421510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165139.2421510 '  )
*     ( nvs_id ='NTA7821' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200607' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )


* May 2019

*     ( nvs_id ='NTM7881' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190507' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
*     ( nvs_id ='NTM7882' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20190507' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
*     ( nvs_id ='NTM7883' therapy ='CCTL019G2201J' country_id ='IT' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190507' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
*     ( nvs_id ='NTM7884' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190504' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5'
*       oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
*     ( nvs_id ='NTM7885' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190507' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS5'
*       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )
*     ( nvs_id ='NTM7886' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190507' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1'
*       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
*     ( nvs_id ='NTM7887' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190506' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
*     ( nvs_id ='NTM7888' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190506' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14'
*       oos_id ='OOS6' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
*     ( nvs_id ='NTM7889' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20190507' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
*     ( nvs_id ='NTM7890' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20190507' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4'
*       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )
*     ( nvs_id ='NTM7891' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20190525' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20'
*       oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )


* June 2019
*
*    ( nvs_id ='NTJ7881' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190601' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
*    ( nvs_id ='NTJ7882' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20190607' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7'
*      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
*    ( nvs_id ='NTJ7883' therapy ='CCTL019G2201J' country_id ='IT' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190604' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18'
*      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
*    ( nvs_id ='NTJ7884' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190620' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5'
*      oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
*    ( nvs_id ='NTJ7885' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190621' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS5'
*      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )
*    ( nvs_id ='NTJ7886' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20190621' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1'
*      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
*    ( nvs_id ='NTJ7887' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20190622' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
*      oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
*    ( nvs_id ='NTJ7888' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190622' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14'
*      oos_id ='OOS6' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
*    ( nvs_id ='NTJ7889' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20190607' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19'
*      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
*    ( nvs_id ='NTJ7890' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20190607' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4'
*      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )
*    ( nvs_id ='NTJ7891' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20190619' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20'
*      oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )


* July 2019

*    ( nvs_id ='NTJ7892' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190701' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
*       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
*    ( nvs_id ='NTJ7893' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20190707' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7'
*      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
*    ( nvs_id ='NTJ7894' therapy ='CCTL019G2201J' country_id ='IT' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190704' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18'
*      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
*    ( nvs_id ='NTJ78895' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190720' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5'
*      oos_id ='OOS5' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
*    ( nvs_id ='NTJ7896' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190721' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS5'
*      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )
*    ( nvs_id ='NTJ7897' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190721' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1'
*      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
*    ( nvs_id ='NTJ7898' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190722' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
*      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
*    ( nvs_id ='NTJ7899' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190722' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14'
*      oos_id ='OOS6' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
*    ( nvs_id ='NTJ7900' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20190707' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19'
*      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
*    ( nvs_id ='NTJ7901' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20190707' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4'
*      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )
*    ( nvs_id ='NTJ7991' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20190719' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20'
*      oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )
*    ( nvs_id ='NTF7903' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190707' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
*      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*    ( nvs_id ='NTF7904' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190719' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
*      oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*    ( nvs_id ='NTF7905' therapy ='CYTB323A12106' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190715' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
*      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )


* August 2019

     ( nvs_id ='NTA7181' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190807' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00'
       amount_curr = 'USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
     ( nvs_id ='NTA7182' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190807' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00'
       amount_curr = 'USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
     ( nvs_id ='NTA7183' therapy ='CCTL019G2201J' country_id ='IT' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190807' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
     ( nvs_id ='NTA7184' therapy ='CYTB323A12101' country_id ='GR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190804' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS5' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
     ( nvs_id ='NTA7185' therapy ='CCTL019G2201J' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190807' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS5'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )
     ( nvs_id ='NTA7186' therapy ='CYTB323A12101' country_id ='RO' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20190807' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
     ( nvs_id ='NTA7187' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20190806' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00'
       amount_curr = 'USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
     ( nvs_id ='NTA7188' therapy ='CCTL019G2201J' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190806' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS6' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
     ( nvs_id ='NTA7189' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20190807' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
     ( nvs_id ='NTA7190' therapy ='CCTL019G2201J' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20190807' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )
     ( nvs_id ='NTA7191' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20190825' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr = 'USD'
       oos_id ='OOS7' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )


* September 2019

     ( nvs_id ='NTS3153' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190917' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00'
       amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTS3154' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20190919' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
       material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00'
       amount_curr = 'USD'
       oos_id ='OOS2' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTS3155' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20190915' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
       material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00'
       amount_curr = 'USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTS3156' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20190915' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
       material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00'
       amount_curr = 'USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
     ( nvs_id ='NTS3157' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20190916' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
       material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00'
       amount_curr ='USD'
       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
     ( nvs_id ='NTS3158' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20190920' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
       material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00'
       amount_curr = 'USD'
       oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
     ( nvs_id ='NTS3159' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20190916' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
       material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00'
       amount_curr = 'USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
     ( nvs_id ='NTS3164' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20190925' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
       material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00'
       amount_curr ='USD'
       oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )



* October 2019

     ( nvs_id ='NTO5153' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20191010' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
       amount_curr = 'USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTO5154' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20191011' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
       amount_curr = 'USD'
       oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTO5155' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20191012' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
       amount_curr = 'USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTO5156' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20191015' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
       amount_curr = 'USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
     ( nvs_id ='NTO5157' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20191016' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
       amount_curr = 'USD'
       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
     ( nvs_id ='NTO5158' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20191011' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
       amount_curr = 'USD'
       oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
     ( nvs_id ='NTO5159' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20191016' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
       amount_curr = 'USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
     ( nvs_id ='NTO5164' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20191001' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00'
       amount_curr = 'USD'
       oos_id ='OOS5' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )



* November 2019

     ( nvs_id ='NTN2153' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20191117' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr ='USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTN2154' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20191119' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr ='USD'
       oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTN2155' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20191115' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr ='USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTN2156' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20191115' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr ='USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
     ( nvs_id ='NTN2157' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20191116' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr ='USD'
       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
     ( nvs_id ='NTN2158' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20191120' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr ='USD'
       oos_id ='OOS7' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
     ( nvs_id ='NTN2159' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20191116' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr ='USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
     ( nvs_id ='NTN2164' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20191125' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
       material_quan = '100.00' material_quan_uom = 'PCE' amount = '500.00' amount_curr ='USD'
       oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )


* December 2019

     ( nvs_id ='NTD1203' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20191217' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTD1204' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20191219' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
       oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTD1205' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20191215' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NTD1206' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20191215' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
     ( nvs_id ='NTD1207' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20191216' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
     ( nvs_id ='NTD1208' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20191220' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
       oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
     ( nvs_id ='NTD1209' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20191216' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
     ( nvs_id ='NTD1210' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20191225' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
       material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
       oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )

**********************************************************************

* January 2020

    ( nvs_id ='NSTJ853' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTJ854' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200115' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS2' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTJ855' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200115' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTJ856' therapy ='KYMRIAH - Pediatric ALL US' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200115' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
    ( nvs_id ='NSTJ857' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200116' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
    ( nvs_id ='NSTJ858' therapy ='KYMRIAH - Pediatric ALL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200116' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
    ( nvs_id ='NSTJ859' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200116' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
    ( nvs_id ='NSTJ864' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200105' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )


* February 2020

    ( nvs_id ='NSTF7853' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20200217' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTF7854' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200219' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS2' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTF7855' therapy ='KYMRIAH - Pediatric ALL US' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200215' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTF7856' therapy ='KYMRIAH - Pediatric ALL US' country_id ='US' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20200215' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
    ( nvs_id ='NSTF7857' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200216' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
    ( nvs_id ='NSTF7858' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200220' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS7' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
    ( nvs_id ='NSTF7859' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200216' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
    ( nvs_id ='NSTF7864' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200225' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )


* March 2020

    ( nvs_id ='NSTM7853' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200317' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTM7854' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200319' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTM7855' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200315' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTM7856' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200315' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
    ( nvs_id ='NSTM7857' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200316' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
    ( nvs_id ='NSTM7858' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200320' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
    ( nvs_id ='NSTM7859' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200316' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
    ( nvs_id ='NSTM7864' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200325' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )


* April 2020

    ( nvs_id ='NSTA7810' therapy ='CYTB323A12101' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200403' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS25'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222163128.3080710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222163128.3080710 '  )
    ( nvs_id ='NSTA7811' therapy ='KYMRIAH - Pediatric ALL US' country_id ='AT' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200406' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS25'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164529.9611200 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164529.9611200 '  )
    ( nvs_id ='NSTA7812' therapy ='KYMRIAH - Pediatric ALL US' country_id ='ES' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200406' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS15'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164620.8244810 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164620.8244810 '  )
    ( nvs_id ='NSTA7813' therapy ='CCTL019G2201J' country_id ='ES' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200405' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS15'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164703.0496320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164703.0496320 '  )
    ( nvs_id ='NSTA7814' therapy ='CCTL019G2201J' country_id ='CZ' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200401' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='OS3'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164746.7868270 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164746.7868270 '  )
    ( nvs_id ='NSTA7815' therapy ='CYTB323A12101' country_id ='CZ' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200412' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS3'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222164823.7057140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164823.7057140 '  )
    ( nvs_id ='NSTA7816' therapy ='CYTB323A12101' country_id ='HU' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200412' stsl1_id ='ST3' stsl2_id ='ST11' ord_site_id ='OS9'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222164901.7047570 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164901.7047570 '  )
    ( nvs_id ='NSTA7817' therapy ='CCTL019G2201J' country_id ='RO' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200405' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164939.2093330 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164939.2093330 '  )
    ( nvs_id ='NSTA7818' therapy ='CCTL019G2201J' country_id ='RO' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200409' stsl1_id ='ST3' stsl2_id ='ST3' ord_site_id ='OS1'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222165017.0352140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165017.0352140 '  )
    ( nvs_id ='NSTA7819' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200613' stsl1_id ='ST3' stsl2_id ='ST3' ord_site_id ='OS21'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222165059.2628540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165059.2628540 '  )
    ( nvs_id ='NSTA7820' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200605' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='OS21'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='OOS6' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222165139.2421510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165139.2421510 '  )
    ( nvs_id ='NSTA7821' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200607' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
      material_quan = '170.00' material_quan_uom = 'PCE' amount = '850.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )


* May 2020

    ( nvs_id ='NSTM7881' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200507' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
    ( nvs_id ='NSTM7882' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200507' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
    ( nvs_id ='NSTM7883' therapy ='CCTL019G2201J' country_id ='IT' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200507' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
    ( nvs_id ='NSTM7884' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200504' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
    ( nvs_id ='NSTM7885' therapy ='Pediatric ALL US' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200507' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS5'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )
    ( nvs_id ='NSTM7886' therapy ='Pediatric ALL US' country_id ='RO' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200507' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
    ( nvs_id ='NSTM7887' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200506' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
    ( nvs_id ='NSTM7888' therapy ='Pediatric ALL US' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200506' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS6' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
    ( nvs_id ='NSTM7889' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200507' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
    ( nvs_id ='NSTM7890' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200507' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )
    ( nvs_id ='NSTM7891' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200525' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )
    ( nvs_id ='NT57864' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200505' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )
    ( nvs_id ='NT57860' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200513' stsl1_id ='ST3' stsl2_id ='ST11' ord_site_id ='S13'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162312.0491520 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061118.8777470 '  )
    ( nvs_id ='NT57861' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200505' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS17'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar = 'X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162412.4398340 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061126.2087560 '  )
    ( nvs_id ='NT57862' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200513' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS6'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162503.1346070 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061132.7135560 '  )
    ( nvs_id ='NT57863' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200507' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='S13'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162602.0834220 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061138.5204720 '  )
    ( nvs_id ='NT57865' therapy ='CYTB323A12101' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200513' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS12'
      material_quan = '110.00' material_quan_uom = 'PCE' amount = '550.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162733.4585450 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061143.9841030 '  )
    ( nvs_id ='NT57866' therapy ='CYTB323A12101' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200509' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS24'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162819.1758290 ' last_changed_by ='CB0000000723' last_changed_at ='20210222162819.1758290 '  )
    ( nvs_id ='NT57867' therapy ='CYTB323A12101' country_id ='IT' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200507' stsl1_id ='ST1' stsl2_id ='ST7' ord_site_id ='OS11'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS6' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162902.1542680 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061152.3715920 '  )
    ( nvs_id ='NT57868' therapy ='KYMRIAH - Pediatric ALL US' country_id ='DE' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200512' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS4'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162957.6241430 ' last_changed_by ='CB0000000723' last_changed_at ='20210222162957.6241430 '  )
    ( nvs_id ='NT57869' therapy ='CCTL019G2201J' country_id ='FR' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20200505' stsl1_id ='ST3' stsl2_id ='ST10' ord_site_id ='OS20'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222163040.7463750 ' last_changed_by ='CB0000000723' last_changed_at ='20210222163040.7463750 '  )
    ( nvs_id ='NT57870' therapy ='CCTL019G2201J' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200503' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS25'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222163128.3080710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222163128.3080710 '  )
    ( nvs_id ='NT57871' therapy ='KYMRIAH - Pediatric ALL US' country_id ='AT' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200506' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS25'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164529.9611200 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164529.9611200 '  )
    ( nvs_id ='NT57872' therapy ='KYMRIAH - Pediatric ALL US' country_id ='ES' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200506' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS15'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164620.8244810 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164620.8244810 '  )
    ( nvs_id ='NT57873' therapy ='KYMRIAH - Pediatric ALL US' country_id ='ES' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200505' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS15'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164703.0496320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164703.0496320 '  )
    ( nvs_id ='NT57874' therapy ='KYMRIAH - Pediatric ALL US' country_id ='CZ' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200501' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='OS3'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164746.7868270 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164746.7868270 '  )
    ( nvs_id ='NT57875' therapy ='KYMRIAH - Pediatric ALL US' country_id ='CZ' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200512' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS3'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222164823.7057140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164823.7057140 '  )
    ( nvs_id ='NT57876' therapy ='KYMRIAH - Pediatric ALL US' country_id ='HU' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200512' stsl1_id ='ST3' stsl2_id ='ST11' ord_site_id ='OS9'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222164901.7047570 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164901.7047570 '  )
    ( nvs_id ='NT57877' therapy ='CCTL019G2201J' country_id ='RO' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200505' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164939.2093330 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164939.2093330 '  )
    ( nvs_id ='NT57878' therapy ='KYMRIAH - Pediatric ALL US' country_id ='RO' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200509' stsl1_id ='ST3' stsl2_id ='ST3' ord_site_id ='OS1'
      material_quan = '120.00' material_quan_uom = 'PCE' amount = '600.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222165017.0352140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165017.0352140 '  )


* June 2020

    ( nvs_id ='NSTJ881' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200601' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
    ( nvs_id ='NSTJ882' therapy ='Pediatric ALL US' country_id ='IT' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200607' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
    ( nvs_id ='NSTJ883' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200604' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
    ( nvs_id ='NSTJ884' therapy ='CCTL019G2201J' country_id ='GR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200620' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
    ( nvs_id ='NSTJ885' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200621' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS5'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )
    ( nvs_id ='NSTJ886' therapy ='CCTL019G2201J' country_id ='RO' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20200621' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
    ( nvs_id ='NSTJ887' therapy ='Pediatric ALL US' country_id ='RO' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20200622' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
    ( nvs_id ='NSTJ888' therapy ='Pediatric ALL US' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200622' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS6' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
    ( nvs_id ='NSTJ889' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200607' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
    ( nvs_id ='NSTJ890' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200607' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )
    ( nvs_id ='NSTJ891' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200619' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )
    ( nvs_id ='NT57879' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200613' stsl1_id ='ST3' stsl2_id ='ST3' ord_site_id ='OS21'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222165059.2628540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165059.2628540 '  )
    ( nvs_id ='NT57880' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200605' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='OS21'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS6' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222165139.2421510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165139.2421510 '  )
    ( nvs_id ='NT57881' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200607' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
    ( nvs_id ='NT57882' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200607' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
    ( nvs_id ='NT57883' therapy ='CCTL019G2201J' country_id ='IT' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200607' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
    ( nvs_id ='NT57884' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200604' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
    ( nvs_id ='NT57885' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200607' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS5'
      material_quan = '130.00' material_quan_uom = 'PCE' amount = '650.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )


* July 2020

    ( nvs_id ='NSTJ892' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200701' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
    ( nvs_id ='NSTJ893' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200707' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
    ( nvs_id ='NSTJ894' therapy ='CCTL019G2201J' country_id ='IT' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200704' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
    ( nvs_id ='NSTJ8895' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200720' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
    ( nvs_id ='NSTJ896' therapy ='Pediatric ALL US' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200721' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS5'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )
    ( nvs_id ='NSTJ897' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200721' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
    ( nvs_id ='NSTJ898' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200722' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
    ( nvs_id ='NSTJ899' therapy ='Pediatric ALL US' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200722' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS6' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
    ( nvs_id ='NSTJ900' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200707' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
    ( nvs_id ='NSTJ901' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200707' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )
    ( nvs_id ='NSTJ991' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200719' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )
    ( nvs_id ='NSTF7903' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200707' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTF7904' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200719' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTF7905' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200715' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NT57886' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200707' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
    ( nvs_id ='NT57887' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200706' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
    ( nvs_id ='NT57888' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200706' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS6' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
    ( nvs_id ='NT57889' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200707' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
    ( nvs_id ='NT57890' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200807' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4'
      material_quan = '140.00' material_quan_uom = 'PCE' amount = '700.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )


* August 2020

    ( nvs_id ='NSTA7181' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200807' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
    ( nvs_id ='NSTA7182' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200807' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
    ( nvs_id ='NSTA7183' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200807' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
    ( nvs_id ='NSTA7184' therapy ='CYTB323A12101' country_id ='GR' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200804' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
    ( nvs_id ='NSTA7185' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200807' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS5'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )
    ( nvs_id ='NSTA7186' therapy ='CYTB323A12101' country_id ='RO' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200807' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
    ( nvs_id ='NSTA7187' therapy ='Pediatric ALL US' country_id ='RO' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200806' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
    ( nvs_id ='NSTA7188' therapy ='CCTL019G2201J' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200806' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='OOS6' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
    ( nvs_id ='NSTA7189' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200807' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
    ( nvs_id ='NSTA7190' therapy ='CCTL019G2201J' country_id ='DE' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200807' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )
    ( nvs_id ='NSTA7191' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200825' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20'
      material_quan = '150.00' material_quan_uom = 'PCE' amount = '750.00' amount_curr ='USD'
      oos_id ='OOS7' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )


* September 2020

    ( nvs_id ='NSTS3153' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200917' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTS3154' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200919' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS2' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTS3155' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200915' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTS3156' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200915' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
    ( nvs_id ='NSTS3157' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200916' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
    ( nvs_id ='NSTS3158' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200920' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
    ( nvs_id ='NSTS3159' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200916' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
    ( nvs_id ='NSTS3164' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200925' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
      material_quan = '160.00' material_quan_uom = 'PCE' amount = '800.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )



* October 2020

    ( nvs_id ='NSTO5153' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20201010' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTO5154' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201011' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTO5155' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201012' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
    ( nvs_id ='NSTO5156' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20201015' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
    ( nvs_id ='NSTO5157' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20201016' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
    ( nvs_id ='NSTO5158' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201011' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
    ( nvs_id ='NSTO5159' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201016' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
    ( nvs_id ='NSTO5164' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201001' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
      material_quan = '180.00' material_quan_uom = 'PCE' amount = '900.00' amount_curr ='USD'
      oos_id ='OOS5' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )



* November 2020

     ( nvs_id ='NSTN2153' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20201117' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       material_quan = '200.00' material_quan_uom = 'PCE' amount = '1000.00' amount_curr ='USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NSTN2154' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201119' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
       material_quan = '200.00' material_quan_uom = 'PCE' amount = '1000.00' amount_curr ='USD'
       oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NSTN2155' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
       material_quan = '200.00' material_quan_uom = 'PCE' amount = '1000.00' amount_curr ='USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NSTN2156' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201115' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
       material_quan = '200.00' material_quan_uom = 'PCE' amount = '1000.00' amount_curr ='USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
     ( nvs_id ='NSTN2157' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20201116' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
       material_quan = '200.00' material_quan_uom = 'PCE' amount = '1000.00' amount_curr ='USD'
       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
     ( nvs_id ='NSTN2158' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201120' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
       material_quan = '200.00' material_quan_uom = 'PCE' amount = '1000.00' amount_curr ='USD'
       oos_id ='OOS7' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
     ( nvs_id ='NSTN2159' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201116' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
       material_quan = '200.00' material_quan_uom = 'PCE' amount = '1000.00' amount_curr ='USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
     ( nvs_id ='NSTN2164' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201125' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
       material_quan = '200.00' material_quan_uom = 'PCE' amount = '1000.00' amount_curr ='USD'
       oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )


* December 2020

     ( nvs_id ='NSTD1203' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20201217' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       material_quan = '190.00' material_quan_uom = 'PCE' amount = '950.00' amount_curr ='USD'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NSTD1204' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201219' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
       material_quan = '190.00' material_quan_uom = 'PCE' amount = '950.00' amount_curr ='USD'
       oos_id ='OOS2' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NSTD1205' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
       material_quan = '190.00' material_quan_uom = 'PCE' amount = '950.00' amount_curr ='USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( nvs_id ='NSTD1206' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20201215' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
       material_quan = '190.00' material_quan_uom = 'PCE' amount = '950.00' amount_curr ='USD'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
     ( nvs_id ='NSTD1207' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20201216' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
       material_quan = '190.00' material_quan_uom = 'PCE' amount = '950.00' amount_curr ='USD'
       oos_id ='OOS3' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
     ( nvs_id ='NSTD1208' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201220' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
       material_quan = '190.00' material_quan_uom = 'PCE' amount = '950.00' amount_curr ='USD'
       oos_id ='OOS7' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
     ( nvs_id ='NSTD1209' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201216' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
       material_quan = '190.00' material_quan_uom = 'PCE' amount = '950.00' amount_curr ='USD'
       oos_id ='OOS4' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
     ( nvs_id ='NSTD1210' therapy ='KYMRIAH - DLBCL EU' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201225' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
       material_quan = '190.00' material_quan_uom = 'PCE' amount = '950.00' amount_curr ='USD'
       oos_id ='OOS5' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )

    ).

    APPEND LINES OF lt_order_02 TO lt_order.

    LOOP AT lt_order ASSIGNING FIELD-SYMBOL(<ls_order>) WHERE order_uuid IS INITIAL.
      TRY.
          CALL METHOD cl_system_uuid=>if_system_uuid_static~create_uuid_x16
            RECEIVING
              uuid = DATA(lv_id).
        CATCH cx_uuid_error .
      ENDTRY.
      <ls_order>-order_uuid = lv_id.
    ENDLOOP.

    DELETE FROM zpoco_d_order_a.
    INSERT zpoco_d_order_a FROM TABLE @lt_order.

  ENDMETHOD.


  METHOD fill_alert.

    DATA: lt_alert TYPE TABLE OF zpoco_d_alert_a.

    lt_alert =
VALUE #(
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A21B79635A2D1' nvs_id ='NT57853' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210301' created_by ='CB0000000723'
created_at ='20210304100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100449.6129440 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A225BD32182D2' nvs_id ='NT57854' alert_message ='POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' updated_date ='20210302' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A22CF903D02D2' nvs_id ='NT57855' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210303' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A238E532A42D3' nvs_id ='NT57856' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210304' created_by ='CB0000000723' created_at ='20210304100513.8755750 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A2446E80902D6' nvs_id ='NT57857' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210305' created_by ='CB0000000723' created_at ='20210304100523.0219780 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A24D7AB3202D6' nvs_id ='NT57858' alert_message ='Request for subsequent shipment FP99231 has been received for Novartis Batch NT74382' updated_date ='20210306' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='02F8EF213CCE1EDB9F9A25595815F7C4' nvs_id ='NT57859' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210307' created_by ='CB0000000723' created_at ='20210304100538.3672300 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100538.3672300 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A2628749402F1' nvs_id ='NT57891' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210308' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )
 ( client ='100' alert_uuid ='02F8EF213CCE1EDB9F9A26B3978657C5' nvs_id ='NT57892' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='202103209' created_by ='CB0000000723' created_at =
'20210304100556.1401130 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100556.1401130 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A276EB84B42F2' nvs_id ='NT57893' alert_message ='Manufacturing run for Novartis Batch NT66547 is terminated, US33, CA' updated_date ='20210310' created_by ='CB0000000723' created_at =
'20210304100605.3424570 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100605.3424570 '  )

 ( client ='100' alert_uuid ='12E81366251E00EB9F9A21B79235C2D1' nvs_id ='NT57895' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210205' created_by ='CB0000000723'
created_at ='20210322100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210322100449.6129440 '  )
 ( client ='100' alert_uuid ='12E91366251E00EB9F9O31B79235C2D1' nvs_id ='NT57896' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210206' created_by ='CB0000000723'
created_at ='20210322100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210322100449.6129440 '  )
 ( client ='100' alert_uuid ='12E71366251E00EB9F9A21B79235C2D1' nvs_id ='NT57897' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210207' created_by ='CB0000000723'
created_at ='20210322100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210322100449.6129440 '  )
 ( client ='100' alert_uuid ='12E61366251E00EB9F9A21B79235C2D1' nvs_id ='NT57898' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210209' created_by ='CB0000000723'
created_at ='20210322100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210322100449.6129440 '  )
 ( client ='100' alert_uuid ='12E51366251E00EB9F9A21B79235C2D1' nvs_id ='NT57899' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210208' created_by ='CB0000000723'
created_at ='20210322100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210322100449.6129440 '  )

 ( client ='100' alert_uuid ='22E81366251E1EEB9F9A225BD32182C2' nvs_id ='NT57900' alert_message ='POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' updated_date ='20210204' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='23E81366252E1EEB9F9A225BD32182C3' nvs_id ='NT57901' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210210' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='24E81366253E1EEB9F9A225BD32182C4' nvs_id ='NT57902' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210211' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='25E81366254E1EEB9F9A225BD32182C5' nvs_id ='NT57903' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210212' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='26E81366255E1EEB9F9A225BD32182C6' nvs_id ='NT57904' alert_message ='POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' updated_date ='20210213' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='27E81366256E1EEB9F9A225BD32182C7' nvs_id ='NT57905' alert_message ='POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' updated_date ='20210214' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='28E81366257E1EEB9F9A225BD32182C8' nvs_id ='NT57906' alert_message ='POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' updated_date ='20210215' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='29E81366258E1EEB9F9A225BD32182C9' nvs_id ='NT57907' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210216' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='30E81366259E1EEB9F9A225BD32182C0' nvs_id ='NT57908' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210217' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )

 ( client ='100' alert_uuid ='32E81366351E1EEB9F9A22CF903D02F2' nvs_id ='NT57909' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled, US33, US' updated_date ='20210218' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='33E81366352E1EEB9F9A22CF903D02F3' nvs_id ='NT57910' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210220' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='34E81366353E1EEB9F9A22CF903D02F4' nvs_id ='NT33100' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210219' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='35E81366354E1EEB9F9A22CF903D02F5' nvs_id ='NT33101' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210221' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='36E81366355E1EEB9F9A22CF903D02F6' nvs_id ='NT33102' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210227' created_by =
'CB0000000723' created_at = '20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='37E81366356E1EEB9F9A22CF903D02F7' nvs_id ='NT33103' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210222' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='38E81366357E1EEB9F9A22CF903D02F8' nvs_id ='NT33104' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210212' created_by =
'CB0000000723' created_at ='20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='39E81366358E1EEB9F9A22CF903D02F9' nvs_id ='NT33105' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210223' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='40E81366359E1EEB9F9A22CF903D02Y1' nvs_id ='NT33106' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210224' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='41E81366361E1EEB9F9A22CF903D02Y2' nvs_id ='NT33107' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210225' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='42E81366362E1EEB9F9A22CF903D02Y3' nvs_id ='NT33108' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210226' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )

 ( client ='100' alert_uuid ='81E81366251E1EEB9F9A238E532A42V3' nvs_id ='NT33109' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210311' created_by ='CB0000000723' created_at ='20210304100513.8755750 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='82E81366252E1EEB9F9A238E532A42V3' nvs_id ='NT33110' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210312' created_by ='CB0000000723' created_at ='20210304100513.8755750 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='83E81366253E1EEB9F9A238E532A42V3' nvs_id ='NT33111' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210313' created_by ='CB0000000723' created_at =
'20210304100513.8755750 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='84E81366254E1EEB9F9A238E532A42V3' nvs_id ='NT33112' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210314' created_by ='CB0000000723' created_at =
'20210304100513.8755750 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='85E81366255E1EEB9F9A238E532A42V3' nvs_id ='NT33113' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210315' created_by ='CB0000000723' created_at =
'20210304100513.8755750 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='86E81366256E1EEB9F9A238E532A42V3' nvs_id ='NT33114' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210316' created_by ='CB0000000723' created_at =
'20210304100513.8755750 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='87E81366257E1EEB9F9A238E532A42V3' nvs_id ='NT33115' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210317' created_by ='CB0000000723' created_at =
'20210304100513.8755750 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )

 ( client ='100' alert_uuid ='52E82366251E1EEB9F9A2446E80902D1' nvs_id ='NT33116' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210101' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='53E82366252E1EEB9F9A2446E80902D2' nvs_id ='NT33117' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210102' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='54E82366253E1EEB9F9A2446E80902D3' nvs_id ='NT33118' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210103' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='55E82366254E1EEB9F9A2446E80902D4' nvs_id ='NT33119' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210104' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='56E82366255E1EEB9F9A2446E80902D5' nvs_id ='NT33120' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210105' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='57E82366256E1EEB9F9A2446E80902D6' nvs_id ='NT33121' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210106' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='58E82366257E1EEB9F9A2446E80902D7' nvs_id ='NT33122' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210107' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='59E82366258E1EEB9F9A2446E80902D8' nvs_id ='NT33123' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210108' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='60E82366259E1EEB9F9A2446E80902D9' nvs_id ='NT33124' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210109' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='61E82366250E1EEB9F9A2446E80901D0' nvs_id ='NT33125' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210110' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )

 ( client ='100' alert_uuid ='62Z81366251E1EEB9F9A24D7AB3202P1' nvs_id ='NT33126' alert_message ='Request for subsequent shipment FP99231 has been received for Novartis Batch NT74382' updated_date ='20210111' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='63Z81366251E1EEB9F9A24D7AB3202P2' nvs_id ='NT33127' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210112' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='64Z81366251E1EEB9F9A24D7AB3202P3' nvs_id ='NT33128' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210113' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='65Z81366251E1EEB9F9A24D7AB3202P4' nvs_id ='NT33129' alert_message ='Request for subsequent shipment FP99231 has been received for Novartis Batch NT74382' updated_date ='20210114' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='66Z81366251E1EEB9F9A24D7AB3202P5' nvs_id ='NT33130' alert_message ='Request for subsequent shipment FP99231 has been received for Novartis Batch NT74382' updated_date ='20210115' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='67Z81366251E1EEB9F9A24D7AB3202P6' nvs_id ='NT33131' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210116' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='68Z81366251E1EEB9F9A24D7AB3202P7' nvs_id ='NT33132' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210117' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='69Z81366251E1EEB9F9A24D7AB3202P8' nvs_id ='NT33133' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210118' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )

 ( client ='100' alert_uuid ='72F8EF213CCE1EDB9F9A25595815F7O4' nvs_id ='NT33134' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210119' created_by ='CB0000000723' created_at ='20210304100538.3672300 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100538.3672300 '  )
 ( client ='100' alert_uuid ='73F8EF213CCE1ED90F9A25595815F7O5' nvs_id ='NT33135' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210120' created_by ='CB0000000723' created_at ='20210304100538.3672300 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100538.3672300 '  )
 ( client ='100' alert_uuid ='74F8EF213CCE1EDB9F9A25595815F7O6' nvs_id ='NT33136' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210121' created_by ='CB0000000723' created_at ='20210304100538.3672300 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100538.3672300 '  )
 ( client ='100' alert_uuid ='75F8EF213CCE1EDB9F9A25595815F7O7' nvs_id ='NT33137' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210122' created_by ='CB0000000723' created_at =
 '20210304100538.3672300 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100538.3672300 '  )
 ( client ='100' alert_uuid ='76F8EF213CCE1EDB9F9A25595815F7O8' nvs_id ='NT33138' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210123' created_by ='CB0000000723' created_at ='20210304100538.3672300 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100538.3672300 '  )

 ( client ='100' alert_uuid ='82E81366251E1EEB9F9A2628749402O1' nvs_id ='NT33139' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210124' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )
 ( client ='100' alert_uuid ='83E81366251E1EEB9F9A2628749402O2' nvs_id ='NT33140' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210125' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )
 ( client ='100' alert_uuid ='84E81366251E1EEB9F9A2628749402O3' nvs_id ='NT33141' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210126' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )
 ( client ='100' alert_uuid ='85E81366251E1EEB9F9A2628749402O4' nvs_id ='NT33142' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210127' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )
 ( client ='100' alert_uuid ='86E81366251E1EEB9F9A2628749402O5' nvs_id ='NT33143' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210128' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )


 ).

    DELETE FROM zpoco_d_alert_a.
    INSERT zpoco_d_alert_a FROM TABLE @lt_alert.


  ENDMETHOD.


  METHOD fill_alertwi.

    DATA: lt_alertwi TYPE TABLE OF zpoco_d_alerwi_a.

    lt_alertwi =
VALUE #( ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A38CF696DD7E3' nvs_id ='NT57853' alert_message ='Print Apheresis Labels / NT36138' updated_date ='20210304' created_by ='CB0000000723' created_at ='20210304100959.8883000 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100959.8883000 '  )
 ( client ='100' alert_wi_uuid ='02E81366251E1EEB9F9A39A76A84031A' nvs_id ='NT57854' alert_message ='Report FP Shipment / NT58241' updated_date ='20210320' created_by ='CB0000000723' created_at ='20210304101010.2701060 ' last_changed_by ='CB0000000723'
last_changed_at ='20210304101010.2701060 '  )
 ( client ='100' alert_wi_uuid ='02E81366251E1EEB9F9A3A44FD90431C' nvs_id ='NT57855' alert_message ='Print FP Labels / NT58241' updated_date ='20210329' created_by ='CB0000000723' created_at ='20210304101018.1551950 ' last_changed_by ='CB0000000723'
last_changed_at ='20210304101018.1551950 '  )
 ( client ='100' alert_wi_uuid ='02E81366251E1EEB9F9A3AE55307431F' nvs_id ='NT57856' alert_message ='Apheresis Export Preparation / IT / CH12 / NT58241' updated_date ='20210317' created_by ='CB0000000723' created_at ='20210304101027.4775380 '
last_changed_by ='CB0000000723' last_changed_at ='20210304101027.4775380 '  )
 ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A3B84CE03D7E7' nvs_id ='NT57857' alert_message ='FP Dewar Tracking Link for FP Shipment US33/ US/ NT58241' updated_date ='20210306' created_by ='CB0000000723' created_at ='20210304101034.9139270 '
last_changed_by ='CB0000000723' last_changed_at ='20210304101034.9139270 '  )
 ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A3C0986CD97E7' nvs_id ='NT57858' alert_message ='FP Dewar Tracking Link for FP Shipment US33/ US/ NT58241' updated_date ='20210310' created_by ='CB0000000723' created_at ='20210304101042.9084630 '
last_changed_by ='CB0000000723' last_changed_at ='20210304101042.9084630 '  )
 ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A3CE8FD4D17E8' nvs_id ='NT57859' alert_message ='Shipment from DD to final customer NT36064 / BE' updated_date ='20210324' created_by ='CB0000000723' created_at ='20210304101053.5913660 '
last_changed_by ='CB0000000723' last_changed_at ='20210304101053.5913660 '  )
 ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A3D8708F5F7EA' nvs_id ='NT57891' alert_message ='Print FP Labels / NT57996' updated_date ='20210328' created_by ='CB0000000723' created_at ='20210304101102.6186950 ' last_changed_by ='CB0000000723'
last_changed_at ='20210304101102.6186950 '  )
 ( client ='100' alert_wi_uuid ='02E81366251E1EEB9F9A3E268D2E0322' nvs_id ='NT57892' alert_message ='Print Apheresis Data Form / NT35718' updated_date ='20210330' created_by ='CB0000000723' created_at ='20210304101110.2295330 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304101110.2295330 '  )
 ( client ='100' alert_wi_uuid ='02E81366251E1EEB9F9A3F08702E8324' nvs_id ='NT57893' alert_message ='Reprint Apheresis Labels / NT35975' updated_date ='20210318' created_by ='CB0000000723' created_at ='20210304101122.0920140 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304101122.0920140 '  )
 ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A384FCC8057E2' nvs_id ='NT57894' alert_message ='Print FP Labels / NT36138' updated_date ='20210305' created_by ='CB0000000723' created_at ='20210304100952.7497750 ' last_changed_by ='CB0000000723'
last_changed_at ='20210304114623.8753210 '  )
 ).

    DELETE FROM zpoco_d_alerwi_a.
    INSERT zpoco_d_alerwi_a FROM TABLE @lt_alertwi.

  ENDMETHOD.


  METHOD fill_oos.

    DATA: lt_oos     TYPE STANDARD TABLE OF zpoco_c_oos_a,
          time_stamp TYPE timestamp.

    DELETE FROM zpoco_c_oos_a.

    GET TIME STAMP FIELD time_stamp.

    lt_oos = VALUE #(
      ( oos_id          = 'OOS1'
        oos_description = 'OOS Beads'
        created_by      = sy-uname
        created_at      = time_stamp
        last_changed_by = sy-uname
        last_changed_at = time_stamp )

      ( oos_id          = 'OOS2'
        oos_description = 'OOS Dose'
        created_by      = sy-uname
        created_at      = time_stamp
        last_changed_by = sy-uname
        last_changed_at = time_stamp )

      ( oos_id          = 'OOS3'
        oos_description = 'OOS Low % CAR'
        created_by      = sy-uname
        created_at      = time_stamp
        last_changed_by = sy-uname
        last_changed_at = time_stamp )

      ( oos_id          = 'OOS4'
        oos_description = 'OOS Mycopl'
        created_by      = sy-uname
        created_at      = time_stamp
        last_changed_by = sy-uname
        last_changed_at = time_stamp )

      ( oos_id          = 'OOS5'
        oos_description = 'OOS Potency'
        created_by      = sy-uname
        created_at      = time_stamp
        last_changed_by = sy-uname
        last_changed_at = time_stamp )

      ( oos_id          = 'OOS6'
        oos_description = 'OOS Sterility'
        created_by      = sy-uname
        created_at      = time_stamp
        last_changed_by = sy-uname
        last_changed_at = time_stamp )

      ( oos_id          = 'OOS7'
        oos_description = 'OOS viability (<70%)'
        created_by      = sy-uname
        created_at      = time_stamp
        last_changed_by = sy-uname
        last_changed_at = time_stamp )
      ).

    INSERT zpoco_c_oos_a FROM TABLE @lt_oos.

  ENDMETHOD.


  METHOD fill_calendar.

*** YEAR ***
    DATA: lt_year TYPE TABLE OF zpoco_c_year_a.

    DELETE FROM zpoco_c_year_a.

    lt_year = VALUE #( ( calendar_year = '2019' )
                       ( calendar_year = '2020' )
                       ( calendar_year = '2021' )      ).

    INSERT zpoco_c_year_a FROM TABLE @lt_year.

*** QUARTER ***
    DATA: lt_quarter TYPE TABLE OF zpoco_c_quart_a.

    DELETE FROM zpoco_c_quart_a.

    lt_quarter = VALUE #( ( calendar_quarter = '1' )
                          ( calendar_quarter = '2' )
                          ( calendar_quarter = '3' )
                          ( calendar_quarter = '4' )
                        ).

    INSERT zpoco_c_quart_a FROM TABLE @lt_quarter.

*** MONTH ***
    DATA: lt_month TYPE TABLE OF zpoco_c_month_a.

    DELETE FROM zpoco_c_month_a.

    lt_month = VALUE #( ( calendar_month_id = '01' calendar_month_name = 'January' )
                        ( calendar_month_id = '02' calendar_month_name = 'February' )
                        ( calendar_month_id = '03' calendar_month_name = 'March' )
                        ( calendar_month_id = '04' calendar_month_name = 'April' )
                        ( calendar_month_id = '05' calendar_month_name = 'May' )
                        ( calendar_month_id = '06' calendar_month_name = 'June' )
                        ( calendar_month_id = '07' calendar_month_name = 'July' )
                        ( calendar_month_id = '08' calendar_month_name = 'August' )
                        ( calendar_month_id = '09' calendar_month_name = 'September' )
                        ( calendar_month_id = '10' calendar_month_name = 'October' )
                        ( calendar_month_id = '11' calendar_month_name = 'November' )
                        ( calendar_month_id = '12' calendar_month_name = 'December' )
                        ).

    INSERT zpoco_c_month_a FROM TABLE @lt_month.

  ENDMETHOD.
ENDCLASS.
