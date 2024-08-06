prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Contact Us'
,p_alias=>'CONTACT-US'
,p_step_title=>'Contact Us'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2739723313323492411)
,p_plug_name=>' Company details'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9836538334235038237)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="en">',
'<head>',
'    <meta charset="UTF-8">',
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'    <title>Contact Us (ETHIX)</title>',
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            margin: 0;',
'            padding: 0;',
'            background-image: url(''#APP_FILES#back ground 1.jpg'');',
'            background-size: cover;',
'            background-attachment: fixed;',
'            background-repeat: no-repeat;',
'            color: #000;',
'        }',
'        .container {',
'            max-width: 1200px;',
'            margin: 0 auto;',
'            padding: 20px;',
'            background-color: rgba(144, 238, 144, 0.8); /* Light green with transparency */',
'            border-radius: 8px;',
'        }',
'        header {',
'            background-color: rgba(50, 205, 50, 0.9); /* Slightly darker green */',
'            color: #000;',
'            padding: 20px 0;',
'            text-align: center;',
'            border-radius: 8px;',
'        }',
'        h1 {',
'            margin: 0;',
'        }',
'        .contact-info {',
'            display: flex;',
'            flex-wrap: wrap;',
'            justify-content: space-between;',
'            margin: 20px 0;',
'        }',
'        .contact-info div {',
'            flex: 1;',
'            margin: 10px;',
'            padding: 20px;',
'            background-color: rgba(255, 255, 255, 0.8); /* White with transparency */',
'            border-radius: 8px;',
'            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);',
'            color: #000;',
'        }',
'        .contact-info div h2 {',
'            margin-top: 0;',
'            color: #006400; /* Dark green color */',
'        }',
'        .contact-form {',
'            background-color: rgba(255, 255, 255, 0.8); /* White with transparency */',
'            padding: 20px;',
'            border-radius: 8px;',
'            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);',
'            margin-bottom: 20px;',
'            color: #000;',
'        }',
'        .contact-form h2 {',
'            color: #006400; /* Dark green color */',
'        }',
'        .contact-form form {',
'            display: flex;',
'            flex-direction: column;',
'        }',
'        .contact-form label {',
'            margin-bottom: 5px;',
'            font-weight: bold;',
'            color: #000;',
'        }',
'        .contact-form input, .contact-form textarea {',
'            margin-bottom: 10px;',
'            padding: 10px;',
'            border: 1px solid #ced4da;',
'            border-radius: 4px;',
'            color: #000;',
'        }',
'        .contact-form button {',
'            padding: 10px;',
'            background-color: #006400; /* Dark green color */',
'            color: #ffffff;',
'            border: none;',
'            border-radius: 4px;',
'            cursor: pointer;',
'        }',
'        .contact-form button:hover {',
'            background-color: #004b23; /* Even darker green color */',
'        }',
'        .social-media {',
'            text-align: center;',
'            margin: 20px 0;',
'        }',
'        .social-media h2 {',
'            color: #006400; /* Dark green color */',
'        }',
'        .social-media a {',
'            margin: 0 10px;',
'            text-decoration: none;',
'            color: #006400; /* Dark green color */',
'        }',
'        .map {',
'            margin: 20px 0;',
'            height: 400px;',
'        }',
'        .map h2 {',
'            color: #006400; /* Dark green color */',
'        }',
'    </style>',
'</head>',
'<body>',
'    <header>',
'        <h1>Contact Us (FIXBAY)</h1>',
'    </header>',
'    <div class="container">',
'        <div class="contact-info">',
'            <div>',
'                <h2>Address</h2>',
'                <p>33/2, G.T.Road, Salkia, Howrah, 711104</p>',
'            </div>',
'            <div>',
'                <h2>Phone</h2>',
'                <p>Main: 1000100001</p>',
'                <p>Alternate: 2000020000</p>',
'                <p>WhatsApp: 6289151625</p>',
'            </div>',
'            <div>',
'                <h2>Email</h2>',
'                <p>For Job: <a href="mailto:fixbayjob04@gmail.com" style="color: #006400;">fixbayjob04@gmail.com</a></p>',
'                <p>For Help: <a href="mailto:fixbayhelp04@gmail.com" style="color: #006400;">fixbayhelp04@gmail.com</a></p>',
'            </div>',
'            <div>',
'                <h2>Office Hours</h2>',
'                <p>9am to 9pm</p>',
'            </div>',
'        </div>',
'       ',
'       ',
'        ',
'    </div>',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1974738326192551018)
,p_plug_name=>'P9_Get_in_Touch'
,p_title=>'Get in Touch'
,p_parent_plug_id=>wwv_flow_imp.id(2739723313323492411)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9836538334235038237)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1974737493336551010)
,p_plug_name=>'P9_VIEW_ON_MAP'
,p_title=>'View On Map'
,p_parent_plug_id=>wwv_flow_imp.id(2739723313323492411)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9836538334235038237)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <div class="map">',
'          ',
'            <iframe src="https://www.google.com/maps?q=33/2,+G.T.Road,+Salkia,+Howrah,+711104&output=embed" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>',
'<br><br>',
'        </div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1974737289535551008)
,p_plug_name=>'P9_FOLLOW_US'
,p_title=>'FOLLOW US'
,p_parent_plug_id=>wwv_flow_imp.id(2739723313323492411)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="social-media">',
'<br>',
'            <h2>Follow Us</h2>',
'            <a href="https://www.facebook.com/profile.php?id=61563371716382&mibextid=rS40aB7S9Ucbxw6v" target="_blank">Facebook</a>',
'            <a href="https://www.instagram.com/EthiX04" target="_blank">Instagram</a>',
'        </div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1974737603549551011)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(1974738326192551018)
,p_button_name=>'P9_SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9836611983132038272)
,p_button_image_alt=>'Submit'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1974738056803551016)
,p_name=>'P9_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1974738326192551018)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9836609439868038271)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1974737973675551015)
,p_name=>'P9_PHONE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1974738326192551018)
,p_prompt=>'Phone'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9836609439868038271)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1974737855397551014)
,p_name=>'P9_EMAIL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1974738326192551018)
,p_prompt=>'Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9836609439868038271)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1974737748191551013)
,p_name=>'P9_SUBJECT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1974738326192551018)
,p_prompt=>'Subject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9836609439868038271)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1974737629106551012)
,p_name=>'P9_MESSAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1974738326192551018)
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9836609439868038271)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp.component_end;
end;
/
