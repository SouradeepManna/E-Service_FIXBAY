prompt --application/shared_components/user_interface/lovs/service_request
begin
--   Manifest
--     SERVICE REQUEST
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>6744683248743557788
,p_default_application_id=>119982
,p_default_id_offset=>18154610827278837756
,p_default_owner=>'WKSP_INOAUG230ETHIX'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2306549939078316497)
,p_lov_name=>'SERVICE REQUEST'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ER_SERVICE_REQUEST_ISSUE_DESCRIPTION as D,',
'ER_SERVICE_REQUEST_ID as R,',
'USER_NAME',
'from ER_SERVICE_REQUEST A, ER_USER B',
'where A.SERVICE_REQUEST_CUSTOMER_ID = B.USER_ID;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15549864280243
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2306597511112322443)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2306597972449322443)
,p_query_column_name=>'D'
,p_heading=>'Issue Description'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2306598349436322443)
,p_query_column_name=>'USER_NAME'
,p_heading=>'User Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
