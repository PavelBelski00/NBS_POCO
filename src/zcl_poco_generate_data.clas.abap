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

    INSERT zpoco_c_plant_a FROM TABLE @lt_plant.

  ENDMETHOD.

  METHOD fill_sites.

    DATA: lt_sites TYPE TABLE OF zpoco_c_site_a.

    lt_sites =
VALUE #( ( CLIENT ='100' ORD_SITE_ID ='OS1' ORD_SITE_NAME ='Bucharest Hospital' CREATED_BY ='CB0000000723' CREATED_AT ='20210219142905.1564690 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219142905.1564690 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS2' ORD_SITE_NAME ='Oslo Medical Center' CREATED_BY ='CB0000000723' CREATED_AT ='20210219142916.7859880 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219142916.7859880 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS3' ORD_SITE_NAME ='Praha Cancer' CREATED_BY ='CB0000000723' CREATED_AT ='20210219142936.6671740 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219142936.6671740 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS4' ORD_SITE_NAME ='Stuttgart Hospital' CREATED_BY ='CB0000000723' CREATED_AT ='20210219142950.6976540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219142950.6976540 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS5' ORD_SITE_NAME ='Agia Sophia' CREATED_BY ='CB0000000723' CREATED_AT ='20210219143003.0091340 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143003.0091340 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS6' ORD_SITE_NAME ='Baylor' CREATED_BY ='CB0000000723' CREATED_AT ='20210219143014.9388290 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143014.9388290 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS7' ORD_SITE_NAME ='Bologna Cancer Center' CREATED_BY ='CB0000000723' CREATED_AT ='20210219143033.0655220 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143033.0655220 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS8' ORD_SITE_NAME ='Brussels Hospital' CREATED_BY ='CB0000000723' CREATED_AT ='20210219143052.2438260 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143052.2438260 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS9' ORD_SITE_NAME ='Budapest Univ. Cancer Hospital' CREATED_BY ='CB0000000723' CREATED_AT ='20210219143127.8869140 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143127.8869140 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS10' ORD_SITE_NAME ='Childrens Hospital of Philadelphia' CREATED_BY ='CB0000000723' CREATED_AT ='20210219143921.4608330 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143921.4608330 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS11' ORD_SITE_NAME ='Hamburg Hospital' CREATED_BY ='CB0000000723' CREATED_AT ='20210219143937.0458000 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143937.0458000 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS12' ORD_SITE_NAME ='Hospital Saint Louis' CREATED_BY ='CB0000000723' CREATED_AT ='20210219143950.3370020 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143950.3370020 '  )
 ( CLIENT ='100' ORD_SITE_ID ='S13'  ORD_SITE_NAME ='Kansas University' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144003.0033660 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144003.0033660 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS14' ORD_SITE_NAME ='London Imperial Hospital' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144018.6071210 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144018.6071210 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS15' ORD_SITE_NAME ='Madrid Cancer Center' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144101.4734150 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144101.4734150 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS16' ORD_SITE_NAME ='Marseille Cancer Hospital' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144205.8733810 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144205.8733810 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS17' ORD_SITE_NAME ='MD Anderson' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144227.6181500 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144227.6181500 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS18' ORD_SITE_NAME ='Milano Universitat' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144251.7848830 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144251.7848830 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS19' ORD_SITE_NAME ='Munchen Center' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144307.7575150 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144307.7575150 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS20' ORD_SITE_NAME ='Paris Hospital' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144412.8100290 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144412.8100290 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS21' ORD_SITE_NAME ='Sheba Medical Center' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144505.2780460 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144505.2780460 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS22' ORD_SITE_NAME ='Stanford' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144533.9091300 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144538.8593450 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS23' ORD_SITE_NAME ='Stockholm Hospital' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144610.3886470 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144610.3886470 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS24' ORD_SITE_NAME ='Univ. Hospital Frankfurt' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144725.2778750 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144725.2778750 '  )
 ( CLIENT ='100' ORD_SITE_ID ='OS25' ORD_SITE_NAME ='Wienna University Hospital' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144857.0433240 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144857.0433240 '  )
 ).

 INSERT zpoco_c_site_a FROM TABLE @lt_sites.


  ENDMETHOD.

  METHOD fill_stsl1.

    DATA: lt_stsl1 TYPE TABLE OF zpoco_c_stsl1_a.

    lt_stsl1 =
VALUE #( ( CLIENT ='100' STSL1_ID ='ST1' STSL1_NAME ='Cancelled' CREATED_BY ='CB0000000723' CREATED_AT ='20210219134930.8398120 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219134930.8398120 '  )
 ( CLIENT ='100' STSL1_ID ='ST2' STSL1_NAME ='Manufacturing' CREATED_BY ='CB0000000723' CREATED_AT ='20210219134943.0177150 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219134943.0177150 '  )
 ( CLIENT ='100' STSL1_ID ='ST3' STSL1_NAME ='Ordering & Collection' CREATED_BY ='CB0000000723' CREATED_AT ='20210219135004.4814060 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219135004.4814060 '  )
 ( CLIENT ='100' STSL1_ID ='ST4' STSL1_NAME ='Shipment' CREATED_BY ='CB0000000723' CREATED_AT ='20210219135014.8641700 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219135014.8641700 '  )
 ).


  INSERT zpoco_c_stsl1_a FROM TABLE @lt_stsl1.

  ENDMETHOD.

  METHOD fill_stsl2.

    DATA: lt_stsl2 TYPE TABLE OF zpoco_c_stsl2_a.

    lt_stsl2 =
VALUE #( ( CLIENT ='100' STSL2_ID ='ST1' STSL2_NAME ='ADF Approved' CREATED_BY ='CB0000000723' CREATED_AT ='20210219143901.0587920 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143901.0587920 '  )
 ( CLIENT ='100' STSL2_ID ='ST2' STSL2_NAME ='APH Picked up' CREATED_BY ='CB0000000723' CREATED_AT ='20210219143945.7706500 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143945.7706500 '  )
 ( CLIENT ='100' STSL2_ID ='ST10' STSL2_NAME ='Plant Reserved' CREATED_BY ='CB0000000723' CREATED_AT ='20210219152448.3905010 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222080431.6887650 '  )
 ( CLIENT ='100' STSL2_ID ='ST4' STSL2_NAME ='Apheresis Dispositioned' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144112.5684480 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144112.5684480 '  )
 ( CLIENT ='100' STSL2_ID ='ST5' STSL2_NAME ='FP MFG Dispositioned' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144158.3499730 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144158.3499730 '  )
 ( CLIENT ='100' STSL2_ID ='ST6' STSL2_NAME ='FP Received at ship' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144312.5590650 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144312.5590650 '  )
 ( CLIENT ='100' STSL2_ID ='ST7' STSL2_NAME ='FP Shipped from MFG Plant' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144401.2933060 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219144401.2933060 '  )
 ( CLIENT ='100' STSL2_ID ='ST8' STSL2_NAME ='Manufacturing Ended' CREATED_BY ='CB0000000723' CREATED_AT ='20210219152322.4661540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219152322.4661540 '  )
 ( CLIENT ='100' STSL2_ID ='ST9' STSL2_NAME ='Manufacturing Started' CREATED_BY ='CB0000000723' CREATED_AT ='20210219152411.8035660 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219152411.8035660 '  )
 ( CLIENT ='100' STSL2_ID ='ST3' STSL2_NAME ='Apheresis Received' CREATED_BY ='CB0000000723' CREATED_AT ='20210219144021.4907560 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222080522.3843200 '  )
 ( CLIENT ='100' STSL2_ID ='ST11' STSL2_NAME ='PRF Submitted' CREATED_BY ='CB0000000723' CREATED_AT ='20210219152554.9388290 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219152554.9388290 '  )
 ).


  INSERT zpoco_c_stsl2_a FROM TABLE @lt_stsl2.

  ENDMETHOD.

  METHOD fill_therapy_type.

    DATA: lt_ttype TYPE TABLE OF zpoco_c_ttype_a.

    lt_ttype =
VALUE #( ( CLIENT ='100' THERAPY_TYPE_ID ='Clinic' THERAPY_TYPE_NAME ='Clinic' CREATED_BY ='CB0000000723' CREATED_AT ='20210219140611.2182460 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219140611.2182460 '  )
 ( CLIENT ='100' THERAPY_TYPE_ID ='Commercial' THERAPY_TYPE_NAME ='Commercial' CREATED_BY ='CB0000000723' CREATED_AT ='20210219140627.8502050 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219140627.8502050 '  )
 ).

  INSERT zpoco_c_ttype_a FROM TABLE @lt_ttype.

  ENDMETHOD.

  METHOD fill_capacity.

    DATA: lt_capacity TYPE TABLE OF zpoco_d_capact_a.

    lt_capacity =
VALUE #( ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA41FE3ED879EE2' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210331' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151654.5272730 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153003.3375300 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA41EC20A058230' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210331' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151640.9305380 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153009.8054110 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA454081CEF827C' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210331' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152835.1270400 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153016.8387690 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA454FF8FA8027E' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210331' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152848.4322260 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153023.7422220 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA41CA4CEE38221' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210330' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151610.9543900 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153030.6451720 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA41D9BB3FB4222' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210330' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151623.8954460 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153035.9931710 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA452EC9D8E1F32' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210329' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152820.8547010 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153041.4944470 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA41B9EF407C220' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210329' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151557.2219980 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153046.2274870 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4520888A98279' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210329' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152807.5354450 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153058.5959190 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA417BE86499EDC' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210328' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151505.1908960 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153104.7108040 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA418868A36FEDD' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210328' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151516.7086760 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153111.6406990 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA41A20E8469EDE' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210328' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151537.1896460 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153117.9386940 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4510D26140277' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210328' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152755.5339320 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153123.2982570 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA45056BE1B1F2E' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210327' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152744.7885590 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153128.6683430 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA416B6ACC8E21A' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210327' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151451.9978650 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153253.6787210 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA40BB394BA5ED0' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210326' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151223.5539890 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153259.9848290 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA44F7F6EFFDF2D' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210326' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152733.5005770 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153305.1201530 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4096D15194206' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210326' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151153.0160240 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153310.7464710 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA40EF5CD38820F' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210326' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151307.2910460 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153315.9722570 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4068ADCAE41F7' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210325' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151114.7071820 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153321.1825300 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4076B583781F8' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210325' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151126.0180760 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153326.4165280 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA44D4E1D9E8273' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210325' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152704.0094140 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153331.9755530 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA44E9CD6376274' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210325' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152722.8537080 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153337.0809320 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA44B3CEC715F21' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210324' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152636.3257180 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153342.7552180 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA44C4E45DBBF22' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210324' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152651.9136120 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153348.5505440 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA4057C5DBFDEBB' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210323' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151101.9215950 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153354.8878730 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA44A3A1BB1DF21' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210323' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152622.7579710 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153401.2114960 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA447807C758268' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210323' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152546.1812350 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153406.1587030 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4486851790268' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210323' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinic' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152558.3363980 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153411.2122570 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA449566135426A' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210323' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinic' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152610.8176140 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153416.3620490 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA446804CCD5F1D' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210322' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152532.7497890 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153421.2370210 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA445B3EBC70264' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210322' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152522.3183140 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153426.4969050 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA444AA3627DF1A' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210321' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152508.1059440 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153431.4056700 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA404A05FA31EBB' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210320' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151049.0190090 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153436.5333050 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA441C98D44DF19' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210320' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152430.8462270 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153442.8626070 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA442D25F548260' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210320' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152443.3658430 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153450.7673000 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA443A3C7368261' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210320' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152455.7081030 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153456.4151360 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA43F2601BB5F14' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210319' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinic' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152354.0634860 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153502.3027770 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA44027D52DDF15' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210319' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152407.5859560 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153508.5224240 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA44101227C5F18' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210319' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152418.9725300 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153513.9052550 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA403ACA28E81F3' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210319' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151036.1773630 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153520.9355580 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA402916B5A41F2' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210318' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151020.9677270 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153527.1302940 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA43E0EAF1D825A' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210318' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152339.4188540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153532.3175640 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA40058346B1EB7' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210317' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinical' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150952.9708310 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153538.2830990 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA43B5398F19F11' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210317' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152302.7770030 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153544.2099150 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA43C526CDF1F13' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210317' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152316.1289730 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153549.0486600 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3FE489D95C1EC' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210317' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150923.4638170 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153553.9831140 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3FF4B9525C1EE' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210317' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150937.7820400 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153606.4109290 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA40153AB4081F0' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210317' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151004.9677290 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153612.2270030 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4396B8DB98255' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210317' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152237.2736730 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153618.1874190 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA43A5D8476C257' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210317' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinic' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152249.8642980 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153625.2000580 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA43D319EF14259' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210317' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152327.8387280 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153631.0994830 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3FD54BCC0C1EB' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210316' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150910.6782630 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153637.3868200 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3FC3AA0351EB0' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210315' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150856.8339210 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153642.8046940 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA43843DF859F11' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210315' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152222.6835740 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153648.9532750 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3FB37026021E8' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210315' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150842.8274020 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153654.8486910 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3F6D2E5CADEA9' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210314' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinical' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150743.3503310 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153700.7679700 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3F7DD9D3C41E3' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210314' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150757.3895490 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153706.0618100 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3F8E49D0001E4' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210314' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150811.6035930 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153712.2245600 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3F9E038F1A1E5' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210314' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinical' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150825.1139860 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153718.4662610 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA43456E112E248' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210314' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinic' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152129.1400870 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153725.3636360 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4352F4D77E251' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210314' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152141.2205030 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153733.3098870 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4369FB6A1C252' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210314' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinic' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152159.6487610 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153739.4156230 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3F567398D9EA8' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210313' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150724.2750880 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153745.3640940 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3F4714439C1DD' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210313' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150711.3766160 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153750.9725350 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4338785A3E247' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210313' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152118.0656170 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153757.4601210 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3E9673A201E91' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210312' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150443.4736280 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153803.2076550 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3EC6E20395E96' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210312' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150523.8412330 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153810.6202770 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA431BD7B8B9F04' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210312' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152054.1012770 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153816.7232640 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA4328EB9971F05' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210312' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152105.0706390 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153822.0901710 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3EA5CDFA401C3' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210312' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150457.5019150 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153827.9017340 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3EB70FC8541C4' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210312' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150510.7065530 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153833.4542940 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3E86073C81E8F' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210311' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150430.2262390 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153840.3886520 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA42EEB9BE1C243' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210311' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152016.2534820 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153846.6342790 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA42FD0B4A84244' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210311' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152029.5947690 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153852.4924530 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA430AC2E4D0246' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210311' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152039.7708750 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153858.6525740 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA42BE274A59EFB' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210310' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151935.5139090 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153904.5976710 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA42C8B7403BEFC' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210310' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151945.7151660 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153910.9670140 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA42DAA6D338241' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210310' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinical' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151959.4184880 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153916.7785960 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3E76901A21E8F' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210309' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150416.4586590 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153922.2838380 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3E55E1E7B81BE' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210308' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150349.0517550 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153928.7627850 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA422DB201C4234' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210301' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151734.9580570 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153936.0603030 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA4572809F35F39' MFG_PLANT_ID ='PL3' MFG_START_DATE ='20210301' CONS_SLOTS ='X' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='DE' NVS_ID ='NT58165' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222152916.2932490 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153943.2234870 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA421BFA5ECDEED' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210301' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151720.3641240 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153948.9042230 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3DBF58A9BDE75' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210301' CONS_SLOTS ='X' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='IT' NVS_ID ='NT58348' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150142.7681780 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222153954.1121220 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA423C303A2C235' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210302' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151746.6037640 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154000.5416420 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4266902BD8238' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210304' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinical' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151822.6338390 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154006.0104450 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA42493E256A236' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210304' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinical' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151758.6550690 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154011.3776810 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3DFCC331A41B6' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210304' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150234.4122020 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154017.2873060 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA4257959579EF2' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210304' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151810.3334140 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154023.1512630 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3DEB0CCD09E81' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210304' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150219.6254200 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154029.4505880 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3DD874836DE75' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210304' CONS_SLOTS ='' PRIORITY ='Clin' PROT_SUBJECT_ID ='' TTYPE_ID ='Clinical' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150203.8296100 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154035.5414010 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA4274D8C250239' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210305' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151834.0126990 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154041.4462180 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3E0F6E01B81B9' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210305' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150249.9534200 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154047.6173070 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA42830BA555EF5' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210305' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151845.9261570 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154053.4052200 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA429E86A68023B' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210306' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151908.9764420 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154101.0690780 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3E64592BD41BF' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210308' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150402.5780420 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154108.0958110 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA3E467924081BC' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210307' CONS_SLOTS ='' PRIORITY ='H' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150336.1184370 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154114.0074140 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02E7896636F21EDB9DA42B03C041023C' MFG_PLANT_ID ='PL2' MFG_START_DATE ='20210307' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222151923.8357350 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154120.3041530 '  )
 ( CLIENT ='100' CAPACITY_UUID ='02605AA74F061EEB9DA3E21B3A9E1E86' MFG_PLANT_ID ='PL1' MFG_START_DATE ='20210306' CONS_SLOTS ='' PRIORITY ='N' PROT_SUBJECT_ID ='' TTYPE_ID ='Commercial' COUNTRY_ID ='' NVS_ID ='' COUNTRY_ALLOC ='' CREATED_BY =
'CB0000000723' CREATED_AT ='20210222150305.2722750 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222154126.6353560 '  )
 ).

  INSERT zpoco_d_capact_a FROM TABLE @lt_capacity.

  ENDMETHOD.

  METHOD fill_order.
    DATA: lt_order TYPE TABLE OF zpoco_d_order_a.

    lt_order =
VALUE #( ( CLIENT ='100' ORDER_UUID ='02E7896636F21EEB9DA1D237FB80DDDC' NVS_ID ='NT57853' THERAPY ='KYMRIAH - DLBCL US' COUNTRY_ID ='US' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20210302' STSL1_ID ='ST4' STSL2_ID ='ST5' ORD_SITE_ID ='S13' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222130500.0912540 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EEB9DA1D237FB80DDAA' NVS_ID ='NT57854' THERAPY ='KYMRIAH - DLBCL US' COUNTRY_ID ='US' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20210302' STSL1_ID ='ST4' STSL2_ID ='ST6' ORD_SITE_ID ='OS22' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222130500.0912540 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EEB9DA1D237FB80DDAB' NVS_ID ='NT57855' THERAPY ='KYMRIAH - DLBCL US' COUNTRY_ID ='US' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20210302' STSL1_ID ='ST4' STSL2_ID ='ST7' ORD_SITE_ID ='OS17' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222130500.0912540 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EEB9DA1D237FB80DDAC' NVS_ID ='NT57856' THERAPY ='KYMRIAH - DLBCL US' COUNTRY_ID ='US' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20210302' STSL1_ID ='ST2' STSL2_ID ='ST8' ORD_SITE_ID ='OS10' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222132523.6762670 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EEB9DA1D237FB80DDAD' NVS_ID ='NT57857' THERAPY ='KYMRIAH - DLBCL US' COUNTRY_ID ='US' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20210305' STSL1_ID ='ST2' STSL2_ID ='ST9' ORD_SITE_ID ='OS6' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222132637.9875340 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EEB9DA1D237FB80DDAE' NVS_ID ='NT57858' THERAPY ='KYMRIAH - DLBCL US' COUNTRY_ID ='US' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20210307' STSL1_ID ='ST2' STSL2_ID ='ST8' ORD_SITE_ID ='S13' OOS ='X'
OOS_DESCR ='PHYSICIAN REQUESTED' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222132932.6862670 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EEB9DA1D237FB80DDAF' NVS_ID ='NT57859' THERAPY ='KYMRIAH - DLBCL US' COUNTRY_ID ='US' MFG_PLANT_ID ='PL5' TTYPE_ID ='Commercial' DAY0 ='20210307' STSL1_ID ='ST2' STSL2_ID ='ST9' ORD_SITE_ID ='OS17' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222130500.0912540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222133019.4930520 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA55861D2EC40A8' NVS_ID ='NT57864' THERAPY ='CYTB323A12105' COUNTRY_ID ='US' MFG_PLANT_ID ='PL5' TTYPE_ID ='Clinic' DAY0 ='20200305' STSL1_ID ='ST4' STSL2_ID ='ST7' ORD_SITE_ID ='OS10' OOS ='' OOS_DESCR =''
APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222162650.4264010 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210223061045.1308330 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA5483368A5040E' NVS_ID ='NT57860' THERAPY ='CYTB323A12101' COUNTRY_ID ='US' MFG_PLANT_ID ='PL5' TTYPE_ID ='Clinic' DAY0 ='20200313' STSL1_ID ='ST3' STSL2_ID ='ST11' ORD_SITE_ID ='S13' OOS ='' OOS_DESCR =''
APH_DEWAR ='' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222162312.0491520 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210223061118.8777470 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA54CBCFCE0C413' NVS_ID ='NT57861' THERAPY ='CYTB323A12102' COUNTRY_ID ='US' MFG_PLANT_ID ='PL5' TTYPE_ID ='Clinic' DAY0 ='20200305' STSL1_ID ='ST2' STSL2_ID ='ST8' ORD_SITE_ID ='OS17' OOS ='' OOS_DESCR =''
APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222162412.4398340 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210223061126.2087560 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA55083D71F0419' NVS_ID ='NT57862' THERAPY ='CYTB323A12103' COUNTRY_ID ='US' MFG_PLANT_ID ='PL5' TTYPE_ID ='Clinic' DAY0 ='20200313' STSL1_ID ='ST3' STSL2_ID ='ST4' ORD_SITE_ID ='OS6' OOS ='' OOS_DESCR =''
APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222162503.1346070 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210223061132.7135560 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA554E92755E41E' NVS_ID ='NT57863' THERAPY ='CYTB323A12104' COUNTRY_ID ='US' MFG_PLANT_ID ='PL5' TTYPE_ID ='Clinic' DAY0 ='20200307' STSL1_ID ='ST4' STSL2_ID ='ST7' ORD_SITE_ID ='S13' OOS ='' OOS_DESCR =''
APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222162602.0834220 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210223061138.5204720 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA55BB58CE6042E' NVS_ID ='NT57865' THERAPY ='CYTB323A12106' COUNTRY_ID ='FR' MFG_PLANT_ID ='PL2' TTYPE_ID ='Clinic' DAY0 ='20200313' STSL1_ID ='ST3' STSL2_ID ='ST4' ORD_SITE_ID ='OS12' OOS ='' OOS_DESCR =''
APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222162733.4585450 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210223061143.9841030 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA55F1F1413C433' NVS_ID ='NT57866' THERAPY ='CYTB323A12107' COUNTRY_ID ='DE' MFG_PLANT_ID ='PL2' TTYPE_ID ='Clinic' DAY0 ='20200309' STSL1_ID ='ST1' STSL2_ID ='' ORD_SITE_ID ='OS24' OOS ='X' OOS_DESCR =
'Physician Declined' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222162819.1758290 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222162819.1758290 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA56252C8FFC437' NVS_ID ='NT57867' THERAPY ='CYTB323A12108' COUNTRY_ID ='IT' MFG_PLANT_ID ='PL2' TTYPE_ID ='Clinic' DAY0 ='20200307' STSL1_ID ='ST1' STSL2_ID ='' ORD_SITE_ID ='OS11' OOS ='' OOS_DESCR =''
APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222162902.1542680 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210223061152.3715920 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA56674D405C43D' NVS_ID ='NT57868' THERAPY ='CCTL019G2201J' COUNTRY_ID ='DE' MFG_PLANT_ID ='PL1' TTYPE_ID ='Clinic' DAY0 ='20200312' STSL1_ID ='ST3' STSL2_ID ='ST1' ORD_SITE_ID ='OS4' OOS ='' OOS_DESCR =''
APH_DEWAR ='' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222162957.6241430 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222162957.6241430 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA569AB5112C442' NVS_ID ='NT57869' THERAPY ='CCTL019G2201J' COUNTRY_ID ='FR' MFG_PLANT_ID ='PL3' TTYPE_ID ='Clinic' DAY0 ='20200305' STSL1_ID ='ST3' STSL2_ID ='ST10' ORD_SITE_ID ='OS20' OOS ='' OOS_DESCR =''
APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222163040.7463750 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222163040.7463750 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA56D366D064446' NVS_ID ='NT57870' THERAPY ='CCTL019G2201J' COUNTRY_ID ='AU' MFG_PLANT_ID ='PL1' TTYPE_ID ='Clinic' DAY0 ='20200303' STSL1_ID ='ST4' STSL2_ID ='ST6' ORD_SITE_ID ='OS25' OOS ='' OOS_DESCR =''
APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222163128.3080710 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222163128.3080710 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA5ABE17B93412D' NVS_ID ='NT57871' THERAPY ='KYMRIAH - Pediatric ALL US' COUNTRY_ID ='AT' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20200306' STSL1_ID ='ST2' STSL2_ID ='ST8' ORD_SITE_ID ='OS25' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222164529.9611200 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222164529.9611200 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA5AFB5DDF504D1' NVS_ID ='NT57872' THERAPY ='KYMRIAH - Pediatric ALL US' COUNTRY_ID ='ES' MFG_PLANT_ID ='PL1' TTYPE_ID ='Commercial' DAY0 ='20200306' STSL1_ID ='ST2' STSL2_ID ='ST8' ORD_SITE_ID ='OS15' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222164620.8244810 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222164620.8244810 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA5B2DB27880133' NVS_ID ='NT57873' THERAPY ='KYMRIAH - Pediatric ALL US' COUNTRY_ID ='ES' MFG_PLANT_ID ='PL1' TTYPE_ID ='Commercial' DAY0 ='20200305' STSL1_ID ='ST2' STSL2_ID ='ST9' ORD_SITE_ID ='OS15' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222164703.0496320 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222164703.0496320 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA5B61D7615C146' NVS_ID ='NT57874' THERAPY ='KYMRIAH - Pediatric ALL US' COUNTRY_ID ='CZ' MFG_PLANT_ID ='PL3' TTYPE_ID ='Commercial' DAY0 ='20200301' STSL1_ID ='ST4' STSL2_ID ='ST5' ORD_SITE_ID ='OS3' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222164746.7868270 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222164746.7868270 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA5B8DDA427414A' NVS_ID ='NT57875' THERAPY ='KYMRIAH - Pediatric ALL US' COUNTRY_ID ='CZ' MFG_PLANT_ID ='PL1' TTYPE_ID ='Commercial' DAY0 ='20200312' STSL1_ID ='ST3' STSL2_ID ='ST1' ORD_SITE_ID ='OS3' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222164823.7057140 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222164823.7057140 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA5BBB25F6B04E3' NVS_ID ='NT57876' THERAPY ='KYMRIAH - Pediatric ALL US' COUNTRY_ID ='HU' MFG_PLANT_ID ='PL2' TTYPE_ID ='Commercial' DAY0 ='20200312' STSL1_ID ='ST3' STSL2_ID ='ST11' ORD_SITE_ID ='OS9' OOS =
'' OOS_DESCR ='' APH_DEWAR ='' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222164901.7047570 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222164901.7047570 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA5BE7DA94B814E' NVS_ID ='NT57877' THERAPY ='KYMRIAH - Pediatric ALL US' COUNTRY_ID ='RO' MFG_PLANT_ID ='PL2' TTYPE_ID ='Commercial' DAY0 ='20200305' STSL1_ID ='ST2' STSL2_ID ='ST8' ORD_SITE_ID ='OS1' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222164939.2093330 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222164939.2093330 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA5C14F40E34152' NVS_ID ='NT57878' THERAPY ='KYMRIAH - Pediatric ALL US' COUNTRY_ID ='RO' MFG_PLANT_ID ='PL1' TTYPE_ID ='Commercial' DAY0 ='20200309' STSL1_ID ='ST3' STSL2_ID ='ST3' ORD_SITE_ID ='OS1' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222165017.0352140 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222165017.0352140 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA5C465803A8155' NVS_ID ='NT57879' THERAPY ='KYMRIAH - Pediatric ALL ISR' COUNTRY_ID ='IL' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20200313' STSL1_ID ='ST3' STSL2_ID ='ST3' ORD_SITE_ID ='OS21' OOS
='' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222165059.2628540 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222165059.2628540 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA5C76F1DA304F5' NVS_ID ='NT57880' THERAPY ='KYMRIAH - Pediatric ALL ISR' COUNTRY_ID ='IL' MFG_PLANT_ID ='PL1' TTYPE_ID ='Commercial' DAY0 ='20200305' STSL1_ID ='ST4' STSL2_ID ='ST5' ORD_SITE_ID ='OS21' OOS
='' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222165139.2421510 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222165139.2421510 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA6045048D34568' NVS_ID ='NT57881' THERAPY ='KYMRIAH - Pediatric ALL ISR' COUNTRY_ID ='IL' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20200307' STSL1_ID ='ST2' STSL2_ID ='ST9' ORD_SITE_ID ='OS21' OOS
='' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222170516.3565410 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222170516.3565410 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA60793B8F801C5' NVS_ID ='NT57882' THERAPY ='KYMRIAH - Pediatric ALL EU' COUNTRY_ID ='IT' MFG_PLANT_ID ='PL3' TTYPE_ID ='Commercial' DAY0 ='20200307' STSL1_ID ='ST2' STSL2_ID ='ST9' ORD_SITE_ID ='OS7' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222170600.1702630 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222170600.1702630 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA60A7E52FE456F' NVS_ID ='NT57883' THERAPY ='KYMRIAH - Pediatric ALL EU' COUNTRY_ID ='IT' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20200307' STSL1_ID ='ST2' STSL2_ID ='ST9' ORD_SITE_ID ='OS18' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222170639.2949900 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222170639.2949900 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA60E9B241B81D7' NVS_ID ='NT57884' THERAPY ='KYMRIAH - Pediatric ALL EU' COUNTRY_ID ='GR' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20200304' STSL1_ID ='ST4' STSL2_ID ='ST7' ORD_SITE_ID ='OS5' OOS =
'X' OOS_DESCR ='Physician Declined' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222170735.6021510 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222170735.6021510 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA611085DC1057E' NVS_ID ='NT57885' THERAPY ='KYMRIAH - Pediatric ALL EU' COUNTRY_ID ='GR' MFG_PLANT_ID ='PL1' TTYPE_ID ='Commercial' DAY0 ='20200307' STSL1_ID ='ST1' STSL2_ID ='' ORD_SITE_ID ='OS5' OOS =''
OOS_DESCR ='' APH_DEWAR ='' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222170807.0629640 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222170807.0629640 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA6140318554582' NVS_ID ='NT57886' THERAPY ='KYMRIAH - Pediatric ALL EU' COUNTRY_ID ='RO' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20200307' STSL1_ID ='ST3' STSL2_ID ='ST4' ORD_SITE_ID ='OS1' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222170847.0525320 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222170847.0525320 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA61750C77E8583' NVS_ID ='NT57887' THERAPY ='KYMRIAH - Pediatric ALL EU' COUNTRY_ID ='RO' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20200306' STSL1_ID ='ST2' STSL2_ID ='ST8' ORD_SITE_ID ='OS1' OOS =
'X' OOS_DESCR ='Physician Requested' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222170931.3884000 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222170931.3884000 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA61A4C641F81E3' NVS_ID ='NT57888' THERAPY ='KYMRIAH - Pediatric ALL EU' COUNTRY_ID ='UK' MFG_PLANT_ID ='PL1' TTYPE_ID ='Commercial' DAY0 ='20200306' STSL1_ID ='ST2' STSL2_ID ='ST9' ORD_SITE_ID ='OS14' OOS =
'' OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222171011.4305710 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222171011.4305710 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA61E6C7B4B058E' NVS_ID ='NT57889' THERAPY ='KYMRIAH - DLBCL EU' COUNTRY_ID ='DE' MFG_PLANT_ID ='PL3' TTYPE_ID ='Commercial' DAY0 ='20200307' STSL1_ID ='ST2' STSL2_ID ='ST8' ORD_SITE_ID ='OS19' OOS ='X'
OOS_DESCR ='Physician Requested' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222171106.7934310 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222171106.7934310 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA62107BE358593' NVS_ID ='NT57890' THERAPY ='KYMRIAH - DLBCL EU' COUNTRY_ID ='DE' MFG_PLANT_ID ='PL2' TTYPE_ID ='Commercial' DAY0 ='20200307' STSL1_ID ='ST3' STSL2_ID ='ST2' ORD_SITE_ID ='OS4' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222171141.7781010 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222171141.7781010 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA623483121C5A0' NVS_ID ='NT57891' THERAPY ='KYMRIAH - DLBCL EU' COUNTRY_ID ='FR' MFG_PLANT_ID ='PL2' TTYPE_ID ='Commercial' DAY0 ='20200309' STSL1_ID ='ST3' STSL2_ID ='ST1' ORD_SITE_ID ='OS20' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222171212.0004840 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222171212.0004840 '  )
 ( CLIENT ='100' ORDER_UUID ='02605AA74F061EDB9DA626BEC21481F9' NVS_ID ='NT57892' THERAPY ='KYMRIAH - DLBCL EU' COUNTRY_ID ='FR' MFG_PLANT_ID ='PL3' TTYPE_ID ='Commercial' DAY0 ='20200307' STSL1_ID ='ST2' STSL2_ID ='ST8' ORD_SITE_ID ='OS16' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='X' ACTUAL_DAY0 ='X' CREATED_BY ='CB0000000723' CREATED_AT ='20210222171258.6508880 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222171258.6508880 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA62A744502C5A9' NVS_ID ='NT57893' THERAPY ='KYMRIAH - DLBCL EU' COUNTRY_ID ='NO' MFG_PLANT_ID ='PL1' TTYPE_ID ='Commercial' DAY0 ='20200311' STSL1_ID ='ST3' STSL2_ID ='ST2' ORD_SITE_ID ='OS2' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222171348.3249220 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222171348.3249220 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA62D5C6303C5AC' NVS_ID ='NT57894' THERAPY ='KYMRIAH - DLBCL EU' COUNTRY_ID ='NO' MFG_PLANT_ID ='PL2' TTYPE_ID ='Commercial' DAY0 ='20200311' STSL1_ID ='ST3' STSL2_ID ='ST10' ORD_SITE_ID ='OS2' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222171427.2762910 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222171427.2762910 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA62FE3E82945B0' NVS_ID ='NT57895' THERAPY ='KYMRIAH - DLBCL EU' COUNTRY_ID ='BE' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20200314' STSL1_ID ='ST3' STSL2_ID ='ST1' ORD_SITE_ID ='OS8' OOS =''
OOS_DESCR ='' APH_DEWAR ='X' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222171501.2250100 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222171501.2250100 '  )
 ( CLIENT ='100' ORDER_UUID ='02E7896636F21EDB9DA63202ED9D05B3' NVS_ID ='NT57896' THERAPY ='KYMRIAH - DLBCL EU' COUNTRY_ID ='SE' MFG_PLANT_ID ='PL4' TTYPE_ID ='Commercial' DAY0 ='20200310' STSL1_ID ='ST3' STSL2_ID ='ST1' ORD_SITE_ID ='OS23' OOS =''
OOS_DESCR ='' APH_DEWAR ='' FP_DEWAR ='' ACTUAL_DAY0 ='' CREATED_BY ='CB0000000723' CREATED_AT ='20210222171529.7050900 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210222171529.7050900 '  )
 ).

  INSERT zpoco_d_order_a FROM TABLE @lt_order.

  ENDMETHOD.

ENDCLASS.
