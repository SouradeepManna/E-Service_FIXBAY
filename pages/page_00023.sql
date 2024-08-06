prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_name=>'Product Purchase History'
,p_alias=>'PRODUCT-PURCHASE-HISTORY'
,p_step_title=>'Product Purchase History'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1915077714025730426)
,p_plug_name=>'Product Purchase History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836528545008038233)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_PURCHASE_ID,',
'       (Select PRODUCT_NAME from ER_PRODUCT_MASTER A where A.PRODUCT_ID = B.PRODUCT_ID ) AS Product,',
'       PRODUCT_PURCHASE_QUANTITY,',
'       PRODUCT_PURCHASE_RATE,',
'       PRODUCT_PURCHASE_PRICE,',
'       PRODUCT_SUPPLIER_NAME,',
'       PRODUCT_PURCHASE_DATE,',
'       STATUS',
'  from ER_PRODUCT_PURCHASE_HISTORY B'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Product Purchase History'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1915077773801730426)
,p_name=>'Product Purchase History'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:RP:P25_PRODUCT_PURCHASE_ID:\#PRODUCT_PURCHASE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CSE21106@CEMK.AC.IN'
,p_internal_uid=>20069688601080568182
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1915078551964730427)
,p_db_column_name=>'PRODUCT_PURCHASE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Product Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1915079341577730428)
,p_db_column_name=>'PRODUCT_PURCHASE_QUANTITY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Quantity'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1915079732412730428)
,p_db_column_name=>'PRODUCT_PURCHASE_RATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Rate'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1915080135483730428)
,p_db_column_name=>'PRODUCT_PURCHASE_PRICE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1915080555706730429)
,p_db_column_name=>'PRODUCT_SUPPLIER_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Supplier Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1915080876789730429)
,p_db_column_name=>'PRODUCT_PURCHASE_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Purchase Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1915082959766730430)
,p_db_column_name=>'STATUS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010497195208518084)
,p_db_column_name=>'PRODUCT'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1915154022485736195)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'200697649'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT:PRODUCT_PURCHASE_QUANTITY:PRODUCT_PURCHASE_RATE:PRODUCT_PURCHASE_PRICE:PRODUCT_SUPPLIER_NAME:PRODUCT_PURCHASE_DATE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1915083415177730430)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1915077714025730426)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:25::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1915083753022730431)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1915077714025730426)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1915084260095730431)
,p_event_id=>wwv_flow_imp.id(1915083753022730431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1915077714025730426)
);
wwv_flow_imp.component_end;
end;
/
