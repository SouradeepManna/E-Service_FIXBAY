prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_name=>'Manage Employee'
,p_alias=>'MANAGE-EMPLOYEE1'
,p_step_title=>'Manage Employee'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15499302216757420926)
,p_plug_name=>'Manage Employee'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836528545008038233)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       (Select USER_NAME from ER_USER A where A.USER_ID = B. USER_ID ) AS USER_ID,',
'       EMPLOYEE_NAME,',
'       (Select CATEGORY_NAME from ER_CATEGORY A where A.CATEGORY_ID = B.CATEGORY_ID ) AS Category,',
'       EMPLOYEE_DESIGNATION,',
'       EMPLOYEE_MOBILE_NUM,',
'       EMPLOYEE_ADDRESS,',
'       EMPLOYEE_PINCODE,',
'       EMPLOYEE_YEAR_OF_EXPERIENCE,',
'       EMPLOYEE_DEGREE,',
'       EMPLOYEE_NUM_OF_SERVICE_LM,',
'       EMPLOYEE_RATING,',
'       DECODE(STATUS,''Y'',''Active'',''N'',''Inactive'') as Status',
'  from ER_EMPLOYEE B'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Employee'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(15499302359261420926)
,p_name=>'Manage Employee'
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
,p_detail_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:RP:P12_EMPLOYEE_ID:\#EMPLOYEE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CSE21106@CEMK.AC.IN'
,p_internal_uid=>15499302359261420926
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499303067415420928)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Employee ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499303866158420929)
,p_db_column_name=>'EMPLOYEE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499304670500420929)
,p_db_column_name=>'EMPLOYEE_DESIGNATION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499305007338420930)
,p_db_column_name=>'EMPLOYEE_MOBILE_NUM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mobile Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499305434236420930)
,p_db_column_name=>'EMPLOYEE_ADDRESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499305897185420930)
,p_db_column_name=>'EMPLOYEE_PINCODE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Pincode'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499306294827420931)
,p_db_column_name=>'EMPLOYEE_YEAR_OF_EXPERIENCE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Year of Experience'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499306629047420931)
,p_db_column_name=>'EMPLOYEE_DEGREE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Degree'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499307075220420931)
,p_db_column_name=>'EMPLOYEE_NUM_OF_SERVICE_LM'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Num of Service Done'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499307494235420932)
,p_db_column_name=>'EMPLOYEE_RATING'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Rating'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15499309452596420933)
,p_db_column_name=>'STATUS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15414887059705345340)
,p_db_column_name=>'CATEGORY'
,p_display_order=>27
,p_column_identifier=>'R'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(16179868839973286701)
,p_db_column_name=>'USER_ID'
,p_display_order=>37
,p_column_identifier=>'S'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15499578961563168473)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'154995790'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USER_ID:EMPLOYEE_NAME:CATEGORY:EMPLOYEE_DESIGNATION:EMPLOYEE_MOBILE_NUM:EMPLOYEE_ADDRESS:EMPLOYEE_PINCODE:EMPLOYEE_YEAR_OF_EXPERIENCE:EMPLOYEE_DEGREE:EMPLOYEE_NUM_OF_SERVICE_LM:EMPLOYEE_RATING:STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15499311597392420935)
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
 p_id=>wwv_flow_imp.id(15499309911458420933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15499302216757420926)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Manage'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:12::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15499310218382420934)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(15499302216757420926)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15499310709528420934)
,p_event_id=>wwv_flow_imp.id(15499310218382420934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15499302216757420926)
);
wwv_flow_imp.component_end;
end;
/
