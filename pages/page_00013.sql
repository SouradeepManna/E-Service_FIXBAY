prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>6744683248743557788
,p_default_application_id=>119982
,p_default_id_offset=>18154610827278837756
,p_default_owner=>'WKSP_INOAUG230ETHIX'
);
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Assign Technician'
,p_alias=>'ASSIGN-TECHNICIAN'
,p_page_mode=>'MODAL'
,p_step_title=>'Assign Technician'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1011319871226817298)
,p_plug_name=>'Assign Technician'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9836538334235038237)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SERVICE_REQUEST_TRACKING_ID,',
'       SERVICE_REQUEST_TRACKING_REQUEST_ID,',
'       SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID,',
'       SERVICE_REQUEST_TRACKING_STATUS,',
'       SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE,',
'       STATUS',
'  from ER_SERVICE_REQUEST_TRACKING'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1011328074401817305)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13_SERVICE_REQUEST_TRACKING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1011327140835817304)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1011328540756817305)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign'
,p_button_position=>'CREATE'
,p_button_condition=>'P13_SERVICE_REQUEST_TRACKING_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1011327750085817304)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P13_SERVICE_REQUEST_TRACKING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1011328802703817305)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1010497430481518086)
,p_name=>'P13_CATEGORY_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1011320163374817299)
,p_name=>'P13_SERVICE_REQUEST_TRACKING_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_item_source_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Service Request Tracking Id'
,p_source=>'SERVICE_REQUEST_TRACKING_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(9836609439868038271)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1011320568030817299)
,p_name=>'P13_SERVICE_REQUEST_TRACKING_REQUEST_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_item_source_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_source=>'SERVICE_REQUEST_TRACKING_REQUEST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1011320905860817300)
,p_name=>'P13_SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_item_source_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_prompt=>'Technician'
,p_source=>'SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_NAME as D,',
'U.USER_ID as R ',
'from ER_USER U, ER_ROLE I , ER_EMPLOYEE',
'where ER_EMPLOYEE.USER_ID = U.USER_ID and U.ROLE_ID = I.ROLE_ID and I.ROLE_NAME = ''Technician'' and CATEGORY_ID = :P13_CATEGORY_ID;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9836610735802038271)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1011321313538817300)
,p_name=>'P13_SERVICE_REQUEST_TRACKING_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_item_source_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_item_default=>'Technician Assigned'
,p_source=>'SERVICE_REQUEST_TRACKING_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1011321772325817300)
,p_name=>'P13_SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_item_source_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1011323757552817302)
,p_name=>'P13_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_item_source_plug_id=>wwv_flow_imp.id(1011319871226817298)
,p_item_default=>'Y'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1011329738500817306)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1011319871226817298)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Assign Technician'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_process_error_message=>'Error occurred'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Technician Assigned Successfully'
,p_internal_uid=>19165940565779655062
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1011329352373817306)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1011319871226817298)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Assign Technician'
,p_internal_uid=>19165940179652655062
);
wwv_flow_imp.component_end;
end;
/
