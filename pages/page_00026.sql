prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'Manage service request'
,p_alias=>'MANAGE-SERVICE-REQUEST2'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage service request'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1306848012028212779)
,p_plug_name=>'Manage service request'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9836538334235038237)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SERVICE_REQUEST_TRACKING_ID,',
'       SERVICE_REQUEST_TRACKING_REQUEST_ID,',
'       SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID,',
'       SERVICE_REQUEST_TRACKING_STATUS,',
'       SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE,',
'       CREATED_DATE,',
'       CREATED_BY,',
'       UPDATED_DATE,',
'       UPDATED_BY,',
'       STATUS,',
'       COMMENTS',
'  from ER_SERVICE_REQUEST_TRACKING ',
'  where SERVICE_REQUEST_TRACKING_REQUEST_ID = :P26_SERVICE_REQUEST_TRACKING_REQUEST_ID'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3042466383351519851)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1306849011729212789)
,p_name=>'P26_CREATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_source=>'CREATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1306849159399212790)
,p_name=>'P26_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1306849269890212791)
,p_name=>'P26_UPDATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_source=>'UPDATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1306849359614212792)
,p_name=>'P26_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1306849433960212793)
,p_name=>'P26_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1306849509136212794)
,p_name=>'P26_SERVICE_REQUEST_TRACKING_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_source=>'SERVICE_REQUEST_TRACKING_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3042465773260519845)
,p_name=>'P26_SERVICE_REQUEST_TRACKING_REQUEST_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_source=>'SERVICE_REQUEST_TRACKING_REQUEST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3042465900284519846)
,p_name=>'P26_SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_default=>'P0_USER_ID'
,p_item_default_type=>'ITEM'
,p_source=>'SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3042466053968519847)
,p_name=>'P26_SERVICE_REQUEST_TRACKING_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_prompt=>'Service Request Tracking Status'
,p_source=>'SERVICE_REQUEST_TRACKING_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Checking issue;Checking issue,Issue is fixed;Issue is fixed,Issue is not fixed;Issue is not fixed'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9836609334433038271)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3042466120266519848)
,p_name=>'P26_SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3042466173765519849)
,p_name=>'P26_COMMENTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_item_source_plug_id=>wwv_flow_imp.id(1306848012028212779)
,p_prompt=>'Comments'
,p_source=>'COMMENTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9836609334433038271)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3042466293930519850)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Track record'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO ER_SERVICE_REQUEST_TRACKING',
'(SERVICE_REQUEST_TRACKING_REQUEST_ID,',
'SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID,',
'SERVICE_REQUEST_TRACKING_STATUS,',
'SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE,',
'COMMENTS,',
'STATUS',
') VALUES',
'(:P26_SERVICE_REQUEST_TRACKING_REQUEST_ID,',
':P26_SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID,',
':P26_SERVICE_REQUEST_TRACKING_STATUS,',
':P26_SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE,',
':P26_COMMENTS,',
':P26_STATUS',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Data has been stored successfully'
,p_internal_uid=>21197077121209357606
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3042466641303519853)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>21197077468582357609
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1306848159978212780)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1306848012028212779)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage service request'
,p_internal_uid=>19461458987257050536
);
wwv_flow_imp.component_end;
end;
/
