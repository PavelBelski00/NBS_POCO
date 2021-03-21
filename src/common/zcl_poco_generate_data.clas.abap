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



CLASS zcl_poco_generate_data IMPLEMENTATION.
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

    ( therapy         = 'CYTB323A12106'
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

    ( therapy         = 'CYTB323A12107'
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

    ( therapy         = 'CYTB323A12108'
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

    ( therapy         = 'CYTB323A12102'
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

    ( therapy         = 'CYTB323A12103'
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

    ( therapy         = 'CYTB323A12104'
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

    ( therapy         = 'CYTB323A12105'
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
     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDDC' nvs_id ='NT57853' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210315' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAA' nvs_id ='NT57854' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210315' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22'
       oos_id ='OOS2' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAB' nvs_id ='NT57855' therapy ='CYTB323A12106' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210315' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAC' nvs_id ='NT57856' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210315' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAD' nvs_id ='NT57857' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210316' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6'
       oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAE' nvs_id ='NT57858' therapy ='CCTL019G2201J' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210316' stsl1_id ='ST4' stsl2_id ='ST8' ord_site_id ='S13'
       oos_id ='OOS7' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAF' nvs_id ='NT57859' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20210316' stsl1_id ='ST3' stsl2_id ='ST9' ord_site_id ='OS17'
       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA55861D2EC40A8' nvs_id ='NT57864' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200505' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10'
       oos_id ='OOS5' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA5483368A5040E' nvs_id ='NT57860' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200513' stsl1_id ='ST3' stsl2_id ='ST11' ord_site_id ='S13'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162312.0491520 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061118.8777470 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA54CBCFCE0C413' nvs_id ='NT57861' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200505' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS17'
       oos_id ='OOS7' oos ='X' oos_descr_id ='2' aph_dewar = 'X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162412.4398340 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061126.2087560 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA55083D71F0419' nvs_id ='NT57862' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20200513' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS6'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162503.1346070 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061132.7135560 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA554E92755E41E' nvs_id ='NT57863' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20200507' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='S13'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162602.0834220 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061138.5204720 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA55BB58CE6042E' nvs_id ='NT57865' therapy ='CYTB323A12106' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200513' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS12'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162733.4585450 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061143.9841030 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA55F1F1413C433' nvs_id ='NT57866' therapy ='CYTB323A12107' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200509' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS24'
       oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162819.1758290 ' last_changed_by ='CB0000000723' last_changed_at ='20210222162819.1758290 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA56252C8FFC437' nvs_id ='NT57867' therapy ='CYTB323A12108' country_id ='IT' mfg_plant_id ='PL2' ttype_id ='Clinical' day0 ='20200507' stsl1_id ='ST1' stsl2_id ='ST7' ord_site_id ='OS11'
       oos_id ='OOS6' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162902.1542680 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061152.3715920 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA56674D405C43D' nvs_id ='NT57868' therapy ='KYMRIAH - Pediatric ALL US' country_id ='DE' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200512' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS4'
       oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162957.6241430 ' last_changed_by ='CB0000000723' last_changed_at ='20210222162957.6241430 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA569AB5112C442' nvs_id ='NT57869' therapy ='CCTL019G2201J' country_id ='FR' mfg_plant_id ='PL3' ttype_id ='Clinical' day0 ='20200505' stsl1_id ='ST3' stsl2_id ='ST10' ord_site_id ='OS20'
       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222163040.7463750 ' last_changed_by ='CB0000000723' last_changed_at ='20210222163040.7463750 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA56D366D064446' nvs_id ='NT57870' therapy ='CCTL019G2201J' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200503' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS25'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222163128.3080710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222163128.3080710 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA5ABE17B93412D' nvs_id ='NT57871' therapy ='KYMRIAH - Pediatric ALL US' country_id ='AT' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200506' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS25'
       oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164529.9611200 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164529.9611200 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA5AFB5DDF504D1' nvs_id ='NT57872' therapy ='KYMRIAH - Pediatric ALL US' country_id ='ES' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200506' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS15'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164620.8244810 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164620.8244810 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA5B2DB27880133' nvs_id ='NT57873' therapy ='KYMRIAH - Pediatric ALL US' country_id ='ES' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200505' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS15'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164703.0496320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164703.0496320 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA5B61D7615C146' nvs_id ='NT57874' therapy ='KYMRIAH - Pediatric ALL US' country_id ='CZ' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200501' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='OS3'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164746.7868270 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164746.7868270 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA5B8DDA427414A' nvs_id ='NT57875' therapy ='KYMRIAH - Pediatric ALL US' country_id ='CZ' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200512' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS3'
       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222164823.7057140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164823.7057140 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA5BBB25F6B04E3' nvs_id ='NT57876' therapy ='KYMRIAH - Pediatric ALL US' country_id ='HU' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200512' stsl1_id ='ST3' stsl2_id ='ST11' ord_site_id ='OS9'
       oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222164901.7047570 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164901.7047570 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA5BE7DA94B814E' nvs_id ='NT57877' therapy ='CCTL019G2201J' country_id ='RO' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200505' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
       oos_id ='OOS3' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164939.2093330 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164939.2093330 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA5C14F40E34152' nvs_id ='NT57878' therapy ='KYMRIAH - Pediatric ALL US' country_id ='RO' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200509' stsl1_id ='ST3' stsl2_id ='ST3' ord_site_id ='OS1'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222165017.0352140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165017.0352140 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA5C465803A8155' nvs_id ='NT57879' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200613' stsl1_id ='ST3' stsl2_id ='ST3' ord_site_id ='OS21'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222165059.2628540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165059.2628540 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA5C76F1DA304F5' nvs_id ='NT57880' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200605' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='OS21'
       oos_id ='OOS6' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222165139.2421510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165139.2421510 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA6045048D34568' nvs_id ='NT57881' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200607' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21'
       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA60793B8F801C5' nvs_id ='NT57882' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200607' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7'
       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA60A7E52FE456F' nvs_id ='NT57883' therapy ='CCTL019G2201J' country_id ='IT' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200607' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA60E9B241B81D7' nvs_id ='NT57884' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200604' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5'
       oos_id ='OOS5' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA611085DC1057E' nvs_id ='NT57885' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200607' stsl1_id ='ST1' stsl2_id ='ST4' ord_site_id ='OS5'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA6140318554582' nvs_id ='NT57886' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200707' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA61750C77E8583' nvs_id ='NT57887' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20200706' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1'
       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA61A4C641F81E3' nvs_id ='NT57888' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20200706' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14'
       oos_id ='OOS6' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA61E6C7B4B058E' nvs_id ='NT57889' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200707' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19'
       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA62107BE358593' nvs_id ='NT57890' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200807' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA623483121C5A0' nvs_id ='NT57891' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20210125' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20'
       oos_id ='OOS7' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )
     ( client ='100' order_uuid ='02605AA74F061EDB9DA626BEC21481F9' nvs_id ='NT57892' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20210123' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS16'
       oos_id ='OOS4' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171258.6508880 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171258.6508880 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA62A744502C5A9' nvs_id ='NT57893' therapy ='KYMRIAH - DLBCL EU' country_id ='NO' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20210122' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS2'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171348.3249220 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171348.3249220 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA62D5C6303C5AC' nvs_id ='NT57894' therapy ='KYMRIAH - DLBCL EU' country_id ='NO' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20210211' stsl1_id ='ST3' stsl2_id ='ST10' ord_site_id ='OS2'
       oos_id ='' oos ='X' oos_descr_id ='1' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171427.2762910 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171427.2762910 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA62FE3E82945B0' nvs_id ='NT57895' therapy ='KYMRIAH - DLBCL EU' country_id ='BE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210214' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS8'
       oos_id ='OOS2' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171501.2250100 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171501.2250100 '  )
     ( client ='100' order_uuid ='02E7896636F21EDB9DA63202ED9D05B3' nvs_id ='NT57896' therapy ='KYMRIAH - DLBCL EU' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210210' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )

     ( client ='100' order_uuid ='02E7896636F21EDB9DY63203ED9D05B3' nvs_id ='NT57897' therapy ='CCTL019G2201J' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='03E7896636F21EDB9DY63203ED9D05B4' nvs_id ='NT57898' therapy ='KYMRIAH - DLBCL EU' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='04E7896636F26EDB9DY63203ED9D05B5' nvs_id ='NT57899' therapy ='CYTB323A12106' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='05E7896636F21EDB9DY63203ED9D05B6' nvs_id ='NT57900' therapy ='CYTB323A12101' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='06E7896636F23EDB9DY63203ED9D05B7' nvs_id ='NT57901' therapy ='CYTB323A12108' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='12E7896636F51EDB9DY63203ED9D05B8' nvs_id ='NT57902' therapy ='CCTL019G2201J' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='22E3896636F51EDB0DY63205ED9D05B8' nvs_id ='NT57903' therapy ='KYMRIAH - DLBCL EU' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='32E3896636F51EDB0DY63205ED9F05B8' nvs_id ='NT57904' therapy ='CYTB323A12107' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='42E3896636F43EDB0DY65205ED9F05B9' nvs_id ='NT57905' therapy ='CCTL019G2201J' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='5213896636F43EDB1DY652041D9C05B9' nvs_id ='NT57907' therapy ='CYTB323A12101' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )


     ( client ='100' order_uuid ='5213896736F43EDC8DY652041D9C05B9' nvs_id ='NT57908' therapy ='KYMRIAH - Pediatric ALL US' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='5213896730F43EDC8DY652041D9C05B0' nvs_id ='NT57909' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='5213896730F23EDC8DY652041D9C15B0' nvs_id ='NT57910' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210317' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )






     ( client ='100' order_uuid ='02E81366251E1EEB9F9A21B79635A2D1' nvs_id ='NTSKD12' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A225BD32182D2' nvs_id ='NTGDH23' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A238E532A42D3' nvs_id ='NTJDKS2' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A2446E80902D6' nvs_id ='NTJSKL2' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A24D7AB3202D6' nvs_id ='NT74382' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02F8EF213CCE1EDB9F9A25595815F7C4' nvs_id ='NT34243' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A2628749402F1' nvs_id ='NT43278' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02F8EF213CCE1EDB9F9A26B3978657C5' nvs_id ='NT88843' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A276EB84B42F2' nvs_id ='NT66547' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A22CF903D02D2' nvs_id ='NTKORD1' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )

     ( client ='100' order_uuid ='02F8EF213CCE1EDB9F9A38CF696DD7E3' nvs_id ='NT36138' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A39A76A84031A' nvs_id ='NT58241' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A3A44FD90431C' nvs_id ='NT58241' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A3AE55307431F' nvs_id ='NT58241' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02F8EF213CCE1EDB9F9A3B84CE03D7E7' nvs_id ='NT58241' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02F8EF213CCE1EDB9F9A3C0986CD97E7' nvs_id ='NT58241' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02F8EF213CCE1EDB9F9A3CE8FD4D17E8' nvs_id ='NT36064' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02F8EF213CCE1EDB9F9A3D8708F5F7EA' nvs_id ='NT57996' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A3E268D2E0322' nvs_id ='NT35718' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02E81366251E1EEB9F9A3F08702E8324' nvs_id ='NT35975' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     ( client ='100' order_uuid ='02F8EF213CCE1EDB9F9A384FCC8057E2' nvs_id ='NT36138' therapy ='' country_id ='' mfg_plant_id ='' ttype_id ='' day0 ='' stsl1_id ='' stsl2_id ='' ord_site_id =''
       oos_id ='' oos ='' oos_descr_id ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
     )
     .

    DATA: lt_order_02 TYPE TABLE OF zpoco_d_order_a.
    lt_order_02 =
    VALUE #(
    ( nvs_id ='NT33100' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33101' therapy ='CYTB323A12102' country_id ='US' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33102' therapy ='CYTB323A12103' country_id ='FR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33103' therapy ='CYTB323A12104' country_id ='FR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33104' therapy ='CYTB323A12105' country_id ='FR' mfg_plant_id ='PL1' ttype_id ='Clinical' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33105' therapy ='CYTB323A12106' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33106' therapy ='CYTB323A12107' country_id ='FR' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20201215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33107' therapy ='CYTB323A12108' country_id ='FR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33108' therapy ='CYTB323A12109' country_id ='FR' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33109' therapy ='CYTB323A12110' country_id ='DE' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33110' therapy ='CYTB323A12111' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33111' therapy ='CYTB323A12112' country_id ='DE' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33112' therapy ='CYTB323A12113' country_id ='DE' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33113' therapy ='CYTB323A12114' country_id ='DE' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33114' therapy ='CYTB323A12115' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33115' therapy ='CYTB323A12116' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33116' therapy ='CYTB323A12117' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33117' therapy ='CYTB323A12118' country_id ='AU' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33118' therapy ='CYTB323A12119' country_id ='AU' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33119' therapy ='CYTB323A12120' country_id ='AU' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33120' therapy ='CYTB323A12121' country_id ='ES' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33121' therapy ='CYTB323A12122' country_id ='ES' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33122' therapy ='CYTB323A12123' country_id ='ES' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33123' therapy ='CYTB323A12124' country_id ='CZ' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33124' therapy ='CYTB323A12125' country_id ='CZ' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33125' therapy ='CYTB323A12126' country_id ='CZ' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33126' therapy ='CYTB323A12127' country_id ='CZ' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33127' therapy ='CYTB323A12128' country_id ='CZ' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33128' therapy ='CYTB323A12129' country_id ='IL' mfg_plant_id ='PL5' ttype_id ='Clinical' day0 ='20201015' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33129' therapy ='CYTB323A12130' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33130' therapy ='CYTB323A12131' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33131' therapy ='CYTB323A12132' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33132' therapy ='CYTB323A12133' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210215' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33133' therapy ='CYTB323A12134' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33134' therapy ='CYTB323A12135' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33135' therapy ='CYTB323A12136' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33136' therapy ='CYTB323A12137' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33137' therapy ='CYTB323A12138' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ( nvs_id ='NT33138' therapy ='CYTB323A12139' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Clinical' day0 ='20210115' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
       oos_id ='OOS1' oos ='X' oos_descr_id ='2' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '
    )
    ).
    LOOP AT lt_order_02 ASSIGNING FIELD-SYMBOL(<ls_order>) WHERE order_uuid IS INITIAL.
      TRY.
          CALL METHOD cl_system_uuid=>if_system_uuid_static~create_uuid_x16
            RECEIVING
              uuid = DATA(lv_id).
        CATCH cx_uuid_error .
      ENDTRY.
      <ls_order>-order_uuid = lv_id.
    ENDLOOP.
    APPEND LINES OF lt_order_02 TO lt_order.

    DELETE FROM zpoco_d_order_a.
    INSERT zpoco_d_order_a FROM TABLE @lt_order.

  ENDMETHOD.

  METHOD fill_alert.

    DATA: lt_alert TYPE TABLE OF zpoco_d_alert_a.

    lt_alert =
VALUE #(
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A21B79635A2D1' nvs_id ='NTSKD12' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210305' created_by ='CB0000000723'
created_at ='20210304100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100449.6129440 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A225BD32182D2' nvs_id ='NTGDH23' alert_message ='POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' updated_date ='20210304' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A22CF903D02D2' nvs_id ='NTKORD1' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210312' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A238E532A42D3' nvs_id ='NTJDKS2' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210320' created_by ='CB0000000723' created_at ='20210304100513.8755750 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A2446E80902D6' nvs_id ='NTJSKL2' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210329' created_by ='CB0000000723' created_at ='20210304100523.0219780 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A24D7AB3202D6' nvs_id ='NT74382' alert_message ='Request for subsequent shipment FP99231 has been received for Novartis Batch NT74382' updated_date ='20210317' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='02F8EF213CCE1EDB9F9A25595815F7C4' nvs_id ='NT34243' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210306' created_by ='CB0000000723' created_at ='20210304100538.3672300 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100538.3672300 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A2628749402F1' nvs_id ='NT43278' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210310' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )
 ( client ='100' alert_uuid ='02F8EF213CCE1EDB9F9A26B3978657C5' nvs_id ='NT88843' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210324' created_by ='CB0000000723' created_at =
'20210304100556.1401130 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100556.1401130 '  )
 ( client ='100' alert_uuid ='02E81366251E1EEB9F9A276EB84B42F2' nvs_id ='NT66547' alert_message ='Manufacturing run for Novartis Batch NT66547 is terminated, US33, CA' updated_date ='20210328' created_by ='CB0000000723' created_at =
'20210304100605.3424570 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100605.3424570 '  )

 ( client ='100' alert_uuid ='12E81366251E00EB9F9A21B79235C2D1' nvs_id ='NTFKD17' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210205' created_by ='CB0000000723'
created_at ='20210304100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100449.6129440 '  )
 ( client ='100' alert_uuid ='12E91366251E00EB9F9A21B79235C2D1' nvs_id ='NTFKD18' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210205' created_by ='CB0000000723'
created_at ='20210304100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100449.6129440 '  )
 ( client ='100' alert_uuid ='12E71366251E00EB9F9A21B79235C2D1' nvs_id ='NTFKD19' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210205' created_by ='CB0000000723'
created_at ='20210304100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100449.6129440 '  )
 ( client ='100' alert_uuid ='12E61366251E00EB9F9A21B79235C2D1' nvs_id ='NTFKD20' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210205' created_by ='CB0000000723'
created_at ='20210304100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100449.6129440 '  )
 ( client ='100' alert_uuid ='12E51366251E00EB9F9A21B79235C2D1' nvs_id ='NTFKD21' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210205' created_by ='CB0000000723'
created_at ='20210304100449.6129440 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100449.6129440 '  )

 ( client ='100' alert_uuid ='22E81366251E1EEB9F9A225BD32182C2' nvs_id ='NTFDH26' alert_message ='POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' updated_date ='20210204' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='23E81366252E1EEB9F9A225BD32182C3' nvs_id ='NTFDH27' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210204' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='24E81366253E1EEB9F9A225BD32182C4' nvs_id ='NTFDH29' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210204' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='25E81366254E1EEB9F9A225BD32182C5' nvs_id ='NTFDH30' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210204' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='26E81366255E1EEB9F9A225BD32182C6' nvs_id ='NTFDH31' alert_message ='POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' updated_date ='20210204' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='27E81366256E1EEB9F9A225BD32182C7' nvs_id ='NTFDH32' alert_message ='POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' updated_date ='20210204' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='28E81366257E1EEB9F9A225BD32182C8' nvs_id ='NTFDH33' alert_message ='POD for Novartis Batch Novartis Batch T1SIX, Shipment ID FP00001142 is posted before shipment' updated_date ='20210204' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='29E81366258E1EEB9F9A225BD32182C9' nvs_id ='NTFDH34' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210204' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )
 ( client ='100' alert_uuid ='30E81366259E1EEB9F9A225BD32182C0' nvs_id ='NTFDH35' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210204' created_by ='CB0000000723'
created_at ='20210304100457.3204190 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100457.3204190 '  )

 ( client ='100' alert_uuid ='32E81366351E1EEB9F9A22CF903D02F2' nvs_id ='NTFORD5' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled, US33, US' updated_date ='20210212' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='33E81366352E1EEB9F9A22CF903D02F3' nvs_id ='NTFORD6' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210212' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='34E81366353E1EEB9F9A22CF903D02F4' nvs_id ='NTFORD7' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210212' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='35E81366354E1EEB9F9A22CF903D02F5' nvs_id ='NTFORD8' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210212' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='36E81366355E1EEB9F9A22CF903D02F6' nvs_id ='NTFORD9' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210212' created_by =
'CB0000000723' created_at = '20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='37E81366356E1EEB9F9A22CF903D02F7' nvs_id ='NTFORY1' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210212' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='38E81366357E1EEB9F9A22CF903D02F8' nvs_id ='NTFORY2' alert_message ='Planned FP shipment date for Novartis Batch R6YZR is before Actual PP batch disposition date' updated_date ='20210212' created_by =
'CB0000000723' created_at ='20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='39E81366358E1EEB9F9A22CF903D02F9' nvs_id ='NTFORY3' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210212' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='40E81366359E1EEB9F9A22CF903D02Y1' nvs_id ='NTFORY4' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210212' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='41E81366361E1EEB9F9A22CF903D02Y2' nvs_id ='NTFORY5' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210212' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )
 ( client ='100' alert_uuid ='42E81366362E1EEB9F9A22CF903D02Y3' nvs_id ='NTFORY6' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210212' created_by ='CB0000000723' created_at =
'20210304100504.3240500 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100504.3240500 '  )

 ( client ='100' alert_uuid ='81E81366251E1EEB9F9A238E532A42V3' nvs_id ='NTFDKK1' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210320' created_by ='CB0000000723' created_at ='20210304100513.8755750 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='82E81366252E1EEB9F9A238E532A42V3' nvs_id ='NTFDKK2' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210320' created_by ='CB0000000723' created_at ='20210304100513.8755750 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='83E81366253E1EEB9F9A238E532A42V3' nvs_id ='NTFDKK3' alert_message ='Manufacturing run for Novartis Batch NTKORD1 is terminated, US33, US' updated_date ='20210320' created_by ='CB0000000723' created_at =
'20210304100513.8755750 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='84E81366254E1EEB9F9A238E532A42V3' nvs_id ='NTFDKK4' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210320' created_by ='CB0000000723' created_at =
'20210304100513.8755750 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='85E81366255E1EEB9F9A238E532A42V3' nvs_id ='NTFDKK5' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210320' created_by ='CB0000000723' created_at =
'20210304100513.8755750 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='86E81366256E1EEB9F9A238E532A42V3' nvs_id ='NTFDKK6' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210320' created_by ='CB0000000723' created_at =
'20210304100513.8755750 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )
 ( client ='100' alert_uuid ='87E81366257E1EEB9F9A238E532A42V3' nvs_id ='NTFDKK7' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210320' created_by ='CB0000000723' created_at =
'20210304100513.8755750 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100513.8755750 '  )

 ( client ='100' alert_uuid ='52E82366251E1EEB9F9A2446E80902D1' nvs_id ='NTFYKL1' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210228' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='53E82366252E1EEB9F9A2446E80902D2' nvs_id ='NTFYKL2' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210228' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='54E82366253E1EEB9F9A2446E80902D3' nvs_id ='NTFYKL3' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210228' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='55E82366254E1EEB9F9A2446E80902D4' nvs_id ='NTFYKL4' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210228' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='56E82366255E1EEB9F9A2446E80902D5' nvs_id ='NTFYKL5' alert_message ='Treatment for Novartis Batch ID NTJDKS2 is cancelled' updated_date ='20210228' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='57E82366256E1EEB9F9A2446E80902D6' nvs_id ='NTFYKL6' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210228' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='58E82366257E1EEB9F9A2446E80902D7' nvs_id ='NTFYKL7' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210228' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='59E82366258E1EEB9F9A2446E80902D8' nvs_id ='NTFYKL8' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210228' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='60E82366259E1EEB9F9A2446E80902D9' nvs_id ='NTFYKL9' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210228' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )
 ( client ='100' alert_uuid ='61E82366250E1EEB9F9A2446E80901D0' nvs_id ='NTFYKL8' alert_message ='Shipping of OOS order with Novartis Batch NTJSKL2 is requested' updated_date ='20210228' created_by ='CB0000000723' created_at =
'20210304100523.0219780 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100523.0219780 '  )




 ( client ='100' alert_uuid ='62Z81366251E1EEB9F9A24D7AB3202P1' nvs_id ='NTFL386' alert_message ='Request for subsequent shipment FP99231 has been received for Novartis Batch NT74382' updated_date ='20210217' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='63Z81366251E1EEB9F9A24D7AB3202P2' nvs_id ='NTFL387' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210217' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='64Z81366251E1EEB9F9A24D7AB3202P3' nvs_id ='NTFL388' alert_message ='APH Collection for Novartis Batch ID NT88843 requires additional dewars, US33, US' updated_date ='20210217' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='65Z81366251E1EEB9F9A24D7AB3202P4' nvs_id ='NTFL389' alert_message ='Request for subsequent shipment FP99231 has been received for Novartis Batch NT74382' updated_date ='20210217' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='66Z81366251E1EEB9F9A24D7AB3202P5' nvs_id ='NTFL390' alert_message ='Request for subsequent shipment FP99231 has been received for Novartis Batch NT74382' updated_date ='20210217' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='67Z81366251E1EEB9F9A24D7AB3202P6' nvs_id ='NTFL391' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210217' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='68Z81366251E1EEB9F9A24D7AB3202P7' nvs_id ='NTFL392' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210217' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )
 ( client ='100' alert_uuid ='69Z81366251E1EEB9F9A24D7AB3202P8' nvs_id ='NTFL393' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210217' created_by ='CB0000000723' created_at =
'20210304100530.6963520 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100530.6963520 '  )


 ( client ='100' alert_uuid ='72F8EF213CCE1EDB9F9A25595815F7O4' nvs_id ='NTF4246' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210206' created_by ='CB0000000723' created_at ='20210304100538.3672300 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100538.3672300 '  )
 ( client ='100' alert_uuid ='73F8EF213CCE1ED90F9A25595815F7O5' nvs_id ='NTF4247' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210206' created_by ='CB0000000723' created_at ='20210304100538.3672300 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100538.3672300 '  )
 ( client ='100' alert_uuid ='74F8EF213CCE1EDB9F9A25595815F7O6' nvs_id ='NTF4248' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210206' created_by ='CB0000000723' created_at ='20210304100538.3672300 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100538.3672300 '  )
 ( client ='100' alert_uuid ='75F8EF213CCE1EDB9F9A25595815F7O7' nvs_id ='NTF4249' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210206' created_by ='CB0000000723' created_at =
 '20210304100538.3672300 ' last_changed_by ='CB0000000723' last_changed_at ='20210304100538.3672300 '  )
 ( client ='100' alert_uuid ='76F8EF213CCE1EDB9F9A25595815F7O8' nvs_id ='NTF4250' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210206' created_by ='CB0000000723' created_at ='20210304100538.3672300 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100538.3672300 '  )


 ( client ='100' alert_uuid ='82E81366251E1EEB9F9A2628749402O1' nvs_id ='NTF3274' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210210' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )
 ( client ='100' alert_uuid ='83E81366251E1EEB9F9A2628749402O2' nvs_id ='NTF3275' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210210' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )
 ( client ='100' alert_uuid ='84E81366251E1EEB9F9A2628749402O3' nvs_id ='NTF3276' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210210' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )
 ( client ='100' alert_uuid ='85E81366251E1EEB9F9A2628749402O4' nvs_id ='NTF3277' alert_message ='Novartis Batch NT34243 is flagged as OOS' updated_date ='20210210' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )
 ( client ='100' alert_uuid ='86E81366251E1EEB9F9A2628749402O5' nvs_id ='NTF3274' alert_message ='Treatment for Novartis Batch ID NT43278 is cancelled' updated_date ='20210210' created_by ='CB0000000723' created_at ='20210304100548.2598960 '
last_changed_by ='CB0000000723' last_changed_at ='20210304100548.2598960 '  )

 ).

    DELETE FROM zpoco_d_alert_a.
    INSERT zpoco_d_alert_a FROM TABLE @lt_alert.


  ENDMETHOD.

  METHOD fill_alertwi.

    DATA: lt_alertwi TYPE TABLE OF zpoco_d_alerwi_a.

    lt_alertwi =
VALUE #( ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A38CF696DD7E3' nvs_id ='NT36138' alert_message ='Print Apheresis Labels / NT36138' updated_date ='20210304' created_by ='CB0000000723' created_at ='20210304100959.8883000 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304100959.8883000 '  )
 ( client ='100' alert_wi_uuid ='02E81366251E1EEB9F9A39A76A84031A' nvs_id ='NT58241' alert_message ='Report FP Shipment / NT58241' updated_date ='20210320' created_by ='CB0000000723' created_at ='20210304101010.2701060 ' last_changed_by ='CB0000000723'
last_changed_at ='20210304101010.2701060 '  )
 ( client ='100' alert_wi_uuid ='02E81366251E1EEB9F9A3A44FD90431C' nvs_id ='NT58241' alert_message ='Print FP Labels / NT58241' updated_date ='20210329' created_by ='CB0000000723' created_at ='20210304101018.1551950 ' last_changed_by ='CB0000000723'
last_changed_at ='20210304101018.1551950 '  )
 ( client ='100' alert_wi_uuid ='02E81366251E1EEB9F9A3AE55307431F' nvs_id ='NT58241' alert_message ='Apheresis Export Preparation / IT / CH12 / NT58241' updated_date ='20210317' created_by ='CB0000000723' created_at ='20210304101027.4775380 '
last_changed_by ='CB0000000723' last_changed_at ='20210304101027.4775380 '  )
 ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A3B84CE03D7E7' nvs_id ='NT58241' alert_message ='FP Dewar Tracking Link for FP Shipment US33/ US/ NT58241' updated_date ='20210306' created_by ='CB0000000723' created_at ='20210304101034.9139270 '
last_changed_by ='CB0000000723' last_changed_at ='20210304101034.9139270 '  )
 ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A3C0986CD97E7' nvs_id ='NT58241' alert_message ='FP Dewar Tracking Link for FP Shipment US33/ US/ NT58241' updated_date ='20210310' created_by ='CB0000000723' created_at ='20210304101042.9084630 '
last_changed_by ='CB0000000723' last_changed_at ='20210304101042.9084630 '  )
 ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A3CE8FD4D17E8' nvs_id ='NT36064' alert_message ='Shipment from DD to final customer NT36064 / BE' updated_date ='20210324' created_by ='CB0000000723' created_at ='20210304101053.5913660 '
last_changed_by ='CB0000000723' last_changed_at ='20210304101053.5913660 '  )
 ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A3D8708F5F7EA' nvs_id ='NT57996' alert_message ='Print FP Labels / NT57996' updated_date ='20210328' created_by ='CB0000000723' created_at ='20210304101102.6186950 ' last_changed_by ='CB0000000723'
last_changed_at ='20210304101102.6186950 '  )
 ( client ='100' alert_wi_uuid ='02E81366251E1EEB9F9A3E268D2E0322' nvs_id ='NT35718' alert_message ='Print Apheresis Data Form / NT35718' updated_date ='20210329' created_by ='CB0000000723' created_at ='20210304101110.2295330 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304101110.2295330 '  )
 ( client ='100' alert_wi_uuid ='02E81366251E1EEB9F9A3F08702E8324' nvs_id ='NT35975' alert_message ='Reprint Apheresis Labels / NT35975' updated_date ='20210317' created_by ='CB0000000723' created_at ='20210304101122.0920140 ' last_changed_by =
'CB0000000723' last_changed_at ='20210304101122.0920140 '  )
 ( client ='100' alert_wi_uuid ='02F8EF213CCE1EDB9F9A384FCC8057E2' nvs_id ='NT36138' alert_message ='Print FP Labels / NT36138' updated_date ='20210305' created_by ='CB0000000723' created_at ='20210304100952.7497750 ' last_changed_by ='CB0000000723'
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

    lt_year = VALUE #( ( calendar_year = '2020' )
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
