prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'Service Category'
,p_alias=>'SERVICE-CATEGORY'
,p_step_title=>'Service Category'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* .header{',
'    padding-top: 100px;',
'} */'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(903648134787270014)
,p_plug_name=>'Service Category'
,p_title=>'Style A'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleA'
,p_plug_template=>wwv_flow_imp.id(9836478848167038212)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY_ID,',
'       CATEGORY_NAME,',
'       CATEGORY_DETAILS,',
'       CATEGORY_HOD,',
'       CATEGORY_TOTAL_EMP,',
'       CATEGORY_BASIC_SERVICECHARGE,',
'       CREATED_DATE,',
'       CREATED_BY,',
'       UPDATED_DATE,',
'       UPDATED_BY,',
'       STATUS,',
'       IMAGE',
'  from ER_CATEGORY'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_imp.id(9836434491158038190)
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(903648583105270015)
,p_region_id=>wwv_flow_imp.id(903648134787270014)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CATEGORY_DETAILS'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'CATEGORY_NAME'
,p_icon_position=>'TOP'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2739722940755492408)
,p_card_id=>wwv_flow_imp.id(903648583105270015)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>10
,p_label=>'Book a Service'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:P17_ER_SERVICE_REQUEST_CATAGORY_ID,P17_ER_SERVICE_REQUEST_SERVICE_FEE:&CATEGORY_ID.,&CATEGORY_BASIC_SERVICECHARGE.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3095908159281609670)
,p_plug_name=>'Service Category'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleA:margin-top-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836478848167038212)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY_ID,',
'       CATEGORY_NAME,',
'       CATEGORY_DETAILS,',
'       CATEGORY_HOD,',
'       CATEGORY_TOTAL_EMP,',
'       CATEGORY_BASIC_SERVICECHARGE,',
'       CREATED_DATE,',
'       CREATED_BY,',
'       UPDATED_DATE,',
'       UPDATED_BY,',
'       STATUS,',
'       IMAGE,',
'       MIMETYPE,',
'       FILENAME',
'  from ER_CATEGORY'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(3095908270707609671)
,p_region_id=>wwv_flow_imp.id(3095908159281609670)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>true
,p_title_html_expr=>'<p style= "font-size:15px;"><b style="color:green;font-size:20px;">Category Name:-</b> <b style="color:blue;font-size:16px;">&CATEGORY_NAME.</b></p>'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>unistr('<p style= "font-size:15px;"><b style="color:#ECD207;font-size:17px;">Service_Charge:-</b> <b style="color:#4DACC4;font-size:13px;"> \20B9&CATEGORY_BASIC_SERVICECHARGE. </b> </p>')
,p_body_adv_formatting=>false
,p_body_column_name=>'CATEGORY_DETAILS'
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'IMAGE'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'CATEGORY_ID'
,p_mime_type_column_name=>'MIMETYPE'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(3095908324477609672)
,p_card_id=>wwv_flow_imp.id(3095908270707609671)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>10
,p_label=>'Book a Service'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:P17_ER_SERVICE_REQUEST_CATAGORY_ID,P17_ER_SERVICE_REQUEST_SERVICE_FEE:&CATEGORY_ID.,&CATEGORY_BASIC_SERVICECHARGE.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3095907808277609667)
,p_button_sequence=>30
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_image_alt=>'New'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(9836434491158038190)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3095907687459609666)
,p_name=>'P14_NEW'
,p_item_sequence=>20
,p_prompt=>'New'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9836609439868038271)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_imp.id(9836434491158038190)
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3095907934476609668)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    -- LV_SUPPLIER_ID OM_SUPPLIER.SUPPLIER_ID%TYPE;',
'    l_blob blob;',
'    l_filename varchar2(200);',
'    l_mimetype varchar2(200);',
'BEGIN',
'begin',
'-- SELECT SUPPLIER_ID INTO  LV_SUPPLIER_ID FROM OM_SUPPLIER WHERE USER_ID = :P0_USER_ID;',
'    select blob_content,FILENAME,MIME_TYPE',
'      into l_blob,l_filename,l_mimetype',
'      from apex_application_temp_files',
'     where name = :P14_NEW;',
'     exception when no_data_found then',
'     l_filename:=null;',
'     l_mimetype:=null;',
'     l_blob:=null;',
'     end;',
'     UPDATE ER_CATEGORY SET IMAGE =l_blob,filename =l_filename, mimetype=l_mimetype WHERE CATEGORY_ID=41;',
'    -- INSERT INTO OM_PRODUCTS (PRODUCT_ID,SUPPLIER_ID,PRODUCT_NAME,PPRODUCT_DESC,CATEGORY_ID,PRODUCT_PRICE,QUANTITY,PRODUCT_IMAGE,PRODUCT_MIMETYPE,PRODUCT_FILENAME)',
'    -- VALUES (SUPPLIER_SEQ.NEXTVAL,LV_SUPPLIER_ID,:P9_PRODUCT_NAME,:P9_PPRODUCT_DESC,:P9_CATEGORY_ID,:P9_PRODUCT_PRICE,:P9_QUANTITY,l_blob,l_mimetype,l_filename);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3095907808277609667)
,p_required_patch=>wwv_flow_imp.id(9836434491158038190)
,p_internal_uid=>21250518761755447424
);
wwv_flow_imp.component_end;
end;
/
