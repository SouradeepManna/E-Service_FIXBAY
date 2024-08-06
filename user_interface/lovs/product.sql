prompt --application/shared_components/user_interface/lovs/product
begin
--   Manifest
--     PRODUCT
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
 p_id=>wwv_flow_imp.id(2302698821132952170)
,p_lov_name=>'PRODUCT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRODUCT_NAME as D,',
'PRODUCT_ID as R,',
'PRODUCT_BRAND_NAME as L ',
'from ER_PRODUCT_MASTER',
'order by PRODUCT_NAME '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15549860234933
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2303057416163964323)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2303057861930964323)
,p_query_column_name=>'D'
,p_heading=>'Product Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2303058229915964323)
,p_query_column_name=>'L'
,p_heading=>'Brand Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
