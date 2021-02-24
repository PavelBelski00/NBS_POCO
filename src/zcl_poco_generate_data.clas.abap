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
      fill_label.

ENDCLASS.



CLASS zcl_poco_generate_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    me->fill_label( ).
    me->fill_countries( ).

*    DATA: lt_order  TYPE TABLE OF zpoco_d_order_a.
*
*    lt_order =
*    VALUE #( ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDDC' nvs_id ='NT57853' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210302' stsl1_id ='ST4' stsl2_id ='ST5' ord_site_id ='S13'
*    oos ='' oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAA' nvs_id ='NT57854' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210302' stsl1_id ='ST4' stsl2_id ='ST6' ord_site_id ='OS22' oos =''
*    oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAB' nvs_id ='NT57855' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210302' stsl1_id ='ST4' stsl2_id ='ST7' ord_site_id ='OS17' oos =''
*    oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222130500.0912540 '  )
*     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAC' nvs_id ='NT57856' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210302' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='OS10' oos =''
*    oos_descr ='' aph_dewar ='X' fp_dewar ='X' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132523.6762670 '  )
*     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAD' nvs_id ='NT57857' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210305' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS6' oos =''
*    oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132637.9875340 '  )
*     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAE' nvs_id ='NT57858' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL4' ttype_id ='Commercial' day0 ='20210307' stsl1_id ='ST2' stsl2_id ='ST8' ord_site_id ='S13' oos ='X'
*    oos_descr ='PHYSICIAN REQUESTED' aph_dewar ='X' fp_dewar ='' actual_day0 ='X' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222132932.6862670 '  )
*     ( client ='100' order_uuid ='02E7896636F21EEB9DA1D237FB80DDAF' nvs_id ='NT57859' therapy ='KYMRIAH - DLBCL US' country_id ='US' mfg_plant_id ='PL5' ttype_id ='Commercial' day0 ='20210307' stsl1_id ='ST2' stsl2_id ='ST9' ord_site_id ='OS17' oos =''
*    oos_descr ='' aph_dewar ='X' fp_dewar ='' actual_day0 ='' created_by ='CB0000000723' created_at ='20210222130500.0912540 ' last_changed_by ='CB0000000723' last_changed_at ='20210222133019.4930520 '  )
* )
* .
*
*
*
**   Delete the possible entries in the database table - in case it was already filled
*    DELETE FROM zpoco_d_order_a.
**   insert the new table entries
*    INSERT zpoco_d_order_a FROM TABLE @lt_order.
*
**   check the result
*    SELECT * FROM zpoco_d_order_a INTO TABLE @lt_order.
*    out->write( sy-dbcnt ).
*    out->write( 'product groups data inserted successfully!').
*
*
*
********
********
********
*
*
*    DATA: lt_label  TYPE TABLE OF zpoco_d_label_a.
*    lt_label =
* VALUE #(
** ( CLIENT ='100' LABEL_UUID ='02E7896636F21EEB9DA2C6E197E0DFAA' THERAPY ='KYMRIAH - DLBCL US' MFG_PLANT_ID ='US33' TTYPE_ID ='Commercial' NVS_ID ='NT57853' PRINTED_LABELS ='3' USED_LABELS ='1' RECONCILE ='Y' CREATED_BY ='CB0000000723' CREATED_AT
**='20210219143901.0587920 ' LAST_CHANGED_BY ='CB0000000723' LAST_CHANGED_AT ='20210219143901.0587920 '  )
**
* ( client ='100' label_uuid ='02E7896636F21EEB9DA2C6E197E0DFB0' therapy ='weaer' mfg_plant_id ='' ttype_id ='' nvs_id ='' printed_labels ='' used_labels ='' reconcile ='' created_by ='CB0000000723' created_at ='20210222135944.3376650 ' last_changed_by =
*'CB0000000723' last_changed_at ='20210222135944.3376650 '  )
*
* ( client ='100' label_uuid ='02E7896636F21EEB9DA2C6E197E0DFB1' therapy ='weaer' mfg_plant_id ='' ttype_id ='' nvs_id ='' printed_labels ='' used_labels ='' reconcile ='' created_by ='CB0000000723' created_at ='20210222135944.3376650 ' last_changed_by =
*'CB0000000723' last_changed_at ='20210222135944.3376650 '  )
* ).
*
*
*    DELETE FROM zpoco_d_label_a.
**   insert the new table entries
*    INSERT zpoco_d_label_a FROM TABLE @lt_label.
*
**   check the result
*    SELECT * FROM zpoco_d_label_a INTO TABLE @lt_label.
*    out->write( sy-dbcnt ).
*    out->write( 'product groups data inserted successfully!').


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

    INSERT zpoco_c_countr_a FROM table @lt_country.

  ENDMETHOD.

ENDCLASS.
