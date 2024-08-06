prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>6744683248743557788
,p_default_application_id=>119982
,p_default_id_offset=>18154610827278837756
,p_default_owner=>'WKSP_INOAUG230ETHIX'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(9836435518472038191)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15550531290859
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9836735480129038403)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14607001399713966846)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Manage Role'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-circle'
,p_security_scheme=>wwv_flow_imp.id(17963595051682043572)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'100'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14680965096968847276)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Manage Users'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-folder-user'
,p_security_scheme=>wwv_flow_imp.id(17963595051682043572)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'18,19'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15155449981834216128)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Manage Category'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-random'
,p_security_scheme=>wwv_flow_imp.id(17963595051682043572)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'24'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15158623261964018362)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Manage Product'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-shopping-cart'
,p_security_scheme=>wwv_flow_imp.id(17963595051682043572)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15499301847763420925)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Manage Employee'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-plus'
,p_security_scheme=>wwv_flow_imp.id(17963595051682043572)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11,12'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15530858880752883223)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Manage Service Request'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-exchange'
,p_security_scheme=>wwv_flow_imp.id(17963595051682043572)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15,16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15540479618476988301)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Manage Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check-circle'
,p_list_item_disp_cond_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(17963595051682043572)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15545432132665076804)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Manage Service Invoice'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-paper-plane'
,p_security_scheme=>wwv_flow_imp.id(17963595051682043572)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(723718743801892282)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'User Profile'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-server-user'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(726496374732256587)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'About Us'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-id-card-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(726501638930260568)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Contact Us'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-contacts'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(728844575035309135)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Service'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wrench'
,p_security_scheme=>wwv_flow_imp.id(232833290180297902)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1006011404317634931)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'My Bookings'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_security_scheme=>wwv_flow_imp.id(232833290180297902)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1915077317333730425)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Product Purchase History'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-history'
,p_security_scheme=>wwv_flow_imp.id(17963595051682043572)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23,25'
);
wwv_flow_imp.component_end;
end;
/
