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
      fill_order
      .

ENDCLASS.



CLASS zcl_poco_generate_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.


    me->fill_countries( ).
    me->fill_plants( ).
    me->fill_sites(  ).
    me->fill_stsl1(  ).
    me->fill_stsl2(  ).
    me->fill_therapy_type(  ).

    me->fill_capacity(  ).
    me->fill_order(  ).
    me->fill_label( ).

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
VALUE #( ( client ='100' plant_id ='PL1' plant_name ='CH12' created_by ='CB0000000723' created_at ='20210219131923.3721680 ' last_changed_by ='CB0000000723' last_changed_at ='20210219131923.3721680 '  )
 ( client ='100' plant_id ='PL2' plant_name ='FH00' created_by ='CB0000000723' created_at ='20210219131942.6703810 ' last_changed_by ='CB0000000723' last_changed_at ='20210219131942.6703810 '  )
 ( client ='100' plant_id ='PL3' plant_name ='FR69' created_by ='CB0000000723' created_at ='20210219132042.2565060 ' last_changed_by ='CB0000000723' last_changed_at ='20210219132042.2565060 '  )
 ( client ='100' plant_id ='PL4' plant_name ='US33' created_by ='CB0000000723' created_at ='20210219132051.0661700 ' last_changed_by ='CB0000000723' last_changed_at ='20210219132051.0661700 '  )
 ( client ='100' plant_id ='PL5' plant_name ='US34' created_by ='CB0000000723' created_at ='20210219132105.5348630 ' last_changed_by ='CB0000000723' last_changed_at ='20210219132105.5348630 '  )
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
VALUE #( ( client ='100' therapy_type_id ='Clinic' therapy_type_name ='Clinic' created_by ='CB0000000723' created_at ='20210219140611.2182460 ' last_changed_by ='CB0000000723' last_changed_at ='20210219140611.2182460 '  )
 ( client ='100' therapy_type_id ='Commercial' therapy_type_name ='Commercial' created_by ='CB0000000723' created_at ='20210219140627.8502050 ' last_changed_by ='CB0000000723' last_changed_at ='20210219140627.8502050 '  )
 ).

    DELETE FROM zpoco_c_ttype_a.
    INSERT zpoco_c_ttype_a FROM TABLE @lt_ttype.

  ENDMETHOD.

  METHOD fill_capacity.

    DATA: lt_capacity TYPE TABLE OF zpoco_d_capact_a.

    lt_capacity =
VALUE #( ( client ='100' capacity_uuid ='02605AA74F061EEB9DA41FE3ED879EE2' mfg_plant_id ='PL1' mfg_start_date ='20210331' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151654.5272730 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153003.3375300 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA41EC20A058230' mfg_plant_id ='PL1' mfg_start_date ='20210331' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151640.9305380 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153009.8054110 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA454081CEF827C' mfg_plant_id ='PL2' mfg_start_date ='20210331' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152835.1270400 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153016.8387690 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA454FF8FA8027E' mfg_plant_id ='PL2' mfg_start_date ='20210331' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152848.4322260 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153023.7422220 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA41CA4CEE38221' mfg_plant_id ='PL1' mfg_start_date ='20210330' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151610.9543900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153030.6451720 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA41D9BB3FB4222' mfg_plant_id ='PL1' mfg_start_date ='20210330' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151623.8954460 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153035.9931710 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA452EC9D8E1F32' mfg_plant_id ='PL2' mfg_start_date ='20210329' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152820.8547010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153041.4944470 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA41B9EF407C220' mfg_plant_id ='PL1' mfg_start_date ='20210329' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151557.2219980 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153046.2274870 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4520888A98279' mfg_plant_id ='PL2' mfg_start_date ='20210329' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152807.5354450 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153058.5959190 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA417BE86499EDC' mfg_plant_id ='PL1' mfg_start_date ='20210328' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151505.1908960 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153104.7108040 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA418868A36FEDD' mfg_plant_id ='PL1' mfg_start_date ='20210328' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151516.7086760 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153111.6406990 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA41A20E8469EDE' mfg_plant_id ='PL1' mfg_start_date ='20210328' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151537.1896460 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153117.9386940 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4510D26140277' mfg_plant_id ='PL2' mfg_start_date ='20210328' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152755.5339320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153123.2982570 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA45056BE1B1F2E' mfg_plant_id ='PL2' mfg_start_date ='20210327' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152744.7885590 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153128.6683430 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA416B6ACC8E21A' mfg_plant_id ='PL1' mfg_start_date ='20210327' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151451.9978650 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153253.6787210 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA40BB394BA5ED0' mfg_plant_id ='PL1' mfg_start_date ='20210326' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151223.5539890 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153259.9848290 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA44F7F6EFFDF2D' mfg_plant_id ='PL2' mfg_start_date ='20210326' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152733.5005770 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153305.1201530 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4096D15194206' mfg_plant_id ='PL1' mfg_start_date ='20210326' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151153.0160240 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153310.7464710 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA40EF5CD38820F' mfg_plant_id ='PL1' mfg_start_date ='20210326' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151307.2910460 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153315.9722570 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4068ADCAE41F7' mfg_plant_id ='PL1' mfg_start_date ='20210325' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151114.7071820 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153321.1825300 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4076B583781F8' mfg_plant_id ='PL1' mfg_start_date ='20210325' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151126.0180760 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153326.4165280 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA44D4E1D9E8273' mfg_plant_id ='PL2' mfg_start_date ='20210325' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152704.0094140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153331.9755530 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA44E9CD6376274' mfg_plant_id ='PL2' mfg_start_date ='20210325' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152722.8537080 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153337.0809320 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA44B3CEC715F21' mfg_plant_id ='PL2' mfg_start_date ='20210324' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152636.3257180 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153342.7552180 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA44C4E45DBBF22' mfg_plant_id ='PL2' mfg_start_date ='20210324' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152651.9136120 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153348.5505440 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA4057C5DBFDEBB' mfg_plant_id ='PL1' mfg_start_date ='20210323' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151101.9215950 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153354.8878730 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA44A3A1BB1DF21' mfg_plant_id ='PL2' mfg_start_date ='20210323' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152622.7579710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153401.2114960 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA447807C758268' mfg_plant_id ='PL2' mfg_start_date ='20210323' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152546.1812350 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153406.1587030 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4486851790268' mfg_plant_id ='PL2' mfg_start_date ='20210323' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinic' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152558.3363980 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153411.2122570 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA449566135426A' mfg_plant_id ='PL2' mfg_start_date ='20210323' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinic' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152610.8176140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153416.3620490 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA446804CCD5F1D' mfg_plant_id ='PL2' mfg_start_date ='20210322' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152532.7497890 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153421.2370210 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA445B3EBC70264' mfg_plant_id ='PL2' mfg_start_date ='20210322' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152522.3183140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153426.4969050 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA444AA3627DF1A' mfg_plant_id ='PL2' mfg_start_date ='20210321' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152508.1059440 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153431.4056700 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA404A05FA31EBB' mfg_plant_id ='PL1' mfg_start_date ='20210320' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151049.0190090 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153436.5333050 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA441C98D44DF19' mfg_plant_id ='PL2' mfg_start_date ='20210320' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152430.8462270 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153442.8626070 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA442D25F548260' mfg_plant_id ='PL2' mfg_start_date ='20210320' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152443.3658430 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153450.7673000 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA443A3C7368261' mfg_plant_id ='PL2' mfg_start_date ='20210320' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152455.7081030 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153456.4151360 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA43F2601BB5F14' mfg_plant_id ='PL2' mfg_start_date ='20210319' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinic' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152354.0634860 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153502.3027770 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA44027D52DDF15' mfg_plant_id ='PL2' mfg_start_date ='20210319' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152407.5859560 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153508.5224240 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA44101227C5F18' mfg_plant_id ='PL2' mfg_start_date ='20210319' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152418.9725300 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153513.9052550 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA403ACA28E81F3' mfg_plant_id ='PL1' mfg_start_date ='20210319' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151036.1773630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153520.9355580 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA402916B5A41F2' mfg_plant_id ='PL1' mfg_start_date ='20210318' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151020.9677270 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153527.1302940 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA43E0EAF1D825A' mfg_plant_id ='PL2' mfg_start_date ='20210318' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152339.4188540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153532.3175640 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA40058346B1EB7' mfg_plant_id ='PL1' mfg_start_date ='20210317' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150952.9708310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153538.2830990 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA43B5398F19F11' mfg_plant_id ='PL2' mfg_start_date ='20210317' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152302.7770030 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153544.2099150 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA43C526CDF1F13' mfg_plant_id ='PL2' mfg_start_date ='20210317' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152316.1289730 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153549.0486600 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3FE489D95C1EC' mfg_plant_id ='PL1' mfg_start_date ='20210317' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150923.4638170 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153553.9831140 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3FF4B9525C1EE' mfg_plant_id ='PL1' mfg_start_date ='20210317' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150937.7820400 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153606.4109290 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA40153AB4081F0' mfg_plant_id ='PL1' mfg_start_date ='20210317' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151004.9677290 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153612.2270030 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4396B8DB98255' mfg_plant_id ='PL2' mfg_start_date ='20210317' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152237.2736730 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153618.1874190 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA43A5D8476C257' mfg_plant_id ='PL2' mfg_start_date ='20210317' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinic' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152249.8642980 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153625.2000580 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA43D319EF14259' mfg_plant_id ='PL2' mfg_start_date ='20210317' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152327.8387280 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153631.0994830 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3FD54BCC0C1EB' mfg_plant_id ='PL1' mfg_start_date ='20210316' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150910.6782630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153637.3868200 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3FC3AA0351EB0' mfg_plant_id ='PL1' mfg_start_date ='20210315' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150856.8339210 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153642.8046940 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA43843DF859F11' mfg_plant_id ='PL2' mfg_start_date ='20210315' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152222.6835740 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153648.9532750 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3FB37026021E8' mfg_plant_id ='PL1' mfg_start_date ='20210315' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150842.8274020 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153654.8486910 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3F6D2E5CADEA9' mfg_plant_id ='PL1' mfg_start_date ='20210314' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150743.3503310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153700.7679700 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3F7DD9D3C41E3' mfg_plant_id ='PL1' mfg_start_date ='20210314' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150757.3895490 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153706.0618100 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3F8E49D0001E4' mfg_plant_id ='PL1' mfg_start_date ='20210314' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150811.6035930 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153712.2245600 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3F9E038F1A1E5' mfg_plant_id ='PL1' mfg_start_date ='20210314' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150825.1139860 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153718.4662610 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA43456E112E248' mfg_plant_id ='PL2' mfg_start_date ='20210314' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinic' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152129.1400870 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153725.3636360 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4352F4D77E251' mfg_plant_id ='PL2' mfg_start_date ='20210314' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152141.2205030 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153733.3098870 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4369FB6A1C252' mfg_plant_id ='PL2' mfg_start_date ='20210314' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinic' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152159.6487610 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153739.4156230 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3F567398D9EA8' mfg_plant_id ='PL1' mfg_start_date ='20210313' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150724.2750880 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153745.3640940 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3F4714439C1DD' mfg_plant_id ='PL1' mfg_start_date ='20210313' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150711.3766160 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153750.9725350 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4338785A3E247' mfg_plant_id ='PL2' mfg_start_date ='20210313' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152118.0656170 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153757.4601210 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3E9673A201E91' mfg_plant_id ='PL1' mfg_start_date ='20210312' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150443.4736280 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153803.2076550 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3EC6E20395E96' mfg_plant_id ='PL1' mfg_start_date ='20210312' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150523.8412330 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153810.6202770 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA431BD7B8B9F04' mfg_plant_id ='PL2' mfg_start_date ='20210312' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152054.1012770 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153816.7232640 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA4328EB9971F05' mfg_plant_id ='PL2' mfg_start_date ='20210312' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152105.0706390 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153822.0901710 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3EA5CDFA401C3' mfg_plant_id ='PL1' mfg_start_date ='20210312' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150457.5019150 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153827.9017340 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3EB70FC8541C4' mfg_plant_id ='PL1' mfg_start_date ='20210312' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150510.7065530 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153833.4542940 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3E86073C81E8F' mfg_plant_id ='PL1' mfg_start_date ='20210311' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150430.2262390 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153840.3886520 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA42EEB9BE1C243' mfg_plant_id ='PL2' mfg_start_date ='20210311' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152016.2534820 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153846.6342790 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA42FD0B4A84244' mfg_plant_id ='PL2' mfg_start_date ='20210311' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152029.5947690 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153852.4924530 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA430AC2E4D0246' mfg_plant_id ='PL2' mfg_start_date ='20210311' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152039.7708750 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153858.6525740 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA42BE274A59EFB' mfg_plant_id ='PL2' mfg_start_date ='20210310' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151935.5139090 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153904.5976710 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA42C8B7403BEFC' mfg_plant_id ='PL2' mfg_start_date ='20210310' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151945.7151660 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153910.9670140 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA42DAA6D338241' mfg_plant_id ='PL2' mfg_start_date ='20210310' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151959.4184880 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153916.7785960 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3E76901A21E8F' mfg_plant_id ='PL1' mfg_start_date ='20210309' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150416.4586590 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153922.2838380 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3E55E1E7B81BE' mfg_plant_id ='PL1' mfg_start_date ='20210308' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150349.0517550 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153928.7627850 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA422DB201C4234' mfg_plant_id ='PL2' mfg_start_date ='20210301' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151734.9580570 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153936.0603030 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA4572809F35F39' mfg_plant_id ='PL3' mfg_start_date ='20210301' cons_slots ='X' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='DE' nvs_id ='NT58165' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222152916.2932490 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153943.2234870 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA421BFA5ECDEED' mfg_plant_id ='PL2' mfg_start_date ='20210301' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151720.3641240 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153948.9042230 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3DBF58A9BDE75' mfg_plant_id ='PL1' mfg_start_date ='20210301' cons_slots ='X' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='IT' nvs_id ='NT58348' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150142.7681780 ' last_changed_by ='CB0000000723' last_changed_at ='20210222153954.1121220 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA423C303A2C235' mfg_plant_id ='PL2' mfg_start_date ='20210302' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151746.6037640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154000.5416420 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4266902BD8238' mfg_plant_id ='PL2' mfg_start_date ='20210304' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151822.6338390 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154006.0104450 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA42493E256A236' mfg_plant_id ='PL2' mfg_start_date ='20210304' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151758.6550690 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154011.3776810 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3DFCC331A41B6' mfg_plant_id ='PL1' mfg_start_date ='20210304' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150234.4122020 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154017.2873060 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA4257959579EF2' mfg_plant_id ='PL2' mfg_start_date ='20210304' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151810.3334140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154023.1512630 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3DEB0CCD09E81' mfg_plant_id ='PL1' mfg_start_date ='20210304' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150219.6254200 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154029.4505880 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3DD874836DE75' mfg_plant_id ='PL1' mfg_start_date ='20210304' cons_slots ='' priority ='Clin' prot_subject_id ='' ttype_id ='Clinical' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150203.8296100 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154035.5414010 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA4274D8C250239' mfg_plant_id ='PL2' mfg_start_date ='20210305' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151834.0126990 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154041.4462180 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3E0F6E01B81B9' mfg_plant_id ='PL1' mfg_start_date ='20210305' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150249.9534200 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154047.6173070 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA42830BA555EF5' mfg_plant_id ='PL2' mfg_start_date ='20210305' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151845.9261570 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154053.4052200 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA429E86A68023B' mfg_plant_id ='PL2' mfg_start_date ='20210306' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151908.9764420 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154101.0690780 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3E64592BD41BF' mfg_plant_id ='PL1' mfg_start_date ='20210308' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150402.5780420 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154108.0958110 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA3E467924081BC' mfg_plant_id ='PL1' mfg_start_date ='20210307' cons_slots ='' priority ='H' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150336.1184370 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154114.0074140 '  )
 ( client ='100' capacity_uuid ='02E7896636F21EDB9DA42B03C041023C' mfg_plant_id ='PL2' mfg_start_date ='20210307' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222151923.8357350 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154120.3041530 '  )
 ( client ='100' capacity_uuid ='02605AA74F061EEB9DA3E21B3A9E1E86' mfg_plant_id ='PL1' mfg_start_date ='20210306' cons_slots ='' priority ='N' prot_subject_id ='' ttype_id ='Commercial' country_id ='' nvs_id ='' country_alloc ='' created_by =
'CB0000000723' created_at ='20210222150305.2722750 ' last_changed_by ='CB0000000723' last_changed_at ='20210222154126.6353560 '  )
 ).

    DELETE FROM zpoco_d_capact_a.
    INSERT zpoco_d_capact_a FROM TABLE @lt_capacity.

  ENDMETHOD.

  METHOD fill_order.
    DATA: lt_order TYPE TABLE OF zpoco_d_order_a.

    lt_order =
VALUE #( ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDDC' nvs_id ='NT57853' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210302' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
 ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAA' nvs_id ='NT57854' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210302' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
 ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAB' nvs_id ='NT57855' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210302' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
 ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAC' nvs_id ='NT57856' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210302' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
 ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAD' nvs_id ='NT57857' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210305' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
 ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAE' nvs_id ='NT57858' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210307' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='S13' oos ='X'
oos_descr ='PHYSICIAN REQUESTED' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
 ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAF' nvs_id ='NT57859' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20210307' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS17' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA55861D2EC40A8' nvs_id ='NT57864' therapy ='CYTB323A12105' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinic' day0 ='20200305' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS10' oos ='' oos_descr =''
aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162650.4264010 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061045.1308330 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA5483368A5040E' nvs_id ='NT57860' therapy ='CYTB323A12101' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinic' day0 ='20200313' stsl1_id ='ST3' stsl2_id ='ST11' ord_site_id ='S13' oos ='' oos_descr =''
aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162312.0491520 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061118.8777470 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA54CBCFCE0C413' nvs_id ='NT57861' therapy ='CYTB323A12102' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinic' day0 ='20200305' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS17' oos ='' oos_descr =''
aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162412.4398340 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061126.2087560 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA55083D71F0419' nvs_id ='NT57862' therapy ='CYTB323A12103' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinic' day0 ='20200313' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS6' oos ='' oos_descr =''
aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162503.1346070 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061132.7135560 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA554E92755E41E' nvs_id ='NT57863' therapy ='CYTB323A12104' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Clinic' day0 ='20200307' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='S13' oos ='' oos_descr =''
aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222162602.0834220 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061138.5204720 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA55BB58CE6042E' nvs_id ='NT57865' therapy ='CYTB323A12106' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Clinic' day0 ='20200313' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS12' oos ='' oos_descr =''
aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162733.4585450 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061143.9841030 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA55F1F1413C433' nvs_id ='NT57866' therapy ='CYTB323A12107' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Clinic' day0 ='20200309' stsl1_id ='ST1' stsl2_id ='' ord_site_id ='OS24' oos ='X' oos_descr =
'Physician Declined' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162819.1758290 ' last_changed_by ='CB0000000723' last_changed_at ='20210222162819.1758290 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA56252C8FFC437' nvs_id ='NT57867' therapy ='CYTB323A12108' country_id ='IT' mfg_plant_id ='PL2' ttype_id ='Clinic' day0 ='20200307' stsl1_id ='ST1' stsl2_id ='' ord_site_id ='OS11' oos ='' oos_descr =''
aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162902.1542680 ' last_changed_by ='CB0000000723' last_changed_at ='20210223061152.3715920 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA56674D405C43D' nvs_id ='NT57868' therapy ='CCTL019G2201J' country_id ='DE' mfg_plant_id ='PL1' ttype_id ='Clinic' day0 ='20200312' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS4' oos ='' oos_descr =''
aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222162957.6241430 ' last_changed_by ='CB0000000723' last_changed_at ='20210222162957.6241430 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA569AB5112C442' nvs_id ='NT57869' therapy ='CCTL019G2201J' country_id ='FR' mfg_plant_id ='PL3' ttype_id ='Clinic' day0 ='20200305' stsl1_id ='ST3' stsl2_id ='ST10' ord_site_id ='OS20' oos ='' oos_descr =''
aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222163040.7463750 ' last_changed_by ='CB0000000723' last_changed_at ='20210222163040.7463750 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA56D366D064446' nvs_id ='NT57870' therapy ='CCTL019G2201J' country_id ='AU' mfg_plant_id ='PL1' ttype_id ='Clinic' day0 ='20200303' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS25' oos ='' oos_descr =''
aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222163128.3080710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222163128.3080710 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA5ABE17B93412D' nvs_id ='NT57871' therapy ='KYMRIAH - Pediatric ALL US' country_id ='AT' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200306' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS25' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164529.9611200 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164529.9611200 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA5AFB5DDF504D1' nvs_id ='NT57872' therapy ='KYMRIAH - Pediatric ALL US' country_id ='ES' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200306' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS15' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164620.8244810 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164620.8244810 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA5B2DB27880133' nvs_id ='NT57873' therapy ='KYMRIAH - Pediatric ALL US' country_id ='ES' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200305' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS15' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164703.0496320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164703.0496320 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA5B61D7615C146' nvs_id ='NT57874' therapy ='KYMRIAH - Pediatric ALL US' country_id ='CZ' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200301' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='OS3' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164746.7868270 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164746.7868270 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA5B8DDA427414A' nvs_id ='NT57875' therapy ='KYMRIAH - Pediatric ALL US' country_id ='CZ' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200312' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS3' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222164823.7057140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164823.7057140 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA5BBB25F6B04E3' nvs_id ='NT57876' therapy ='KYMRIAH - Pediatric ALL US' country_id ='HU' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200312' stsl1_id ='ST3' stsl2_id ='ST11' ord_site_id ='OS9' oos =
'' oos_descr ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222164901.7047570 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164901.7047570 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA5BE7DA94B814E' nvs_id ='NT57877' therapy ='KYMRIAH - Pediatric ALL US' country_id ='RO' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200305' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222164939.2093330 ' last_changed_by ='CB0000000723' last_changed_at ='20210222164939.2093330 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA5C14F40E34152' nvs_id ='NT57878' therapy ='KYMRIAH - Pediatric ALL US' country_id ='RO' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200309' stsl1_id ='ST3' stsl2_id ='ST3' ord_site_id ='OS1' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222165017.0352140 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165017.0352140 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA5C465803A8155' nvs_id ='NT57879' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200313' stsl1_id ='ST3' stsl2_id ='ST3' ord_site_id ='OS21' oos
='' oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222165059.2628540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165059.2628540 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA5C76F1DA304F5' nvs_id ='NT57880' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200305' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='OS21' oos
='' oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222165139.2421510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222165139.2421510 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA6045048D34568' nvs_id ='NT57881' therapy ='KYMRIAH - Pediatric ALL ISR' country_id ='IL' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200307' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS21' oos
='' oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170516.3565410 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170516.3565410 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA60793B8F801C5' nvs_id ='NT57882' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200307' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS7' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170600.1702630 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170600.1702630 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA60A7E52FE456F' nvs_id ='NT57883' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='IT' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200307' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS18' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170639.2949900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170639.2949900 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA60E9B241B81D7' nvs_id ='NT57884' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200304' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS5' oos =
'X' oos_descr ='Physician Declined' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170735.6021510 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170735.6021510 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA611085DC1057E' nvs_id ='NT57885' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='GR' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200307' stsl1_id ='ST1' stsl2_id ='' ord_site_id ='OS5' oos =''
oos_descr ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170807.0629640 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170807.0629640 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA6140318554582' nvs_id ='NT57886' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200307' stsl1_id ='ST3' stsl2_id ='ST4' ord_site_id ='OS1' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222170847.0525320 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170847.0525320 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA61750C77E8583' nvs_id ='NT57887' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='RO' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200306' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS1' oos =
'X' oos_descr ='Physician Requested' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222170931.3884000 ' last_changed_by ='CB0000000723' last_changed_at ='20210222170931.3884000 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA61A4C641F81E3' nvs_id ='NT57888' therapy ='KYMRIAH - Pediatric ALL EU' country_id ='UK' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200306' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS14' oos =
'' oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171011.4305710 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171011.4305710 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA61E6C7B4B058E' nvs_id ='NT57889' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200307' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS19' oos ='X'
oos_descr ='Physician Requested' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171106.7934310 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171106.7934310 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA62107BE358593' nvs_id ='NT57890' therapy ='KYMRIAH - DLBCL EU' country_id ='DE' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200307' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS4' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171141.7781010 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171141.7781010 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA623483121C5A0' nvs_id ='NT57891' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200309' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS20' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171212.0004840 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171212.0004840 '  )
 ( client ='100' order_uuid ='02605AA74F061EDB9DA626BEC21481F9' nvs_id ='NT57892' therapy ='KYMRIAH - DLBCL EU' country_id ='FR' mfg_plant_id ='PL3' ttype_id ='Commercial' day0 ='20200307' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS16' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222171258.6508880 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171258.6508880 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA62A744502C5A9' nvs_id ='NT57893' therapy ='KYMRIAH - DLBCL EU' country_id ='NO' mfg_plant_id ='PL1' ttype_id ='Commercial' day0 ='20200311' stsl1_id ='ST3' stsl2_id ='ST2' ord_site_id ='OS2' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171348.3249220 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171348.3249220 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA62D5C6303C5AC' nvs_id ='NT57894' therapy ='KYMRIAH - DLBCL EU' country_id ='NO' mfg_plant_id ='PL2' ttype_id ='Commercial' day0 ='20200311' stsl1_id ='ST3' stsl2_id ='ST10' ord_site_id ='OS2' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171427.2762910 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171427.2762910 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA62FE3E82945B0' nvs_id ='NT57895' therapy ='KYMRIAH - DLBCL EU' country_id ='BE' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200314' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS8' oos =''
oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171501.2250100 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171501.2250100 '  )
 ( client ='100' order_uuid ='02E7896636F21EDB9DA63202ED9D05B3' nvs_id ='NT57896' therapy ='KYMRIAH - DLBCL EU' country_id ='SE' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20200310' stsl1_id ='ST3' stsl2_id ='ST1' ord_site_id ='OS23' oos =''
oos_descr ='' aph_dewar ='' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222171529.7050900 ' last_changed_by ='CB0000000723' last_changed_at ='20210222171529.7050900 '  )
 ).


    DELETE FROM zpoco_d_order_a.
    INSERT zpoco_d_order_a FROM TABLE @lt_order.

  ENDMETHOD.

ENDCLASS.
