prompt --application/shared_components/security/authorizations/customer_auth
begin
--   Manifest
--     SECURITY SCHEME: CUSTOMER_AUTH
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>6744683248743557788
,p_default_application_id=>119982
,p_default_id_offset=>18154610827278837756
,p_default_owner=>'WKSP_INOAUG230ETHIX'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(232833290180297902)
,p_name=>'CUSTOMER_AUTH'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'LV_VALID NUMBER;',
'BEGIN',
'SELECT COUNT(*) INTO LV_VALID FROM ',
'ER_USER,ER_ROLE WHERE ER_USER.ROLE_ID=ER_ROLE.ROLE_ID AND USER_ID=:P0_USER_ID AND UPPER(ROLE_NAME)=UPPER(''CUSTOMER'');',
'IF LV_VALID >0',
'THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_version_scn=>15547937863690
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/
