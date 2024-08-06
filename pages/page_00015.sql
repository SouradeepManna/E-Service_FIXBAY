prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'Manage Service Request'
,p_alias=>'MANAGE-SERVICE-REQUEST1'
,p_step_title=>'Manage Service Request'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15530859294336883223)
,p_plug_name=>'Manage Service Request'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836528545008038233)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ER_SERVICE_REQUEST_ID,',
'       (Select USER_NAME from ER_USER A where A.USER_ID = B.SERVICE_REQUEST_CUSTOMER_ID ) AS USER_ID,',
'          (Select CATEGORY_NAME from ER_CATEGORY A where A.CATEGORY_ID = B. ER_SERVICE_REQUEST_CATAGORY_ID',
') AS Category,',
'       ER_SERVICE_REQUEST_DATE,',
'       ER_SERVICE_REQUEST_ISSUE_DESCRIPTION,',
'       ER_SERVICE_REQUEST_PRIORITY,',
'       ER_SERVICE_REQUEST_SCHEDULED_DATE,',
'       ER_SERVICE_REQUEST_SERVICE_FEE,',
'       nvl ((select SERVICE_REQUEST_TRACKING_STATUS from ER_SERVICE_REQUEST_TRACKING',
'where SERVICE_REQUEST_TRACKING_ID in (select max (SERVICE_REQUEST_TRACKING_ID ) from ER_SERVICE_REQUEST_TRACKING',
'where SERVICE_REQUEST_TRACKING_REQUEST_ID = ER_SERVICE_REQUEST_ID)),''Request Submitted'')STATUS,',
'(SELECT SERVICE_INVOICE_ID FROM ER__SERVICE_INVOICE S WHERE S.SERVICE_INVOICE_REQUEST_ID = B.ER_SERVICE_REQUEST_ID) inoice_id,',
'',
'       '''' as log,',
'       '''' as View_invoice',
'  from ER_SERVICE_REQUEST B'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Service Request'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15530859308902883223)
,p_name=>'Manage Service Request'
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
,p_detail_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:RP:P16_ER_SERVICE_REQUEST_ID:\#ER_SERVICE_REQUEST_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CSE21091@CEMK.AC.IN'
,p_internal_uid=>15530859308902883223
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15530860043842883225)
,p_db_column_name=>'ER_SERVICE_REQUEST_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Er Service Request'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15530861270465883226)
,p_db_column_name=>'ER_SERVICE_REQUEST_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Service Request Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15530861647713883226)
,p_db_column_name=>'ER_SERVICE_REQUEST_ISSUE_DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Issue '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15530862035484883226)
,p_db_column_name=>'ER_SERVICE_REQUEST_PRIORITY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Priority'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15530862433522883227)
,p_db_column_name=>'ER_SERVICE_REQUEST_SCHEDULED_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Scheduled Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15530862888249883227)
,p_db_column_name=>'ER_SERVICE_REQUEST_SERVICE_FEE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Service Fee'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15530864850952883228)
,p_db_column_name=>'STATUS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16179868925864286702)
,p_db_column_name=>'USER_ID'
,p_display_order=>23
,p_column_identifier=>'N'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16179869056602286703)
,p_db_column_name=>'CATEGORY'
,p_display_order=>33
,p_column_identifier=>'O'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010495262253518064)
,p_db_column_name=>'LOG'
,p_display_order=>43
,p_column_identifier=>'P'
,p_column_label=>'View Log'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_SERVICE_REQUEST_ID:#ER_SERVICE_REQUEST_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402769686853542264)
,p_db_column_name=>'INOICE_ID'
,p_display_order=>53
,p_column_identifier=>'Q'
,p_column_label=>'Inoice Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402769830540542265)
,p_db_column_name=>'VIEW_INVOICE'
,p_display_order=>63
,p_column_identifier=>'R'
,p_column_label=>'View Invoice'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_SERVICE_INVOICE_ID:#INOICE_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15531097020934631461)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'155310971'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOG:CATEGORY:USER_ID:ER_SERVICE_REQUEST_DATE:ER_SERVICE_REQUEST_ISSUE_DESCRIPTION:ER_SERVICE_REQUEST_PRIORITY:ER_SERVICE_REQUEST_SCHEDULED_DATE:ER_SERVICE_REQUEST_SERVICE_FEE:STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15530866975802883230)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836550799084038243)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9836435051529038191)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9836613555969038273)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15530865352969883229)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15530859294336883223)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:16::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15530865684179883229)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15530859294336883223)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15530866161704883229)
,p_event_id=>wwv_flow_imp.id(15530865684179883229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15530859294336883223)
);
wwv_flow_imp.component_end;
end;
/
