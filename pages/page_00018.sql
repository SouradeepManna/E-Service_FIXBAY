prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_name=>'Manage Users'
,p_alias=>'MANAGE-USERS1'
,p_step_title=>'Manage Users'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14680965463794847277)
,p_plug_name=>'Manage Users'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836528545008038233)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_ID,',
'       (Select ROLE_NAME from ER_ROLE A where A.ROLE_ID = B.ROLE_ID ) AS Role,',
'       USER_NAME,',
'       USER_PHONE_NO,',
'       USER_EMAIL,',
'       USER_STREET_NAME,',
'       USER_TOWN,',
'       USER_POST_OFFICE,',
'       USER_POLICE_ST,',
'       USER_PINCODE,',
'       USER_PASSWORD,',
'       DECODE(STATUS,''Y'',''Active'',''N'',''Inactive'') as Status',
'',
'  from ER_USER B'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Manage Users'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14680965526602847277)
,p_name=>'Manage Users'
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
,p_detail_link=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:RP:P19_USER_ID:\#USER_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CSE21106@CEMK.AC.IN'
,p_internal_uid=>14680965526602847277
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680966295110847278)
,p_db_column_name=>'USER_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'User ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680967051289847279)
,p_db_column_name=>'USER_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680967419751847279)
,p_db_column_name=>'USER_PHONE_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Phone No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680967827467847280)
,p_db_column_name=>'USER_EMAIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680968239230847280)
,p_db_column_name=>'USER_STREET_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Street '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680968657204847280)
,p_db_column_name=>'USER_TOWN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Town/Village'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680969003818847280)
,p_db_column_name=>'USER_POST_OFFICE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Post Office'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680969494348847281)
,p_db_column_name=>'USER_POLICE_ST'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Police Station'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680969848452847281)
,p_db_column_name=>'USER_PINCODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Pincode'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680970228303847281)
,p_db_column_name=>'USER_PASSWORD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Password'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14680972293669847283)
,p_db_column_name=>'STATUS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15414883114550345301)
,p_db_column_name=>'ROLE'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Role'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(14681061731636105372)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'146810618'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'USER_NAME:ROLE:USER_PHONE_NO:USER_EMAIL:USER_STREET_NAME:USER_TOWN:USER_POST_OFFICE:USER_POLICE_ST:USER_PINCODE:USER_PASSWORD:STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14680974351860847284)
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
 p_id=>wwv_flow_imp.id(14680972710812847283)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(14680965463794847277)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Users'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&APP_SESSION.::&DEBUG.:19::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14680973063335847283)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(14680965463794847277)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14680973598541847284)
,p_event_id=>wwv_flow_imp.id(14680973063335847283)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(14680965463794847277)
);
wwv_flow_imp.component_end;
end;
/