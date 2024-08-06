prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Fixbay'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2739722779141492406)
,p_plug_name=>'Technician need to be assigned'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836538334235038237)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ER_SERVICE_REQUEST_ID,',
'       (Select USER_NAME from ER_USER A where A.USER_ID = B.SERVICE_REQUEST_CUSTOMER_ID ) AS USER_ID,',
'       SERVICE_REQUEST_CUSTOMER_ID as USER_ID_HIDDEN,',
'      (Select CATEGORY_NAME from ER_CATEGORY A where A.CATEGORY_ID = B.ER_SERVICE_REQUEST_CATAGORY_ID ) AS Category,',
'      ER_SERVICE_REQUEST_CATAGORY_ID as ER_SERVICE_REQUEST_CATAGORY_ID_HIDDEN,',
'       ER_SERVICE_REQUEST_DATE,',
'       ER_SERVICE_REQUEST_ISSUE_DESCRIPTION,',
'       ER_SERVICE_REQUEST_PRIORITY,',
'       ER_SERVICE_REQUEST_SCHEDULED_DATE,',
'       ER_SERVICE_REQUEST_SERVICE_FEE,',
'       nvl ((select SERVICE_REQUEST_TRACKING_STATUS from ER_SERVICE_REQUEST_TRACKING',
'where SERVICE_REQUEST_TRACKING_ID in (select max (SERVICE_REQUEST_TRACKING_ID ) from ER_SERVICE_REQUEST_TRACKING',
'where SERVICE_REQUEST_TRACKING_REQUEST_ID = ER_SERVICE_REQUEST_ID)),''Request Submitted'')STATUS,',
'       '''' as log',
'  from ER_SERVICE_REQUEST B',
'',
'  where ER_SERVICE_REQUEST_ID not in (select SERVICE_REQUEST_TRACKING_REQUEST_ID from ER_SERVICE_REQUEST_TRACKING);'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_required_role=>wwv_flow_imp.id(17963595051682043572)
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1010493347457518045)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CSE21106@CEMK.AC.IN'
,p_internal_uid=>19165104174736355801
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010493388360518046)
,p_db_column_name=>'ER_SERVICE_REQUEST_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'  View'
,p_column_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13:P13_SERVICE_REQUEST_TRACKING_REQUEST_ID,P13_CATEGORY_ID:#ER_SERVICE_REQUEST_ID#,#ER_SERVICE_REQUEST_CATAGORY_ID_HIDDEN#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010493695410518049)
,p_db_column_name=>'ER_SERVICE_REQUEST_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Service Request Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010493846247518050)
,p_db_column_name=>'ER_SERVICE_REQUEST_ISSUE_DESCRIPTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>' Issue '
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010493958112518051)
,p_db_column_name=>'ER_SERVICE_REQUEST_PRIORITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Priority'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010494037511518052)
,p_db_column_name=>'ER_SERVICE_REQUEST_SCHEDULED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Scheduled Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010494134528518053)
,p_db_column_name=>'ER_SERVICE_REQUEST_SERVICE_FEE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Service Fees'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010494667621518058)
,p_db_column_name=>'STATUS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010494743480518059)
,p_db_column_name=>'CATEGORY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010494851290518060)
,p_db_column_name=>'USER_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Customer'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21:P21_USER_ID:#USER_ID_HIDDEN#'
,p_column_linktext=>'#USER_ID#'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010497029984518082)
,p_db_column_name=>'USER_ID_HIDDEN'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'User Id Hidden'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010497105999518083)
,p_db_column_name=>'LOG'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Log'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010497544220518087)
,p_db_column_name=>'ER_SERVICE_REQUEST_CATAGORY_ID_HIDDEN'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Er Service Request Catagory Id Hidden'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1011748546072531529)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'191663594'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ER_SERVICE_REQUEST_ID:USER_ID:CATEGORY:ER_SERVICE_REQUEST_DATE:ER_SERVICE_REQUEST_ISSUE_DESCRIPTION:ER_SERVICE_REQUEST_PRIORITY:ER_SERVICE_REQUEST_SCHEDULED_DATE:ER_SERVICE_REQUEST_SERVICE_FEE:STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1010495651281518068)
,p_plug_name=>'Pending Task'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836538334235038237)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       ',
'       ER_SERVICE_REQUEST_ID,',
'       (Select USER_NAME from ER_USER A where A.USER_ID = B.SERVICE_REQUEST_CUSTOMER_ID ) AS USER_ID,',
'      SERVICE_REQUEST_CUSTOMER_ID as USER_ID_HIDDEN,',
'      (Select CATEGORY_NAME from ER_CATEGORY A where A.CATEGORY_ID = B.ER_SERVICE_REQUEST_CATAGORY_ID ) AS Category,',
'       ER_SERVICE_REQUEST_DATE,',
'       ER_SERVICE_REQUEST_ISSUE_DESCRIPTION,',
'       ER_SERVICE_REQUEST_PRIORITY,',
'       ER_SERVICE_REQUEST_SCHEDULED_DATE,',
'       ER_SERVICE_REQUEST_SERVICE_FEE,',
'       nvl ((select SERVICE_REQUEST_TRACKING_STATUS from ER_SERVICE_REQUEST_TRACKING',
'where SERVICE_REQUEST_TRACKING_ID in (select max (SERVICE_REQUEST_TRACKING_ID ) from ER_SERVICE_REQUEST_TRACKING',
'where SERVICE_REQUEST_TRACKING_REQUEST_ID = ER_SERVICE_REQUEST_ID)),''Request Submitted'')STATUS,',
'       '''' as log',
'  from ER_SERVICE_REQUEST B',
'',
'  where ER_SERVICE_REQUEST_ID IN (select SERVICE_REQUEST_TRACKING_REQUEST_ID ',
'  from ER_SERVICE_REQUEST_TRACKING WHERE SERVICE_REQUEST_TRACKING_REQUEST_ID not in',
'   (SELECT SERVICE_REQUEST_TRACKING_REQUEST_ID FROM ER_SERVICE_REQUEST_TRACKING WHERE SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID = :P0_USER_ID',
'  and SERVICE_REQUEST_TRACKING_STATUS = ''Invoice Generated'')',
'  AND SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID = :P0_USER_ID',
'  )'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_required_role=>wwv_flow_imp.id(92979222668324937)
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1010495672879518069)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CSE21106@CEMK.AC.IN'
,p_internal_uid=>19165106500158355825
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010495845741518070)
,p_db_column_name=>'ER_SERVICE_REQUEST_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'  View'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010495910330518071)
,p_db_column_name=>'ER_SERVICE_REQUEST_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Service Request Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010496026113518072)
,p_db_column_name=>'ER_SERVICE_REQUEST_ISSUE_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Issue '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010496156652518073)
,p_db_column_name=>'ER_SERVICE_REQUEST_PRIORITY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Priority'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010496182005518074)
,p_db_column_name=>'ER_SERVICE_REQUEST_SCHEDULED_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Scheduled Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010496370518518075)
,p_db_column_name=>'ER_SERVICE_REQUEST_SERVICE_FEE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Service Fees'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010496405019518076)
,p_db_column_name=>'STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010496503453518077)
,p_db_column_name=>'CATEGORY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010496667626518078)
,p_db_column_name=>'USER_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Customer'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21:P21_USER_ID:#USER_ID_HIDDEN#'
,p_column_linktext=>'#USER_ID#'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010496744276518079)
,p_db_column_name=>'LOG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Log'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_SERVICE_REQUEST_ID:#ER_SERVICE_REQUEST_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010496779503518080)
,p_db_column_name=>'USER_ID_HIDDEN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'User Id Hidden'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1906609217525539035)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'200612201'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOG:CATEGORY:USER_ID:ER_SERVICE_REQUEST_DATE:ER_SERVICE_REQUEST_ISSUE_DESCRIPTION:ER_SERVICE_REQUEST_PRIORITY:ER_SERVICE_REQUEST_SCHEDULED_DATE:ER_SERVICE_REQUEST_SERVICE_FEE:STATUS:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3402768200043542249)
,p_plug_name=>'Task History'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836538334235038237)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       ',
'       ER_SERVICE_REQUEST_ID,',
'       (Select USER_NAME from ER_USER A where A.USER_ID = B.SERVICE_REQUEST_CUSTOMER_ID ) AS USER_ID,',
'      SERVICE_REQUEST_CUSTOMER_ID as USER_ID_HIDDEN,',
'      (Select CATEGORY_NAME from ER_CATEGORY A where A.CATEGORY_ID = B.ER_SERVICE_REQUEST_CATAGORY_ID ) AS Category,',
'       ER_SERVICE_REQUEST_DATE,',
'       ER_SERVICE_REQUEST_ISSUE_DESCRIPTION,',
'       ER_SERVICE_REQUEST_PRIORITY,',
'       ER_SERVICE_REQUEST_SCHEDULED_DATE,',
'       ER_SERVICE_REQUEST_SERVICE_FEE,',
'       nvl ((select SERVICE_REQUEST_TRACKING_STATUS from ER_SERVICE_REQUEST_TRACKING',
'where SERVICE_REQUEST_TRACKING_ID in (select max (SERVICE_REQUEST_TRACKING_ID ) from ER_SERVICE_REQUEST_TRACKING',
'where SERVICE_REQUEST_TRACKING_REQUEST_ID = ER_SERVICE_REQUEST_ID)),''Request Submitted'')STATUS,',
'(SELECT SERVICE_INVOICE_ID FROM ER__SERVICE_INVOICE S WHERE S.SERVICE_INVOICE_REQUEST_ID = B.ER_SERVICE_REQUEST_ID) inoice_id,',
'       '''' as log,',
'       '''' as View_invoice',
'',
'  from ER_SERVICE_REQUEST B',
'  where ER_SERVICE_REQUEST_ID in (select SERVICE_REQUEST_TRACKING_REQUEST_ID ',
'  from ER_SERVICE_REQUEST_TRACKING WHERE ',
'  SERVICE_REQUEST_TRACKING_ASSIGNED_EMPLOYEE_ID = :P0_USER_ID',
'  and SERVICE_REQUEST_TRACKING_STATUS = ''Invoice Generated''',
'  );'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_required_role=>wwv_flow_imp.id(92979222668324937)
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3402768355129542250)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CSE21091@CEMK.AC.IN'
,p_internal_uid=>21557379182408380006
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402768395920542251)
,p_db_column_name=>'ER_SERVICE_REQUEST_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'  View'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402768568496542252)
,p_db_column_name=>'ER_SERVICE_REQUEST_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Service Request Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402768629958542253)
,p_db_column_name=>'ER_SERVICE_REQUEST_ISSUE_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Service Request Issue Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402768717405542254)
,p_db_column_name=>'ER_SERVICE_REQUEST_PRIORITY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Service Request Priority'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402768852103542255)
,p_db_column_name=>'ER_SERVICE_REQUEST_SCHEDULED_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Scheduled Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402768903810542256)
,p_db_column_name=>'ER_SERVICE_REQUEST_SERVICE_FEE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Service Fees'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402769059816542257)
,p_db_column_name=>'STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402769106886542258)
,p_db_column_name=>'CATEGORY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402769252744542259)
,p_db_column_name=>'USER_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Customer'
,p_column_link=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21:P21_USER_ID:#USER_ID_HIDDEN#'
,p_column_linktext=>'#USER_ID#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402769320474542260)
,p_db_column_name=>'LOG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Log'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_SERVICE_REQUEST_ID:#ER_SERVICE_REQUEST_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402769447123542261)
,p_db_column_name=>'USER_ID_HIDDEN'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'User Id Hidden'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402769503486542262)
,p_db_column_name=>'VIEW_INVOICE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'View Invoice'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.::P29_SERVICE_INVOICE_ID:#INOICE_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402769669329542263)
,p_db_column_name=>'INOICE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Inoice Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3408330962306688910)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'215629418'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ER_SERVICE_REQUEST_DATE:ER_SERVICE_REQUEST_ISSUE_DESCRIPTION:ER_SERVICE_REQUEST_PRIORITY:ER_SERVICE_REQUEST_SCHEDULED_DATE:ER_SERVICE_REQUEST_SERVICE_FEE:STATUS:CATEGORY:USER_ID:LOG:VIEW_INVOICE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(22600333966419212297)
,p_plug_name=>'Service Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836528545008038233)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ER_SERVICE_REQUEST_ID,',
'       ',
'       (Select CATEGORY_NAME from ER_CATEGORY A where A.CATEGORY_ID = B.ER_SERVICE_REQUEST_CATAGORY_ID ) AS Category,',
'       ER_SERVICE_REQUEST_DATE,',
'       ER_SERVICE_REQUEST_ISSUE_DESCRIPTION,',
'       ER_SERVICE_REQUEST_PRIORITY,',
'       ER_SERVICE_REQUEST_SCHEDULED_DATE,',
'       ER_SERVICE_REQUEST_SERVICE_FEE,',
'       nvl ((select SERVICE_REQUEST_TRACKING_STATUS from ER_SERVICE_REQUEST_TRACKING',
'where SERVICE_REQUEST_TRACKING_ID in (select max (SERVICE_REQUEST_TRACKING_ID ) from ER_SERVICE_REQUEST_TRACKING',
'where SERVICE_REQUEST_TRACKING_REQUEST_ID = ER_SERVICE_REQUEST_ID)),''Request Submitted'')STATUS,',
'(SELECT SERVICE_INVOICE_ID FROM ER__SERVICE_INVOICE S WHERE S.SERVICE_INVOICE_REQUEST_ID = B.ER_SERVICE_REQUEST_ID) inoice_id,',
'       '''' as LOG',
'  from ER_SERVICE_REQUEST B',
'',
'  where SERVICE_REQUEST_CUSTOMER_ID = :P0_USER_ID;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_required_role=>wwv_flow_imp.id(232833290180297902)
,p_prn_page_header=>'Service Report'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(22600334115710212297)
,p_name=>'Service Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CSE21106@CEMK.AC.IN'
,p_internal_uid=>40754944942989050053
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22600335677901212408)
,p_db_column_name=>'ER_SERVICE_REQUEST_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Er Service Request ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22600336932693212409)
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
 p_id=>wwv_flow_imp.id(22600337352452212410)
,p_db_column_name=>'ER_SERVICE_REQUEST_ISSUE_DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Issue '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22600337713703212410)
,p_db_column_name=>'ER_SERVICE_REQUEST_PRIORITY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Priority'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22600338148095212410)
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
 p_id=>wwv_flow_imp.id(22600338535865212410)
,p_db_column_name=>'ER_SERVICE_REQUEST_SERVICE_FEE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Service Fees'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22600340527764212412)
,p_db_column_name=>'STATUS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22604817481680095431)
,p_db_column_name=>'CATEGORY'
,p_display_order=>23
,p_column_identifier=>'N'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(22604817558591095432)
,p_db_column_name=>'LOG'
,p_display_order=>33
,p_column_identifier=>'O'
,p_column_label=>'Log'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_SERVICE_REQUEST_ID:#ER_SERVICE_REQUEST_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3402769875960542266)
,p_db_column_name=>'INOICE_ID'
,p_display_order=>43
,p_column_identifier=>'P'
,p_column_label=>'Inoice Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(22600526061097957586)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'191608148'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOG:CATEGORY:ER_SERVICE_REQUEST_DATE:ER_SERVICE_REQUEST_ISSUE_DESCRIPTION:ER_SERVICE_REQUEST_PRIORITY:ER_SERVICE_REQUEST_SCHEDULED_DATE:ER_SERVICE_REQUEST_SERVICE_FEE:STATUS'
);
wwv_flow_imp.component_end;
end;
/
