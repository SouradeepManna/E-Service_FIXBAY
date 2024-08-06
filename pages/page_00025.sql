prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_name=>'Purchase Product'
,p_alias=>'PURCHASE-PRODUCT'
,p_page_mode=>'MODAL'
,p_step_title=>'Purchase Product'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(9836435852264038192)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1915064355732730412)
,p_plug_name=>'Purchase Product'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836471711496038209)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_PURCHASE_ID,',
'       PRODUCT_ID,',
'       PRODUCT_PURCHASE_QUANTITY,',
'       PRODUCT_PURCHASE_RATE,',
'       PRODUCT_PURCHASE_PRICE,',
'       PRODUCT_SUPPLIER_NAME,',
'       PRODUCT_PURCHASE_DATE,',
'       STATUS',
'  from ER_PRODUCT_PURCHASE_HISTORY'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1915072896289730421)
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
 p_id=>wwv_flow_imp.id(1915073317235730422)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1915072896289730421)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1915074706089730423)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1915072896289730421)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P25_PRODUCT_PURCHASE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_required_patch=>wwv_flow_imp.id(9836434491158038190)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1915075110459730424)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1915072896289730421)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P25_PRODUCT_PURCHASE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_required_patch=>wwv_flow_imp.id(9836434491158038190)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1915075565746730424)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1915072896289730421)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P25_PRODUCT_PURCHASE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1915064596508730413)
,p_name=>'P25_PRODUCT_PURCHASE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_item_source_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Product Purchase Id'
,p_source=>'PRODUCT_PURCHASE_ID'
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
 p_id=>wwv_flow_imp.id(1915065008308730414)
,p_name=>'P25_PRODUCT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_item_source_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_prompt=>'Product Name'
,p_source=>'PRODUCT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PRODUCT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_NAME as D,',
'PRODUCT_ID as R,',
'PRODUCT_BRAND_NAME as L ',
'from ER_PRODUCT_MASTER',
'order by PRODUCT_NAME '))
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
 p_id=>wwv_flow_imp.id(1915065454685730414)
,p_name=>'P25_PRODUCT_PURCHASE_QUANTITY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_item_source_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_prompt=>'Quantity'
,p_source=>'PRODUCT_PURCHASE_QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(9836609439868038271)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1915065779817730415)
,p_name=>'P25_PRODUCT_PURCHASE_RATE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_item_source_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_prompt=>'Rate'
,p_source=>'PRODUCT_PURCHASE_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(9836610735802038271)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1915066259122730415)
,p_name=>'P25_PRODUCT_PURCHASE_PRICE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_item_source_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_prompt=>'Price'
,p_source=>'PRODUCT_PURCHASE_PRICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(9836610735802038271)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1915066643472730416)
,p_name=>'P25_PRODUCT_SUPPLIER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_item_source_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_prompt=>'Supplier Name'
,p_source=>'PRODUCT_SUPPLIER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(9836610735802038271)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1915066996320730416)
,p_name=>'P25_PRODUCT_PURCHASE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_item_source_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_prompt=>'Purchase Date'
,p_source=>'PRODUCT_PURCHASE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(9836609439868038271)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1915068966038730418)
,p_name=>'P25_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_item_source_plug_id=>wwv_flow_imp.id(1915064355732730412)
,p_item_default=>'Y'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1915073427103730422)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1915073317235730422)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1915074194174730423)
,p_event_id=>wwv_flow_imp.id(1915073427103730422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1915076300422730424)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1915064355732730412)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Purchase Product'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20069687127701568180
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1010497290348518085)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update product Quantity'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update ER_PRODUCT_MASTER ',
'set PRODUCT_AVAILABLE_QUANTITY = PRODUCT_AVAILABLE_QUANTITY+ :P25_PRODUCT_PURCHASE_QUANTITY',
'where PRODUCT_ID = :P25_PRODUCT_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(1915075565746730424)
,p_internal_uid=>19165108117627355841
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1915076766929730425)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>20069687594208568181
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1915075933249730424)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1915064355732730412)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Purchase Product'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20069686760528568180
);
wwv_flow_imp.component_end;
end;
/
