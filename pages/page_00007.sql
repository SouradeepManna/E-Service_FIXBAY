prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'About Us'
,p_alias=>'ABOUT-US'
,p_step_title=>'About Us'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2739723391908492412)
,p_plug_name=>'About Us'
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
'    <title>About Us - ETHIX</title>',
'    <style>',
'        body {',
'            font-family: Arial, sans-serif;',
'            margin: 0;',
'            padding: 0;',
'            background-image: url(''#APP_FILES#back ground 1.jpg''); /* Background image */',
'            background-size: cover;',
'            color: #800000; /* Maroon font color */',
'            background-color: #d3f9d8; /* Light green background color */',
'        }',
'        .container {',
'            max-width: 1200px;',
'            margin: 0 auto;',
'            padding: 20px;',
'            background-color: rgba(144, 238, 144, 0.8); /* Light green background with some transparency */',
'            border-radius: 10px;',
'        }',
'        header {',
'            background-color: rgba(50, 205, 50, 0.8); /* Light green background with some transparency */',
'            color: #800000; /* Maroon font color */',
'            padding: 20px 0;',
'            text-align: center;',
'            border-radius: 8px;',
'        }',
'        h1, h2 {',
'            color: #111111; /* Blue color */',
'        }',
'        section {',
'            margin: 20px 0;',
'            background-color: rgba(144, 238, 144, 0.8); /* Light green with transparency */',
'            padding: 20px;',
'            border-radius: 8px;',
'            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);',
'            color: #800000;',
'        }',
'        .team-member {',
'            margin-bottom: 10px;',
'        }',
'        footer {',
'            background-color: rgba(50, 205, 50, 0.8); /* Light green background with some transparency */',
'            color: #800000; /* Maroon font color */',
'            text-align: center;',
'            padding: 20px 0;',
'            border-radius: 8px;',
'        }',
'        .contact-info {',
'            margin-top: 10px;',
'        }',
'        .company-values li {',
'            background-color: rgba(240, 248, 255, 0.8); /* Lighter blue */',
'            padding: 10px;',
'            margin: 5px 0;',
'            border-left: 5px solid #800000; /* Maroon */',
'        }',
'        blockquote {',
'            background-color: rgba(240, 248, 255, 0.8); /* Light blue with transparency */',
'            border-left: 5px solid #800000; /* Maroon */',
'            margin: 10px 0;',
'            padding: 10px 20px;',
'            color: #800000; /* Maroon font color */',
'        }',
'        .logo {',
'            display: block;',
'            margin: 0 auto;',
'            max-width: 200px;',
'            margin-bottom: 20px;',
'            border-radius: 10px; /* Make the image corners rounded */',
'        }',
'    </style>',
'</head>',
'<body>',
'',
'<header>',
'    <h1>About Us - FIXBAY</h1>',
'    <p>Reviving Technology, One Device at a Time.</p>',
'</header>',
'',
'<div class="container">',
'    <img src="#APP_FILES#new_logo.jpeg" alt="ETHIX Logo" class="logo"> <!-- Updated logo path -->',
'',
'    <section>',
'        <h2>Company Overview</h2>',
'        <p>FIXBAY is a leading service provider specializing in the repair and maintenance of electronic devices. We offer a seamless experience where customers can book services through our website, and our skilled technicians will visit their homes'
||' to provide top-notch services.</p>',
'        <p><strong>Mission:</strong> To provide reliable, efficient, and high-quality repair and maintenance services for electronic devices, ensuring customer satisfaction and trust.</p>',
'        <p><strong>Vision:</strong> To be the most trusted and preferred electronics service provider, delivering innovative solutions and exceptional customer experiences.</p>',
'    </section>',
'',
'    <section>',
'        <h2>History and Background</h2>',
'        <p>Four friends from the College of Engineering and Management dreamt of opening their own company. They discussed many topics, and finally, with planning by Souradeep Manna, leadership by Subhajit Mandal, and continuous help and dedication f'
||'rom Moulik Sinha and Saikat Bolen, they built FIXBAY.</p>',
'        <p>FIXBAY was founded in 2024.</p>',
'    </section>',
'',
'    <section>',
'        <h2>Services Offered</h2>',
'        <ul>',
'            <li><strong>Devices:</strong> Smartphones, Tablets, Laptops, Desktops, Smart TVs, Home Appliances (e.g., Refrigerators, Washing Machines, Microwaves), Gaming Consoles, Audio Systems</li>',
'            <li><strong>Services:</strong> Repair, Maintenance, Installation, Software Updates, Data Recovery, Troubleshooting</li>',
'        </ul>',
'    </section>',
'',
'    <section>',
'        <h2>Team Information</h2>',
'        <div class="team-member">',
'            <p><strong>Subhajit Mondal, CEO:</strong> B.Tech (Computer Science and Engineering from College of Engineering and Management)</p>',
'        </div>',
'        <div class="team-member">',
'            <p><strong>Souradeep Manna, COO:</strong> B.Tech (Computer Science and Engineering from College of Engineering and Management)</p>',
'        </div>',
'        <div class="team-member">',
'            <p><strong>Moulik Sinha, CTO:</strong> B.Tech (Computer Science and Engineering from College of Engineering and Management)</p>',
'        </div>',
'        <div class="team-member">',
'            <p><strong>Saikat Bolen, Head of Customer Service:</strong> B.Tech (Computer Science and Engineering from College of Engineering and Management)</p>',
'        </div>',
'    </section>',
'',
'    <section>',
'        <h2>Customer Testimonials</h2>',
'        <blockquote>"FIXBAY provided exceptional service and fixed my laptop quickly. Highly recommend!" - [Customer Name]</blockquote>',
'        <blockquote>"Great experience with FIXBAY. The technician was professional and knowledgeable." - [Customer Name]</blockquote>',
'    </section>',
'',
'    <section>',
'        <h2>Company Values</h2>',
'        <ul class="company-values">',
'            <li>Integrity: We uphold the highest standards of integrity in all our actions.</li>',
'            <li>Customer Satisfaction: Our top priority is ensuring the complete satisfaction of our customers.</li>',
'            <li>Innovation: We continuously seek innovative solutions to improve our services.</li>',
'            <li>Reliability: We provide dependable and consistent service to our customers.</li>',
'            <li>Expertise: Our team comprises highly skilled and certified technicians.</li>',
'        </ul>',
'    </section>',
'',
'    <section>',
'        <h2>Contact Information</h2>',
'        <p class="contact-info"><strong>Phone:</strong> 1001001001</p>',
'        <p class="contact-info"><strong>Email:</strong> fixbayservice2024@gmail.com</p>',
'        <p class="contact-info"><strong>Address:</strong> 33/1 G.T. Road, Kolkata-700104</p>',
'    </section>',
'</div>',
'',
'<footer>',
'    <p>&copy; 2024 FIXBAY. All Rights Reserved.</p>',
'</footer>',
'',
'</body>',
'</html>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
