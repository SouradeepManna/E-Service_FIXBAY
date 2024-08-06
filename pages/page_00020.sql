prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_name=>'My Bookings'
,p_alias=>'SERVICE-REPORT'
,p_step_title=>'Service Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1006011786471634931)
,p_plug_name=>'Service Report'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9836528545008038233)
,p_plug_display_sequence=>10
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
'       '''' as LOG',
'  from ER_SERVICE_REQUEST B',
'',
'  where SERVICE_REQUEST_CUSTOMER_ID = :P0_USER_ID;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Service Report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1006011935762634931)
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
,p_internal_uid=>19160622763041472687
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1006013497953635042)
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
 p_id=>wwv_flow_imp.id(1006014752745635043)
,p_db_column_name=>'ER_SERVICE_REQUEST_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Service Request Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1006015172504635044)
,p_db_column_name=>'ER_SERVICE_REQUEST_ISSUE_DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Issue Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1006015533755635044)
,p_db_column_name=>'ER_SERVICE_REQUEST_PRIORITY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Priority'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1006015968147635044)
,p_db_column_name=>'ER_SERVICE_REQUEST_SCHEDULED_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Scheduled Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1006016355917635044)
,p_db_column_name=>'ER_SERVICE_REQUEST_SERVICE_FEE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Service Fee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1006018347816635046)
,p_db_column_name=>'STATUS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010495301732518065)
,p_db_column_name=>'CATEGORY'
,p_display_order=>23
,p_column_identifier=>'N'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1010495378643518066)
,p_db_column_name=>'LOG'
,p_display_order=>33
,p_column_identifier=>'O'
,p_column_label=>'Log'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_SERVICE_REQUEST_ID:#ER_SERVICE_REQUEST_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1006203881150380220)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'191608148'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOG:CATEGORY:ER_SERVICE_REQUEST_DATE:ER_SERVICE_REQUEST_ISSUE_DESCRIPTION:ER_SERVICE_REQUEST_PRIORITY:ER_SERVICE_REQUEST_SCHEDULED_DATE:ER_SERVICE_REQUEST_SERVICE_FEE:STATUS:'
);
wwv_flow_imp.component_end;
end;
/
