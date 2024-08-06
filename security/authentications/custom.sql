prompt --application/shared_components/security/authentications/custom
begin
--   Manifest
--     AUTHENTICATION: Custom
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>6744683248743557788
,p_default_application_id=>119982
,p_default_id_offset=>18154610827278837756
,p_default_owner=>'WKSP_INOAUG230ETHIX'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(17958906844181959325)
,p_name=>'Custom'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_05=>'N'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15547598189405
);
wwv_flow_imp.component_end;
end;
/
