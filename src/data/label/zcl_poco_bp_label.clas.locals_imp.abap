CLASS lhc_label DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.
    CONSTANTS:
      BEGIN OF mc_cos_service,
        url      TYPE string VALUE 'https://062d7b70trial.authentication.eu10.hana.ondemand.com/oauth/token?grant_type=client_credentials',
        username TYPE string VALUE 'sb-clone-c7a6e29d-e896-4361-911c-9f3d1971343d!b61052|workflow!b10150',
        password TYPE string VALUE 'b864c5b9-066f-4e79-af8c-91d579475a97$74NNV-9rpbwkw9AQy9k5W9zbjdPGP4TaSm5QDmEQaC8=',
      END   OF mc_cos_service.

    TYPES: BEGIN OF mty_s_service_config,
             url      TYPE string,
             username TYPE string,
             password TYPE string,
           END OF mty_s_service_config.

    METHODS open_request FOR MODIFY
      IMPORTING it_keys FOR ACTION Label~OpenRequest.

    METHODS get_token IMPORTING is_service_config TYPE mty_s_service_config
                      RETURNING VALUE(rv_token)   TYPE string
                      RAISING   cx_web_http_client_error
                                cx_http_dest_provider_error.

ENDCLASS.

CLASS lhc_label IMPLEMENTATION.

  METHOD open_request.
    TYPES:
      BEGIN OF lty_s_label,
        nvsid          TYPE string,
        plant          TYPE string,
        therapytype    TYPE string,
        therapy        TYPE string,
        printedlabels  TYPE i,
        usedlabels     TYPE i,
      END OF   lty_s_label,

      BEGIN OF lty_s_requester,
        firstname TYPE string,
        lastname  TYPE string,
        comments  TYPE string,
      END OF lty_s_requester,

      BEGIN OF lty_s_context,
        requestid TYPE string,
        title     TYPE string,
        label     TYPE lty_s_label,
        requester TYPE lty_s_requester,
      END OF lty_s_context,

      BEGIN OF lty_s_defintion,
        definitionid TYPE string,
        context      TYPE lty_s_context,
      END OF lty_s_defintion.

    DATA: ls_definition TYPE lty_s_defintion,
          lt_mapping    TYPE /ui2/cl_json=>name_mappings,
          ls_label      TYPE STRUCTURE FOR READ RESULT zpoco_i_label.

    lt_mapping = VALUE #( ( abap = 'definitionid'  json = 'definitionId' )
                          ( abap = 'requestid'     json = 'RequestId'    )
                          ( abap = 'title'         json = 'Title'        )
                          ( abap = 'label'         json = 'Label'        )
                          ( abap = 'requester'     json = 'Requester'    )
                          ( abap = 'nvsid'         json = 'NvsId'        )
                          ( abap = 'plant'         json = 'Plant'        )
                          ( abap = 'therapytype'   json = 'TherapyType'  )
                          ( abap = 'therapy'       json = 'Therapy'      )
                          ( abap = 'printedlabels' json = 'PrintedLabels' )
                          ( abap = 'usedlabels'    json = 'UsedLabels'    )
                          ( abap = 'firstname'     json = 'FirstName'     )
                          ( abap = 'lastname'      json = 'LastName'      )
                          ( abap = 'comments'      json = 'Comments'      )
                          ).


    READ ENTITIES OF zpoco_i_label IN LOCAL MODE
    ENTITY Label
    ALL FIELDS WITH CORRESPONDING #( it_keys )
    RESULT DATA(lt_labels).

    ls_label = lt_labels[ 1 ].

    SELECT SINGLE therapy_type_name FROM zpoco_c_ttype_a
                                    WHERE therapy_type_id = @ls_label-TherapyTypeId
                                    INTO @ls_definition-context-label-therapytype.

    SELECT SINGLE plant_name  FROM zpoco_c_plant_a
                                    WHERE plant_id = @ls_label-MfgPlantId
                                    INTO @ls_definition-context-label-plant.

    ls_definition-definitionid                = 'labelprocessvairant'.
    ls_definition-context-requestid           = ls_label-NvsId && '/' && ls_definition-context-label-plant && '/' && ls_definition-context-label-therapytype.
    ls_definition-context-title               = ls_definition-context-requestid.
    ls_definition-context-label-nvsid         = ls_label-NvsId.
    ls_definition-context-label-therapy       = ls_label-Therapy.
    ls_definition-context-label-printedlabels = ls_label-PrintedLabels.
    ls_definition-context-label-usedlabels    = ls_label-UsedLabels.
    ls_definition-context-requester-firstname = 'Alexander'.
    ls_definition-context-requester-lastname  = 'Shnip'.
    ls_definition-context-requester-comments  = 'Please Approve'.

    /ui2/cl_json=>serialize(
      EXPORTING
        data             = ls_definition
        assoc_arrays     = abap_true
        pretty_name      = /ui2/cl_json=>pretty_mode-low_case
        name_mappings    = lt_mapping
      RECEIVING
        r_json           = DATA(lv_json) ).

    TRY.

        DATA(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination(
                 cl_http_destination_provider=>create_by_url(
                 i_url = 'https://api.workflow-sap.cfapps.eu10.hana.ondemand.com/workflow-service/rest/v1/workflow-instances' ) ).

        DATA(lv_token) = get_token( is_service_config = mc_cos_service ).
        DATA(lo_request) = lo_http_client->get_http_request(  ).

        lo_request->set_authorization_bearer( i_bearer = lv_token ).
        lo_request->set_text( i_text   = lv_json
                              i_length = strlen( lv_json )  ).

        lo_request->set_header_field( i_name  = 'content-type'
                                      i_value = 'application/json').

        DATA(lo_response) = lo_http_client->execute( i_method = if_web_http_client=>post ).

        DATA(ls_status) = lo_response->get_status(  ).

      CATCH cx_http_dest_provider_error
            cx_web_http_client_error INTO DATA(lo_exception).
        DATA(lv_exc_message) = cl_message_helper=>get_latest_t100_exception(
                                                                 lo_exception )->if_message~get_longtext( ).
    ENDTRY.

  ENDMETHOD.

  METHOD get_token.
    TYPES: BEGIN OF lty_s_token_json,
             access_token TYPE string,
           END OF lty_s_token_json.

    DATA: lv_token      TYPE string,
          ls_token_json TYPE lty_s_token_json.

    DATA(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination(
          cl_http_destination_provider=>create_by_url(
          i_url = is_service_config-url ) ).

    lo_http_client->get_http_request(  )->set_authorization_basic(
                   i_username = is_service_config-username
                   i_password = is_service_config-password ).

    DATA(lo_request)  = lo_http_client->get_http_request( ).
    DATA(lo_response) = lo_http_client->execute( i_method = if_web_http_client=>get ).

    /ui2/cl_json=>deserialize(
      EXPORTING
        json         = lo_response->get_text( )
        pretty_name  = /ui2/cl_json=>pretty_mode-camel_case
        assoc_arrays = abap_true
      CHANGING
        data         = ls_token_json ).

    rv_token = ls_token_json-access_token.
  ENDMETHOD.

ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
