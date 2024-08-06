prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_name=>'Manage Request Log'
,p_alias=>'MANAGE-REQUEST-LOG'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Request Log'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1067352973286263437)
,p_plug_name=>'Manage Request Log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836528545008038233)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SERVICE_REQUEST_TRACKING_ID,',
'     ',
'       (Select USER_NAME from ER_USER A where A.USER_ID = B.SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID ) AS USER_ID,',
'       SERVICE_REQUEST_TRACKING_STATUS,',
'       SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE,',
'       COMMENTS,',
'       STATUS',
'       ',
'  from ER_SERVICE_REQUEST_TRACKING B',
'',
'  WHERE SERVICE_REQUEST_TRACKING_REQUEST_ID = :P22_SERVICE_REQUEST_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Request Log'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1067353089590263437)
,p_name=>'Manage Request Log'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'CSE21106@CEMK.AC.IN'
,p_internal_uid=>19221963916869101193
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1067356558035263583)
,p_db_column_name=>'SERVICE_REQUEST_TRACKING_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Service Request Tracking ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1067357726144263584)
,p_db_column_name=>'SERVICE_REQUEST_TRACKING_STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Request Tracking Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1067358108317263585)
,p_db_column_name=>'SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1067360127369263587)
,p_db_column_name=>'STATUS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010495556615518067)
,p_db_column_name=>'USER_ID'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Technician'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010497668296518088)
,p_db_column_name=>'COMMENTS'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1068393364441294478)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'192230042'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USER_ID:SERVICE_REQUEST_TRACKING_STATUS:SERVICE_REQUEST_TRACKING_STATUS_UPDATE_DATE:COMMENTS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1306847938967212778)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1067352973286263437)
,p_button_name=>'ADD_ACTION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Action'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:26:P26_SERVICE_REQUEST_TRACKING_REQUEST_ID:&P22_SERVICE_REQUEST_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from ER_SERVICE_REQUEST_TRACKING B',
'',
'  WHERE SERVICE_REQUEST_TRACKING_REQUEST_ID = :P22_SERVICE_REQUEST_ID',
'  AND UPPER(SERVICE_REQUEST_TRACKING_STATUS) = UPPER(''Issue is fixed'');'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(92979222668324937)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2544224878119299581)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1067352973286263437)
,p_button_name=>'CREATE_INVOICE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Invoice'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:28:P28_SERVICE_INVOICE_REQUEST_ID:&P22_SERVICE_REQUEST_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from ER_SERVICE_REQUEST_TRACKING B',
'',
'  WHERE SERVICE_REQUEST_TRACKING_REQUEST_ID = :P22_SERVICE_REQUEST_ID',
'  AND UPPER(SERVICE_REQUEST_TRACKING_STATUS) = UPPER(''Issue is fixed'')',
'  AND NOT EXISTS (SELECT 1 FROM ER__SERVICE_INVOICE WHERE SERVICE_INVOICE_REQUEST_ID = :P22_SERVICE_REQUEST_ID)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(92979222668324937)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1010495033362518062)
,p_name=>'P22_SERVICE_REQUEST_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1067352973286263437)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3042466678463519854)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3042466843742519855)
,p_event_id=>wwv_flow_imp.id(3042466678463519854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1067352973286263437)
);
wwv_flow_imp.component_end;
end;
/
