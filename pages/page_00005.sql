prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Manage Feedback'
,p_alias=>'MANAGE-FEEDBACK'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Feedback'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(9836435852264038192)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15540469365751988289)
,p_plug_name=>'Manage Feedback'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836471711496038209)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FEEDBACK_ID,',
'       FEEDBACK_SERVICE_ID,',
'       FEEDBACK_RATING,',
'       STATUS',
'  from ER_FEEDBACK'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15540475260031988297)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836474591884038210)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15540475650701988297)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15540475260031988297)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15540477041965988299)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15540475260031988297)
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
,p_button_condition=>'P5_FEEDBACK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15540477403382988299)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(15540475260031988297)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P5_FEEDBACK_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15540477808518988300)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(15540475260031988297)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_FEEDBACK_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15540469681502988290)
,p_name=>'P5_FEEDBACK_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15540469365751988289)
,p_item_source_plug_id=>wwv_flow_imp.id(15540469365751988289)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Feedback Id'
,p_source=>'FEEDBACK_ID'
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
 p_id=>wwv_flow_imp.id(15540470054507988291)
,p_name=>'P5_FEEDBACK_SERVICE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15540469365751988289)
,p_item_source_plug_id=>wwv_flow_imp.id(15540469365751988289)
,p_prompt=>'Feedback Service'
,p_source=>'FEEDBACK_SERVICE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SERVICE REQUEST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ER_SERVICE_REQUEST_ISSUE_DESCRIPTION as D,',
'ER_SERVICE_REQUEST_ID as R,',
'USER_NAME',
'from ER_SERVICE_REQUEST A, ER_USER B',
'where A.SERVICE_REQUEST_CUSTOMER_ID = B.USER_ID;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9836610735802038271)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15540470415069988292)
,p_name=>'P5_FEEDBACK_RATING'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15540469365751988289)
,p_item_source_plug_id=>wwv_flow_imp.id(15540469365751988289)
,p_prompt=>'Feedback Rating'
,p_source=>'FEEDBACK_RATING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_STAR_RATING'
,p_field_template=>wwv_flow_imp.id(9836610735802038271)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'5'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15540472418652988294)
,p_name=>'P5_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(15540469365751988289)
,p_item_source_plug_id=>wwv_flow_imp.id(15540469365751988289)
,p_item_default=>'Y'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15540475794281988297)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(15540475650701988297)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15540476545894988298)
,p_event_id=>wwv_flow_imp.id(15540475794281988297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15540478663379988300)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(15540469365751988289)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Manage Feedback'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>15540478663379988300
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15540479056104988301)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>15540479056104988301
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15540478276015988300)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(15540469365751988289)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Manage Feedback'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>15540478276015988300
);
wwv_flow_imp.component_end;
end;
/
