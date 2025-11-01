

CREATE TABLE IF NOT EXISTS `ag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ag_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `ag_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `ag_entidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ag_entidade_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `ag_entidade_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ag_entidade VALUES("1","Administra��o Publica 2","inactivo","46","2019-11-26 16:33:05","2019-11-26 17:07:20");
INSERT INTO ag_entidade VALUES("4","Tecnica","activo","46","2020-02-04 16:45:23","");





CREATE TABLE IF NOT EXISTS `armazem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abreviatura` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endereco` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `armazem_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `armazem_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO armazem VALUES("1","Armazem 1","Loc 1","Rua Paiva Couceiro","loc@gmail.com","863335511","863335511","863335511","activo","yes","46","2019-12-02 10:03:00","");





CREATE TABLE IF NOT EXISTS `backup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO backup VALUES("3","2020-02-03-090621.sql","2020-02-03 09:06:21","");





CREATE TABLE IF NOT EXISTS `bancos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `bi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bi_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `bi_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `bl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_de_conta_id` int(11) DEFAULT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endereco_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conta_padrao` int(11) DEFAULT NULL,
  `excluida` int(11) NOT NULL DEFAULT '0',
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rodape` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nib` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iban` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bl_numero_unique` (`numero`),
  KEY `bl_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `bl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO bl VALUES("24","1","cont cont","55555555","big","zimpeto ","0","0","","","","","46","","");
INSERT INTO bl VALUES("31","1","fnb","787877","fnbarck","matola","1","0","","","","","46","","");
INSERT INTO bl VALUES("32","1","millnenium account","18888","millnenium account","mavalane","0","0","","","","","46","","");





CREATE TABLE IF NOT EXISTS `bo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagen` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `preco_compra` double DEFAULT NULL,
  `preco_venda` double DEFAULT NULL,
  `lotes_e_validades` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activo',
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activo',
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bo_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `bo_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `categoria` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `unidade_medida_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_unidade_medida_id_foreign` (`unidade_medida_id`),
  KEY `categoria_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `categoria_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `categoria_unidade_medida_id_foreign` FOREIGN KEY (`unidade_medida_id`) REFERENCES `unidade_medida` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO categoria VALUES("6","Hardware & Software","activo","46","7","2019-12-03 11:23:27","");





CREATE TABLE IF NOT EXISTS `categoria_vendas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_vendas_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `categoria_vendas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `cl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imposto` int(11) NOT NULL,
  `desconto` double NOT NULL,
  `motivo` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cliente_generico` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `caixa_postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cl_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `cl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO cl VALUES("2","Alberto Matsinhe","albertomatsinhe@gmail.com","873803869","863335511","Rua Daniel Malinda , Nr 142 1 andar","Cidade de Maputo","Maputo","400004856","0","0","","activo","no","1100","46","2019-12-03 10:09:47","");
INSERT INTO cl VALUES("3","Alberto Shady","albertshady@gmail.com","843600390",".","Av. 16 de Junho, Bairro Cimento","Pemba,","Cabo Delgado","456131465","0","0","","activo","no","1100","46","2020-02-13 15:18:20","");
INSERT INTO cl VALUES("4","kayolera","kayolera@gmail.com","843600390",".","Av. 16 de Junho, Bairro Cimento","Pemba,","Cabo Delgado","545646788","0","0","","activo","no","1100","46","2020-02-13 15:18:54","");
INSERT INTO cl VALUES("5","Salvador Tchauque","salvador@hotmail.com","843600390","843600390","Av. 16 de Junho, Bairro Cimento","Pemba,","Cabo Delgado","545648912","0","0","","activo","no","1100","46","2020-02-13 15:19:29","");





CREATE TABLE IF NOT EXISTS `configuracoes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO countries VALUES("1","United States","US");
INSERT INTO countries VALUES("2","Canada","CA");
INSERT INTO countries VALUES("3","Afghanistan","AF");
INSERT INTO countries VALUES("4","Albania","AL");
INSERT INTO countries VALUES("5","Algeria","DZ");
INSERT INTO countries VALUES("6","American Samoa","AS");
INSERT INTO countries VALUES("7","Andorra","AD");
INSERT INTO countries VALUES("8","Angola","AO");
INSERT INTO countries VALUES("9","Anguilla","AI");
INSERT INTO countries VALUES("10","Antarctica","AQ");
INSERT INTO countries VALUES("11","Antigua and/or Barbuda","AG");
INSERT INTO countries VALUES("12","Argentina","AR");
INSERT INTO countries VALUES("13","Armenia","AM");
INSERT INTO countries VALUES("14","Aruba","AW");
INSERT INTO countries VALUES("15","Australia","AU");
INSERT INTO countries VALUES("16","Austria","AT");
INSERT INTO countries VALUES("17","Azerbaijan","AZ");
INSERT INTO countries VALUES("18","Bahamas","BS");
INSERT INTO countries VALUES("19","Bahrain","BH");
INSERT INTO countries VALUES("20","Bangladesh","BD");
INSERT INTO countries VALUES("21","Barbados","BB");
INSERT INTO countries VALUES("22","Belarus","BY");
INSERT INTO countries VALUES("23","Belgium","BE");
INSERT INTO countries VALUES("24","Belize","BZ");
INSERT INTO countries VALUES("25","Benin","BJ");
INSERT INTO countries VALUES("26","Bermuda","BM");
INSERT INTO countries VALUES("27","Bhutan","BT");
INSERT INTO countries VALUES("28","Bolivia","BO");
INSERT INTO countries VALUES("29","Bosnia and Herzegovina","BA");
INSERT INTO countries VALUES("30","Botswana","BW");
INSERT INTO countries VALUES("31","Bouvet Island","BV");
INSERT INTO countries VALUES("32","Brazil","BR");
INSERT INTO countries VALUES("33","British lndian Ocean Territory","IO");
INSERT INTO countries VALUES("34","Brunei Darussalam","BN");
INSERT INTO countries VALUES("35","Bulgaria","BG");
INSERT INTO countries VALUES("36","Burkina Faso","BF");
INSERT INTO countries VALUES("37","Burundi","BI");
INSERT INTO countries VALUES("38","Cambodia","KH");
INSERT INTO countries VALUES("39","Cameroon","CM");
INSERT INTO countries VALUES("40","Cape Verde","CV");
INSERT INTO countries VALUES("41","Cayman Islands","KY");
INSERT INTO countries VALUES("42","Central African Republic","CF");
INSERT INTO countries VALUES("43","Chad","TD");
INSERT INTO countries VALUES("44","Chile","CL");
INSERT INTO countries VALUES("45","China","CN");
INSERT INTO countries VALUES("46","Christmas Island","CX");
INSERT INTO countries VALUES("47","Cocos (Keeling) Islands","CC");
INSERT INTO countries VALUES("48","Colombia","CO");
INSERT INTO countries VALUES("49","Comoros","KM");
INSERT INTO countries VALUES("50","Congo","CG");
INSERT INTO countries VALUES("51","Cook Islands","CK");
INSERT INTO countries VALUES("52","Costa Rica","CR");
INSERT INTO countries VALUES("53","Croatia (Hrvatska)","HR");
INSERT INTO countries VALUES("54","Cuba","CU");
INSERT INTO countries VALUES("55","Cyprus","CY");
INSERT INTO countries VALUES("56","Czech Republic","CZ");
INSERT INTO countries VALUES("57","Democratic Republic of Congo","CD");
INSERT INTO countries VALUES("58","Denmark","DK");
INSERT INTO countries VALUES("59","Djibouti","DJ");
INSERT INTO countries VALUES("60","Dominica","DM");
INSERT INTO countries VALUES("61","Dominican Republic","DO");
INSERT INTO countries VALUES("62","East Timor","TP");
INSERT INTO countries VALUES("63","Ecudaor","EC");
INSERT INTO countries VALUES("64","Egypt","EG");
INSERT INTO countries VALUES("65","El Salvador","SV");
INSERT INTO countries VALUES("66","Equatorial Guinea","GQ");
INSERT INTO countries VALUES("67","Eritrea","ER");
INSERT INTO countries VALUES("68","Estonia","EE");
INSERT INTO countries VALUES("69","Ethiopia","ET");
INSERT INTO countries VALUES("70","Falkland Islands (Malvinas)","FK");
INSERT INTO countries VALUES("71","Faroe Islands","FO");
INSERT INTO countries VALUES("72","Fiji","FJ");
INSERT INTO countries VALUES("73","Finland","FI");
INSERT INTO countries VALUES("74","France","FR");
INSERT INTO countries VALUES("75","France, Metropolitan","FX");
INSERT INTO countries VALUES("76","French Guiana","GF");
INSERT INTO countries VALUES("77","French Polynesia","PF");
INSERT INTO countries VALUES("78","French Southern Territories","TF");
INSERT INTO countries VALUES("79","Gabon","GA");
INSERT INTO countries VALUES("80","Gambia","GM");
INSERT INTO countries VALUES("81","Georgia","GE");
INSERT INTO countries VALUES("82","Germany","DE");
INSERT INTO countries VALUES("83","Ghana","GH");
INSERT INTO countries VALUES("84","Gibraltar","GI");
INSERT INTO countries VALUES("85","Greece","GR");
INSERT INTO countries VALUES("86","Greenland","GL");
INSERT INTO countries VALUES("87","Grenada","GD");
INSERT INTO countries VALUES("88","Guadeloupe","GP");
INSERT INTO countries VALUES("89","Guam","GU");
INSERT INTO countries VALUES("90","Guatemala","GT");
INSERT INTO countries VALUES("91","Guinea","GN");
INSERT INTO countries VALUES("92","Guinea-Bissau","GW");
INSERT INTO countries VALUES("93","Guyana","GY");
INSERT INTO countries VALUES("94","Haiti","HT");
INSERT INTO countries VALUES("95","Heard and Mc Donald Islands","HM");
INSERT INTO countries VALUES("96","Honduras","HN");
INSERT INTO countries VALUES("97","Hong Kong","HK");
INSERT INTO countries VALUES("98","Hungary","HU");
INSERT INTO countries VALUES("99","Iceland","IS");
INSERT INTO countries VALUES("100","India","IN");
INSERT INTO countries VALUES("101","Indonesia","ID");
INSERT INTO countries VALUES("102","Iran (Islamic Republic of)","IR");
INSERT INTO countries VALUES("103","Iraq","IQ");
INSERT INTO countries VALUES("104","Ireland","IE");
INSERT INTO countries VALUES("105","Israel","IL");
INSERT INTO countries VALUES("106","Italy","IT");
INSERT INTO countries VALUES("107","Ivory Coast","CI");
INSERT INTO countries VALUES("108","Jamaica","JM");
INSERT INTO countries VALUES("109","Japan","JP");
INSERT INTO countries VALUES("110","Jordan","JO");
INSERT INTO countries VALUES("111","Kazakhstan","KZ");
INSERT INTO countries VALUES("112","Kenya","KE");
INSERT INTO countries VALUES("113","Kiribati","KI");
INSERT INTO countries VALUES("114","Korea, Democratic People\'s Republic of","KP");
INSERT INTO countries VALUES("115","Korea, Republic of","KR");
INSERT INTO countries VALUES("116","Kuwait","KW");
INSERT INTO countries VALUES("117","Kyrgyzstan","KG");
INSERT INTO countries VALUES("118","Lao People\'s Democratic Republic","LA");
INSERT INTO countries VALUES("119","Latvia","LV");
INSERT INTO countries VALUES("120","Lebanon","LB");
INSERT INTO countries VALUES("121","Lesotho","LS");
INSERT INTO countries VALUES("122","Liberia","LR");
INSERT INTO countries VALUES("123","Libyan Arab Jamahiriya","LY");
INSERT INTO countries VALUES("124","Liechtenstein","LI");
INSERT INTO countries VALUES("125","Lithuania","LT");
INSERT INTO countries VALUES("126","Luxembourg","LU");
INSERT INTO countries VALUES("127","Macau","MO");
INSERT INTO countries VALUES("128","Macedonia","MK");
INSERT INTO countries VALUES("129","Madagascar","MG");
INSERT INTO countries VALUES("130","Malawi","MW");
INSERT INTO countries VALUES("131","Malaysia","MY");
INSERT INTO countries VALUES("132","Maldives","MV");
INSERT INTO countries VALUES("133","Mali","ML");
INSERT INTO countries VALUES("134","Malta","MT");
INSERT INTO countries VALUES("135","Marshall Islands","MH");
INSERT INTO countries VALUES("136","Martinique","MQ");
INSERT INTO countries VALUES("137","Mauritania","MR");
INSERT INTO countries VALUES("138","Mauritius","MU");
INSERT INTO countries VALUES("139","Mayotte","TY");
INSERT INTO countries VALUES("140","Mexico","MX");
INSERT INTO countries VALUES("141","Micronesia, Federated States of","FM");
INSERT INTO countries VALUES("142","Moldova, Republic of","MD");
INSERT INTO countries VALUES("143","Monaco","MC");
INSERT INTO countries VALUES("144","Mongolia","MN");
INSERT INTO countries VALUES("145","Montserrat","MS");
INSERT INTO countries VALUES("146","Morocco","MA");
INSERT INTO countries VALUES("147","Mozambique","MZ");
INSERT INTO countries VALUES("148","Myanmar","MM");
INSERT INTO countries VALUES("149","Namibia","NA");
INSERT INTO countries VALUES("150","Nauru","NR");
INSERT INTO countries VALUES("151","Nepal","NP");
INSERT INTO countries VALUES("152","Netherlands","NL");
INSERT INTO countries VALUES("153","Netherlands Antilles","AN");
INSERT INTO countries VALUES("154","New Caledonia","NC");
INSERT INTO countries VALUES("155","New Zealand","NZ");
INSERT INTO countries VALUES("156","Nicaragua","NI");
INSERT INTO countries VALUES("157","Niger","NE");
INSERT INTO countries VALUES("158","Nigeria","NG");
INSERT INTO countries VALUES("159","Niue","NU");
INSERT INTO countries VALUES("160","Norfork Island","NF");
INSERT INTO countries VALUES("161","Northern Mariana Islands","MP");
INSERT INTO countries VALUES("162","Norway","NO");
INSERT INTO countries VALUES("163","Oman","OM");
INSERT INTO countries VALUES("164","Pakistan","PK");
INSERT INTO countries VALUES("165","Palau","PW");
INSERT INTO countries VALUES("166","Panama","PA");
INSERT INTO countries VALUES("167","Papua New Guinea","PG");
INSERT INTO countries VALUES("168","Paraguay","PY");
INSERT INTO countries VALUES("169","Peru","PE");
INSERT INTO countries VALUES("170","Philippines","PH");
INSERT INTO countries VALUES("171","Pitcairn","PN");
INSERT INTO countries VALUES("172","Poland","PL");
INSERT INTO countries VALUES("173","Portugal","PT");
INSERT INTO countries VALUES("174","Puerto Rico","PR");
INSERT INTO countries VALUES("175","Qatar","QA");
INSERT INTO countries VALUES("176","Republic of South Sudan","SS");
INSERT INTO countries VALUES("177","Reunion","RE");
INSERT INTO countries VALUES("178","Romania","RO");
INSERT INTO countries VALUES("179","Russian Federation","RU");
INSERT INTO countries VALUES("180","Rwanda","RW");
INSERT INTO countries VALUES("181","Saint Kitts and Nevis","KN");
INSERT INTO countries VALUES("182","Saint Lucia","LC");
INSERT INTO countries VALUES("183","Saint Vincent and the Grenadines","VC");
INSERT INTO countries VALUES("184","Samoa","WS");
INSERT INTO countries VALUES("185","San Marino","SM");
INSERT INTO countries VALUES("186","Sao Tome and Principe","ST");
INSERT INTO countries VALUES("187","Saudi Arabia","SA");
INSERT INTO countries VALUES("188","Senegal","SN");
INSERT INTO countries VALUES("189","Serbia","RS");
INSERT INTO countries VALUES("190","Seychelles","SC");
INSERT INTO countries VALUES("191","Sierra Leone","SL");
INSERT INTO countries VALUES("192","Singapore","SG");
INSERT INTO countries VALUES("193","Slovakia","SK");
INSERT INTO countries VALUES("194","Slovenia","SI");
INSERT INTO countries VALUES("195","Solomon Islands","SB");
INSERT INTO countries VALUES("196","Somalia","SO");
INSERT INTO countries VALUES("197","South Africa","ZA");
INSERT INTO countries VALUES("198","South Georgia South Sandwich Islands","GS");
INSERT INTO countries VALUES("199","Spain","ES");
INSERT INTO countries VALUES("200","Sri Lanka","LK");
INSERT INTO countries VALUES("201","St. Helena","SH");
INSERT INTO countries VALUES("202","St. Pierre and Miquelon","PM");
INSERT INTO countries VALUES("203","Sudan","SD");
INSERT INTO countries VALUES("204","Suriname","SR");
INSERT INTO countries VALUES("205","Svalbarn and Jan Mayen Islands","SJ");
INSERT INTO countries VALUES("206","Swaziland","SZ");
INSERT INTO countries VALUES("207","Sweden","SE");
INSERT INTO countries VALUES("208","Switzerland","CH");
INSERT INTO countries VALUES("209","Syrian Arab Republic","SY");
INSERT INTO countries VALUES("210","Taiwan","TW");
INSERT INTO countries VALUES("211","Tajikistan","TJ");
INSERT INTO countries VALUES("212","Tanzania, United Republic of","TZ");
INSERT INTO countries VALUES("213","Thailand","TH");
INSERT INTO countries VALUES("214","Togo","TG");
INSERT INTO countries VALUES("215","Tokelau","TK");
INSERT INTO countries VALUES("216","Tonga","TO");
INSERT INTO countries VALUES("217","Trinidad and Tobago","TT");
INSERT INTO countries VALUES("218","Tunisia","TN");
INSERT INTO countries VALUES("219","Turkey","TR");
INSERT INTO countries VALUES("220","Turkmenistan","TM");
INSERT INTO countries VALUES("221","Turks and Caicos Islands","TC");
INSERT INTO countries VALUES("222","Tuvalu","TV");
INSERT INTO countries VALUES("223","Uganda","UG");
INSERT INTO countries VALUES("224","Ukraine","UA");
INSERT INTO countries VALUES("225","United Arab Emirates","AE");
INSERT INTO countries VALUES("226","United Kingdom","GB");
INSERT INTO countries VALUES("227","United States minor outlying islands","UM");
INSERT INTO countries VALUES("228","Uruguay","UY");
INSERT INTO countries VALUES("229","Uzbekistan","UZ");
INSERT INTO countries VALUES("230","Vanuatu","VU");
INSERT INTO countries VALUES("231","Vatican City State","VA");
INSERT INTO countries VALUES("232","Venezuela","VE");
INSERT INTO countries VALUES("233","Vietnam","VN");
INSERT INTO countries VALUES("234","Virgin Islands (British)","VG");
INSERT INTO countries VALUES("235","Virgin Islands (U.S.)","VI");
INSERT INTO countries VALUES("236","Wallis and Futuna Islands","WF");
INSERT INTO countries VALUES("237","Western Sahara","EH");
INSERT INTO countries VALUES("238","Yemen","YE");
INSERT INTO countries VALUES("239","Yugoslavia","YU");
INSERT INTO countries VALUES("240","Zaire","ZR");
INSERT INTO countries VALUES("241","Zambia","ZM");
INSERT INTO countries VALUES("242","Zimbabwe","ZW");





CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` char(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO currency VALUES("1","USD","$");
INSERT INTO currency VALUES("3","Metical","MT");





CREATE TABLE IF NOT EXISTS `cust_empresa` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caixa_postal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morada` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'NULL',
  `dia_inicio` int(11) DEFAULT NULL,
  `dia_fim` int(11) DEFAULT NULL,
  `tipo_salario` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'convencional',
  `pacote_id` int(11) DEFAULT NULL,
  `h_semana` int(11) NOT NULL DEFAULT '48',
  `idioma_default` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'po',
  PRIMARY KEY (`id`),
  KEY `cust_empresa_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `cust_empresa_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO cust_empresa VALUES("46","NC Software House","ncsoftware@co.mz","400004856","1100","863335511","863335511","Malanga","1","ncsoftware.png","","","convencional","7","48","po");
INSERT INTO cust_empresa VALUES("48","Update","abdulsumail@gmail.com","4666452323","","84","","","1","NULL","","","convencional","6","48","po");





CREATE TABLE IF NOT EXISTS `despesas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conta_bancaria_id` int(10) unsigned DEFAULT NULL,
  `data` date DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `categoria_id` int(10) unsigned DEFAULT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anexo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `metodo_pagamento_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `despesas_empresa_id_foreign` (`empresa_id`),
  KEY `despesas_categoria_id_foreign` (`categoria_id`),
  KEY `despesas_metodo_pagamento_id_foreign` (`metodo_pagamento_id`),
  KEY `despesas_conta_bancaria_id_foreign` (`conta_bancaria_id`),
  CONSTRAINT `despesas_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE,
  CONSTRAINT `despesas_conta_bancaria_id_foreign` FOREIGN KEY (`conta_bancaria_id`) REFERENCES `conta_bancarias` (`id`) ON DELETE CASCADE,
  CONSTRAINT `despesas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `despesas_metodo_pagamento_id_foreign` FOREIGN KEY (`metodo_pagamento_id`) REFERENCES `metodos_pagamento` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `ds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conta_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `descricao` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `referencia` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anexo` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ds_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `ds_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `email_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_protocol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_encryption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO email_config VALUES("1","smtp","tls","smtp.hostinger.com","587","asumail@ncsoftware.co.mz","asumail@ncsoftware.co.mz","Update1981!","asumail@ncsoftware.co.mz","asumail@ncsoftware.co.mz");





CREATE TABLE IF NOT EXISTS `email_temp_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` tinyint(4) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO email_temp_details VALUES("1","2","Your Quotation # {order_reference_no} from {company_name} has been shipped","Hi {customer_name},<br><br>Thank you for your Quotation. Here�s a brief overview of your shipment:<br>Quotation # {order_reference_no} was packed on {packed_date} and shipped on {delivery_date}.<br> <br><b>Shipping address   </b><br><br>{shipping_street}<br>{shipping_city}<br>{shipping_state}<br>{shipping_zip_code}<br>{shipping_country}<br><br><b>Item Summery</b><br>{item_information}<br> <br>If you have any questions, please feel free to reply to this email.<br><br>Regards<br>{company_name}<br><br><br>","en","1");
INSERT INTO email_temp_details VALUES("2","2","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("3","2","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("4","2","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("5","2","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("6","2","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("7","2","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("8","2","Subject","Body","tu","8");
INSERT INTO email_temp_details VALUES("9","1","Payment information for Quotation#{order_reference_no} and Invoice#{invoice_reference_no}.","<p>Hi {customer_name},</p><p>Thank you for purchase our product and pay for this.</p><p>We just want to confirm a few details about payment information:</p><p><b>Customer Information</b></p><p>{billing_street}</p><p>{billing_city}</p><p>{billing_state}</p><p>{billing_zip_code}</p><p>{billing_country}<br></p><p><b>Payment Summary<br></b></p><p><b></b><i>Payment No : {payment_id}</i></p><p><i>Payment Date : {payment_date}&nbsp;</i></p><p><i>Payment Method : {payment_method} <br></i></p><p><i><b>Total Amount : {total_amount}</b></i></p><p><i>Quotation No : {order_reference_no}</i><br><i></i></p><p><i>Invoice No : {invoice_reference_no}</i><br></p><p><br></p><p>Regards,</p><p>{company_name}<br></p><br><br><br><br><br><br>","en","1");
INSERT INTO email_temp_details VALUES("10","1","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("11","1","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("12","1","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("13","1","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("14","1","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("15","1","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("16","1","Subject","Body","tu","8");
INSERT INTO email_temp_details VALUES("17","3","Payment information for Quotation#{order_reference_no} and Invoice#{invoice_reference_no}.","<p>Hi {customer_name},</p><p>Thank you for purchase our product and pay for this.</p><p>We just want to confirm a few details about payment information:</p><p><b>Customer Information</b></p><p>{billing_street}</p><p>{billing_city}</p><p>{billing_state}</p><p>{billing_zip_code}<br></p><p>{billing_country}<br>&nbsp; &nbsp; &nbsp; &nbsp; <br></p><p><b>Payment Summary<br></b></p><p><b></b><i>Payment No : {payment_id}</i></p><p><i>Payment Date : {payment_date}&nbsp;</i></p><p><i>Payment Method : {payment_method} <br></i></p><p><i><b>Total Amount : {total_amount}</b><br>Quotation No : {order_reference_no}<br>&nbsp;</i><i>Invoice No : {invoice_reference_no}<br>&nbsp;</i>Regards,</p><p>{company_name} <br></p><br>","en","1");
INSERT INTO email_temp_details VALUES("18","3","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("19","3","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("20","3","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("21","3","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("22","3","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("23","3","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("24","3","Subject","Body","tu","8");
INSERT INTO email_temp_details VALUES("25","4","Your Invoice # {invoice_reference_no} for Quotation #{order_reference_no} from {company_name} has been created.","<p>Hi {customer_name},</p><p>Thank you for your order. Here�s a brief overview of your invoice: Invoice #{invoice_reference_no} is for Quotation #{order_reference_no}. The invoice total is {currency}{total_amount}, please pay before {due_date}.</p><p>If you have any questions, please feel free to reply to this email. </p><p><b>Billing address</b></p><p>&nbsp;{billing_street}</p><p>&nbsp;{billing_city}</p><p>&nbsp;{billing_state}</p><p>&nbsp;{billing_zip_code}</p><p>&nbsp;{billing_country}<br></p><p><br></p><p><b>Quotation summary<br></b></p><p><b></b>{invoice_summery}<br></p><p>Regards,</p><p>{company_name}<br></p><br><br>","en","1");
INSERT INTO email_temp_details VALUES("26","4","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("27","4","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("28","4","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("29","4","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("30","4","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("31","4","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("32","4","Subject","Body","tu","8");
INSERT INTO email_temp_details VALUES("33","5","Your Quotation # {order_reference_no} from {company_name} has been created.","<p>Hi {customer_name},</p><p>Thank you for your order. Here�s a brief overview of your Quotation #{order_reference_no} that was created on {order_date}. The order total is {currency}{total_amount}.</p><p>If you have any questions, please feel free to reply to this email. </p><p><b>Billing address</b></p><p>&nbsp;{billing_street}</p><p>&nbsp;{billing_city}</p><p>&nbsp;{billing_state}</p><p>&nbsp;{billing_zip_code}</p><p>&nbsp;{billing_country}<br></p><p><br></p><p><b>Quotation summary<br></b></p><p><b></b>{order_summery}<br></p><p>Regards,</p><p>{company_name}</p><br><br>","en","1");
INSERT INTO email_temp_details VALUES("34","5","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("35","5","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("36","5","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("37","5","Documento nr  # {order_reference_no} da empresa ","<p>Caro Cliente!</p><p>Agradecemos pelos seus pedidos!</p><p><br></p>","po","5");
INSERT INTO email_temp_details VALUES("38","5","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("39","5","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("40","5","Subject","Body","tu","8");
INSERT INTO email_temp_details VALUES("41","6","Your Quotation # {order_reference_no} from {company_name} has been packed","Hi {customer_name},<br><br>Thank you for your order. Here�s a brief overview of your shipment:<br>Quotation # {order_reference_no} was packed on {packed_date}.<br> <br><b>Shipping address   </b><br><br>{shipping_street}<br>{shipping_city}<br>{shipping_state}<br>{shipping_zip_code}<br>{shipping_country}<br><br><b>Item Summery</b><br>{item_information}<br> <br>If you have any questions, please feel free to reply to this email.<br><br>Regards<br>{company_name}<br><br><br>","en","1");
INSERT INTO email_temp_details VALUES("42","6","Subject","Body","ar","2");
INSERT INTO email_temp_details VALUES("43","6","Subject","Body","ch","3");
INSERT INTO email_temp_details VALUES("44","6","Subject","Body","fr","4");
INSERT INTO email_temp_details VALUES("45","6","Subject","Body","po","5");
INSERT INTO email_temp_details VALUES("46","6","Subject","Body","rs","6");
INSERT INTO email_temp_details VALUES("47","6","Subject","Body","sp","7");
INSERT INTO email_temp_details VALUES("48","6","Subject","Body","tu","8");





CREATE TABLE IF NOT EXISTS `empresas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuit` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caixa_postal` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morada` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contabancaria_1` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contabancaria_2` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO empresas VALUES("1","Default Campany","default@default.com","40000000","1100","845454544","845644453","Matola Agare lda","000000000","0000000000","","");
INSERT INTO empresas VALUES("2","Nova","cam@can","","","","","","","","","");





CREATE TABLE IF NOT EXISTS `entidades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endereco` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'activo',
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entidades_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `entidades_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `fi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ft_id` int(10) unsigned NOT NULL,
  `codigo_produto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `preco_custo` double DEFAULT NULL,
  `tipo_taxa_id` int(11) DEFAULT NULL,
  `valor_taxa` double DEFAULT NULL,
  `percentagem_desconto` double DEFAULT NULL,
  `taxa_inclusa_valor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_inventory` int(11) DEFAULT '0',
  `lote` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fi_empresa_id_foreign` (`empresa_id`),
  KEY `fi_ft_id_foreign` (`ft_id`),
  CONSTRAINT `fi_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fi_ft_id_foreign` FOREIGN KEY (`ft_id`) REFERENCES `ft` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO fi VALUES("20","6","zero","Laptop HP 450G","1000","10","","3","0","0","no","0","","46","","");
INSERT INTO fi VALUES("46","15","zero","Laptop HP 450G","1023","102.56410557185","","3","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("47","15","zero","Lapis de  Cera","1000","320","","3","0","0","no","0","","46","","");
INSERT INTO fi VALUES("59","17","zero","Laptop HP 450G","12","120","","3","0","0","no","0","","46","","");
INSERT INTO fi VALUES("60","17","zero","Lapis de  Cera","231","230","","3","0","0","no","0","","46","","");
INSERT INTO fi VALUES("81","19","zero","Laptop HP 450G","1000","128.20513","","3","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("82","19","zero","Laptop HP 450G","1000","230","","3","0","0","no","0","","46","","");
INSERT INTO fi VALUES("83","19","2154","Samsung S5","4","500","","3","0","0","no","1","","46","","");
INSERT INTO fi VALUES("84","23","zero","Laptop HP 450G","1000","10","","3","0","0","","0","","46","","");
INSERT INTO fi VALUES("115","30","zero","Laptop HP 450G","1000","150","","1","0","0","no","0","","46","","");
INSERT INTO fi VALUES("116","29","zero","Lapis de  Cera","1000","230","","1","0","0","no","0","","46","","");
INSERT INTO fi VALUES("121","34","zero","Laptop HP 450G","1000","2340","","1","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("122","31","zero","Laptop HP 450G","100","2340","","1","0","0","no","0","","46","","");
INSERT INTO fi VALUES("123","31","S3","Sansung","1000","450","","1","0","0","no","1","","46","","");
INSERT INTO fi VALUES("124","35","zero","Laptop HP 450G","100","2340","","1","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("125","35","S3","Laptop HP 450G","1000","450","","1","0","0","yes","1","","46","","");
INSERT INTO fi VALUES("126","35","zero","Sansung","1000","10","","3","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("127","35","zero","Laptop HP 450G","1000","128.20513","","3","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("128","35","zero","Laptop HP 450G","1000","230","","3","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("129","35","2154","Laptop HP 450G","4","500","","3","0","0","yes","1","","46","","");
INSERT INTO fi VALUES("130","36","zero","Laptop HP 450G","1023","102.56410557185","","3","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("131","36","zero","Laptop HP 450G","1000","320","","3","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("132","36","S3","Lapis de  Cera","1","450","","1","0","0","no","1","","46","","");
INSERT INTO fi VALUES("133","36","2154","Lapis de  Cera","1","500","","1","0","0","no","1","","46","","");
INSERT INTO fi VALUES("134","37","zero","Laptop HP 450G","100","2340","","1","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("135","37","S3","Laptop HP 450G","1000","450","","1","0","0","yes","1","","46","","");
INSERT INTO fi VALUES("136","37","zero","Sansung","1000","10","","3","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("137","38","zero","Laptop HP 450G","100","2340","","1","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("138","38","S3","Laptop HP 450G","1000","450","","1","0","0","yes","1","","46","","");
INSERT INTO fi VALUES("139","39","S3","Sansung","1000","450","","1","0","0","no","1","","46","","");
INSERT INTO fi VALUES("144","41","zero","Laptop HP 450G","12","120","","3","0","0","","0","","46","","");
INSERT INTO fi VALUES("145","41","zero","Lapis de  Cera","231","230","","3","0","0","","0","","46","","");
INSERT INTO fi VALUES("146","42","zero","Laptop HP 450G","1000","128.20513265306","","3","0","2","yes","0","","46","","");
INSERT INTO fi VALUES("147","42","S3","Sansung","1","450","","1","0","0","no","1","","46","","");
INSERT INTO fi VALUES("150","43","2154","Samsung S5","1000","500","","1","0","0","no","1","","46","","");
INSERT INTO fi VALUES("151","43","zero","Lapis de  Cera","2341","196.58119607006","","3","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("153","45","zero","Laptop HP 450G","12","120","","3","0","0","yes","0","","46","","");
INSERT INTO fi VALUES("154","45","zero","Laptop HP 450G","231","230","","3","0","0","yes","0","","46","","");





CREATE TABLE IF NOT EXISTS `fl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caixa_postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fl_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `fl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `fn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `lote_id` int(11) DEFAULT NULL,
  `imposto_id` int(11) DEFAULT NULL,
  `valor_iva` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `nota` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fn_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `fn_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `fo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `morada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cidade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nuit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pais` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caixa_postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fo_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `fo_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO fo VALUES("1","Jorge Matsinhe","jorge_matsinhe@gmail.com","863335511","863335511","Rua Daniel Malinda , Nr 142 1 andar","Cidade de Maputo","Maputo Cidade","423154564","","activo","1100","46","2020-02-04 16:44:17","");





CREATE TABLE IF NOT EXISTS `ft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `factura_id` int(11) DEFAULT NULL,
  `cotacao_id` int(11) DEFAULT NULL,
  `conta_bancaria_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `localizacao_id` int(11) DEFAULT NULL,
  `requisicao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `termo_pagamento_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `local_entrega` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_motorista` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carta_conducao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matricula_carro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `pago` double DEFAULT NULL,
  `taxa_total` double DEFAULT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxa_cambio` double DEFAULT NULL,
  `contra_valor` double DEFAULT NULL,
  `moedas_id` int(10) unsigned DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ft_empresa_id_foreign` (`empresa_id`),
  KEY `ft_moedas_id_foreign` (`moedas_id`),
  CONSTRAINT `ft_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ft_moedas_id_foreign` FOREIGN KEY (`moedas_id`) REFERENCES `moedas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ft VALUES("6","COT-0001/2020","2","","","","","2","1","","","1","2020-01-21","","","","","11700","","1700","","activo","cot","1","11700","1","46","2020-01-21 15:54:10","");
INSERT INTO ft VALUES("15","FT-0003/2020","2","","","","","2","1","","","","2020-01-22","","","","","497160","","20869.2","497,160.00","activo","ft","1","497160","1","46","2020-01-22 12:17:27","");
INSERT INTO ft VALUES("17","COT-0003/2020","2","","","","","2","1","","","","2020-01-22","","","","","63846.9","","244.8","244.80","activo","cot","1","63846.9","1","46","2020-01-22 13:54:32","");
INSERT INTO ft VALUES("19","FT-0004/2020","2","","","","","2","1","","","","2020-01-28","","","","","421440","","61234.869999999995","419,100.00","activo","ft","1","421440","1","46","2020-01-28 11:00:41","");
INSERT INTO ft VALUES("23","FT-0005/2020","2","","6","","COT-0001/2020","2","1","","","1","2020-01-21","","","","","11700","","1700","","activo","ft","1","11700","1","46","2020-02-03 09:15:53","");
INSERT INTO ft VALUES("29","ND-0001/2020","2","23","","","","2","1","","","1","2020-02-12","","","","","230000","","0","","activo","nd","1","230000","1","46","2020-02-03 12:37:01","2020-02-12 18:30:21");
INSERT INTO ft VALUES("30","NC-0001/2020","2","19","","","","2","1","","","1","2020-02-12","","","","","150000","","0","","activo","nc","1","150000","1","46","2020-02-03 12:42:02","2020-02-12 18:29:02");
INSERT INTO ft VALUES("31","FT-0006/2020","2","","","","","2","1","","","","2020-02-12","","","","","684000","","0","","activo","ft","1","684000","1","46","2020-02-12 19:08:38","");
INSERT INTO ft VALUES("34","GE-0002/2020","2","31","","","FT-0006/2020","2","1","","","1","2020-02-12","","","","","2340000","","0","","activo","ge","1","2340000","1","46","2020-02-12 18:58:31","");
INSERT INTO ft VALUES("35","GE-0003/2020","2","19","","","FT-0004/2020","2","1","","","1","2020-02-12","","","","","1117140","","62934.869999999995","","activo","ge","1","1117140","1","46","2020-02-12 19:21:00","");
INSERT INTO ft VALUES("36","GE-0004/2020","2","15","","","FT-0003/2020","2","1","","","1","2020-02-12","","","","","498110","","72236.92","","activo","ge","1","498110","1","46","2020-02-12 19:23:28","");
INSERT INTO ft VALUES("37","GE-0005/2020","2","23","","","FT-0005/2020","2","1","","","1","2020-02-13","","","","","695700","","1700","ertertertert","activo","ge","1","695700","1","46","2020-02-13 15:31:33","");
INSERT INTO ft VALUES("38","GT-0001/2020","2","31","","","FT-0006/2020","2","1","","","1","2020-02-13","","","","","684000","","0","","activo","gt","1","684000","1","46","2020-02-13 15:34:38","");
INSERT INTO ft VALUES("39","GT-0002/2020","4","0","","","","2","1","","","1","2020-02-13","","","","","450000","","0","","activo","gt","1","450000","1","46","2020-02-13 15:54:50","");
INSERT INTO ft VALUES("41","FT-0007/2020","2","","17","","COT-0003/2020","2","1","","","","2020-02-13","","","","","63846.9","","244.8","244.80","activo","ft","1","63846.9","1","46","2020-02-13 17:29:28","");
INSERT INTO ft VALUES("42","FT-0008/2020","4","","","","","2","1","","","","2020-02-14","","","","","10911300.74","","21358.98","","activo","ft","74","147450.01","2","46","2020-02-14 11:20:42","");
INSERT INTO ft VALUES("43","VD-0001/2020","5","","","31","","2","1","","1","","2020-02-14","","","","","83469003.39999999","","0","asdasdasd","activo","vd","80.38","1038430","4","46","2020-02-14 11:27:41","2020-02-14 12:35:32");
INSERT INTO ft VALUES("45","GE-0006/2020","2","41","","","FT-0007/2020","2","","","","","2020-02-14","ddfsdfsdf","COP","456465","hjjkhjkhjhkjk","5132013.822","","9276.9","uyyuiuiyuiuyuiuyuiuh","activo","ge","80.38","63846.9","4","46","2020-02-14 13:36:46","");





CREATE TABLE IF NOT EXISTS `grupo_armazem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abreviatura` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `grupo_armazem_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `grupo_armazem_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO grupo_armazem VALUES("1","Armazen 1","AM1","Mexe com armazem 1","activo","46","2019-12-02 10:06:00","");





CREATE TABLE IF NOT EXISTS `historicos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `funcionario_id` int(10) unsigned NOT NULL,
  `tipo_contrato_id` int(10) unsigned NOT NULL,
  `duracao` double DEFAULT NULL,
  `nr_renovacoes` int(10) unsigned NOT NULL,
  `motivo_entrada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observacoes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `localizacao` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `endereco_entrega` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contacto` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inactivo` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `localizacao_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `localizacao_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `lotes_validades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_inicio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_fim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lotes_validades_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `lotes_validades_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `marca` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `marca_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `marca_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO marca VALUES("1","Sem Marca","46","2019-08-24 10:13:42","","");





CREATE TABLE IF NOT EXISTS `mensagem_erros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `metodos_pagamento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `metodos_pagamento_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `metodos_pagamento_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO metodos_pagamento VALUES("1","Numerario","46","2019-03-11 16:56:45","");





CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO migrations VALUES("2018_04_20_082916_actualizar_tabelas","1");
INSERT INTO migrations VALUES("2018_04_20_082916_actualizar_tabelas","1");





CREATE TABLE IF NOT EXISTS `moedas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `singular` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plural` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `casas_decimais_sing` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `casas_decimais_plu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO moedas VALUES("1","MZN","Metical","Meticais","Centavo","Centavos","46","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("2","USD","Dollar","Dollars","C�ntimo","C�ntimos","46","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("3","EUR","Euro","Euros","C�ntimo","C�ntimos","46","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("4","GBP","Libra","Libras","C�ntimo","C�ntimos","46","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("5","ZAR","Rand","Rands","C�ntimo","C�ntimos","46","2019-03-15 15:23:44","");
INSERT INTO moedas VALUES("6","MZN","Metical","Meticais","Centavo","Centavos","44","2019-04-18 08:30:36","");





CREATE TABLE IF NOT EXISTS `notificacoes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `ultimo_visto` date DEFAULT NULL,
  `destinatario_id` int(11) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prioridade` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registado_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=932 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO notificacoes VALUES("1","sistema","O Usuario demo  fez login na data 2019-02-18 13:29:46","","","2","vista","","2","2019-02-18 13:29:46","");
INSERT INTO notificacoes VALUES("3","sistema","O Usuario demo  fez login na data 2019-02-18 14:43:43","","","2","vista","","2","2019-02-18 14:43:43","");
INSERT INTO notificacoes VALUES("4","sistema","O Usuario demo  fez login na data 2019-02-18 14:47:23","","","2","vista","","2","2019-02-18 14:47:23","");
INSERT INTO notificacoes VALUES("5","sistema","O Usuario teste  fez login na data 2019-02-18 14:50:27","","","3","vista","","3","2019-02-18 14:50:27","");
INSERT INTO notificacoes VALUES("6","sistema","O Usuario teste  fez login na data 2019-02-18 14:51:22","","","3","vista","","3","2019-02-18 14:51:22","");
INSERT INTO notificacoes VALUES("7","sistema","O Usuario demo  fez login na data 2019-02-18 14:51:41","","","2","vista","","2","2019-02-18 14:51:41","");
INSERT INTO notificacoes VALUES("8","sistema","O Usuario demo  fez login na data 2019-02-19 08:49:33","","","2","vista","","2","2019-02-19 08:49:33","");
INSERT INTO notificacoes VALUES("9","sistema","O Usuario demo  fez login na data 2019-02-19 09:04:47","","","2","vista","","2","2019-02-19 09:04:47","");
INSERT INTO notificacoes VALUES("10","sistema","O Usuario demo  fez login na data 2019-02-19 09:18:05","","","2","vista","","2","2019-02-19 09:18:05","");
INSERT INTO notificacoes VALUES("11","sistema","O Usuario demo  fez login na data 2019-02-19 09:36:00","","","2","vista","","2","2019-02-19 09:36:00","");
INSERT INTO notificacoes VALUES("12","sistema","O Usuario demo  fez login na data 2019-02-19 10:43:29","","","2","vista","","2","2019-02-19 10:43:29","");
INSERT INTO notificacoes VALUES("13","sistema","O Usuario demo  fez login na data 2019-02-19 11:01:09","","","2","vista","","2","2019-02-19 11:01:09","");
INSERT INTO notificacoes VALUES("14","sistema","O Usuario demo  fez login na data 2019-02-19 11:10:54","","","2","vista","","2","2019-02-19 11:10:54","");
INSERT INTO notificacoes VALUES("15","sistema","O Usuario demo  fez login na data 2019-02-19 11:16:48","","","2","vista","","2","2019-02-19 11:16:48","");
INSERT INTO notificacoes VALUES("16","sistema","O Usuario demo  fez login na data 2019-02-19 11:17:35","","","2","vista","","2","2019-02-19 11:17:35","");
INSERT INTO notificacoes VALUES("17","sistema","O Usuario demo  fez login na data 2019-02-19 11:19:34","","","2","vista","","2","2019-02-19 11:19:34","");
INSERT INTO notificacoes VALUES("18","sistema","O Usuario demo  fez login na data 2019-02-19 11:23:34","","","2","vista","","2","2019-02-19 11:23:34","");
INSERT INTO notificacoes VALUES("19","sistema","O Usuario demo  fez login na data 2019-02-19 11:26:28","","","2","vista","","2","2019-02-19 11:26:28","");
INSERT INTO notificacoes VALUES("20","sistema","O Usuario demo  fez login na data 2019-02-19 11:28:07","","","2","vista","","2","2019-02-19 11:28:07","");
INSERT INTO notificacoes VALUES("21","sistema","O Usuario demo  fez login na data 2019-02-19 11:29:25","","","2","vista","","2","2019-02-19 11:29:25","");
INSERT INTO notificacoes VALUES("22","sistema","O Usuario teste  fez login na data 2019-02-19 11:30:25","","","3","vista","","3","2019-02-19 11:30:25","");
INSERT INTO notificacoes VALUES("23","sistema","O Usuario demo  fez login na data 2019-02-19 11:30:37","","","2","vista","","2","2019-02-19 11:30:37","");
INSERT INTO notificacoes VALUES("24","sistema","O Usuario Usaurio Teste  fez login na data 2019-02-19 11:33:25","","","9","vista","","9","2019-02-19 11:33:25","");
INSERT INTO notificacoes VALUES("25","sistema","O Usuario demo  fez login na data 2019-02-19 11:36:09","","","2","vista","","2","2019-02-19 11:36:09","");
INSERT INTO notificacoes VALUES("26","sistema","O Usuario Usaurio Teste  fez login na data 2019-02-19 11:36:27","","","9","vista","","9","2019-02-19 11:36:27","");
INSERT INTO notificacoes VALUES("27","sistema","O Usuario demo  fez login na data 2019-02-19 11:52:29","","","2","vista","","2","2019-02-19 11:52:29","");
INSERT INTO notificacoes VALUES("28","sistema","O Usuario demo  fez login na data 2019-02-19 11:58:01","","","2","vista","","2","2019-02-19 11:58:01","");
INSERT INTO notificacoes VALUES("29","sistema","O Usuario demo  fez login na data 2019-02-19 11:58:29","","","2","vista","","2","2019-02-19 11:58:29","");
INSERT INTO notificacoes VALUES("30","sistema","O Usuario demo  fez login na data 2019-02-19 12:44:35","","","2","vista","","2","2019-02-19 12:44:35","");
INSERT INTO notificacoes VALUES("31","sistema","O Usuario demo  fez login na data 2019-02-19 12:44:54","","","2","vista","","2","2019-02-19 12:44:54","");
INSERT INTO notificacoes VALUES("32","sistema","O Usuario demo  fez login na data 2019-02-19 12:45:17","","","2","vista","","2","2019-02-19 12:45:17","");
INSERT INTO notificacoes VALUES("33","sistema","O Usuario demo  fez login na data 2019-02-19 12:56:25","","","2","vista","","2","2019-02-19 12:56:25","");
INSERT INTO notificacoes VALUES("34","sistema","O Usuario demo  fez login na data 2019-02-19 13:15:26","","","2","vista","","2","2019-02-19 13:15:26","");
INSERT INTO notificacoes VALUES("35","sistema","O Usuario demo  fez login na data 2019-02-19 13:16:25","","","2","vista","","2","2019-02-19 13:16:25","");
INSERT INTO notificacoes VALUES("36","sistema","O Usuario Shady  fez login na data 2019-02-19 13:17:16","","","10","vista","","10","2019-02-19 13:17:16","");
INSERT INTO notificacoes VALUES("37","sistema","O Usuario demo  fez login na data 2019-02-19 13:17:49","","","2","vista","","2","2019-02-19 13:17:49","");
INSERT INTO notificacoes VALUES("38","sistema","O Usuario Shady  fez login na data 2019-02-19 13:18:17","","","10","vista","","10","2019-02-19 13:18:17","");
INSERT INTO notificacoes VALUES("39","sistema","O Usuario demo  fez login na data 2019-02-19 14:29:30","","","2","vista","","2","2019-02-19 14:29:30","");
INSERT INTO notificacoes VALUES("40","sistema","O Usuario demo  fez login na data 2019-02-19 14:43:47","","","2","vista","","2","2019-02-19 14:43:47","");
INSERT INTO notificacoes VALUES("41","sistema","O Usuario demo  fez login na data 2019-02-19 14:46:16","","","2","vista","","2","2019-02-19 14:46:16","");
INSERT INTO notificacoes VALUES("42","sistema","O Usuario demo  fez login na data 2019-02-20 06:49:18","","","2","vista","","2","2019-02-20 06:49:18","");
INSERT INTO notificacoes VALUES("43","sistema","O Usuario demo  fez login na data 2019-02-20 06:49:41","","","2","vista","","2","2019-02-20 06:49:41","");
INSERT INTO notificacoes VALUES("44","sistema","O Usuario demo  fez login na data 2019-02-20 07:51:15","","","2","vista","","2","2019-02-20 07:51:15","");
INSERT INTO notificacoes VALUES("45","sistema","O Usuario demo  fez login na data 2019-02-20 08:01:41","","","2","vista","","2","2019-02-20 08:01:41","");
INSERT INTO notificacoes VALUES("46","sistema","O Usuario demo  fez login na data 2019-02-20 08:09:36","","","2","vista","","2","2019-02-20 08:09:36","");
INSERT INTO notificacoes VALUES("47","sistema","O Usuario demo  fez login na data 2019-02-20 08:29:46","","","2","vista","","2","2019-02-20 08:29:46","");
INSERT INTO notificacoes VALUES("48","sistema","O Usuario demo  fez login na data 2019-02-20 08:55:48","","","2","vista","","2","2019-02-20 08:55:48","");
INSERT INTO notificacoes VALUES("49","sistema","O Usuario demo  fez login na data 2019-02-20 13:10:55","","","2","vista","","2","2019-02-20 13:10:55","");
INSERT INTO notificacoes VALUES("50","sistema","O Usuario demo  fez login na data 2019-02-20 13:51:58","","","2","vista","","2","2019-02-20 13:51:58","");
INSERT INTO notificacoes VALUES("51","sistema","O Usuario demo  fez login na data 2019-02-21 07:36:12","","","2","vista","","2","2019-02-21 07:36:12","");
INSERT INTO notificacoes VALUES("52","sistema","O Usuario demo  fez login na data 2019-02-21 07:40:54","","","2","vista","","2","2019-02-21 07:40:54","");
INSERT INTO notificacoes VALUES("53","sistema","O Usuario demo  fez login na data 2019-02-21 08:21:37","","","2","vista","","2","2019-02-21 08:21:37","");
INSERT INTO notificacoes VALUES("54","sistema","O Usuario demo  fez login na data 2019-02-21 10:58:00","","","2","vista","","2","2019-02-21 10:58:00","");
INSERT INTO notificacoes VALUES("55","sistema","O Usuario demo  fez login na data 2019-02-21 10:59:56","","","2","vista","","2","2019-02-21 10:59:56","");
INSERT INTO notificacoes VALUES("56","sistema","O Usuario demo  fez login na data 2019-02-21 11:11:38","","","2","vista","","2","2019-02-21 11:11:38","");
INSERT INTO notificacoes VALUES("57","sistema","O Usuario demo  fez login na data 2019-02-22 06:37:54","","","2","vista","","2","2019-02-22 06:37:54","");
INSERT INTO notificacoes VALUES("58","sistema","O Usuario demo  fez login na data 2019-02-22 08:44:36","","","2","vista","","2","2019-02-22 08:44:36","");
INSERT INTO notificacoes VALUES("59","sistema","O Usuario demo  fez login na data 2019-02-22 08:45:35","","","2","vista","","2","2019-02-22 08:45:35","");
INSERT INTO notificacoes VALUES("60","sistema","O Usuario demo  fez login na data 2019-02-22 12:39:00","","","2","vista","","2","2019-02-22 12:39:00","");
INSERT INTO notificacoes VALUES("61","sistema","O Usuario demo  fez login na data 2019-02-22 13:55:26","","","2","vista","","2","2019-02-22 13:55:26","");
INSERT INTO notificacoes VALUES("62","sistema","O Usuario demo  fez login na data 2019-02-22 14:48:09","","","2","vista","","2","2019-02-22 14:48:09","");
INSERT INTO notificacoes VALUES("63","sistema","O Usuario demo  fez login na data 2019-02-22 14:53:58","","","2","vista","","2","2019-02-22 14:53:58","");
INSERT INTO notificacoes VALUES("64","sistema","O Usuario demo  fez login na data 2019-02-25 07:52:11","","","2","vista","","2","2019-02-25 07:52:11","");
INSERT INTO notificacoes VALUES("65","sistema","O Usuario demo  fez login na data 2019-02-25 07:52:26","","","2","vista","","2","2019-02-25 07:52:26","");
INSERT INTO notificacoes VALUES("66","sistema","O Usuario demo  fez login na data 2019-02-25 07:54:41","","","2","vista","","2","2019-02-25 07:54:41","");
INSERT INTO notificacoes VALUES("67","sistema","O Usuario demo  fez login na data 2019-02-26 12:33:16","","","2","vista","","2","2019-02-26 12:33:16","");
INSERT INTO notificacoes VALUES("68","sistema","O Usuario demo  fez login na data 2019-02-26 12:40:16","","","2","vista","","2","2019-02-26 12:40:16","");
INSERT INTO notificacoes VALUES("69","sistema","O Usuario demo  fez login na data 2019-02-26 12:40:32","","","2","vista","","2","2019-02-26 12:40:32","");
INSERT INTO notificacoes VALUES("70","sistema","O Usuario demo  fez login na data 2019-02-26 12:55:35","","","2","vista","","2","2019-02-26 12:55:35","");
INSERT INTO notificacoes VALUES("71","sistema","O Usuario demo  fez login na data 2019-02-26 13:43:55","","","2","vista","","2","2019-02-26 13:43:55","");
INSERT INTO notificacoes VALUES("72","sistema","O Usuario demo  fez login na data 2019-02-26 13:44:24","","","2","vista","","2","2019-02-26 13:44:24","");
INSERT INTO notificacoes VALUES("73","sistema","O Usuario demo  fez login na data 2019-02-26 13:59:28","","","2","vista","","2","2019-02-26 13:59:28","");
INSERT INTO notificacoes VALUES("74","sistema","O Usuario demo  fez login na data 2019-02-26 13:59:37","","","2","vista","","2","2019-02-26 13:59:37","");
INSERT INTO notificacoes VALUES("75","sistema","O Usuario demo  fez login na data 2019-02-26 14:51:22","","","2","vista","","2","2019-02-26 14:51:22","");
INSERT INTO notificacoes VALUES("76","sistema","O Usuario demo  fez login na data 2019-02-27 08:26:18","","","2","vista","","2","2019-02-27 08:26:18","");
INSERT INTO notificacoes VALUES("77","sistema","O Usuario demo  fez login na data 2019-02-27 08:52:35","","","2","vista","","2","2019-02-27 08:52:35","");
INSERT INTO notificacoes VALUES("78","sistema","O Usuario demo  fez login na data 2019-02-27 09:02:34","","","2","vista","","2","2019-02-27 09:02:34","");
INSERT INTO notificacoes VALUES("79","sistema","O Usuario demo  fez login na data 2019-02-27 09:10:41","","","2","vista","","2","2019-02-27 09:10:41","");
INSERT INTO notificacoes VALUES("80","sistema","O Usuario demo  fez login na data 2019-02-27 09:11:03","","","2","vista","","2","2019-02-27 09:11:03","");
INSERT INTO notificacoes VALUES("81","sistema","O Usuario demo  fez login na data 2019-02-27 09:11:20","","","2","vista","","2","2019-02-27 09:11:20","");
INSERT INTO notificacoes VALUES("82","sistema","O Usuario demo  fez login na data 2019-02-27 09:11:56","","","2","vista","","2","2019-02-27 09:11:56","");
INSERT INTO notificacoes VALUES("83","sistema","O Usuario demo  fez login na data 2019-02-27 13:39:37","","","2","vista","","2","2019-02-27 13:39:37","");
INSERT INTO notificacoes VALUES("84","sistema","O Usuario demo  fez login na data 2019-02-28 06:48:04","","","2","vista","","2","2019-02-28 06:48:04","");
INSERT INTO notificacoes VALUES("85","sistema","O Usuario demo  fez login na data 2019-02-28 09:57:18","","","2","vista","","2","2019-02-28 09:57:18","");
INSERT INTO notificacoes VALUES("86","sistema","O Usuario demo  fez login na data 2019-02-28 10:04:41","","","2","vista","","2","2019-02-28 10:04:41","");
INSERT INTO notificacoes VALUES("87","sistema","O Usuario demo  fez login na data 2019-02-28 10:57:22","","","2","vista","","2","2019-02-28 10:57:22","");
INSERT INTO notificacoes VALUES("88","sistema","O Usuario demo  fez login na data 2019-02-28 11:03:41","","","2","vista","","2","2019-02-28 11:03:41","");
INSERT INTO notificacoes VALUES("89","sistema","O Usuario demo  fez login na data 2019-02-28 11:54:20","","","2","vista","","2","2019-02-28 11:54:20","");
INSERT INTO notificacoes VALUES("90","sistema","O Usuario demo  fez login na data 2019-02-28 11:56:15","","","2","vista","","2","2019-02-28 11:56:15","");
INSERT INTO notificacoes VALUES("91","sistema","O Usuario demo  fez login na data 2019-03-01 06:48:36","","","2","vista","","2","2019-03-01 06:48:36","");
INSERT INTO notificacoes VALUES("92","sistema","O Usuario demo  fez login na data 2019-03-01 07:00:51","","","2","vista","","2","2019-03-01 07:00:51","");
INSERT INTO notificacoes VALUES("93","sistema","O Usuario demo  fez login na data 2019-03-01 07:01:50","","","2","vista","","2","2019-03-01 07:01:50","");
INSERT INTO notificacoes VALUES("94","sistema","O Usuario demo  fez login na data 2019-03-01 07:13:05","","","2","vista","","2","2019-03-01 07:13:05","");
INSERT INTO notificacoes VALUES("95","sistema","O Usuario demo  fez login na data 2019-03-01 07:56:52","","","2","vista","","2","2019-03-01 07:56:52","");
INSERT INTO notificacoes VALUES("96","sistema","O Usuario demo  fez login na data 2019-03-01 08:02:14","","","2","vista","","2","2019-03-01 08:02:14","");
INSERT INTO notificacoes VALUES("97","sistema","O Usuario demo  fez login na data 2019-03-01 10:30:01","","","2","vista","","2","2019-03-01 10:30:01","");
INSERT INTO notificacoes VALUES("98","sistema","O Usuario demo  fez login na data 2019-03-01 10:38:47","","","2","vista","","2","2019-03-01 10:38:47","");
INSERT INTO notificacoes VALUES("99","sistema","O Usuario demo  fez login na data 2019-03-01 10:47:13","","","2","vista","","2","2019-03-01 10:47:13","");
INSERT INTO notificacoes VALUES("100","sistema","O Usuario demo  fez login na data 2019-03-01 11:45:57","","","2","vista","","2","2019-03-01 11:45:57","");
INSERT INTO notificacoes VALUES("101","sistema","O Usuario demo  fez login na data 2019-03-01 12:15:01","","","2","vista","","2","2019-03-01 12:15:01","");
INSERT INTO notificacoes VALUES("102","sistema","O Usuario demo  fez login na data 2019-03-01 12:50:12","","","2","vista","","2","2019-03-01 12:50:12","");
INSERT INTO notificacoes VALUES("103","sistema","O Usuario demo  fez login na data 2019-03-02 08:45:45","","","2","vista","","2","2019-03-02 08:45:45","");
INSERT INTO notificacoes VALUES("104","sistema","O Usuario Real Name  fez login na data 2019-03-02 10:56:15","","","4","vista","","4","2019-03-02 10:56:15","");
INSERT INTO notificacoes VALUES("105","sistema","O Usuario demo  fez login na data 2019-03-02 12:29:23","","","2","vista","","2","2019-03-02 12:29:23","");
INSERT INTO notificacoes VALUES("106","sistema","O Usuario demo  fez login na data 2019-03-02 12:32:24","","","2","vista","","2","2019-03-02 12:32:24","");
INSERT INTO notificacoes VALUES("107","sistema","O Usuario demo  fez login na data 2019-03-02 13:15:21","","","2","vista","","2","2019-03-02 13:15:21","");
INSERT INTO notificacoes VALUES("108","sistema","O Usuario demo  fez login na data 2019-03-02 13:44:54","","","2","vista","","2","2019-03-02 13:44:54","");
INSERT INTO notificacoes VALUES("109","sistema","O Usuario demo  fez login na data 2019-03-02 19:46:34","","","2","vista","","2","2019-03-02 19:46:34","");
INSERT INTO notificacoes VALUES("110","sistema","O Usuario demo  fez login na data 2019-03-02 19:53:53","","","2","vista","","2","2019-03-02 19:53:53","");
INSERT INTO notificacoes VALUES("111","sistema","O Usuario demo  fez login na data 2019-03-02 20:12:50","","","2","vista","","2","2019-03-02 20:12:50","");
INSERT INTO notificacoes VALUES("112","sistema","O Usuario demo  fez login na data 2019-03-02 20:13:29","","","2","vista","","2","2019-03-02 20:13:29","");
INSERT INTO notificacoes VALUES("113","sistema","O Usuario demo  fez login na data 2019-03-02 20:16:53","","","2","vista","","2","2019-03-02 20:16:53","");
INSERT INTO notificacoes VALUES("114","sistema","O Usuario demo  fez login na data 2019-03-02 20:17:45","","","2","vista","","2","2019-03-02 20:17:45","");
INSERT INTO notificacoes VALUES("115","sistema","O Usuario demo  fez login na data 2019-03-02 20:19:46","","","2","vista","","2","2019-03-02 20:19:46","");
INSERT INTO notificacoes VALUES("116","sistema","O Usuario demo  fez login na data 2019-03-02 20:23:12","","","2","vista","","2","2019-03-02 20:23:12","");
INSERT INTO notificacoes VALUES("117","sistema","O Usuario demo  fez login na data 2019-03-02 21:15:25","","","2","vista","","2","2019-03-02 21:15:25","");
INSERT INTO notificacoes VALUES("118","sistema","O Usuario demo  fez login na data 2019-03-02 21:17:28","","","2","vista","","2","2019-03-02 21:17:28","");
INSERT INTO notificacoes VALUES("119","sistema","O Usuario demo  fez login na data 2019-03-02 21:28:51","","","2","vista","","2","2019-03-02 21:28:51","");
INSERT INTO notificacoes VALUES("120","sistema","O Usuario empresa2  fez login na data 2019-03-02 21:30:58","","","11","vista","","11","2019-03-02 21:30:58","");
INSERT INTO notificacoes VALUES("121","sistema","O Usuario empresa2  fez login na data 2019-03-02 21:31:48","","","11","vista","","11","2019-03-02 21:31:48","");
INSERT INTO notificacoes VALUES("122","sistema","O Usuario demo  fez login na data 2019-03-02 21:41:29","","","2","vista","","2","2019-03-02 21:41:29","");
INSERT INTO notificacoes VALUES("123","sistema","O Usuario demo  fez login na data 2019-03-02 21:43:53","","","2","vista","","2","2019-03-02 21:43:53","");
INSERT INTO notificacoes VALUES("124","sistema","O Usuario demo  fez login na data 2019-03-02 21:46:23","","","2","vista","","2","2019-03-02 21:46:23","");
INSERT INTO notificacoes VALUES("125","sistema","O Usuario empresa2  fez login na data 2019-03-02 21:47:30","","","11","vista","","11","2019-03-02 21:47:30","");
INSERT INTO notificacoes VALUES("126","sistema","O Usuario demo  fez login na data 2019-03-02 21:52:20","","","2","vista","","2","2019-03-02 21:52:20","");
INSERT INTO notificacoes VALUES("127","sistema","O Usuario demo  fez login na data 2019-03-03 07:45:01","","","2","vista","","2","2019-03-03 07:45:01","");
INSERT INTO notificacoes VALUES("128","sistema","O Usuario demo  fez login na data 2019-03-03 08:17:53","","","2","vista","","2","2019-03-03 08:17:53","");
INSERT INTO notificacoes VALUES("129","sistema","O Usuario demo  fez login na data 2019-03-03 12:41:21","","","2","vista","","2","2019-03-03 12:41:21","");
INSERT INTO notificacoes VALUES("130","sistema","O Usuario demo  fez login na data 2019-03-03 19:30:19","","","2","vista","","2","2019-03-03 19:30:19","");
INSERT INTO notificacoes VALUES("131","sistema","O Usuario demo  fez login na data 2019-03-03 20:31:15","","","2","vista","","2","2019-03-03 20:31:15","");
INSERT INTO notificacoes VALUES("132","sistema","O Usuario Real Name  fez login na data 2019-03-03 20:42:00","","","4","vista","","4","2019-03-03 20:42:00","");
INSERT INTO notificacoes VALUES("133","sistema","O Usuario demo  fez login na data 2019-03-03 20:43:21","","","2","vista","","2","2019-03-03 20:43:21","");
INSERT INTO notificacoes VALUES("134","sistema","O Usuario demo  fez login na data 2019-03-04 07:31:02","","","2","vista","","2","2019-03-04 07:31:02","");
INSERT INTO notificacoes VALUES("135","sistema","O Usuario demo  fez login na data 2019-03-04 07:47:50","","","2","vista","","2","2019-03-04 07:47:50","");
INSERT INTO notificacoes VALUES("136","sistema","O Usuario demo  fez login na data 2019-03-04 07:51:07","","","2","vista","","2","2019-03-04 07:51:07","");
INSERT INTO notificacoes VALUES("137","sistema","O Usuario demo  fez login na data 2019-03-04 07:57:50","","","2","vista","","2","2019-03-04 07:57:50","");
INSERT INTO notificacoes VALUES("138","sistema","O Usuario demo  fez login na data 2019-03-04 08:44:26","","","2","vista","","2","2019-03-04 08:44:26","");
INSERT INTO notificacoes VALUES("139","sistema","O Usuario demo  fez login na data 2019-03-04 10:09:33","","","2","vista","","2","2019-03-04 10:09:33","");
INSERT INTO notificacoes VALUES("140","sistema","O Usuario demo  fez login na data 2019-03-04 10:13:19","","","2","vista","","2","2019-03-04 10:13:19","");
INSERT INTO notificacoes VALUES("141","sistema","O Usuario demo  fez login na data 2019-03-04 10:19:56","","","2","vista","","2","2019-03-04 10:19:56","");
INSERT INTO notificacoes VALUES("142","sistema","O Usuario demo  fez login na data 2019-03-04 11:05:57","","","2","vista","","2","2019-03-04 11:05:57","");
INSERT INTO notificacoes VALUES("143","sistema","O Usuario demo  fez login na data 2019-03-04 11:26:54","","","2","vista","","2","2019-03-04 11:26:54","");
INSERT INTO notificacoes VALUES("144","sistema","O Usuario demo  fez login na data 2019-03-04 11:45:15","","","2","vista","","2","2019-03-04 11:45:15","");
INSERT INTO notificacoes VALUES("145","sistema","O Usuario demo  fez login na data 2019-03-04 11:59:18","","","2","vista","","2","2019-03-04 11:59:18","");
INSERT INTO notificacoes VALUES("146","sistema","O Usuario demo  fez login na data 2019-03-04 13:11:10","","","2","vista","","2","2019-03-04 13:11:10","");
INSERT INTO notificacoes VALUES("147","sistema","O Usuario demo  fez login na data 2019-03-04 13:12:12","","","2","vista","","2","2019-03-04 13:12:12","");
INSERT INTO notificacoes VALUES("148","sistema","O Usuario demo  fez login na data 2019-03-04 13:16:07","","","2","vista","","2","2019-03-04 13:16:07","");
INSERT INTO notificacoes VALUES("149","sistema","O Usuario demo  fez login na data 2019-03-04 18:51:34","","","2","vista","","2","2019-03-04 18:51:34","");
INSERT INTO notificacoes VALUES("150","sistema","O Usuario demo  fez login na data 2019-03-04 21:25:56","","","2","vista","","2","2019-03-04 21:25:56","");
INSERT INTO notificacoes VALUES("151","sistema","O Usuario demo  fez login na data 2019-03-04 21:28:50","","","2","vista","","2","2019-03-04 21:28:50","");
INSERT INTO notificacoes VALUES("152","sistema","O Usuario Christine   fez login na data 2019-03-04 21:40:49","","","12","vista","","12","2019-03-04 21:40:49","");
INSERT INTO notificacoes VALUES("153","sistema","O Usuario demo  fez login na data 2019-03-04 21:47:10","","","2","vista","","2","2019-03-04 21:47:10","");
INSERT INTO notificacoes VALUES("154","sistema","O Usuario Christine   fez login na data 2019-03-04 22:36:18","","","12","vista","","12","2019-03-04 22:36:18","");
INSERT INTO notificacoes VALUES("155","sistema","O Usuario demo  fez login na data 2019-03-04 22:46:37","","","2","vista","","2","2019-03-04 22:46:37","");
INSERT INTO notificacoes VALUES("156","sistema","O Usuario demo  fez login na data 2019-03-04 23:06:41","","","2","vista","","2","2019-03-04 23:06:41","");
INSERT INTO notificacoes VALUES("157","sistema","O Usuario Christine   fez login na data 2019-03-04 23:07:46","","","12","vista","","12","2019-03-04 23:07:46","");
INSERT INTO notificacoes VALUES("158","sistema","O Usuario demo  fez login na data 2019-03-04 23:33:27","","","2","vista","","2","2019-03-04 23:33:27","");
INSERT INTO notificacoes VALUES("159","sistema","O Usuario Christine   fez login na data 2019-03-05 08:25:39","","","12","vista","","12","2019-03-05 08:25:39","");
INSERT INTO notificacoes VALUES("160","sistema","O Usuario Christine   fez login na data 2019-03-05 08:26:17","","","12","vista","","12","2019-03-05 08:26:17","");
INSERT INTO notificacoes VALUES("161","sistema","O Usuario Christine   fez login na data 2019-03-05 12:34:30","","","12","vista","","12","2019-03-05 12:34:30","");
INSERT INTO notificacoes VALUES("162","sistema","O Usuario demo  fez login na data 2019-03-05 18:57:43","","","2","vista","","2","2019-03-05 18:57:43","");
INSERT INTO notificacoes VALUES("163","sistema","O Usuario demo  fez login na data 2019-03-05 19:02:31","","","2","vista","","2","2019-03-05 19:02:31","");
INSERT INTO notificacoes VALUES("164","sistema","O Usuario demo  fez login na data 2019-03-13 13:27:08","","","2","vista","","2","2019-03-13 13:27:08","");
INSERT INTO notificacoes VALUES("165","sistema","O Usuario demo  fez login na data 2019-03-13 16:24:12","","","2","vista","","2","2019-03-13 16:24:12","");
INSERT INTO notificacoes VALUES("166","sistema","O Usuario demo  fez login na data 2019-03-13 16:27:04","","","2","vista","","2","2019-03-13 16:27:04","");
INSERT INTO notificacoes VALUES("167","sistema","O Usuario demo  fez login na data 2019-03-13 22:25:28","","","2","vista","","2","2019-03-13 22:25:28","");
INSERT INTO notificacoes VALUES("168","sistema","O Usuario demo  fez login na data 2019-03-13 23:09:10","","","2","vista","","2","2019-03-13 23:09:10","");
INSERT INTO notificacoes VALUES("169","sistema","O Usuario demo  fez login na data 2019-03-13 23:10:09","","","2","vista","","2","2019-03-13 23:10:09","");
INSERT INTO notificacoes VALUES("170","sistema","O Usuario demo  fez login na data 2019-03-13 23:11:15","","","2","vista","","2","2019-03-13 23:11:15","");
INSERT INTO notificacoes VALUES("171","sistema","O Usuario demo  fez login na data 2019-03-13 23:12:14","","","2","vista","","2","2019-03-13 23:12:14","");
INSERT INTO notificacoes VALUES("172","sistema","O Usuario demo  fez login na data 2019-03-14 09:18:15","","","2","vista","","2","2019-03-14 09:18:15","");
INSERT INTO notificacoes VALUES("173","sistema","O Usuario demo  fez login na data 2019-03-14 09:47:17","","","2","vista","","2","2019-03-14 09:47:17","");
INSERT INTO notificacoes VALUES("174","sistema","O Usuario demo  fez login na data 2019-03-15 06:50:04","","","2","vista","","2","2019-03-15 08:50:04","");
INSERT INTO notificacoes VALUES("175","sistema","O Usuario demo  fez login na data 2019-03-15 07:12:57","","","2","vista","","2","2019-03-15 09:12:57","");
INSERT INTO notificacoes VALUES("176","sistema","O Usuario Christine   fez login na data 2019-03-15 07:13:56","","","12","vista","","12","2019-03-15 09:13:56","");
INSERT INTO notificacoes VALUES("177","sistema","O Usuario Christine   fez login na data 2019-03-15 07:25:48","","","12","vista","","12","2019-03-15 09:25:48","");
INSERT INTO notificacoes VALUES("178","sistema","O Usuario demo  fez login na data 2019-03-15 12:49:25","","","2","vista","","2","2019-03-15 14:49:25","");
INSERT INTO notificacoes VALUES("179","sistema","O Usuario Rachide  fez login na data 2019-03-15 12:54:57","","","13","vista","","13","2019-03-15 14:54:57","");
INSERT INTO notificacoes VALUES("180","sistema","O Usuario demo  fez login na data 2019-03-15 13:08:36","","","2","vista","","2","2019-03-15 15:08:36","");
INSERT INTO notificacoes VALUES("181","sistema","O Usuario demo  fez login na data 2019-03-16 06:50:44","","","2","vista","","2","2019-03-16 08:50:44","");
INSERT INTO notificacoes VALUES("182","sistema","O Usuario demo  fez login na data 2019-03-16 09:59:10","","","2","vista","","2","2019-03-16 11:59:10","");
INSERT INTO notificacoes VALUES("183","sistema","O Usuario demo  fez login na data 2019-03-17 15:06:02","","","2","vista","","2","2019-03-17 17:06:02","");
INSERT INTO notificacoes VALUES("184","sistema","O Usuario demo  fez login na data 2019-03-18 06:54:44","","","2","vista","","2","2019-03-18 08:54:44","");
INSERT INTO notificacoes VALUES("185","sistema","O Usuario demo  fez login na data 2019-03-18 06:55:10","","","2","vista","","2","2019-03-18 08:55:10","");
INSERT INTO notificacoes VALUES("186","sistema","O Usuario Rachide  fez login na data 2019-03-18 09:51:28","","","13","vista","","13","2019-03-18 11:51:28","");
INSERT INTO notificacoes VALUES("187","sistema","O Usuario demo  fez login na data 2019-03-18 14:26:03","","","2","vista","","2","2019-03-18 16:26:03","");
INSERT INTO notificacoes VALUES("188","sistema","O Usuario shueib  fez login na data 2019-03-18 14:49:14","","","14","vista","","14","2019-03-18 16:49:14","");
INSERT INTO notificacoes VALUES("189","sistema","O Usuario demo  fez login na data 2019-03-18 14:49:37","","","2","vista","","2","2019-03-18 16:49:37","");
INSERT INTO notificacoes VALUES("190","sistema","O Usuario Rachide  fez login na data 2019-03-18 18:04:27","","","13","vista","","13","2019-03-18 20:04:27","");
INSERT INTO notificacoes VALUES("191","sistema","O Usuario demo  fez login na data 2019-03-22 07:15:38","","","2","vista","","2","2019-03-22 09:15:38","");
INSERT INTO notificacoes VALUES("192","sistema","O Usuario Christine   fez login na data 2019-03-22 07:28:13","","","12","vista","","12","2019-03-22 09:28:13","");
INSERT INTO notificacoes VALUES("193","sistema","O Usuario demo  fez login na data 2019-03-22 14:18:18","","","2","vista","","2","2019-03-22 16:18:18","");
INSERT INTO notificacoes VALUES("194","sistema","O Usuario Christine   fez login na data 2019-03-23 06:58:18","","","12","vista","","12","2019-03-23 08:58:18","");
INSERT INTO notificacoes VALUES("195","sistema","O Usuario Christine   fez login na data 2019-03-23 07:51:08","","","12","vista","","12","2019-03-23 09:51:08","");
INSERT INTO notificacoes VALUES("196","sistema","O Usuario Rachide  fez login na data 2019-03-24 09:07:26","","","13","vista","","13","2019-03-24 11:07:26","");
INSERT INTO notificacoes VALUES("197","sistema","O Usuario Christine   fez login na data 2019-03-24 09:43:05","","","12","vista","","12","2019-03-24 11:43:05","");
INSERT INTO notificacoes VALUES("198","sistema","O Usuario demo  fez login na data 2019-03-25 06:44:22","","","2","vista","","2","2019-03-25 08:44:22","");
INSERT INTO notificacoes VALUES("199","sistema","O Usuario Christine   fez login na data 2019-03-25 09:15:36","","","12","vista","","12","2019-03-25 11:15:36","");
INSERT INTO notificacoes VALUES("200","sistema","O Usuario Christine   fez login na data 2019-03-25 09:15:36","","","12","vista","","12","2019-03-25 11:15:36","");
INSERT INTO notificacoes VALUES("201","sistema","O Usuario Christine   fez login na data 2019-03-25 09:15:36","","","12","vista","","12","2019-03-25 11:15:36","");
INSERT INTO notificacoes VALUES("202","sistema","O Usuario demo  fez login na data 2019-03-25 09:26:20","","","2","vista","","2","2019-03-25 11:26:20","");
INSERT INTO notificacoes VALUES("203","sistema","O Usuario Christine   fez login na data 2019-03-25 10:55:44","","","12","vista","","12","2019-03-25 12:55:44","");
INSERT INTO notificacoes VALUES("204","sistema","O Usuario Christine   fez login na data 2019-03-25 10:59:58","","","12","vista","","12","2019-03-25 12:59:58","");
INSERT INTO notificacoes VALUES("205","sistema","O Usuario demo  fez login na data 2019-03-25 11:12:10","","","2","vista","","2","2019-03-25 13:12:10","");
INSERT INTO notificacoes VALUES("206","sistema","O Usuario Christine   fez login na data 2019-03-25 11:14:13","","","12","vista","","12","2019-03-25 13:14:13","");
INSERT INTO notificacoes VALUES("207","sistema","O Usuario Christine   fez login na data 2019-03-25 11:22:09","","","12","vista","","12","2019-03-25 13:22:09","");
INSERT INTO notificacoes VALUES("208","sistema","O Usuario demo  fez login na data 2019-03-25 11:40:10","","","2","vista","","2","2019-03-25 13:40:10","");
INSERT INTO notificacoes VALUES("209","sistema","O Usuario Christine   fez login na data 2019-03-25 11:59:20","","","12","vista","","12","2019-03-25 13:59:20","");
INSERT INTO notificacoes VALUES("210","sistema","O Usuario Christine   fez login na data 2019-03-25 12:14:20","","","12","vista","","12","2019-03-25 14:14:20","");
INSERT INTO notificacoes VALUES("211","sistema","O Usuario demo  fez login na data 2019-03-25 13:35:19","","","2","vista","","2","2019-03-25 15:35:19","");
INSERT INTO notificacoes VALUES("212","sistema","O Usuario demo  fez login na data 2019-03-25 13:38:20","","","2","vista","","2","2019-03-25 15:38:20","");
INSERT INTO notificacoes VALUES("213","sistema","O Usuario Christine   fez login na data 2019-03-25 14:10:23","","","12","vista","","12","2019-03-25 16:10:23","");
INSERT INTO notificacoes VALUES("214","sistema","O Usuario demo  fez login na data 2019-03-25 15:10:41","","","2","vista","","2","2019-03-25 17:10:41","");
INSERT INTO notificacoes VALUES("215","sistema","O Usuario Christine   fez login na data 2019-03-25 15:16:20","","","12","vista","","12","2019-03-25 17:16:20","");
INSERT INTO notificacoes VALUES("216","sistema","O Usuario Christine   fez login na data 2019-03-26 08:18:42","","","12","vista","","12","2019-03-26 10:18:42","");
INSERT INTO notificacoes VALUES("217","sistema","O Usuario Christine   fez login na data 2019-03-26 13:06:32","","","12","vista","","12","2019-03-26 15:06:32","");
INSERT INTO notificacoes VALUES("218","sistema","O Usuario demo  fez login na data 2019-03-26 14:05:58","","","2","vista","","2","2019-03-26 16:05:58","");
INSERT INTO notificacoes VALUES("219","sistema","O Usuario demo  fez login na data 2019-03-26 14:52:33","","","2","vista","","2","2019-03-26 16:52:33","");
INSERT INTO notificacoes VALUES("220","sistema","O Usuario demo  fez login na data 2019-03-26 15:00:47","","","2","vista","","2","2019-03-26 17:00:47","");
INSERT INTO notificacoes VALUES("221","sistema","O Usuario demo  fez login na data 2019-03-26 15:39:51","","","2","vista","","2","2019-03-26 17:39:51","");
INSERT INTO notificacoes VALUES("222","sistema","O Usuario demo  fez login na data 2019-03-26 15:39:54","","","2","vista","","2","2019-03-26 17:39:54","");
INSERT INTO notificacoes VALUES("223","sistema","O Usuario demo  fez login na data 2019-03-26 15:42:24","","","2","vista","","2","2019-03-26 17:42:24","");
INSERT INTO notificacoes VALUES("224","sistema","O Usuario demo  fez login na data 2019-03-26 15:42:29","","","2","vista","","2","2019-03-26 17:42:29","");
INSERT INTO notificacoes VALUES("225","sistema","O Usuario demo  fez login na data 2019-03-26 15:46:47","","","2","vista","","2","2019-03-26 17:46:47","");
INSERT INTO notificacoes VALUES("226","sistema","O Usuario Christine   fez login na data 2019-03-26 16:33:05","","","12","vista","","12","2019-03-26 18:33:05","");
INSERT INTO notificacoes VALUES("227","sistema","O Usuario demo  fez login na data 2019-03-27 07:36:49","","","2","vista","","2","2019-03-27 09:36:49","");
INSERT INTO notificacoes VALUES("228","sistema","O Usuario Christine   fez login na data 2019-03-27 08:18:13","","","12","vista","","12","2019-03-27 10:18:13","");
INSERT INTO notificacoes VALUES("229","sistema","O Usuario Christine   fez login na data 2019-03-27 08:38:32","","","12","vista","","12","2019-03-27 10:38:32","");
INSERT INTO notificacoes VALUES("230","sistema","O Usuario demo  fez login na data 2019-03-27 09:05:27","","","2","vista","","2","2019-03-27 11:05:27","");
INSERT INTO notificacoes VALUES("231","sistema","O Usuario Christine   fez login na data 2019-03-27 09:13:14","","","12","vista","","12","2019-03-27 11:13:14","");
INSERT INTO notificacoes VALUES("232","sistema","O Usuario demo  fez login na data 2019-03-27 09:23:53","","","2","vista","","2","2019-03-27 11:23:53","");
INSERT INTO notificacoes VALUES("233","sistema","O Usuario demo  fez login na data 2019-03-27 09:24:34","","","2","vista","","2","2019-03-27 11:24:34","");
INSERT INTO notificacoes VALUES("234","sistema","O Usuario demo  fez login na data 2019-03-27 10:13:37","","","2","vista","","2","2019-03-27 12:13:37","");
INSERT INTO notificacoes VALUES("235","sistema","O Usuario demo  fez login na data 2019-03-27 15:36:31","","","2","vista","","2","2019-03-27 17:36:31","");
INSERT INTO notificacoes VALUES("236","sistema","O Usuario Rachide  fez login na data 2019-03-28 11:24:51","","","13","vista","","13","2019-03-28 13:24:51","");
INSERT INTO notificacoes VALUES("237","sistema","O Usuario Rachide  fez login na data 2019-03-28 12:17:07","","","13","vista","","13","2019-03-28 14:17:07","");
INSERT INTO notificacoes VALUES("238","sistema","O Usuario Rachide  fez login na data 2019-03-28 13:56:41","","","13","vista","","13","2019-03-28 15:56:41","");
INSERT INTO notificacoes VALUES("239","sistema","O Usuario Christine   fez login na data 2019-03-29 05:00:23","","","12","vista","","12","2019-03-29 07:00:23","");
INSERT INTO notificacoes VALUES("240","sistema","O Usuario demo  fez login na data 2019-03-29 16:03:51","","","2","vista","","2","2019-03-29 18:03:51","");
INSERT INTO notificacoes VALUES("241","sistema","O Usuario Christine   fez login na data 2019-03-30 04:12:17","","","12","vista","","12","2019-03-30 06:12:17","");
INSERT INTO notificacoes VALUES("242","sistema","O Usuario Rachide  fez login na data 2019-03-30 06:03:29","","","13","vista","","13","2019-03-30 08:03:29","");
INSERT INTO notificacoes VALUES("243","sistema","O Usuario demo  fez login na data 2019-03-30 08:56:29","","","2","vista","","2","2019-03-30 10:56:29","");
INSERT INTO notificacoes VALUES("244","sistema","O Usuario Christine   fez login na data 2019-04-01 06:45:39","","","12","vista","","12","2019-04-01 08:45:39","");
INSERT INTO notificacoes VALUES("245","sistema","O Usuario demo  fez login na data 2019-04-01 07:37:02","","","2","vista","","2","2019-04-01 09:37:02","");
INSERT INTO notificacoes VALUES("246","sistema","O Usuario demo  fez login na data 2019-04-01 10:17:13","","","2","vista","","2","2019-04-01 12:17:13","");
INSERT INTO notificacoes VALUES("247","sistema","O Usuario demo  fez login na data 2019-04-01 10:43:08","","","2","vista","","2","2019-04-01 12:43:08","");
INSERT INTO notificacoes VALUES("248","sistema","O Usuario demo  fez login na data 2019-04-03 07:29:26","","","2","vista","","2","2019-04-03 09:29:26","");
INSERT INTO notificacoes VALUES("249","sistema","O Usuario Christine   fez login na data 2019-04-03 11:01:14","","","12","vista","","12","2019-04-03 13:01:14","");
INSERT INTO notificacoes VALUES("250","sistema","O Usuario Christine   fez login na data 2019-04-03 13:16:02","","","12","vista","","12","2019-04-03 15:16:02","");
INSERT INTO notificacoes VALUES("251","sistema","O Usuario Rachide  fez login na data 2019-04-07 08:18:08","","","13","vista","","13","2019-04-07 10:18:08","");
INSERT INTO notificacoes VALUES("252","sistema","O Usuario Rachide  fez login na data 2019-04-07 09:13:17","","","13","vista","","13","2019-04-07 11:13:17","");
INSERT INTO notificacoes VALUES("253","sistema","O Usuario Rachide  fez login na data 2019-04-07 10:29:17","","","13","vista","","13","2019-04-07 12:29:17","");
INSERT INTO notificacoes VALUES("254","sistema","O Usuario demo  fez login na data 2019-04-11 13:01:47","","","2","vista","","2","2019-04-11 15:01:47","");
INSERT INTO notificacoes VALUES("255","sistema","O Usuario demo  fez login na data 2019-04-11 13:01:48","","","2","vista","","2","2019-04-11 15:01:48","");
INSERT INTO notificacoes VALUES("256","sistema","O Usuario demo  fez login na data 2019-04-11 13:02:40","","","2","vista","","2","2019-04-11 15:02:40","");
INSERT INTO notificacoes VALUES("257","sistema","O Usuario Demo  fez login na data 2019-04-11 13:04:31","","","15","vista","","15","2019-04-11 15:04:31","");
INSERT INTO notificacoes VALUES("258","sistema","O Usuario demo  fez login na data 2019-04-11 14:28:58","","","2","vista","","2","2019-04-11 16:28:58","");
INSERT INTO notificacoes VALUES("259","sistema","O Usuario demo  fez login na data 2019-04-11 18:45:05","","","2","vista","","2","2019-04-11 20:45:05","");
INSERT INTO notificacoes VALUES("260","sistema","O Usuario Demo  fez login na data 2019-04-11 19:08:14","","","15","vista","","15","2019-04-11 21:08:14","");
INSERT INTO notificacoes VALUES("261","sistema","O Usuario demo  fez login na data 2019-04-12 09:32:42","","","2","vista","","2","2019-04-12 11:32:42","");
INSERT INTO notificacoes VALUES("262","sistema","O Usuario Demo  fez login na data 2019-04-12 09:36:52","","","15","vista","","15","2019-04-12 11:36:52","");
INSERT INTO notificacoes VALUES("263","sistema","O Usuario demo  fez login na data 2019-04-12 09:52:06","","","2","vista","","2","2019-04-12 11:52:06","");
INSERT INTO notificacoes VALUES("264","sistema","O Usuario demo  fez login na data 2019-04-12 10:01:35","","","2","vista","","2","2019-04-12 12:01:35","");
INSERT INTO notificacoes VALUES("265","sistema","O Usuario demo  fez login na data 2019-04-12 12:30:29","","","2","vista","","2","2019-04-12 14:30:29","");
INSERT INTO notificacoes VALUES("266","sistema","O Usuario demo  fez login na data 2019-04-12 12:37:08","","","2","vista","","2","2019-04-12 14:37:08","");
INSERT INTO notificacoes VALUES("267","sistema","O Usuario demo  fez login na data 2019-04-12 12:41:02","","","2","vista","","2","2019-04-12 14:41:02","");
INSERT INTO notificacoes VALUES("268","sistema","O Usuario demo  fez login na data 2019-04-12 14:26:43","","","2","vista","","2","2019-04-12 16:26:43","");
INSERT INTO notificacoes VALUES("269","sistema","O Usuario Demo  fez login na data 2019-04-12 14:48:06","","","15","vista","","15","2019-04-12 16:48:06","");
INSERT INTO notificacoes VALUES("270","sistema","O Usuario demo  fez login na data 2019-04-12 14:55:26","","","2","vista","","2","2019-04-12 16:55:26","");
INSERT INTO notificacoes VALUES("271","sistema","O Usuario Demo  fez login na data 2019-04-16 11:17:54","","","15","vista","","15","2019-04-16 13:17:54","");
INSERT INTO notificacoes VALUES("272","sistema","O Usuario demo  fez login na data 2019-04-16 11:22:55","","","2","vista","","2","2019-04-16 13:22:55","");
INSERT INTO notificacoes VALUES("273","sistema","O Usuario Demo  fez login na data 2019-04-16 11:48:34","","","15","vista","","15","2019-04-16 13:48:34","");
INSERT INTO notificacoes VALUES("274","sistema","O Usuario Demo  fez login na data 2019-04-17 06:52:25","","","15","vista","","15","2019-04-17 08:52:25","");
INSERT INTO notificacoes VALUES("275","sistema","O Usuario demo  fez login na data 2019-04-19 09:09:36","","","2","vista","","2","2019-04-19 11:09:36","");
INSERT INTO notificacoes VALUES("276","sistema","O Usuario demo  fez login na data 2019-04-19 13:11:25","","","2","vista","","2","2019-04-19 15:11:25","");
INSERT INTO notificacoes VALUES("277","sistema","O Usuario demo  fez login na data 2019-04-19 13:25:34","","","2","vista","","2","2019-04-19 15:25:34","");
INSERT INTO notificacoes VALUES("278","sistema","O Usuario DSTORE  fez login na data 2019-04-19 13:27:31","","","17","vista","","17","2019-04-19 15:27:31","");
INSERT INTO notificacoes VALUES("279","sistema","O Usuario demo  fez login na data 2019-04-19 13:30:12","","","2","vista","","2","2019-04-19 15:30:12","");
INSERT INTO notificacoes VALUES("280","sistema","O Usuario DSTORE  fez login na data 2019-04-19 13:31:40","","","17","vista","","17","2019-04-19 15:31:40","");
INSERT INTO notificacoes VALUES("281","sistema","O Usuario DSTORE  fez login na data 2019-04-19 19:16:52","","","17","vista","","17","2019-04-19 21:16:52","");
INSERT INTO notificacoes VALUES("282","sistema","O Usuario demo  fez login na data 2019-04-19 20:49:09","","","2","vista","","2","2019-04-19 22:49:09","");
INSERT INTO notificacoes VALUES("283","sistema","O Usuario demo  fez login na data 2019-04-20 14:44:22","","","2","vista","","2","2019-04-20 16:44:22","");
INSERT INTO notificacoes VALUES("284","sistema","O Usuario DSTORE  fez login na data 2019-04-20 14:57:45","","","17","vista","","17","2019-04-20 16:57:45","");
INSERT INTO notificacoes VALUES("285","sistema","O Usuario DSTORE  fez login na data 2019-04-20 14:58:27","","","17","vista","","17","2019-04-20 16:58:27","");
INSERT INTO notificacoes VALUES("286","sistema","O Usuario DSTORE  fez login na data 2019-04-20 15:05:03","","","17","vista","","17","2019-04-20 17:05:03","");
INSERT INTO notificacoes VALUES("287","sistema","O Usuario demo  fez login na data 2019-04-20 17:19:29","","","2","vista","","2","2019-04-20 19:19:29","");
INSERT INTO notificacoes VALUES("288","sistema","O Usuario demo  fez login na data 2019-04-21 06:04:11","","","2","vista","","2","2019-04-21 08:04:11","");
INSERT INTO notificacoes VALUES("289","sistema","O Usuario Demo  fez login na data 2019-04-21 06:08:38","","","15","vista","","15","2019-04-21 08:08:38","");
INSERT INTO notificacoes VALUES("290","sistema","O Usuario Demo  fez login na data 2019-04-21 06:13:06","","","15","vista","","15","2019-04-21 08:13:06","");
INSERT INTO notificacoes VALUES("291","sistema","O Usuario DSTORE  fez login na data 2019-04-21 09:47:05","","","17","vista","","17","2019-04-21 11:47:05","");
INSERT INTO notificacoes VALUES("292","sistema","O Usuario demo  fez login na data 2019-04-23 11:31:21","","","2","vista","","2","2019-04-23 13:31:21","");
INSERT INTO notificacoes VALUES("293","sistema","O Usuario Christine   fez login na data 2019-04-23 12:46:50","","","12","vista","","12","2019-04-23 14:46:50","");
INSERT INTO notificacoes VALUES("294","sistema","O Usuario demo  fez login na data 2019-04-24 09:48:59","","","2","vista","","2","2019-04-24 11:48:59","");
INSERT INTO notificacoes VALUES("295","sistema","O Usuario Rosa Joao  fez login na data 2019-04-24 09:54:32","","","18","vista","","18","2019-04-24 11:54:32","");
INSERT INTO notificacoes VALUES("296","sistema","O Usuario Demo  fez login na data 2019-04-24 10:00:29","","","15","vista","","15","2019-04-24 12:00:29","");
INSERT INTO notificacoes VALUES("297","sistema","O Usuario demo  fez login na data 2019-04-24 10:06:53","","","2","vista","","2","2019-04-24 12:06:53","");
INSERT INTO notificacoes VALUES("298","sistema","O Usuario Demo  fez login na data 2019-04-24 10:08:35","","","15","vista","","15","2019-04-24 12:08:35","");
INSERT INTO notificacoes VALUES("299","sistema","O Usuario demo  fez login na data 2019-04-24 10:44:44","","","2","vista","","2","2019-04-24 12:44:44","");
INSERT INTO notificacoes VALUES("300","sistema","O Usuario demo  fez login na data 2019-04-24 12:23:39","","","2","vista","","2","2019-04-24 14:23:39","");
INSERT INTO notificacoes VALUES("301","sistema","O Usuario Rosa Joao  fez login na data 2019-04-24 12:56:12","","","18","vista","","18","2019-04-24 14:56:12","");
INSERT INTO notificacoes VALUES("302","sistema","O Usuario demo  fez login na data 2019-04-24 13:05:52","","","2","vista","","2","2019-04-24 15:05:52","");
INSERT INTO notificacoes VALUES("303","sistema","O Usuario demo  fez login na data 2019-04-24 14:05:31","","","2","vista","","2","2019-04-24 16:05:31","");
INSERT INTO notificacoes VALUES("304","sistema","O Usuario Demo  fez login na data 2019-04-24 14:52:28","","","15","vista","","15","2019-04-24 16:52:28","");
INSERT INTO notificacoes VALUES("305","sistema","O Usuario demo  fez login na data 2019-04-24 14:56:58","","","2","vista","","2","2019-04-24 16:56:58","");
INSERT INTO notificacoes VALUES("306","sistema","O Usuario demo  fez login na data 2019-04-24 15:19:41","","","2","vista","","2","2019-04-24 17:19:41","");
INSERT INTO notificacoes VALUES("307","sistema","O Usuario demo  fez login na data 2019-04-24 19:12:47","","","2","vista","","2","2019-04-24 21:12:47","");
INSERT INTO notificacoes VALUES("308","sistema","O Usuario Demo  fez login na data 2019-04-24 19:42:59","","","15","vista","","15","2019-04-24 21:42:59","");
INSERT INTO notificacoes VALUES("309","sistema","O Usuario Demo  fez login na data 2019-04-24 20:02:25","","","15","vista","","15","2019-04-24 22:02:25","");
INSERT INTO notificacoes VALUES("310","sistema","O Usuario Demo  fez login na data 2019-04-24 20:21:49","","","15","vista","","15","2019-04-24 22:21:49","");
INSERT INTO notificacoes VALUES("311","sistema","O Usuario Demo  fez login na data 2019-04-24 20:28:13","","","15","vista","","15","2019-04-24 22:28:13","");
INSERT INTO notificacoes VALUES("312","sistema","O Usuario Demo  fez login na data 2019-04-24 20:38:29","","","15","vista","","15","2019-04-24 22:38:29","");
INSERT INTO notificacoes VALUES("313","sistema","O Usuario demo  fez login na data 2019-04-24 20:39:06","","","2","vista","","2","2019-04-24 22:39:06","");
INSERT INTO notificacoes VALUES("314","sistema","O Usuario demo  fez login na data 2019-04-25 04:08:43","","","2","vista","","2","2019-04-25 06:08:43","");
INSERT INTO notificacoes VALUES("315","sistema","O Usuario Christine   fez login na data 2019-04-25 11:33:55","","","12","vista","","12","2019-04-25 13:33:55","");
INSERT INTO notificacoes VALUES("316","sistema","O Usuario Christine   fez login na data 2019-04-25 12:26:49","","","12","vista","","12","2019-04-25 14:26:49","");
INSERT INTO notificacoes VALUES("317","sistema","O Usuario Demo  fez login na data 2019-04-25 13:55:25","","","15","vista","","15","2019-04-25 15:55:25","");
INSERT INTO notificacoes VALUES("318","sistema","O Usuario Demo  fez login na data 2019-04-25 13:56:48","","","15","vista","","15","2019-04-25 15:56:48","");
INSERT INTO notificacoes VALUES("319","sistema","O Usuario Demo  fez login na data 2019-04-25 13:58:21","","","15","vista","","15","2019-04-25 15:58:21","");
INSERT INTO notificacoes VALUES("320","sistema","O Usuario Demo  fez login na data 2019-04-25 14:13:19","","","15","vista","","15","2019-04-25 16:13:19","");
INSERT INTO notificacoes VALUES("321","sistema","O Usuario demo  fez login na data 2019-04-25 14:23:46","","","2","vista","","2","2019-04-25 16:23:46","");
INSERT INTO notificacoes VALUES("322","sistema","O Usuario demo  fez login na data 2019-04-25 14:46:20","","","2","vista","","2","2019-04-25 16:46:20","");
INSERT INTO notificacoes VALUES("323","sistema","O Usuario demo  fez login na data 2019-04-25 14:52:53","","","2","vista","","2","2019-04-25 16:52:53","");
INSERT INTO notificacoes VALUES("324","sistema","O Usuario demo  fez login na data 2019-04-25 14:55:47","","","2","vista","","2","2019-04-25 16:55:47","");
INSERT INTO notificacoes VALUES("325","sistema","O Usuario Demo  fez login na data 2019-04-25 17:50:16","","","15","vista","","15","2019-04-25 19:50:16","");
INSERT INTO notificacoes VALUES("326","sistema","O Usuario Demo  fez login na data 2019-04-25 17:50:19","","","15","vista","","15","2019-04-25 19:50:19","");
INSERT INTO notificacoes VALUES("327","sistema","O Usuario Demo  fez login na data 2019-04-25 19:17:49","","","15","vista","","15","2019-04-25 21:17:49","");
INSERT INTO notificacoes VALUES("328","sistema","O Usuario Demo  fez login na data 2019-04-26 08:14:59","","","15","vista","","15","2019-04-26 10:14:59","");
INSERT INTO notificacoes VALUES("329","sistema","O Usuario Christine   fez login na data 2019-04-26 10:25:19","","","12","vista","","12","2019-04-26 12:25:19","");
INSERT INTO notificacoes VALUES("330","sistema","O Usuario Demo  fez login na data 2019-04-26 13:31:32","","","15","vista","","15","2019-04-26 15:31:32","");
INSERT INTO notificacoes VALUES("331","sistema","O Usuario demo  fez login na data 2019-04-26 18:25:54","","","2","vista","","2","2019-04-26 20:25:54","");
INSERT INTO notificacoes VALUES("332","sistema","O Usuario Demo  fez login na data 2019-04-27 14:20:52","","","15","vista","","15","2019-04-27 16:20:52","");
INSERT INTO notificacoes VALUES("333","sistema","O Usuario Demo  fez login na data 2019-04-27 18:01:20","","","15","vista","","15","2019-04-27 20:01:20","");
INSERT INTO notificacoes VALUES("334","sistema","O Usuario Demo  fez login na data 2019-04-29 06:09:32","","","15","vista","","15","2019-04-29 08:09:32","");
INSERT INTO notificacoes VALUES("335","sistema","O Usuario demo  fez login na data 2019-04-29 07:02:05","","","2","vista","","2","2019-04-29 09:02:05","");
INSERT INTO notificacoes VALUES("336","sistema","O Usuario demo  fez login na data 2019-04-30 08:01:40","","","2","vista","","2","2019-04-30 10:01:40","");
INSERT INTO notificacoes VALUES("337","sistema","O Usuario demo  fez login na data 2019-04-30 08:01:57","","","2","vista","","2","2019-04-30 10:01:57","");
INSERT INTO notificacoes VALUES("338","sistema","O Usuario Christine   fez login na data 2019-04-30 11:54:22","","","12","vista","","12","2019-04-30 13:54:22","");
INSERT INTO notificacoes VALUES("339","sistema","O Usuario demo  fez login na data 2019-04-30 12:58:44","","","2","vista","","2","2019-04-30 14:58:44","");
INSERT INTO notificacoes VALUES("340","sistema","O Usuario demo  fez login na data 2019-04-30 13:25:18","","","2","vista","","2","2019-04-30 15:25:18","");
INSERT INTO notificacoes VALUES("341","sistema","O Usuario Christine   fez login na data 2019-05-01 07:36:16","","","12","vista","","12","2019-05-01 09:36:16","");
INSERT INTO notificacoes VALUES("342","sistema","O Usuario Christine   fez login na data 2019-05-01 10:11:35","","","12","vista","","12","2019-05-01 12:11:35","");
INSERT INTO notificacoes VALUES("343","sistema","O Usuario Demo  fez login na data 2019-05-01 19:19:20","","","15","vista","","15","2019-05-01 21:19:20","");
INSERT INTO notificacoes VALUES("344","sistema","O Usuario demo  fez login na data 2019-05-02 07:33:02","","","2","vista","","2","2019-05-02 09:33:02","");
INSERT INTO notificacoes VALUES("345","sistema","O Usuario demo  fez login na data 2019-05-02 09:06:01","","","2","vista","","2","2019-05-02 11:06:01","");
INSERT INTO notificacoes VALUES("346","sistema","O Usuario demo  fez login na data 2019-05-02 10:05:00","","","2","vista","","2","2019-05-02 12:05:00","");
INSERT INTO notificacoes VALUES("347","sistema","O Usuario demo  fez login na data 2019-05-02 11:38:44","","","2","vista","","2","2019-05-02 13:38:44","");
INSERT INTO notificacoes VALUES("348","sistema","O Usuario Christine   fez login na data 2019-05-02 11:46:32","","","12","vista","","12","2019-05-02 13:46:32","");
INSERT INTO notificacoes VALUES("349","sistema","O Usuario Demo  fez login na data 2019-05-02 11:47:11","","","15","vista","","15","2019-05-02 13:47:11","");
INSERT INTO notificacoes VALUES("350","sistema","O Usuario demo  fez login na data 2019-05-02 11:48:03","","","2","vista","","2","2019-05-02 13:48:03","");
INSERT INTO notificacoes VALUES("351","sistema","O Usuario demo  fez login na data 2019-05-02 12:33:17","","","2","vista","","2","2019-05-02 14:33:17","");
INSERT INTO notificacoes VALUES("352","sistema","O Usuario demo  fez login na data 2019-05-02 12:37:47","","","2","vista","","2","2019-05-02 14:37:47","");
INSERT INTO notificacoes VALUES("353","sistema","O Usuario demo  fez login na data 2019-05-02 13:05:46","","","2","vista","","2","2019-05-02 15:05:46","");
INSERT INTO notificacoes VALUES("354","sistema","O Usuario Rachide  fez login na data 2019-05-02 16:15:20","","","13","vista","","13","2019-05-02 18:15:20","");
INSERT INTO notificacoes VALUES("355","sistema","O Usuario Christine   fez login na data 2019-05-03 06:25:50","","","12","vista","","12","2019-05-03 08:25:50","");
INSERT INTO notificacoes VALUES("356","sistema","O Usuario Christine   fez login na data 2019-05-05 14:47:06","","","12","vista","","12","2019-05-05 16:47:06","");
INSERT INTO notificacoes VALUES("357","sistema","O Usuario demo  fez login na data 2019-05-09 13:07:52","","","2","vista","","2","2019-05-09 15:07:52","");
INSERT INTO notificacoes VALUES("358","sistema","O Usuario demo  fez login na data 2019-05-10 18:10:19","","","2","vista","","2","2019-05-10 20:10:19","");
INSERT INTO notificacoes VALUES("359","sistema","O Usuario demo  fez login na data 2019-05-13 10:07:21","","","2","vista","","2","2019-05-13 12:07:21","");
INSERT INTO notificacoes VALUES("360","sistema","O Usuario demo  fez login na data 2019-05-14 13:18:08","","","2","vista","","2","2019-05-14 15:18:08","");
INSERT INTO notificacoes VALUES("361","sistema","O Usuario demo  fez login na data 2019-05-14 17:49:12","","","2","vista","","2","2019-05-14 19:49:12","");
INSERT INTO notificacoes VALUES("362","sistema","O Usuario demo  fez login na data 2019-05-15 06:22:35","","","2","vista","","2","2019-05-15 08:22:35","");
INSERT INTO notificacoes VALUES("363","sistema","O Usuario gk  fez login na data 2019-05-15 07:50:59","","","20","vista","","20","2019-05-15 09:50:59","");
INSERT INTO notificacoes VALUES("364","sistema","O Usuario demo  fez login na data 2019-05-15 17:42:23","","","2","vista","","2","2019-05-15 19:42:23","");
INSERT INTO notificacoes VALUES("365","sistema","O Usuario demo  fez login na data 2019-05-15 18:01:47","","","2","vista","","2","2019-05-15 20:01:47","");
INSERT INTO notificacoes VALUES("366","sistema","O Usuario demo  fez login na data 2019-05-15 18:06:04","","","2","vista","","2","2019-05-15 20:06:04","");
INSERT INTO notificacoes VALUES("367","sistema","O Usuario demo  fez login na data 2019-05-16 07:12:24","","","2","vista","","2","2019-05-16 09:12:24","");
INSERT INTO notificacoes VALUES("368","sistema","O Usuario demo  fez login na data 2019-05-16 09:19:51","","","2","vista","","2","2019-05-16 11:19:51","");
INSERT INTO notificacoes VALUES("369","sistema","O Usuario demo  fez login na data 2019-05-16 11:59:36","","","2","vista","","2","2019-05-16 13:59:36","");
INSERT INTO notificacoes VALUES("370","sistema","O Usuario demo  fez login na data 2019-05-16 12:04:29","","","2","vista","","2","2019-05-16 14:04:29","");
INSERT INTO notificacoes VALUES("371","sistema","O Usuario demo  fez login na data 2019-05-16 12:44:08","","","2","vista","","2","2019-05-16 14:44:08","");
INSERT INTO notificacoes VALUES("372","sistema","O Usuario demo  fez login na data 2019-05-20 10:44:07","","","2","vista","","2","2019-05-20 12:44:07","");
INSERT INTO notificacoes VALUES("373","sistema","O Usuario demo  fez login na data 2019-05-21 14:36:00","","","2","vista","","2","2019-05-21 16:36:00","");
INSERT INTO notificacoes VALUES("374","sistema","O Usuario Demo  fez login na data 2019-05-22 05:56:08","","","15","vista","","15","2019-05-22 07:56:08","");
INSERT INTO notificacoes VALUES("375","sistema","O Usuario Demo  fez login na data 2019-05-22 05:57:22","","","15","vista","","15","2019-05-22 07:57:22","");
INSERT INTO notificacoes VALUES("376","sistema","O Usuario Demo  fez login na data 2019-05-22 07:05:51","","","15","vista","","15","2019-05-22 09:05:51","");
INSERT INTO notificacoes VALUES("377","sistema","O Usuario Christine   fez login na data 2019-05-22 07:29:02","","","12","vista","","12","2019-05-22 09:29:02","");
INSERT INTO notificacoes VALUES("378","sistema","O Usuario demo  fez login na data 2019-05-22 10:57:10","","","2","vista","","2","2019-05-22 12:57:10","");
INSERT INTO notificacoes VALUES("379","sistema","O Usuario demo  fez login na data 2019-05-22 11:01:50","","","2","vista","","2","2019-05-22 13:01:50","");
INSERT INTO notificacoes VALUES("380","sistema","O Usuario demo  fez login na data 2019-05-22 11:02:21","","","2","vista","","2","2019-05-22 13:02:21","");
INSERT INTO notificacoes VALUES("381","sistema","O Usuario demo  fez login na data 2019-05-22 11:08:15","","","2","vista","","2","2019-05-22 13:08:15","");
INSERT INTO notificacoes VALUES("382","sistema","O Usuario demo  fez login na data 2019-05-22 11:10:14","","","2","vista","","2","2019-05-22 13:10:14","");
INSERT INTO notificacoes VALUES("383","sistema","O Usuario demo  fez login na data 2019-05-22 11:15:28","","","2","vista","","2","2019-05-22 13:15:28","");
INSERT INTO notificacoes VALUES("384","sistema","O Usuario demo  fez login na data 2019-05-22 11:16:12","","","2","vista","","2","2019-05-22 13:16:12","");
INSERT INTO notificacoes VALUES("385","sistema","O Usuario demo  fez login na data 2019-05-22 11:21:30","","","2","vista","","2","2019-05-22 13:21:30","");
INSERT INTO notificacoes VALUES("386","sistema","O Usuario demo  fez login na data 2019-05-22 11:23:54","","","2","vista","","2","2019-05-22 13:23:54","");
INSERT INTO notificacoes VALUES("387","sistema","O Usuario demo  fez login na data 2019-05-22 11:50:03","","","2","vista","","2","2019-05-22 13:50:03","");
INSERT INTO notificacoes VALUES("388","sistema","O Usuario demo  fez login na data 2019-05-22 11:56:28","","","2","vista","","2","2019-05-22 13:56:28","");
INSERT INTO notificacoes VALUES("389","sistema","O Usuario demo  fez login na data 2019-05-22 12:00:41","","","2","vista","","2","2019-05-22 14:00:41","");
INSERT INTO notificacoes VALUES("390","sistema","O Usuario demo  fez login na data 2019-05-22 12:09:09","","","2","vista","","2","2019-05-22 14:09:09","");
INSERT INTO notificacoes VALUES("391","sistema","O Usuario demo  fez login na data 2019-05-22 12:11:42","","","2","vista","","2","2019-05-22 14:11:42","");
INSERT INTO notificacoes VALUES("392","sistema","O Usuario demo  fez login na data 2019-05-22 12:14:32","","","2","vista","","2","2019-05-22 14:14:32","");
INSERT INTO notificacoes VALUES("393","sistema","O Usuario demo  fez login na data 2019-05-22 12:36:07","","","2","vista","","2","2019-05-22 14:36:07","");
INSERT INTO notificacoes VALUES("394","sistema","O Usuario demo  fez login na data 2019-05-22 12:42:27","","","2","vista","","2","2019-05-22 14:42:27","");
INSERT INTO notificacoes VALUES("395","sistema","O Usuario demo  fez login na data 2019-05-22 13:15:30","","","2","vista","","2","2019-05-22 15:15:30","");
INSERT INTO notificacoes VALUES("396","sistema","O Usuario demo  fez login na data 2019-05-22 13:16:13","","","2","vista","","2","2019-05-22 15:16:13","");
INSERT INTO notificacoes VALUES("397","sistema","O Usuario demo  fez login na data 2019-05-22 13:18:02","","","2","vista","","2","2019-05-22 15:18:02","");
INSERT INTO notificacoes VALUES("398","sistema","O Usuario Demo  fez login na data 2019-05-22 19:09:27","","","15","vista","","15","2019-05-22 21:09:27","");
INSERT INTO notificacoes VALUES("399","sistema","O Usuario Demo  fez login na data 2019-05-22 19:14:05","","","15","vista","","15","2019-05-22 21:14:05","");
INSERT INTO notificacoes VALUES("400","sistema","O Usuario demo  fez login na data 2019-05-22 19:15:03","","","2","vista","","2","2019-05-22 21:15:03","");
INSERT INTO notificacoes VALUES("401","sistema","O Usuario Demo  fez login na data 2019-05-22 19:47:11","","","15","vista","","15","2019-05-22 21:47:11","");
INSERT INTO notificacoes VALUES("402","sistema","O Usuario Demo  fez login na data 2019-05-22 19:52:37","","","15","vista","","15","2019-05-22 21:52:37","");
INSERT INTO notificacoes VALUES("403","sistema","O Usuario Demo  fez login na data 2019-05-22 19:55:36","","","15","vista","","15","2019-05-22 21:55:36","");
INSERT INTO notificacoes VALUES("404","sistema","O Usuario Demo  fez login na data 2019-05-23 06:02:44","","","15","vista","","15","2019-05-23 08:02:44","");
INSERT INTO notificacoes VALUES("405","sistema","O Usuario Christine   fez login na data 2019-05-23 10:48:14","","","12","vista","","12","2019-05-23 12:48:14","");
INSERT INTO notificacoes VALUES("406","sistema","O Usuario Christine   fez login na data 2019-05-23 14:52:04","","","12","vista","","12","2019-05-23 16:52:04","");
INSERT INTO notificacoes VALUES("407","sistema","O Usuario demo  fez login na data 2019-05-24 08:34:20","","","2","vista","","2","2019-05-24 10:34:20","");
INSERT INTO notificacoes VALUES("408","sistema","O Usuario demo  fez login na data 2019-05-24 08:34:21","","","2","vista","","2","2019-05-24 10:34:21","");
INSERT INTO notificacoes VALUES("409","sistema","O Usuario demo  fez login na data 2019-05-24 16:59:43","","","2","vista","","2","2019-05-24 18:59:43","");
INSERT INTO notificacoes VALUES("410","sistema","O Usuario shueib  fez login na data 2019-05-24 17:00:30","","","14","vista","","14","2019-05-24 19:00:30","");
INSERT INTO notificacoes VALUES("411","sistema","O Usuario Demo  fez login na data 2019-05-24 17:35:38","","","15","vista","","15","2019-05-24 19:35:38","");
INSERT INTO notificacoes VALUES("412","sistema","O Usuario demo  fez login na data 2019-05-24 17:36:01","","","2","vista","","2","2019-05-24 19:36:01","");
INSERT INTO notificacoes VALUES("413","sistema","O Usuario Demo  fez login na data 2019-05-25 03:35:32","","","15","vista","","15","2019-05-25 05:35:32","");
INSERT INTO notificacoes VALUES("414","sistema","O Usuario demo  fez login na data 2019-05-25 03:36:31","","","2","vista","","2","2019-05-25 05:36:31","");
INSERT INTO notificacoes VALUES("415","sistema","O Usuario demo  fez login na data 2019-05-25 06:15:45","","","2","vista","","2","2019-05-25 08:15:45","");
INSERT INTO notificacoes VALUES("416","sistema","O Usuario demo  fez login na data 2019-05-25 09:17:52","","","2","vista","","2","2019-05-25 11:17:52","");
INSERT INTO notificacoes VALUES("417","sistema","O Usuario Christine   fez login na data 2019-05-25 11:36:53","","","12","vista","","12","2019-05-25 13:36:53","");
INSERT INTO notificacoes VALUES("418","sistema","O Usuario demo  fez login na data 2019-05-25 12:05:11","","","2","vista","","2","2019-05-25 14:05:11","");
INSERT INTO notificacoes VALUES("419","sistema","O Usuario shueib  fez login na data 2019-05-25 14:06:41","","","14","vista","","14","2019-05-25 16:06:41","");
INSERT INTO notificacoes VALUES("420","sistema","O Usuario Demo  fez login na data 2019-05-25 20:36:33","","","15","vista","","15","2019-05-25 22:36:33","");
INSERT INTO notificacoes VALUES("421","sistema","O Usuario Demo  fez login na data 2019-05-25 20:36:35","","","15","vista","","15","2019-05-25 22:36:35","");
INSERT INTO notificacoes VALUES("422","sistema","O Usuario Christine   fez login na data 2019-05-26 05:49:31","","","12","vista","","12","2019-05-26 07:49:31","");
INSERT INTO notificacoes VALUES("423","sistema","O Usuario demo  fez login na data 2019-05-26 09:23:28","","","2","vista","","2","2019-05-26 11:23:28","");
INSERT INTO notificacoes VALUES("424","sistema","O Usuario Christine   fez login na data 2019-05-26 12:44:40","","","12","vista","","12","2019-05-26 14:44:40","");
INSERT INTO notificacoes VALUES("425","sistema","O Usuario demo  fez login na data 2019-05-26 15:09:20","","","2","vista","","2","2019-05-26 17:09:20","");
INSERT INTO notificacoes VALUES("426","sistema","O Usuario Demo  fez login na data 2019-05-26 18:47:44","","","15","vista","","15","2019-05-26 20:47:44","");
INSERT INTO notificacoes VALUES("427","sistema","O Usuario demo  fez login na data 2019-05-26 18:48:15","","","2","vista","","2","2019-05-26 20:48:15","");
INSERT INTO notificacoes VALUES("428","sistema","O Usuario demo  fez login na data 2019-05-27 05:24:14","","","2","vista","","2","2019-05-27 07:24:14","");
INSERT INTO notificacoes VALUES("429","sistema","O Usuario Christine   fez login na data 2019-05-27 05:42:24","","","12","vista","","12","2019-05-27 07:42:24","");
INSERT INTO notificacoes VALUES("430","sistema","O Usuario demo  fez login na data 2019-05-27 07:51:41","","","2","vista","","2","2019-05-27 09:51:41","");
INSERT INTO notificacoes VALUES("431","sistema","O Usuario demo  fez login na data 2019-05-27 08:32:41","","","2","vista","","2","2019-05-27 10:32:41","");
INSERT INTO notificacoes VALUES("432","sistema","O Usuario demo  fez login na data 2019-05-27 08:36:09","","","2","vista","","2","2019-05-27 10:36:09","");
INSERT INTO notificacoes VALUES("433","sistema","O Usuario demo  fez login na data 2019-05-27 09:38:39","","","2","vista","","2","2019-05-27 11:38:39","");
INSERT INTO notificacoes VALUES("434","sistema","O Usuario demo  fez login na data 2019-05-27 11:16:09","","","2","vista","","2","2019-05-27 13:16:09","");
INSERT INTO notificacoes VALUES("435","sistema","O Usuario Christine   fez login na data 2019-05-27 11:19:02","","","12","vista","","12","2019-05-27 13:19:02","");
INSERT INTO notificacoes VALUES("436","sistema","O Usuario demo  fez login na data 2019-05-27 12:10:14","","","2","vista","","2","2019-05-27 14:10:14","");
INSERT INTO notificacoes VALUES("437","sistema","O Usuario demo  fez login na data 2019-05-27 13:44:45","","","2","vista","","2","2019-05-27 15:44:45","");
INSERT INTO notificacoes VALUES("438","sistema","O Usuario demo  fez login na data 2019-05-27 14:41:29","","","2","vista","","2","2019-05-27 16:41:29","");
INSERT INTO notificacoes VALUES("439","sistema","O Usuario demo  fez login na data 2019-05-27 16:39:29","","","2","vista","","2","2019-05-27 18:39:29","");
INSERT INTO notificacoes VALUES("440","sistema","O Usuario demo  fez login na data 2019-05-27 16:44:54","","","2","vista","","2","2019-05-27 18:44:54","");
INSERT INTO notificacoes VALUES("441","sistema","O Usuario demo  fez login na data 2019-05-28 08:34:59","","","2","vista","","2","2019-05-28 10:34:59","");
INSERT INTO notificacoes VALUES("442","sistema","O Usuario demo  fez login na data 2019-05-28 11:50:48","","","2","vista","","2","2019-05-28 13:50:48","");
INSERT INTO notificacoes VALUES("443","sistema","O Usuario demo  fez login na data 2019-05-28 11:51:45","","","2","vista","","2","2019-05-28 13:51:45","");
INSERT INTO notificacoes VALUES("444","sistema","O Usuario demo  fez login na data 2019-05-28 13:08:01","","","2","vista","","2","2019-05-28 15:08:01","");
INSERT INTO notificacoes VALUES("445","sistema","O Usuario demo  fez login na data 2019-05-28 14:07:44","","","2","vista","","2","2019-05-28 16:07:44","");
INSERT INTO notificacoes VALUES("446","sistema","O Usuario demo  fez login na data 2019-05-28 14:08:36","","","2","vista","","2","2019-05-28 16:08:36","");
INSERT INTO notificacoes VALUES("447","sistema","O Usuario demo  fez login na data 2019-05-28 14:30:36","","","2","vista","","2","2019-05-28 16:30:36","");
INSERT INTO notificacoes VALUES("448","sistema","O Usuario demo  fez login na data 2019-05-28 14:47:31","","","2","vista","","2","2019-05-28 16:47:31","");
INSERT INTO notificacoes VALUES("449","sistema","O Usuario demo  fez login na data 2019-05-28 16:13:44","","","2","vista","","2","2019-05-28 18:13:44","");
INSERT INTO notificacoes VALUES("450","sistema","O Usuario demo  fez login na data 2019-05-28 17:56:39","","","2","vista","","2","2019-05-28 19:56:39","");
INSERT INTO notificacoes VALUES("451","sistema","O Usuario Demo  fez login na data 2019-05-29 07:21:59","","","15","vista","","15","2019-05-29 09:21:59","");
INSERT INTO notificacoes VALUES("452","sistema","O Usuario demo  fez login na data 2019-05-29 07:36:59","","","2","vista","","2","2019-05-29 09:36:59","");
INSERT INTO notificacoes VALUES("453","sistema","O Usuario Edson Machatine  fez login na data 2019-05-29 07:38:01","","","22","vista","","22","2019-05-29 09:38:01","");
INSERT INTO notificacoes VALUES("454","sistema","O Usuario demo  fez login na data 2019-05-29 08:27:01","","","2","vista","","2","2019-05-29 10:27:01","");
INSERT INTO notificacoes VALUES("455","sistema","O Usuario demo  fez login na data 2019-05-29 09:17:24","","","2","vista","","2","2019-05-29 11:17:24","");
INSERT INTO notificacoes VALUES("456","sistema","O Usuario demo  fez login na data 2019-05-29 09:19:02","","","2","vista","","2","2019-05-29 11:19:02","");
INSERT INTO notificacoes VALUES("457","sistema","O Usuario demo  fez login na data 2019-05-29 09:37:38","","","2","vista","","2","2019-05-29 11:37:38","");
INSERT INTO notificacoes VALUES("458","sistema","O Usuario demo  fez login na data 2019-05-29 09:44:41","","","2","vista","","2","2019-05-29 11:44:41","");
INSERT INTO notificacoes VALUES("459","sistema","O Usuario demo  fez login na data 2019-05-29 09:45:42","","","2","vista","","2","2019-05-29 11:45:42","");
INSERT INTO notificacoes VALUES("460","sistema","O Usuario demo  fez login na data 2019-05-29 09:47:29","","","2","vista","","2","2019-05-29 11:47:29","");
INSERT INTO notificacoes VALUES("461","sistema","O Usuario demo  fez login na data 2019-05-29 12:14:33","","","2","vista","","2","2019-05-29 14:14:33","");
INSERT INTO notificacoes VALUES("462","sistema","O Usuario demo  fez login na data 2019-05-29 12:14:38","","","2","vista","","2","2019-05-29 14:14:38","");
INSERT INTO notificacoes VALUES("463","sistema","O Usuario demo  fez login na data 2019-05-29 13:25:51","","","2","vista","","2","2019-05-29 15:25:51","");
INSERT INTO notificacoes VALUES("464","sistema","O Usuario demo  fez login na data 2019-05-29 14:35:05","","","2","vista","","2","2019-05-29 16:35:05","");
INSERT INTO notificacoes VALUES("465","sistema","O Usuario demo  fez login na data 2019-05-29 16:57:08","","","2","vista","","2","2019-05-29 18:57:08","");
INSERT INTO notificacoes VALUES("466","sistema","O Usuario demo  fez login na data 2019-05-30 07:58:38","","","2","vista","","2","2019-05-30 09:58:38","");
INSERT INTO notificacoes VALUES("467","sistema","O Usuario demo  fez login na data 2019-05-30 08:51:37","","","2","vista","","2","2019-05-30 10:51:37","");
INSERT INTO notificacoes VALUES("468","sistema","O Usuario Christine   fez login na data 2019-05-30 09:26:12","","","12","vista","","12","2019-05-30 11:26:12","");
INSERT INTO notificacoes VALUES("469","sistema","O Usuario demo  fez login na data 2019-05-30 09:52:26","","","2","vista","","2","2019-05-30 11:52:26","");
INSERT INTO notificacoes VALUES("470","sistema","O Usuario Edson Machatine  fez login na data 2019-05-30 12:22:44","","","22","vista","","22","2019-05-30 14:22:44","");
INSERT INTO notificacoes VALUES("471","sistema","O Usuario demo  fez login na data 2019-05-30 14:00:19","","","2","vista","","2","2019-05-30 16:00:19","");
INSERT INTO notificacoes VALUES("472","sistema","O Usuario demo  fez login na data 2019-05-30 14:01:52","","","2","vista","","2","2019-05-30 16:01:52","");
INSERT INTO notificacoes VALUES("473","sistema","O Usuario demo  fez login na data 2019-05-30 16:38:18","","","2","vista","","2","2019-05-30 18:38:18","");
INSERT INTO notificacoes VALUES("474","sistema","O Usuario demo  fez login na data 2019-05-30 16:51:52","","","2","vista","","2","2019-05-30 18:51:52","");
INSERT INTO notificacoes VALUES("475","sistema","O Usuario Christine   fez login na data 2019-05-31 07:42:11","","","12","vista","","12","2019-05-31 09:42:11","");
INSERT INTO notificacoes VALUES("476","sistema","O Usuario Edson Machatine  fez login na data 2019-05-31 07:56:24","","","22","vista","","22","2019-05-31 09:56:24","");
INSERT INTO notificacoes VALUES("477","sistema","O Usuario demo  fez login na data 2019-05-31 08:25:16","","","2","vista","","2","2019-05-31 10:25:16","");
INSERT INTO notificacoes VALUES("478","sistema","O Usuario demo  fez login na data 2019-05-31 09:23:13","","","2","vista","","2","2019-05-31 11:23:13","");
INSERT INTO notificacoes VALUES("479","sistema","O Usuario demo  fez login na data 2019-05-31 13:30:28","","","2","vista","","2","2019-05-31 15:30:28","");
INSERT INTO notificacoes VALUES("480","sistema","O Usuario Christine   fez login na data 2019-06-01 06:00:51","","","12","vista","","12","2019-06-01 08:00:51","");
INSERT INTO notificacoes VALUES("481","sistema","O Usuario demo  fez login na data 2019-06-01 13:53:32","","","2","vista","","2","2019-06-01 15:53:32","");
INSERT INTO notificacoes VALUES("482","sistema","O Usuario demo  fez login na data 2019-06-02 11:17:20","","","2","vista","","2","2019-06-02 13:17:20","");
INSERT INTO notificacoes VALUES("483","sistema","O Usuario demo  fez login na data 2019-06-02 11:17:41","","","2","vista","","2","2019-06-02 13:17:41","");
INSERT INTO notificacoes VALUES("484","sistema","O Usuario demo  fez login na data 2019-06-02 11:39:15","","","2","vista","","2","2019-06-02 13:39:15","");
INSERT INTO notificacoes VALUES("485","sistema","O Usuario demo  fez login na data 2019-06-02 12:28:53","","","2","vista","","2","2019-06-02 14:28:53","");
INSERT INTO notificacoes VALUES("486","sistema","O Usuario Demo  fez login na data 2019-06-03 10:12:52","","","15","vista","","15","2019-06-03 12:12:52","");
INSERT INTO notificacoes VALUES("487","sistema","O Usuario Demo  fez login na data 2019-06-03 10:12:53","","","15","vista","","15","2019-06-03 12:12:53","");
INSERT INTO notificacoes VALUES("488","sistema","O Usuario Demo  fez login na data 2019-06-03 16:37:26","","","15","vista","","15","2019-06-03 18:37:26","");
INSERT INTO notificacoes VALUES("489","sistema","O Usuario Demo  fez login na data 2019-06-03 16:37:30","","","15","vista","","15","2019-06-03 18:37:30","");
INSERT INTO notificacoes VALUES("490","sistema","O Usuario demo  fez login na data 2019-06-03 16:41:01","","","2","vista","","2","2019-06-03 18:41:01","");
INSERT INTO notificacoes VALUES("491","sistema","O Usuario demo  fez login na data 2019-06-03 21:20:35","","","2","vista","","2","2019-06-03 23:20:35","");
INSERT INTO notificacoes VALUES("492","sistema","O Usuario Demo  fez login na data 2019-06-03 21:26:37","","","15","vista","","15","2019-06-03 23:26:37","");
INSERT INTO notificacoes VALUES("493","sistema","O Usuario demo  fez login na data 2019-06-03 21:27:11","","","2","vista","","2","2019-06-03 23:27:11","");
INSERT INTO notificacoes VALUES("494","sistema","O Usuario Christine   fez login na data 2019-06-05 13:13:11","","","12","vista","","12","2019-06-05 15:13:11","");
INSERT INTO notificacoes VALUES("495","sistema","O Usuario Christine   fez login na data 2019-06-05 13:16:59","","","12","vista","","12","2019-06-05 15:16:59","");
INSERT INTO notificacoes VALUES("496","sistema","O Usuario Christine   fez login na data 2019-06-05 13:21:01","","","12","vista","","12","2019-06-05 15:21:01","");
INSERT INTO notificacoes VALUES("497","sistema","O Usuario Christine   fez login na data 2019-06-05 13:26:27","","","12","vista","","12","2019-06-05 15:26:27","");
INSERT INTO notificacoes VALUES("498","sistema","O Usuario demo  fez login na data 2019-06-05 13:46:43","","","2","vista","","2","2019-06-05 15:46:43","");
INSERT INTO notificacoes VALUES("499","sistema","O Usuario demo  fez login na data 2019-06-05 17:56:14","","","2","vista","","2","2019-06-05 19:56:14","");
INSERT INTO notificacoes VALUES("500","sistema","O Usuario Christine   fez login na data 2019-06-06 03:19:31","","","12","vista","","12","2019-06-06 05:19:31","");
INSERT INTO notificacoes VALUES("501","sistema","O Usuario demo  fez login na data 2019-06-06 14:54:15","","","2","vista","","2","2019-06-06 16:54:15","");
INSERT INTO notificacoes VALUES("502","sistema","O Usuario demo  fez login na data 2019-06-06 18:03:52","","","2","vista","","2","2019-06-06 20:03:52","");
INSERT INTO notificacoes VALUES("503","sistema","O Usuario demo  fez login na data 2019-06-06 18:53:58","","","2","vista","","2","2019-06-06 20:53:58","");
INSERT INTO notificacoes VALUES("504","sistema","O Usuario demo  fez login na data 2019-06-08 18:04:18","","","2","vista","","2","2019-06-08 20:04:18","");
INSERT INTO notificacoes VALUES("505","sistema","O Usuario demo  fez login na data 2019-06-08 18:50:35","","","2","vista","","2","2019-06-08 20:50:35","");
INSERT INTO notificacoes VALUES("506","sistema","O Usuario demo  fez login na data 2019-06-09 09:57:57","","","2","vista","","2","2019-06-09 11:57:57","");
INSERT INTO notificacoes VALUES("507","sistema","O Usuario demo  fez login na data 2019-06-09 14:50:09","","","2","vista","","2","2019-06-09 16:50:09","");
INSERT INTO notificacoes VALUES("508","sistema","O Usuario demo  fez login na data 2019-06-10 10:51:26","","","2","vista","","2","2019-06-10 12:51:26","");
INSERT INTO notificacoes VALUES("509","sistema","O Usuario demo  fez login na data 2019-06-10 11:37:15","","","2","vista","","2","2019-06-10 13:37:15","");
INSERT INTO notificacoes VALUES("510","sistema","O Usuario demo  fez login na data 2019-07-03 10:35:11","","","2","vista","","2","2019-07-03 10:35:11","");
INSERT INTO notificacoes VALUES("511","sistema","O Usuario demo  fez login na data 2019-07-03 11:33:24","","","2","vista","","2","2019-07-03 11:33:24","");
INSERT INTO notificacoes VALUES("512","sistema","O Usuario demo  fez login na data 2019-07-03 11:47:14","","","2","vista","","2","2019-07-03 11:47:14","");
INSERT INTO notificacoes VALUES("513","sistema","O Usuario demo  fez login na data 2019-07-03 14:21:31","","","2","vista","","2","2019-07-03 14:21:31","");
INSERT INTO notificacoes VALUES("514","sistema","O Usuario demo  fez login na data 2019-07-03 17:19:46","","","2","vista","","2","2019-07-03 17:19:46","");
INSERT INTO notificacoes VALUES("515","sistema","O Usuario demo  fez login na data 2019-07-03 18:38:01","","","2","vista","","2","2019-07-03 18:38:01","");
INSERT INTO notificacoes VALUES("516","sistema","O Usuario demo  fez login na data 2019-07-03 19:28:16","","","2","vista","","2","2019-07-03 19:28:16","");
INSERT INTO notificacoes VALUES("517","sistema","O Usuario demo  fez login na data 2019-07-03 20:02:18","","","2","vista","","2","2019-07-03 20:02:18","");
INSERT INTO notificacoes VALUES("518","sistema","O Usuario demo  fez login na data 2019-07-03 20:07:26","","","2","vista","","2","2019-07-03 20:07:26","");
INSERT INTO notificacoes VALUES("519","sistema","O Usuario demo  fez login na data 2019-07-03 20:46:25","","","2","vista","","2","2019-07-03 20:46:25","");
INSERT INTO notificacoes VALUES("520","sistema","O Usuario demo  fez login na data 2019-07-03 21:13:19","","","2","vista","","2","2019-07-03 21:13:19","");
INSERT INTO notificacoes VALUES("521","sistema","O Usuario demo  fez login na data 2019-07-04 07:33:36","","","2","vista","","2","2019-07-04 07:33:36","");
INSERT INTO notificacoes VALUES("522","sistema","O Usuario demo  fez login na data 2019-07-04 13:57:45","","","2","vista","","2","2019-07-04 13:57:45","");
INSERT INTO notificacoes VALUES("523","sistema","O Usuario demo  fez login na data 2019-07-04 20:34:05","","","2","vista","","2","2019-07-04 20:34:05","");
INSERT INTO notificacoes VALUES("524","sistema","O Usuario demo  fez login na data 2019-07-04 20:41:24","","","2","vista","","2","2019-07-04 20:41:24","");
INSERT INTO notificacoes VALUES("525","sistema","O Usuario demo  fez login na data 2019-07-04 21:01:14","","","2","vista","","2","2019-07-04 21:01:14","");
INSERT INTO notificacoes VALUES("526","sistema","O Usuario demo  fez login na data 2019-07-04 22:17:11","","","2","vista","","2","2019-07-04 22:17:11","");
INSERT INTO notificacoes VALUES("527","sistema","O Usuario demo  fez login na data 2019-07-05 07:50:01","","","2","vista","","2","2019-07-05 07:50:01","");
INSERT INTO notificacoes VALUES("528","sistema","O Usuario demo  fez login na data 2019-07-05 08:00:01","","","2","vista","","2","2019-07-05 08:00:01","");
INSERT INTO notificacoes VALUES("529","sistema","O Usuario demo  fez login na data 2019-07-05 13:29:03","","","2","vista","","2","2019-07-05 13:29:03","");
INSERT INTO notificacoes VALUES("530","sistema","O Usuario demo  fez login na data 2019-07-05 13:50:14","","","2","vista","","2","2019-07-05 13:50:14","");
INSERT INTO notificacoes VALUES("531","sistema","O Usuario demo  fez login na data 2019-07-05 15:44:24","","","2","vista","","2","2019-07-05 15:44:24","");
INSERT INTO notificacoes VALUES("532","sistema","O Usuario demo  fez login na data 2019-07-05 16:01:25","","","2","vista","","2","2019-07-05 16:01:25","");
INSERT INTO notificacoes VALUES("533","sistema","O Usuario demo  fez login na data 2019-07-06 16:11:02","","","2","vista","","2","2019-07-06 16:11:02","");
INSERT INTO notificacoes VALUES("534","sistema","O Usuario demo  fez login na data 2019-07-06 16:43:29","","","2","vista","","2","2019-07-06 16:43:29","");
INSERT INTO notificacoes VALUES("535","sistema","O Usuario demo  fez login na data 2019-07-07 06:10:10","","","2","vista","","2","2019-07-07 06:10:10","");
INSERT INTO notificacoes VALUES("536","sistema","O Usuario demo  fez login na data 2019-07-07 09:08:12","","","2","vista","","2","2019-07-07 09:08:12","");
INSERT INTO notificacoes VALUES("537","sistema","O Usuario demo  fez login na data 2019-07-07 13:59:14","","","2","vista","","2","2019-07-07 13:59:14","");
INSERT INTO notificacoes VALUES("538","sistema","O Usuario demo  fez login na data 2019-07-08 15:08:16","","","2","vista","","2","2019-07-08 15:08:16","");
INSERT INTO notificacoes VALUES("539","sistema","O Usuario demo  fez login na data 2019-07-08 15:09:39","","","2","vista","","2","2019-07-08 15:09:39","");
INSERT INTO notificacoes VALUES("540","sistema","O Usuario demo  fez login na data 2019-07-08 15:20:12","","","2","vista","","2","2019-07-08 15:20:12","");
INSERT INTO notificacoes VALUES("541","sistema","O Usuario demo  fez login na data 2019-07-08 15:39:28","","","2","vista","","2","2019-07-08 15:39:28","");
INSERT INTO notificacoes VALUES("542","sistema","O Usuario NC Software House - NcSoftware  fez login na data 2019-07-08 15:45:23","","","23","vista","","23","2019-07-08 15:45:23","");
INSERT INTO notificacoes VALUES("543","sistema","O Usuario Mr. Smart  fez login na data 2019-07-08 15:45:39","","","24","vista","","24","2019-07-08 15:45:39","");
INSERT INTO notificacoes VALUES("544","sistema","O Usuario NC Software House - NcSoftware  fez login na data 2019-07-08 15:54:08","","","23","vista","","23","2019-07-08 15:54:08","");
INSERT INTO notificacoes VALUES("545","sistema","O Usuario Mr. Smart  fez login na data 2019-07-08 15:56:36","","","24","vista","","24","2019-07-08 15:56:36","");
INSERT INTO notificacoes VALUES("546","sistema","O Usuario NC Software House - NcSoftware  fez login na data 2019-07-08 15:58:35","","","23","vista","","23","2019-07-08 15:58:35","");
INSERT INTO notificacoes VALUES("547","sistema","O Usuario NC Software House - NcSoftware  fez login na data 2019-07-08 15:59:53","","","23","vista","","23","2019-07-08 15:59:53","");
INSERT INTO notificacoes VALUES("548","sistema","O Usuario Mr. Smart  fez login na data 2019-07-08 16:00:02","","","24","vista","","24","2019-07-08 16:00:02","");
INSERT INTO notificacoes VALUES("549","sistema","O Usuario NC Software House - NcSoftware  fez login na data 2019-07-08 16:01:44","","","23","vista","","23","2019-07-08 16:01:44","");
INSERT INTO notificacoes VALUES("550","sistema","O Usuario NC Software House - NcSoftware  fez login na data 2019-07-08 16:03:49","","","23","vista","","23","2019-07-08 16:03:49","");
INSERT INTO notificacoes VALUES("551","sistema","O Usuario Mr. Smart  fez login na data 2019-07-08 16:04:05","","","24","vista","","24","2019-07-08 16:04:05","");
INSERT INTO notificacoes VALUES("552","sistema","O Usuario demo  fez login na data 2019-07-08 16:04:38","","","2","vista","","2","2019-07-08 16:04:38","");
INSERT INTO notificacoes VALUES("553","sistema","O Usuario demo  fez login na data 2019-07-08 16:06:43","","","2","vista","","2","2019-07-08 16:06:43","");
INSERT INTO notificacoes VALUES("554","sistema","O Usuario demo  fez login na data 2019-07-08 17:10:45","","","2","vista","","2","2019-07-08 17:10:45","");
INSERT INTO notificacoes VALUES("555","sistema","O Usuario demo  fez login na data 2019-07-08 19:20:58","","","2","vista","","2","2019-07-08 19:20:58","");
INSERT INTO notificacoes VALUES("556","sistema","O Usuario demo  fez login na data 2019-07-09 15:15:21","","","2","vista","","2","2019-07-09 15:15:21","");
INSERT INTO notificacoes VALUES("557","sistema","O Usuario demo  fez login na data 2019-07-09 16:26:20","","","2","vista","","2","2019-07-09 16:26:20","");
INSERT INTO notificacoes VALUES("558","sistema","O Usuario demo  fez login na data 2019-07-09 17:48:31","","","2","vista","","2","2019-07-09 17:48:31","");
INSERT INTO notificacoes VALUES("559","sistema","O Usuario demo  fez login na data 2019-07-09 17:59:16","","","2","vista","","2","2019-07-09 17:59:16","");
INSERT INTO notificacoes VALUES("560","sistema","O Usuario demo  fez login na data 2019-07-09 17:59:34","","","2","vista","","2","2019-07-09 17:59:34","");
INSERT INTO notificacoes VALUES("561","sistema","O Usuario demo  fez login na data 2019-07-10 07:16:03","","","2","vista","","2","2019-07-10 07:16:03","");
INSERT INTO notificacoes VALUES("562","sistema","O Usuario demo  fez login na data 2019-07-11 07:26:44","","","2","vista","","2","2019-07-11 07:26:44","");
INSERT INTO notificacoes VALUES("563","sistema","O Usuario demo  fez login na data 2019-07-11 15:40:12","","","2","vista","","2","2019-07-11 15:40:12","");
INSERT INTO notificacoes VALUES("564","sistema","O Usuario demo  fez login na data 2019-07-11 18:05:24","","","2","vista","","2","2019-07-11 18:05:24","");
INSERT INTO notificacoes VALUES("565","sistema","O Usuario demo  fez login na data 2019-07-12 06:16:37","","","2","vista","","2","2019-07-12 06:16:37","");
INSERT INTO notificacoes VALUES("566","sistema","O Usuario demo  fez login na data 2019-07-12 06:55:20","","","2","vista","","2","2019-07-12 06:55:20","");
INSERT INTO notificacoes VALUES("567","sistema","O Usuario demo  fez login na data 2019-07-12 09:21:10","","","2","vista","","2","2019-07-12 09:21:10","");
INSERT INTO notificacoes VALUES("568","sistema","O Usuario demo  fez login na data 2019-07-12 11:21:41","","","2","vista","","2","2019-07-12 11:21:41","");
INSERT INTO notificacoes VALUES("569","sistema","O Usuario demo  fez login na data 2019-07-12 11:58:53","","","2","vista","","2","2019-07-12 11:58:53","");
INSERT INTO notificacoes VALUES("570","sistema","O Usuario demo  fez login na data 2019-07-12 12:31:25","","","2","vista","","2","2019-07-12 12:31:25","");
INSERT INTO notificacoes VALUES("571","sistema","O Usuario demo  fez login na data 2019-07-12 12:34:48","","","2","vista","","2","2019-07-12 12:34:48","");
INSERT INTO notificacoes VALUES("572","sistema","O Usuario demo  fez login na data 2019-07-13 06:54:31","","","2","vista","","2","2019-07-13 06:54:31","");
INSERT INTO notificacoes VALUES("573","sistema","O Usuario NC Software House - NcSoftware  fez login na data 2019-07-13 06:55:34","","","23","vista","","23","2019-07-13 06:55:34","");
INSERT INTO notificacoes VALUES("574","sistema","O Usuario Mr. Smart  fez login na data 2019-07-13 06:59:18","","","24","vista","","24","2019-07-13 06:59:18","");
INSERT INTO notificacoes VALUES("575","sistema","O Usuario demo  fez login na data 2019-07-13 07:08:05","","","2","vista","","2","2019-07-13 07:08:05","");
INSERT INTO notificacoes VALUES("576","sistema","O Usuario demo  fez login na data 2019-07-13 16:34:08","","","2","vista","","2","2019-07-13 16:34:08","");
INSERT INTO notificacoes VALUES("577","sistema","O Usuario demo  fez login na data 2019-07-14 09:27:58","","","2","vista","","2","2019-07-14 09:27:58","");
INSERT INTO notificacoes VALUES("578","sistema","O Usuario demo  fez login na data 2019-07-15 17:30:04","","","2","vista","","2","2019-07-15 17:30:04","");
INSERT INTO notificacoes VALUES("579","sistema","O Usuario demo  fez login na data 2019-07-15 18:13:01","","","2","vista","","2","2019-07-15 18:13:01","");
INSERT INTO notificacoes VALUES("580","sistema","O Usuario demo  fez login na data 2019-07-16 10:01:14","","","2","vista","","2","2019-07-16 10:01:14","");
INSERT INTO notificacoes VALUES("581","sistema","O Usuario demo  fez login na data 2019-07-16 10:45:40","","","2","vista","","2","2019-07-16 10:45:40","");
INSERT INTO notificacoes VALUES("582","sistema","O Usuario demo  fez login na data 2019-07-16 11:06:16","","","2","vista","","2","2019-07-16 11:06:16","");
INSERT INTO notificacoes VALUES("583","sistema","O Usuario demo  fez login na data 2019-07-16 11:26:29","","","2","vista","","2","2019-07-16 11:26:29","");
INSERT INTO notificacoes VALUES("584","sistema","O Usuario demo  fez login na data 2019-07-16 11:28:17","","","2","vista","","2","2019-07-16 11:28:17","");
INSERT INTO notificacoes VALUES("585","sistema","O Usuario demo  fez login na data 2019-07-16 17:15:51","","","2","vista","","2","2019-07-16 17:15:51","");
INSERT INTO notificacoes VALUES("586","sistema","O Usuario demo  fez login na data 2019-07-16 17:24:32","","","2","vista","","2","2019-07-16 17:24:32","");
INSERT INTO notificacoes VALUES("587","sistema","O Usuario demo  fez login na data 2019-07-16 18:17:51","","","2","vista","","2","2019-07-16 18:17:51","");
INSERT INTO notificacoes VALUES("588","sistema","O Usuario demo  fez login na data 2019-07-16 22:21:02","","","2","vista","","2","2019-07-16 22:21:02","");
INSERT INTO notificacoes VALUES("589","sistema","O Usuario demo  fez login na data 2019-07-17 09:07:54","","","2","vista","","2","2019-07-17 09:07:54","");
INSERT INTO notificacoes VALUES("590","sistema","O Usuario demo  fez login na data 2019-07-30 16:51:32","","","2","vista","","2","2019-07-30 16:51:32","");
INSERT INTO notificacoes VALUES("591","sistema","O Usuario demo  fez login na data 2019-08-03 15:05:58","","","2","vista","","2","2019-08-03 15:05:58","");
INSERT INTO notificacoes VALUES("592","sistema","O Usuario demo  fez login na data 2019-08-07 17:25:46","","","2","vista","","2","2019-08-07 17:25:46","");
INSERT INTO notificacoes VALUES("593","sistema","O Usuario demo  fez login na data 2019-08-08 08:55:44","","","2","vista","","2","2019-08-08 08:55:44","");
INSERT INTO notificacoes VALUES("594","sistema","O Usuario demo  fez login na data 2019-08-08 09:03:54","","","2","vista","","2","2019-08-08 09:03:54","");
INSERT INTO notificacoes VALUES("595","sistema","O Usuario demo  fez login na data 2019-08-08 09:38:00","","","2","vista","","2","2019-08-08 09:38:00","");
INSERT INTO notificacoes VALUES("596","sistema","O Usuario demo  fez login na data 2019-08-08 09:46:04","","","2","vista","","2","2019-08-08 09:46:04","");
INSERT INTO notificacoes VALUES("597","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-08 10:03:35","","","25","vista","","25","2019-08-08 10:03:35","");
INSERT INTO notificacoes VALUES("598","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-08 10:04:18","","","25","vista","","25","2019-08-08 10:04:18","");
INSERT INTO notificacoes VALUES("599","sistema","O Usuario demo  fez login na data 2019-08-08 11:15:33","","","2","vista","","2","2019-08-08 11:15:33","");
INSERT INTO notificacoes VALUES("600","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-08 11:50:00","","","25","vista","","25","2019-08-08 11:50:00","");
INSERT INTO notificacoes VALUES("601","sistema","O Usuario demo  fez login na data 2019-08-08 15:28:10","","","2","vista","","2","2019-08-08 15:28:10","");
INSERT INTO notificacoes VALUES("602","sistema","O Usuario demo  fez login na data 2019-08-10 10:05:05","","","2","vista","","2","2019-08-10 10:05:05","");
INSERT INTO notificacoes VALUES("603","sistema","O Usuario demo  fez login na data 2019-08-10 15:18:58","","","2","vista","","2","2019-08-10 15:18:58","");
INSERT INTO notificacoes VALUES("604","sistema","O Usuario demo  fez login na data 2019-08-14 08:27:40","","","2","vista","","2","2019-08-14 08:27:40","");
INSERT INTO notificacoes VALUES("605","sistema","O Usuario demo  fez login na data 2019-08-14 08:29:12","","","2","vista","","2","2019-08-14 08:29:12","");
INSERT INTO notificacoes VALUES("606","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-14 09:20:29","","","25","vista","","25","2019-08-14 09:20:29","");
INSERT INTO notificacoes VALUES("607","sistema","O Usuario demo  fez login na data 2019-08-14 09:59:18","","","2","vista","","2","2019-08-14 09:59:18","");
INSERT INTO notificacoes VALUES("608","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-14 11:27:34","","","25","vista","","25","2019-08-14 11:27:34","");
INSERT INTO notificacoes VALUES("609","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-14 12:22:31","","","25","vista","","25","2019-08-14 12:22:31","");
INSERT INTO notificacoes VALUES("610","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-14 14:07:07","","","25","vista","","25","2019-08-14 14:07:07","");
INSERT INTO notificacoes VALUES("611","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-15 08:22:10","","","25","vista","","25","2019-08-15 08:22:10","");
INSERT INTO notificacoes VALUES("612","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-15 09:44:54","","","25","vista","","25","2019-08-15 09:44:54","");
INSERT INTO notificacoes VALUES("613","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-15 10:52:44","","","25","vista","","25","2019-08-15 10:52:44","");
INSERT INTO notificacoes VALUES("614","sistema","O Usuario demo  fez login na data 2019-08-15 11:19:20","","","2","vista","","2","2019-08-15 11:19:20","");
INSERT INTO notificacoes VALUES("615","sistema","O Usuario demo  fez login na data 2019-08-15 15:25:12","","","2","vista","","2","2019-08-15 15:25:12","");
INSERT INTO notificacoes VALUES("616","sistema","O Usuario demo  fez login na data 2019-08-15 17:04:34","","","2","vista","","2","2019-08-15 17:04:34","");
INSERT INTO notificacoes VALUES("617","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-15 17:05:04","","","25","vista","","25","2019-08-15 17:05:04","");
INSERT INTO notificacoes VALUES("618","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-15 17:05:41","","","25","vista","","25","2019-08-15 17:05:41","");
INSERT INTO notificacoes VALUES("619","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-15 17:06:57","","","25","vista","","25","2019-08-15 17:06:57","");
INSERT INTO notificacoes VALUES("620","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-16 08:16:54","","","25","vista","","25","2019-08-16 08:16:54","");
INSERT INTO notificacoes VALUES("621","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-16 08:17:37","","","25","vista","","25","2019-08-16 08:17:37","");
INSERT INTO notificacoes VALUES("622","sistema","O Usuario demo  fez login na data 2019-08-16 08:21:16","","","2","vista","","2","2019-08-16 08:21:16","");
INSERT INTO notificacoes VALUES("623","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-16 08:22:12","","","25","vista","","25","2019-08-16 08:22:12","");
INSERT INTO notificacoes VALUES("624","sistema","O Usuario demo  fez login na data 2019-08-16 08:24:05","","","2","vista","","2","2019-08-16 08:24:05","");
INSERT INTO notificacoes VALUES("625","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-16 09:13:38","","","25","vista","","25","2019-08-16 09:13:38","");
INSERT INTO notificacoes VALUES("626","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-16 09:47:49","","","25","vista","","25","2019-08-16 09:47:49","");
INSERT INTO notificacoes VALUES("627","sistema","O Usuario Kayolera Obadias  fez login na data 2019-08-16 10:04:39","","","25","vista","","25","2019-08-16 10:04:39","");
INSERT INTO notificacoes VALUES("628","sistema","O Usuario demo  fez login na data 2019-08-17 10:06:22","","","2","vista","","2","2019-08-17 10:06:22","");
INSERT INTO notificacoes VALUES("629","sistema","O Usuario demo  fez login na data 2019-08-17 10:40:12","","","2","vista","","2","2019-08-17 10:40:12","");
INSERT INTO notificacoes VALUES("630","sistema","O Usuario demo  fez login na data 2019-08-17 11:25:46","","","2","vista","","2","2019-08-17 11:25:46","");
INSERT INTO notificacoes VALUES("631","sistema","O Usuario demo  fez login na data 2019-08-17 12:35:28","","","2","vista","","2","2019-08-17 12:35:28","");
INSERT INTO notificacoes VALUES("632","sistema","O Usuario demo  fez login na data 2019-08-24 09:34:44","","","2","vista","","2","2019-08-24 09:34:44","");
INSERT INTO notificacoes VALUES("633","sistema","O Usuario demo  fez login na data 2019-08-27 15:02:15","","","2","vista","","2","2019-08-27 15:02:15","");
INSERT INTO notificacoes VALUES("634","sistema","O Usuario demo  fez login na data 2019-09-04 20:01:25","","","2","vista","","2","2019-09-04 20:01:25","");
INSERT INTO notificacoes VALUES("635","sistema","O Usuario demo  fez login na data 2019-09-04 20:21:16","","","2","vista","","2","2019-09-04 20:21:16","");
INSERT INTO notificacoes VALUES("636","sistema","O Usuario demo  fez login na data 2019-09-04 20:33:04","","","2","vista","","2","2019-09-04 20:33:04","");
INSERT INTO notificacoes VALUES("637","sistema","O Usuario demo  fez login na data 2019-09-04 20:50:05","","","2","vista","","2","2019-09-04 20:50:05","");
INSERT INTO notificacoes VALUES("638","sistema","O Usuario demo  fez login na data 2019-09-04 20:51:24","","","2","vista","","2","2019-09-04 20:51:24","");
INSERT INTO notificacoes VALUES("639","sistema","O Usuario demo  fez login na data 2019-09-04 21:09:31","","","2","vista","","2","2019-09-04 21:09:31","");
INSERT INTO notificacoes VALUES("640","sistema","O Usuario demo  fez login na data 2019-09-05 15:02:46","","","2","vista","","2","2019-09-05 15:02:46","");
INSERT INTO notificacoes VALUES("641","sistema","O Usuario demo  fez login na data 2019-09-11 19:28:56","","","2","vista","","2","2019-09-11 19:28:56","");
INSERT INTO notificacoes VALUES("642","sistema","O Usuario demo  fez login na data 2019-09-11 19:32:30","","","2","vista","","2","2019-09-11 19:32:30","");
INSERT INTO notificacoes VALUES("643","sistema","O Usuario demo  fez login na data 2019-09-11 20:14:48","","","2","vista","","2","2019-09-11 20:14:48","");
INSERT INTO notificacoes VALUES("644","sistema","O Usuario demo  fez login na data 2019-09-11 20:25:10","","","2","vista","","2","2019-09-11 20:25:10","");
INSERT INTO notificacoes VALUES("645","sistema","O Usuario demo  fez login na data 2019-09-12 11:30:33","","","2","vista","","2","2019-09-12 11:30:33","");
INSERT INTO notificacoes VALUES("646","sistema","O Usuario demo  fez login na data 2019-09-12 11:34:29","","","2","vista","","2","2019-09-12 11:34:29","");
INSERT INTO notificacoes VALUES("647","sistema","O Usuario demo  fez login na data 2019-09-16 16:16:39","","","2","vista","","2","2019-09-16 16:16:39","");
INSERT INTO notificacoes VALUES("648","sistema","O Usuario demo  fez login na data 2019-10-09 14:30:43","","","2","vista","","2","2019-10-09 14:30:43","");
INSERT INTO notificacoes VALUES("649","sistema","O Usuario demo  fez login na data 2019-10-09 14:35:00","","","2","vista","","2","2019-10-09 14:35:00","");
INSERT INTO notificacoes VALUES("650","sistema","O Usuario demo  fez login na data 2019-10-23 16:11:36","","","2","vista","","2","2019-10-23 16:11:36","");
INSERT INTO notificacoes VALUES("651","sistema","O Usuario demo  fez login na data 2019-10-24 11:08:04","","","2","vista","","2","2019-10-24 11:08:04","");
INSERT INTO notificacoes VALUES("652","sistema","O Usuario demo  fez login na data 2019-10-24 13:35:59","","","2","vista","","2","2019-10-24 13:35:59","");
INSERT INTO notificacoes VALUES("653","sistema","O Usuario demo  fez login na data 2019-11-05 14:17:58","","","2","vista","","2","2019-11-05 14:17:58","");
INSERT INTO notificacoes VALUES("654","sistema","O Usuario demo  fez login na data 2019-11-25 08:49:54","","","2","vista","","2","2019-11-25 08:49:54","");
INSERT INTO notificacoes VALUES("655","sistema","O Usuario demo  fez login na data 2019-11-25 09:07:03","","","2","vista","","2","2019-11-25 09:07:03","");
INSERT INTO notificacoes VALUES("656","sistema","O Usuario demo  fez login na data 2019-11-25 10:29:12","","","2","vista","","2","2019-11-25 10:29:12","");
INSERT INTO notificacoes VALUES("657","sistema","O Usuario demo  fez login na data 2019-11-26 10:46:16","","","2","vista","","2","2019-11-26 10:46:16","");
INSERT INTO notificacoes VALUES("658","sistema","O Usuario demo  fez login na data 2019-11-26 14:41:13","","","2","vista","","2","2019-11-26 14:41:13","");
INSERT INTO notificacoes VALUES("659","sistema","O Usuario demo  fez login na data 2019-11-26 14:45:22","","","2","vista","","2","2019-11-26 14:45:22","");
INSERT INTO notificacoes VALUES("660","sistema","O Usuario demo  fez login na data 2019-11-26 15:03:45","","","2","vista","","2","2019-11-26 15:03:45","");
INSERT INTO notificacoes VALUES("661","sistema","O Usuario demo  fez login na data 2019-11-26 16:23:49","","","2","vista","","2","2019-11-26 16:23:49","");
INSERT INTO notificacoes VALUES("662","sistema","O Usuario demo  fez login na data 2019-11-27 08:11:43","","","2","vista","","2","2019-11-27 08:11:43","");
INSERT INTO notificacoes VALUES("663","sistema","O Usuario demo  fez login na data 2019-11-27 10:30:42","","","2","vista","","2","2019-11-27 10:30:42","");
INSERT INTO notificacoes VALUES("664","sistema","O Usuario demo  fez login na data 2019-11-27 15:19:38","","","2","vista","","2","2019-11-27 15:19:38","");
INSERT INTO notificacoes VALUES("665","sistema","O Usuario demo  fez login na data 2019-11-27 15:41:04","","","2","vista","","2","2019-11-27 15:41:04","");
INSERT INTO notificacoes VALUES("666","sistema","O Usuario demo  fez login na data 2019-11-27 15:45:24","","","2","vista","","2","2019-11-27 15:45:24","");
INSERT INTO notificacoes VALUES("667","sistema","O Usuario demo  fez login na data 2019-11-28 08:30:29","","","2","vista","","2","2019-11-28 08:30:29","");
INSERT INTO notificacoes VALUES("668","sistema","O Usuario demo  fez login na data 2019-11-28 09:33:21","","","2","vista","","2","2019-11-28 09:33:21","");
INSERT INTO notificacoes VALUES("669","sistema","O Usuario demo  fez login na data 2019-11-28 09:33:39","","","2","vista","","2","2019-11-28 09:33:39","");
INSERT INTO notificacoes VALUES("670","sistema","O Usuario demo  fez login na data 2019-11-28 09:36:11","","","2","vista","","2","2019-11-28 09:36:11","");
INSERT INTO notificacoes VALUES("671","sistema","O Usuario demo  fez login na data 2019-11-28 13:53:20","","","2","vista","","2","2019-11-28 13:53:20","");
INSERT INTO notificacoes VALUES("672","sistema","O Usuario demo  fez login na data 2019-11-28 15:17:02","","","2","vista","","2","2019-11-28 15:17:02","");
INSERT INTO notificacoes VALUES("673","sistema","O Usuario demo  fez login na data 2019-11-28 15:38:25","","","2","vista","","2","2019-11-28 15:38:25","");
INSERT INTO notificacoes VALUES("674","sistema","O Usuario demo  fez login na data 2019-11-28 16:22:18","","","2","vista","","2","2019-11-28 16:22:18","");
INSERT INTO notificacoes VALUES("675","sistema","O Usuario demo  fez login na data 2019-11-28 16:34:26","","","2","vista","","2","2019-11-28 16:34:26","");
INSERT INTO notificacoes VALUES("676","sistema","O Usuario demo  fez login na data 2019-11-28 16:56:04","","","2","vista","","2","2019-11-28 16:56:04","");
INSERT INTO notificacoes VALUES("677","sistema","O Usuario demo  fez login na data 2019-11-29 10:05:15","","","2","vista","","2","2019-11-29 10:05:15","");
INSERT INTO notificacoes VALUES("678","sistema","O Usuario demo  fez login na data 2019-11-29 10:31:15","","","2","vista","","2","2019-11-29 10:31:15","");
INSERT INTO notificacoes VALUES("679","sistema","O Usuario demo  fez login na data 2019-11-29 10:34:03","","","2","vista","","2","2019-11-29 10:34:03","");
INSERT INTO notificacoes VALUES("680","sistema","O Usuario demo  fez login na data 2019-11-29 14:42:14","","","2","vista","","2","2019-11-29 14:42:14","");
INSERT INTO notificacoes VALUES("681","sistema","O Usuario demo  fez login na data 2019-11-29 14:42:19","","","2","vista","","2","2019-11-29 14:42:19","");
INSERT INTO notificacoes VALUES("682","sistema","O Usuario demo  fez login na data 2019-12-02 08:41:44","","","2","vista","","2","2019-12-02 08:41:44","");
INSERT INTO notificacoes VALUES("683","sistema","O Usuario demo  fez login na data 2019-12-02 09:00:26","","","2","vista","","2","2019-12-02 09:00:26","");
INSERT INTO notificacoes VALUES("684","sistema","O Usuario demo  fez login na data 2019-12-02 11:10:30","","","2","vista","","2","2019-12-02 11:10:30","");
INSERT INTO notificacoes VALUES("685","sistema","O Usuario demo  fez login na data 2019-12-02 14:31:54","","","2","vista","","2","2019-12-02 14:31:54","");
INSERT INTO notificacoes VALUES("686","sistema","O Usuario demo  fez login na data 2019-12-02 16:06:25","","","2","vista","","2","2019-12-02 16:06:25","");
INSERT INTO notificacoes VALUES("687","sistema","O Usuario demo  fez login na data 2019-12-03 08:17:35","","","2","vista","","2","2019-12-03 08:17:35","");
INSERT INTO notificacoes VALUES("688","sistema","O Usuario demo  fez login na data 2019-12-03 09:08:48","","","2","vista","","2","2019-12-03 09:08:48","");
INSERT INTO notificacoes VALUES("689","sistema","O Usuario demo  fez login na data 2019-12-03 09:10:28","","","2","vista","","2","2019-12-03 09:10:28","");
INSERT INTO notificacoes VALUES("690","sistema","O Usuario demo  fez login na data 2019-12-03 09:10:31","","","2","vista","","2","2019-12-03 09:10:31","");
INSERT INTO notificacoes VALUES("691","sistema","O Usuario demo  fez login na data 2019-12-03 10:28:02","","","2","vista","","2","2019-12-03 10:28:02","");
INSERT INTO notificacoes VALUES("692","sistema","O Usuario demo  fez login na data 2019-12-03 14:05:53","","","2","vista","","2","2019-12-03 14:05:53","");
INSERT INTO notificacoes VALUES("693","sistema","O Usuario demo  fez login na data 2019-12-03 14:08:44","","","2","vista","","2","2019-12-03 14:08:44","");
INSERT INTO notificacoes VALUES("694","sistema","O Usuario demo  fez login na data 2019-12-03 14:27:50","","","2","vista","","2","2019-12-03 14:27:50","");
INSERT INTO notificacoes VALUES("695","sistema","O Usuario demo  fez login na data 2019-12-04 08:16:01","","","2","vista","","2","2019-12-04 08:16:01","");
INSERT INTO notificacoes VALUES("696","sistema","O Usuario demo  fez login na data 2019-12-04 10:58:59","","","2","vista","","2","2019-12-04 10:58:59","");
INSERT INTO notificacoes VALUES("697","sistema","O Usuario demo  fez login na data 2019-12-04 11:03:00","","","2","vista","","2","2019-12-04 11:03:00","");
INSERT INTO notificacoes VALUES("698","sistema","O Usuario demo  fez login na data 2019-12-04 11:39:20","","","2","vista","","2","2019-12-04 11:39:20","");
INSERT INTO notificacoes VALUES("699","sistema","O Usuario demo  fez login na data 2019-12-04 14:01:26","","","2","vista","","2","2019-12-04 14:01:26","");
INSERT INTO notificacoes VALUES("700","sistema","O Usuario demo  fez login na data 2019-12-04 14:03:18","","","2","vista","","2","2019-12-04 14:03:18","");
INSERT INTO notificacoes VALUES("701","sistema","O Usuario demo  fez login na data 2019-12-04 14:39:14","","","2","vista","","2","2019-12-04 14:39:14","");
INSERT INTO notificacoes VALUES("702","sistema","O Usuario demo  fez login na data 2019-12-04 15:40:35","","","2","vista","","2","2019-12-04 15:40:35","");
INSERT INTO notificacoes VALUES("703","sistema","O Usuario demo  fez login na data 2019-12-04 15:44:22","","","2","vista","","2","2019-12-04 15:44:22","");
INSERT INTO notificacoes VALUES("704","sistema","O Usuario demo  fez login na data 2019-12-05 08:30:33","","","2","vista","","2","2019-12-05 08:30:33","");
INSERT INTO notificacoes VALUES("705","sistema","O Usuario demo  fez login na data 2019-12-05 08:34:01","","","2","vista","","2","2019-12-05 08:34:01","");
INSERT INTO notificacoes VALUES("706","sistema","O Usuario demo  fez login na data 2019-12-05 11:41:07","","","2","vista","","2","2019-12-05 11:41:07","");
INSERT INTO notificacoes VALUES("707","sistema","O Usuario demo  fez login na data 2019-12-05 11:57:05","","","2","vista","","2","2019-12-05 11:57:05","");
INSERT INTO notificacoes VALUES("708","sistema","O Usuario demo  fez login na data 2019-12-05 12:01:47","","","2","vista","","2","2019-12-05 12:01:47","");
INSERT INTO notificacoes VALUES("709","sistema","O Usuario demo  fez login na data 2019-12-05 12:03:52","","","2","vista","","2","2019-12-05 12:03:52","");
INSERT INTO notificacoes VALUES("710","sistema","O Usuario demo  fez login na data 2019-12-05 12:05:31","","","2","vista","","2","2019-12-05 12:05:31","");
INSERT INTO notificacoes VALUES("711","sistema","O Usuario demo  fez login na data 2019-12-05 12:11:49","","","2","vista","","2","2019-12-05 12:11:49","");
INSERT INTO notificacoes VALUES("712","sistema","O Usuario demo  fez login na data 2019-12-06 10:02:24","","","2","vista","","2","2019-12-06 10:02:24","");
INSERT INTO notificacoes VALUES("713","sistema","O Usuario demo  fez login na data 2019-12-06 10:08:31","","","2","vista","","2","2019-12-06 10:08:31","");
INSERT INTO notificacoes VALUES("714","sistema","O Usuario demo  fez login na data 2019-12-06 10:18:48","","","2","vista","","2","2019-12-06 10:18:48","");
INSERT INTO notificacoes VALUES("715","sistema","O Usuario NC Software House - NcSoftware  fez login na data 2019-12-06 10:39:24","","","23","vista","","23","2019-12-06 10:39:24","");
INSERT INTO notificacoes VALUES("716","sistema","O Usuario NC Software House - NcSoftware  fez login na data 2019-12-06 10:40:08","","","23","vista","","23","2019-12-06 10:40:08","");
INSERT INTO notificacoes VALUES("717","sistema","O Usuario demo  fez login na data 2019-12-06 10:42:08","","","2","vista","","2","2019-12-06 10:42:08","");
INSERT INTO notificacoes VALUES("718","sistema","O Usuario demo  fez login na data 2019-12-06 11:17:29","","","2","vista","","2","2019-12-06 11:17:29","");
INSERT INTO notificacoes VALUES("719","sistema","O Usuario demo  fez login na data 2019-12-06 11:39:13","","","2","vista","","2","2019-12-06 11:39:13","");
INSERT INTO notificacoes VALUES("720","sistema","O Usuario demo  fez login na data 2019-12-06 14:12:56","","","2","vista","","2","2019-12-06 14:12:56","");
INSERT INTO notificacoes VALUES("721","sistema","O Usuario demo  fez login na data 2019-12-06 15:08:03","","","2","vista","","2","2019-12-06 15:08:03","");
INSERT INTO notificacoes VALUES("722","sistema","O Usuario demo  fez login na data 2019-12-06 15:08:45","","","2","vista","","2","2019-12-06 15:08:45","");
INSERT INTO notificacoes VALUES("723","sistema","O Usuario demo  fez login na data 2019-12-06 16:08:24","","","2","vista","","2","2019-12-06 16:08:24","");
INSERT INTO notificacoes VALUES("724","sistema","O Usuario demo  fez login na data 2019-12-09 10:13:52","","","2","vista","","2","2019-12-09 10:13:52","");
INSERT INTO notificacoes VALUES("725","sistema","O Usuario demo  fez login na data 2019-12-09 11:08:08","","","2","vista","","2","2019-12-09 11:08:08","");
INSERT INTO notificacoes VALUES("726","sistema","O Usuario demo  fez login na data 2019-12-09 11:08:24","","","2","vista","","2","2019-12-09 11:08:24","");
INSERT INTO notificacoes VALUES("727","sistema","O Usuario demo  fez login na data 2019-12-09 11:14:35","","","2","vista","","2","2019-12-09 11:14:35","");
INSERT INTO notificacoes VALUES("728","sistema","O Usuario demo  fez login na data 2019-12-09 15:35:21","","","2","vista","","2","2019-12-09 15:35:21","");
INSERT INTO notificacoes VALUES("729","sistema","O Usuario demo  fez login na data 2019-12-09 16:28:58","","","2","vista","","2","2019-12-09 16:28:58","");
INSERT INTO notificacoes VALUES("730","sistema","O Usuario demo  fez login na data 2019-12-10 08:40:19","","","2","vista","","2","2019-12-10 08:40:19","");
INSERT INTO notificacoes VALUES("731","sistema","O Usuario demo  fez login na data 2019-12-10 09:00:56","","","2","vista","","2","2019-12-10 09:00:56","");
INSERT INTO notificacoes VALUES("732","sistema","O Usuario demo  fez login na data 2019-12-10 10:20:59","","","2","vista","","2","2019-12-10 10:20:59","");
INSERT INTO notificacoes VALUES("733","sistema","O Usuario demo  fez login na data 2019-12-10 13:56:36","","","2","vista","","2","2019-12-10 13:56:36","");
INSERT INTO notificacoes VALUES("734","sistema","O Usuario demo  fez login na data 2019-12-10 15:02:38","","","2","vista","","2","2019-12-10 15:02:38","");
INSERT INTO notificacoes VALUES("735","sistema","O Usuario demo  fez login na data 2019-12-10 16:35:38","","","2","vista","","2","2019-12-10 16:35:38","");
INSERT INTO notificacoes VALUES("736","sistema","O Usuario demo  fez login na data 2019-12-11 08:48:40","","","2","vista","","2","2019-12-11 08:48:40","");
INSERT INTO notificacoes VALUES("737","sistema","O Usuario demo  fez login na data 2019-12-16 08:36:32","","","2","vista","","2","2019-12-16 08:36:32","");
INSERT INTO notificacoes VALUES("738","sistema","O Usuario demo  fez login na data 2019-12-16 08:40:51","","","2","vista","","2","2019-12-16 08:40:51","");
INSERT INTO notificacoes VALUES("739","sistema","O Usuario demo  fez login na data 2019-12-16 08:57:02","","","2","vista","","2","2019-12-16 08:57:02","");
INSERT INTO notificacoes VALUES("740","sistema","O Usuario demo  fez login na data 2019-12-16 09:08:36","","","2","vista","","2","2019-12-16 09:08:36","");
INSERT INTO notificacoes VALUES("741","sistema","O Usuario demo  fez login na data 2019-12-16 09:08:51","","","2","vista","","2","2019-12-16 09:08:51","");
INSERT INTO notificacoes VALUES("742","sistema","O Usuario demo  fez login na data 2019-12-16 09:39:33","","","2","vista","","2","2019-12-16 09:39:33","");
INSERT INTO notificacoes VALUES("743","sistema","O Usuario demo  fez login na data 2019-12-16 13:40:45","","","2","vista","","2","2019-12-16 13:40:45","");
INSERT INTO notificacoes VALUES("744","sistema","O Usuario demo  fez login na data 2019-12-16 13:52:05","","","2","vista","","2","2019-12-16 13:52:05","");
INSERT INTO notificacoes VALUES("745","sistema","O Usuario demo  fez login na data 2019-12-16 13:56:13","","","2","vista","","2","2019-12-16 13:56:13","");
INSERT INTO notificacoes VALUES("746","sistema","O Usuario demo  fez login na data 2019-12-16 14:07:23","","","2","vista","","2","2019-12-16 14:07:23","");
INSERT INTO notificacoes VALUES("747","sistema","O Usuario demo  fez login na data 2019-12-16 14:54:44","","","2","vista","","2","2019-12-16 14:54:44","");
INSERT INTO notificacoes VALUES("748","sistema","O Usuario demo  fez login na data 2019-12-16 15:00:17","","","2","vista","","2","2019-12-16 15:00:17","");
INSERT INTO notificacoes VALUES("749","sistema","O Usuario demo  fez login na data 2019-12-16 15:08:54","","","2","vista","","2","2019-12-16 15:08:54","");
INSERT INTO notificacoes VALUES("750","sistema","O Usuario demo  fez login na data 2019-12-16 15:11:51","","","2","vista","","2","2019-12-16 15:11:51","");
INSERT INTO notificacoes VALUES("751","sistema","O Usuario demo  fez login na data 2019-12-16 15:14:13","","","2","vista","","2","2019-12-16 15:14:13","");
INSERT INTO notificacoes VALUES("752","sistema","O Usuario demo  fez login na data 2019-12-16 16:07:23","","","2","vista","","2","2019-12-16 16:07:23","");
INSERT INTO notificacoes VALUES("753","sistema","O Usuario demo  fez login na data 2019-12-16 16:41:29","","","2","vista","","2","2019-12-16 16:41:29","");
INSERT INTO notificacoes VALUES("754","sistema","O Usuario demo  fez login na data 2019-12-16 17:35:31","","","2","vista","","2","2019-12-16 17:35:31","");
INSERT INTO notificacoes VALUES("755","sistema","O Usuario demo  fez login na data 2019-12-16 17:45:30","","","2","vista","","2","2019-12-16 17:45:30","");
INSERT INTO notificacoes VALUES("756","sistema","O Usuario demo  fez login na data 2019-12-17 09:26:38","","","2","vista","","2","2019-12-17 09:26:38","");
INSERT INTO notificacoes VALUES("757","sistema","O Usuario demo  fez login na data 2019-12-17 09:28:35","","","2","vista","","2","2019-12-17 09:28:35","");
INSERT INTO notificacoes VALUES("758","sistema","O Usuario demo  fez login na data 2019-12-17 09:30:53","","","2","vista","","2","2019-12-17 09:30:53","");
INSERT INTO notificacoes VALUES("759","sistema","O Usuario demo  fez login na data 2019-12-17 09:50:52","","","2","vista","","2","2019-12-17 09:50:52","");
INSERT INTO notificacoes VALUES("760","sistema","O Usuario demo  fez login na data 2019-12-17 09:57:50","","","2","vista","","2","2019-12-17 09:57:50","");
INSERT INTO notificacoes VALUES("761","sistema","O Usuario demo  fez login na data 2019-12-17 10:09:20","","","2","vista","","2","2019-12-17 10:09:20","");
INSERT INTO notificacoes VALUES("762","sistema","O Usuario demo  fez login na data 2019-12-17 10:12:00","","","2","vista","","2","2019-12-17 10:12:00","");
INSERT INTO notificacoes VALUES("763","sistema","O Usuario demo  fez login na data 2019-12-17 10:45:11","","","2","vista","","2","2019-12-17 10:45:11","");
INSERT INTO notificacoes VALUES("764","sistema","O Usuario demo  fez login na data 2019-12-17 11:34:58","","","2","vista","","2","2019-12-17 11:34:58","");
INSERT INTO notificacoes VALUES("765","sistema","O Usuario demo  fez login na data 2019-12-17 11:56:46","","","2","vista","","2","2019-12-17 11:56:46","");
INSERT INTO notificacoes VALUES("766","sistema","O Usuario demo  fez login na data 2019-12-17 17:50:01","","","2","vista","","2","2019-12-17 17:50:01","");
INSERT INTO notificacoes VALUES("767","sistema","O Usuario demo  fez login na data 2019-12-17 18:40:00","","","2","vista","","2","2019-12-17 18:40:00","");
INSERT INTO notificacoes VALUES("768","sistema","O Usuario demo  fez login na data 2019-12-20 08:44:46","","","2","vista","","2","2019-12-20 08:44:46","");
INSERT INTO notificacoes VALUES("769","sistema","O Usuario demo  fez login na data 2019-12-20 08:52:22","","","2","vista","","2","2019-12-20 08:52:22","");
INSERT INTO notificacoes VALUES("770","sistema","O Usuario demo  fez login na data 2019-12-20 09:06:17","","","2","vista","","2","2019-12-20 09:06:17","");
INSERT INTO notificacoes VALUES("771","sistema","O Usuario demo  fez login na data 2019-12-20 09:12:32","","","2","vista","","2","2019-12-20 09:12:32","");
INSERT INTO notificacoes VALUES("772","sistema","O Usuario demo  fez login na data 2019-12-20 10:04:04","","","2","vista","","2","2019-12-20 10:04:04","");
INSERT INTO notificacoes VALUES("773","sistema","O Usuario demo  fez login na data 2019-12-20 10:12:40","","","2","vista","","2","2019-12-20 10:12:40","");
INSERT INTO notificacoes VALUES("774","sistema","O Usuario demo  fez login na data 2019-12-20 10:21:30","","","2","vista","","2","2019-12-20 10:21:30","");
INSERT INTO notificacoes VALUES("775","sistema","O Usuario demo  fez login na data 2019-12-20 11:46:33","","","2","vista","","2","2019-12-20 11:46:33","");
INSERT INTO notificacoes VALUES("776","sistema","O Usuario demo  fez login na data 2019-12-20 11:53:52","","","2","vista","","2","2019-12-20 11:53:52","");
INSERT INTO notificacoes VALUES("777","sistema","O Usuario demo  fez login na data 2019-12-20 14:31:36","","","2","vista","","2","2019-12-20 14:31:36","");
INSERT INTO notificacoes VALUES("778","sistema","O Usuario demo  fez login na data 2019-12-20 15:26:40","","","2","vista","","2","2019-12-20 15:26:40","");
INSERT INTO notificacoes VALUES("779","sistema","O Usuario demo  fez login na data 2019-12-20 15:44:40","","","2","vista","","2","2019-12-20 15:44:40","");
INSERT INTO notificacoes VALUES("780","sistema","O Usuario demo  fez login na data 2019-12-20 15:57:02","","","2","vista","","2","2019-12-20 15:57:02","");
INSERT INTO notificacoes VALUES("781","sistema","O Usuario demo  fez login na data 2019-12-20 16:15:56","","","2","vista","","2","2019-12-20 16:15:56","");
INSERT INTO notificacoes VALUES("782","sistema","O Usuario demo  fez login na data 2019-12-20 16:22:28","","","2","vista","","2","2019-12-20 16:22:28","");
INSERT INTO notificacoes VALUES("783","sistema","O Usuario demo  fez login na data 2019-12-20 16:54:44","","","2","vista","","2","2019-12-20 16:54:44","");
INSERT INTO notificacoes VALUES("784","sistema","O Usuario demo  fez login na data 2019-12-23 10:48:08","","","2","vista","","2","2019-12-23 10:48:08","");
INSERT INTO notificacoes VALUES("785","sistema","O Usuario demo  fez login na data 2019-12-23 11:28:02","","","2","vista","","2","2019-12-23 11:28:02","");
INSERT INTO notificacoes VALUES("786","sistema","O Usuario demo  fez login na data 2019-12-23 11:30:20","","","2","vista","","2","2019-12-23 11:30:20","");
INSERT INTO notificacoes VALUES("787","sistema","O Usuario demo  fez login na data 2019-12-24 09:18:25","","","2","vista","","2","2019-12-24 09:18:25","");
INSERT INTO notificacoes VALUES("788","sistema","O Usuario demo  fez login na data 2019-12-24 11:18:57","","","2","vista","","2","2019-12-24 11:18:57","");
INSERT INTO notificacoes VALUES("789","sistema","O Usuario demo  fez login na data 2019-12-24 11:37:58","","","2","vista","","2","2019-12-24 11:37:58","");
INSERT INTO notificacoes VALUES("790","sistema","O Usuario demo  fez login na data 2019-12-24 11:43:00","","","2","vista","","2","2019-12-24 11:43:00","");
INSERT INTO notificacoes VALUES("791","sistema","O Usuario demo  fez login na data 2019-12-24 12:11:30","","","2","vista","","2","2019-12-24 12:11:30","");
INSERT INTO notificacoes VALUES("792","sistema","O Usuario demo  fez login na data 2019-12-24 13:39:54","","","2","vista","","2","2019-12-24 13:39:54","");
INSERT INTO notificacoes VALUES("793","sistema","O Usuario demo  fez login na data 2019-12-24 14:11:38","","","2","vista","","2","2019-12-24 14:11:38","");
INSERT INTO notificacoes VALUES("794","sistema","O Usuario demo  fez login na data 2019-12-24 14:23:21","","","2","vista","","2","2019-12-24 14:23:21","");
INSERT INTO notificacoes VALUES("795","sistema","O Usuario demo  fez login na data 2019-12-24 14:36:34","","","2","vista","","2","2019-12-24 14:36:34","");
INSERT INTO notificacoes VALUES("796","sistema","O Usuario demo  fez login na data 2019-12-24 15:24:09","","","2","vista","","2","2019-12-24 15:24:09","");
INSERT INTO notificacoes VALUES("797","sistema","O Usuario demo  fez login na data 2019-12-24 15:44:29","","","2","vista","","2","2019-12-24 15:44:29","");
INSERT INTO notificacoes VALUES("798","sistema","O Usuario demo  fez login na data 2019-12-26 08:31:05","","","2","vista","","2","2019-12-26 08:31:05","");
INSERT INTO notificacoes VALUES("799","sistema","O Usuario demo  fez login na data 2019-12-26 08:41:56","","","2","vista","","2","2019-12-26 08:41:56","");
INSERT INTO notificacoes VALUES("800","sistema","O Usuario demo  fez login na data 2019-12-26 09:19:49","","","2","vista","","2","2019-12-26 09:19:49","");
INSERT INTO notificacoes VALUES("801","sistema","O Usuario demo  fez login na data 2019-12-26 14:07:22","","","2","vista","","2","2019-12-26 14:07:22","");
INSERT INTO notificacoes VALUES("802","sistema","O Usuario demo  fez login na data 2019-12-27 08:31:54","","","2","vista","","2","2019-12-27 08:31:54","");
INSERT INTO notificacoes VALUES("803","sistema","O Usuario demo  fez login na data 2019-12-27 09:25:40","","","2","vista","","2","2019-12-27 09:25:40","");
INSERT INTO notificacoes VALUES("804","sistema","O Usuario demo  fez login na data 2019-12-27 10:11:45","","","2","vista","","2","2019-12-27 10:11:45","");
INSERT INTO notificacoes VALUES("805","sistema","O Usuario demo  fez login na data 2019-12-27 10:16:45","","","2","vista","","2","2019-12-27 10:16:45","");
INSERT INTO notificacoes VALUES("806","sistema","O Usuario demo  fez login na data 2019-12-27 10:56:27","","","2","vista","","2","2019-12-27 10:56:27","");
INSERT INTO notificacoes VALUES("807","sistema","O Usuario demo  fez login na data 2020-01-02 20:46:58","","","2","vista","","2","2020-01-02 20:46:58","");
INSERT INTO notificacoes VALUES("808","sistema","O Usuario demo  fez login na data 2020-01-06 11:07:47","","","2","vista","","2","2020-01-06 11:07:47","");
INSERT INTO notificacoes VALUES("809","sistema","O Usuario demo  fez login na data 2020-01-06 11:08:45","","","2","vista","","2","2020-01-06 11:08:45","");
INSERT INTO notificacoes VALUES("810","sistema","O Usuario demo  fez login na data 2020-01-06 13:44:17","","","2","vista","","2","2020-01-06 13:44:17","");
INSERT INTO notificacoes VALUES("811","sistema","O Usuario demo  fez login na data 2020-01-06 16:24:32","","","2","vista","","2","2020-01-06 16:24:32","");
INSERT INTO notificacoes VALUES("812","sistema","O Usuario demo  fez login na data 2020-01-06 16:24:45","","","2","vista","","2","2020-01-06 16:24:45","");
INSERT INTO notificacoes VALUES("813","sistema","O Usuario demo  fez login na data 2020-01-07 14:01:11","","","2","vista","","2","2020-01-07 14:01:11","");
INSERT INTO notificacoes VALUES("814","sistema","O Usuario demo  fez login na data 2020-01-07 15:03:16","","","2","vista","","2","2020-01-07 15:03:16","");
INSERT INTO notificacoes VALUES("815","sistema","O Usuario demo  fez login na data 2020-01-08 11:05:44","","","2","vista","","2","2020-01-08 11:05:44","");
INSERT INTO notificacoes VALUES("816","sistema","O Usuario demo  fez login na data 2020-01-10 10:07:24","","","2","vista","","2","2020-01-10 10:07:24","");
INSERT INTO notificacoes VALUES("817","sistema","O Usuario demo  fez login na data 2020-01-10 11:28:16","","","2","vista","","2","2020-01-10 11:28:16","");
INSERT INTO notificacoes VALUES("818","sistema","O Usuario demo  fez login na data 2020-01-13 11:43:45","","","2","vista","","2","2020-01-13 11:43:45","");
INSERT INTO notificacoes VALUES("819","sistema","O Usuario demo  fez login na data 2020-01-13 15:27:53","","","2","vista","","2","2020-01-13 15:27:53","");
INSERT INTO notificacoes VALUES("820","sistema","O Usuario demo  fez login na data 2020-01-13 15:29:29","","","2","vista","","2","2020-01-13 15:29:29","");
INSERT INTO notificacoes VALUES("821","sistema","O Usuario demo  fez login na data 2020-01-13 15:42:15","","","2","vista","","2","2020-01-13 15:42:15","");
INSERT INTO notificacoes VALUES("822","sistema","O Usuario demo  fez login na data 2020-01-13 19:28:24","","","2","vista","","2","2020-01-13 19:28:24","");
INSERT INTO notificacoes VALUES("823","sistema","O Usuario demo  fez login na data 2020-01-13 19:29:52","","","2","vista","","2","2020-01-13 19:29:52","");
INSERT INTO notificacoes VALUES("824","sistema","O Usuario demo  fez login na data 2020-01-13 20:15:02","","","2","vista","","2","2020-01-13 20:15:02","");
INSERT INTO notificacoes VALUES("825","sistema","O Usuario demo  fez login na data 2020-01-14 09:38:15","","","2","vista","","2","2020-01-14 09:38:15","");
INSERT INTO notificacoes VALUES("826","sistema","O Usuario demo  fez login na data 2020-01-14 11:14:45","","","2","vista","","2","2020-01-14 11:14:45","");
INSERT INTO notificacoes VALUES("827","sistema","O Usuario demo  fez login na data 2020-01-14 11:24:01","","","2","vista","","2","2020-01-14 11:24:01","");
INSERT INTO notificacoes VALUES("828","sistema","O Usuario demo  fez login na data 2020-01-14 13:32:25","","","2","vista","","2","2020-01-14 13:32:25","");
INSERT INTO notificacoes VALUES("829","sistema","O Usuario demo  fez login na data 2020-01-16 08:56:27","","","2","vista","","2","2020-01-16 08:56:27","");
INSERT INTO notificacoes VALUES("830","sistema","O Usuario demo  fez login na data 2020-01-16 11:01:45","","","2","vista","","2","2020-01-16 11:01:45","");
INSERT INTO notificacoes VALUES("831","sistema","O Usuario demo  fez login na data 2020-01-16 11:13:23","","","2","vista","","2","2020-01-16 11:13:23","");
INSERT INTO notificacoes VALUES("832","sistema","O Usuario demo  fez login na data 2020-01-16 11:53:05","","","2","vista","","2","2020-01-16 11:53:05","");
INSERT INTO notificacoes VALUES("833","sistema","O Usuario demo  fez login na data 2020-01-16 15:29:18","","","2","vista","","2","2020-01-16 15:29:18","");
INSERT INTO notificacoes VALUES("834","sistema","O Usuario demo  fez login na data 2020-01-20 11:14:38","","","2","vista","","2","2020-01-20 21:14:38","");
INSERT INTO notificacoes VALUES("835","sistema","O Usuario demo  fez login na data 2020-01-20 15:00:02","","","2","vista","","2","2020-01-21 01:00:02","");
INSERT INTO notificacoes VALUES("836","sistema","O Usuario demo  fez login na data 2020-01-20 15:09:06","","","2","vista","","2","2020-01-21 01:09:06","");
INSERT INTO notificacoes VALUES("837","sistema","O Usuario demo  fez login na data 2020-01-20 18:38:25","","","2","vista","","2","2020-01-21 04:38:25","");
INSERT INTO notificacoes VALUES("838","sistema","O Usuario demo  fez login na data 2020-01-21 09:33:02","","","2","vista","","2","2020-01-21 09:33:02","");
INSERT INTO notificacoes VALUES("839","sistema","O Usuario demo  fez login na data 2020-01-21 15:18:43","","","2","vista","","2","2020-01-21 15:18:43","");
INSERT INTO notificacoes VALUES("840","sistema","O Usuario demo  fez login na data 2020-01-21 16:46:26","","","2","vista","","2","2020-01-21 16:46:26","");
INSERT INTO notificacoes VALUES("841","sistema","O Usuario demo  fez login na data 2020-01-21 20:40:39","","","2","vista","","2","2020-01-21 20:40:39","");
INSERT INTO notificacoes VALUES("842","sistema","O Usuario demo  fez login na data 2020-01-21 21:52:42","","","2","vista","","2","2020-01-21 21:52:42","");
INSERT INTO notificacoes VALUES("843","sistema","O Usuario demo  fez login na data 2020-01-21 22:26:33","","","2","vista","","2","2020-01-21 22:26:33","");
INSERT INTO notificacoes VALUES("844","sistema","O Usuario demo  fez login na data 2020-01-22 11:48:48","","","2","vista","","2","2020-01-22 11:48:48","");
INSERT INTO notificacoes VALUES("845","sistema","O Usuario demo  fez login na data 2020-01-23 07:22:51","","","2","vista","","2","2020-01-23 07:22:51","");
INSERT INTO notificacoes VALUES("846","sistema","O Usuario NC Software House - NcSoftware  fez login na data 2020-01-23 07:24:07","","","23","vista","","23","2020-01-23 07:24:07","");
INSERT INTO notificacoes VALUES("847","sistema","O Usuario demo  fez login na data 2020-01-23 07:24:21","","","2","vista","","2","2020-01-23 07:24:21","");
INSERT INTO notificacoes VALUES("848","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:25:33","","","27","vista","","27","2020-01-23 07:25:33","");
INSERT INTO notificacoes VALUES("849","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:25:49","","","27","vista","","27","2020-01-23 07:25:49","");
INSERT INTO notificacoes VALUES("850","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:28:51","","","27","vista","","27","2020-01-23 07:28:51","");
INSERT INTO notificacoes VALUES("851","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:29:34","","","27","vista","","27","2020-01-23 07:29:34","");
INSERT INTO notificacoes VALUES("852","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:30:21","","","27","vista","","27","2020-01-23 07:30:21","");
INSERT INTO notificacoes VALUES("853","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:32:32","","","27","vista","","27","2020-01-23 07:32:32","");
INSERT INTO notificacoes VALUES("854","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:34:39","","","27","vista","","27","2020-01-23 07:34:39","");
INSERT INTO notificacoes VALUES("855","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:34:59","","","27","vista","","27","2020-01-23 07:34:59","");
INSERT INTO notificacoes VALUES("856","sistema","O Usuario demo  fez login na data 2020-01-23 07:35:11","","","2","vista","","2","2020-01-23 07:35:11","");
INSERT INTO notificacoes VALUES("857","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:35:42","","","27","vista","","27","2020-01-23 07:35:42","");
INSERT INTO notificacoes VALUES("858","sistema","O Usuario demo  fez login na data 2020-01-23 07:35:53","","","2","vista","","2","2020-01-23 07:35:53","");
INSERT INTO notificacoes VALUES("859","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:36:22","","","27","vista","","27","2020-01-23 07:36:22","");
INSERT INTO notificacoes VALUES("860","sistema","O Usuario NC Software House  fez login na data 2020-01-23 07:36:52","","","27","vista","","27","2020-01-23 07:36:52","");
INSERT INTO notificacoes VALUES("861","sistema","O Usuario demo  fez login na data 2020-01-23 07:37:03","","","2","vista","","2","2020-01-23 07:37:03","");
INSERT INTO notificacoes VALUES("862","sistema","O Usuario demo  fez login na data 2020-01-23 12:43:18","","","2","vista","","2","2020-01-23 12:43:18","");
INSERT INTO notificacoes VALUES("863","sistema","O Usuario demo  fez login na data 2020-01-23 15:18:37","","","2","vista","","2","2020-01-23 15:18:37","");
INSERT INTO notificacoes VALUES("864","sistema","O Usuario demo  fez login na data 2020-01-24 12:56:28","","","2","vista","","2","2020-01-24 12:56:28","");
INSERT INTO notificacoes VALUES("865","sistema","O Usuario demo  fez login na data 2020-01-24 12:58:32","","","2","vista","","2","2020-01-24 12:58:32","");
INSERT INTO notificacoes VALUES("866","sistema","O Usuario demo  fez login na data 2020-01-24 12:59:01","","","2","vista","","2","2020-01-24 12:59:01","");
INSERT INTO notificacoes VALUES("867","sistema","O Usuario demo  fez login na data 2020-01-27 15:24:13","","","2","vista","","2","2020-01-27 15:24:13","");
INSERT INTO notificacoes VALUES("868","sistema","O Usuario demo  fez login na data 2020-01-28 07:35:56","","","2","vista","","2","2020-01-28 07:35:56","");
INSERT INTO notificacoes VALUES("869","sistema","O Usuario demo  fez login na data 2020-01-28 08:00:14","","","2","vista","","2","2020-01-28 08:00:14","");
INSERT INTO notificacoes VALUES("870","sistema","O Usuario demo  fez login na data 2020-01-28 09:33:47","","","2","vista","","2","2020-01-28 09:33:47","");
INSERT INTO notificacoes VALUES("871","sistema","O Usuario demo  fez login na data 2020-01-28 10:55:49","","","2","vista","","2","2020-01-28 10:55:49","");
INSERT INTO notificacoes VALUES("872","sistema","O Usuario demo  fez login na data 2020-01-28 10:58:15","","","2","vista","","2","2020-01-28 10:58:15","");
INSERT INTO notificacoes VALUES("873","sistema","O Usuario demo  fez login na data 2020-01-28 13:12:44","","","2","vista","","2","2020-01-28 13:12:44","");
INSERT INTO notificacoes VALUES("874","sistema","O Usuario demo  fez login na data 2020-01-28 16:41:53","","","2","vista","","2","2020-01-28 16:41:53","");
INSERT INTO notificacoes VALUES("875","sistema","O Usuario demo  fez login na data 2020-01-28 16:43:09","","","2","vista","","2","2020-01-28 16:43:09","");
INSERT INTO notificacoes VALUES("876","sistema","O Usuario demo  fez login na data 2020-01-29 08:27:34","","","2","vista","","2","2020-01-29 08:27:34","");
INSERT INTO notificacoes VALUES("877","sistema","O Usuario demo  fez login na data 2020-01-29 09:30:23","","","2","vista","","2","2020-01-29 09:30:23","");
INSERT INTO notificacoes VALUES("878","sistema","O Usuario demo  fez login na data 2020-01-29 11:21:51","","","2","vista","","2","2020-01-29 11:21:51","");
INSERT INTO notificacoes VALUES("879","sistema","O Usuario NC Software House  fez login na data 2020-01-29 11:49:51","","","28","vista","","28","2020-01-29 11:49:51","");
INSERT INTO notificacoes VALUES("880","sistema","O Usuario NC Software House  fez login na data 2020-01-29 11:52:24","","","28","vista","","28","2020-01-29 11:52:24","");
INSERT INTO notificacoes VALUES("881","sistema","O Usuario demo  fez login na data 2020-01-29 11:59:47","","","2","vista","","2","2020-01-29 11:59:47","");
INSERT INTO notificacoes VALUES("882","sistema","O Usuario NC Software House  fez login na data 2020-01-29 12:05:10","","","28","vista","","28","2020-01-29 12:05:10","");
INSERT INTO notificacoes VALUES("883","sistema","O Usuario demo  fez login na data 2020-01-29 12:12:47","","","2","vista","","2","2020-01-29 12:12:47","");
INSERT INTO notificacoes VALUES("884","sistema","O Usuario NC Software House  fez login na data 2020-01-29 12:13:13","","","27","vista","","27","2020-01-29 12:13:13","");
INSERT INTO notificacoes VALUES("885","sistema","O Usuario NC Software House  fez login na data 2020-01-30 09:19:43","","","27","vista","","27","2020-01-30 09:19:43","");
INSERT INTO notificacoes VALUES("886","sistema","O Usuario NC Software House  fez login na data 2020-01-30 09:27:55","","","27","vista","","27","2020-01-30 09:27:55","");
INSERT INTO notificacoes VALUES("887","sistema","O Usuario NC Software House  fez login na data 2020-01-30 09:28:19","","","27","vista","","27","2020-01-30 09:28:19","");
INSERT INTO notificacoes VALUES("888","sistema","O Usuario demo  fez login na data 2020-01-30 09:30:47","","","2","vista","","2","2020-01-30 09:30:47","");
INSERT INTO notificacoes VALUES("889","sistema","O Usuario demo  fez login na data 2020-01-30 09:42:36","","","2","vista","","2","2020-01-30 09:42:36","");
INSERT INTO notificacoes VALUES("890","sistema","O Usuario demo  fez login na data 2020-01-30 15:14:44","","","2","vista","","2","2020-01-30 15:14:44","");
INSERT INTO notificacoes VALUES("891","sistema","O Usuario demo  fez login na data 2020-01-30 16:20:20","","","2","vista","","2","2020-01-30 16:20:20","");
INSERT INTO notificacoes VALUES("892","sistema","O Usuario demo  fez login na data 2020-01-31 09:50:04","","","2","vista","","2","2020-01-31 09:50:04","");
INSERT INTO notificacoes VALUES("893","sistema","O Usuario demo  fez login na data 2020-01-31 14:24:33","","","2","vista","","2","2020-01-31 14:24:33","");
INSERT INTO notificacoes VALUES("894","sistema","O Usuario demo  fez login na data 2020-01-31 15:07:21","","","2","vista","","2","2020-01-31 15:07:21","");
INSERT INTO notificacoes VALUES("895","sistema","O Usuario Campany2  fez login na data 2020-01-31 15:19:54","","","29","vista","","29","2020-01-31 15:19:54","");
INSERT INTO notificacoes VALUES("896","sistema","O Usuario Campany2  fez login na data 2020-01-31 15:23:19","","","29","vista","","29","2020-01-31 15:23:19","");
INSERT INTO notificacoes VALUES("897","sistema","O Usuario Campany2  fez login na data 2020-01-31 15:23:50","","","29","vista","","29","2020-01-31 15:23:50","");
INSERT INTO notificacoes VALUES("898","sistema","O Usuario NC Software House  fez login na data 2020-01-31 16:00:47","","","27","vista","","27","2020-01-31 16:00:47","");
INSERT INTO notificacoes VALUES("899","sistema","O Usuario demo  fez login na data 2020-01-31 16:07:55","","","2","vista","","2","2020-01-31 16:07:55","");
INSERT INTO notificacoes VALUES("900","sistema","O Usuario Campany2  fez login na data 2020-01-31 16:12:49","","","29","vista","","29","2020-01-31 16:12:49","");
INSERT INTO notificacoes VALUES("901","sistema","O Usuario Campany2  fez login na data 2020-01-31 16:13:16","","","29","vista","","29","2020-01-31 16:13:16","");
INSERT INTO notificacoes VALUES("902","sistema","O Usuario demo  fez login na data 2020-01-31 16:15:57","","","2","vista","","2","2020-01-31 16:15:57","");
INSERT INTO notificacoes VALUES("903","sistema","O Usuario demo  fez login na data 2020-01-31 16:35:30","","","2","vista","","2","2020-01-31 16:35:30","");
INSERT INTO notificacoes VALUES("904","sistema","O Usuario demo  fez login na data 2020-02-02 23:33:53","","","2","vista","","2","2020-02-02 23:33:53","");
INSERT INTO notificacoes VALUES("905","sistema","O Usuario demo  fez login na data 2020-02-02 23:35:02","","","2","vista","","2","2020-02-02 23:35:02","");
INSERT INTO notificacoes VALUES("906","sistema","O Usuario NC Software House  fez login na data 2020-02-02 23:35:53","","","28","vista","","28","2020-02-02 23:35:53","");
INSERT INTO notificacoes VALUES("907","sistema","O Usuario demo  fez login na data 2020-02-02 23:36:09","","","2","vista","","2","2020-02-02 23:36:09","");
INSERT INTO notificacoes VALUES("908","sistema","O Usuario demo  fez login na data 2020-02-03 09:04:17","","","2","vista","","2","2020-02-03 09:04:17","");
INSERT INTO notificacoes VALUES("909","sistema","O Usuario demo  fez login na data 2020-02-03 09:27:33","","","2","vista","","2","2020-02-03 09:27:33","");
INSERT INTO notificacoes VALUES("910","sistema","O Usuario demo  fez login na data 2020-02-03 09:44:08","","","2","vista","","2","2020-02-03 09:44:08","");
INSERT INTO notificacoes VALUES("911","sistema","O Usuario demo  fez login na data 2020-02-03 10:08:40","","","2","vista","","2","2020-02-03 10:08:40","");
INSERT INTO notificacoes VALUES("912","sistema","O Usuario demo  fez login na data 2020-02-03 10:22:13","","","2","vista","","2","2020-02-03 10:22:13","");
INSERT INTO notificacoes VALUES("913","sistema","O Usuario demo  fez login na data 2020-02-03 12:04:20","","","2","vista","","2","2020-02-03 12:04:20","");
INSERT INTO notificacoes VALUES("914","sistema","O Usuario demo  fez login na data 2020-02-03 12:06:32","","","2","vista","","2","2020-02-03 12:06:32","");
INSERT INTO notificacoes VALUES("915","sistema","O Usuario demo  fez login na data 2020-02-03 12:19:51","","","2","vista","","2","2020-02-03 12:19:51","");
INSERT INTO notificacoes VALUES("916","sistema","O Usuario demo  fez login na data 2020-02-03 12:21:34","","","2","vista","","2","2020-02-03 12:21:34","");
INSERT INTO notificacoes VALUES("917","sistema","O Usuario demo  fez login na data 2020-02-03 12:34:55","","","2","vista","","2","2020-02-03 12:34:55","");
INSERT INTO notificacoes VALUES("918","sistema","O Usuario demo  fez login na data 2020-02-04 16:21:12","","","2","vista","","2","2020-02-04 16:21:12","");
INSERT INTO notificacoes VALUES("919","sistema","O Usuario demo  fez login na data 2020-02-04 16:39:26","","","2","vista","","2","2020-02-04 16:39:26","");
INSERT INTO notificacoes VALUES("920","sistema","O Usuario demo  fez login na data 2020-02-10 16:42:06","","","2","vista","","2","2020-02-10 16:42:06","");
INSERT INTO notificacoes VALUES("921","sistema","O Usuario demo  fez login na data 2020-02-12 11:44:50","","","2","vista","","2","2020-02-12 11:44:50","");
INSERT INTO notificacoes VALUES("922","sistema","O Usuario demo  fez login na data 2020-02-12 11:52:08","","","2","vista","","2","2020-02-12 11:52:08","");
INSERT INTO notificacoes VALUES("923","sistema","O Usuario NC Software House  fez login na data 2020-02-12 11:53:08","","","27","vista","","27","2020-02-12 11:53:08","");
INSERT INTO notificacoes VALUES("924","sistema","O Usuario demo  fez login na data 2020-02-12 11:55:25","","","2","vista","","2","2020-02-12 11:55:25","");
INSERT INTO notificacoes VALUES("925","sistema","O Usuario demo  fez login na data 2020-02-13 08:37:22","","","2","vista","","2","2020-02-13 08:37:22","");
INSERT INTO notificacoes VALUES("926","sistema","O Usuario demo  fez login na data 2020-02-13 14:59:49","","","2","vista","","2","2020-02-13 14:59:49","");
INSERT INTO notificacoes VALUES("927","sistema","O Usuario demo  fez login na data 2020-02-13 19:26:13","","","2","vista","","2","2020-02-13 19:26:13","");
INSERT INTO notificacoes VALUES("928","sistema","O Usuario demo  fez login na data 2020-02-14 09:57:40","","","2","vista","","2","2020-02-14 09:57:40","");
INSERT INTO notificacoes VALUES("929","sistema","O Usuario demo  fez login na data 2020-02-14 16:10:34","","","2","vista","","2","2020-02-14 16:10:34","");
INSERT INTO notificacoes VALUES("930","sistema","O Usuario demo  fez login na data 2020-02-17 08:13:29","","","2","vista","","2","2020-02-17 08:13:29","");
INSERT INTO notificacoes VALUES("931","sistema","O Usuario demo  fez login na data 2020-02-17 08:26:53","","","2","vista","","2","2020-02-17 08:26:53","");





CREATE TABLE IF NOT EXISTS `ol` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `montante` double DEFAULT NULL,
  `tipo_de_transacao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_transacao` date DEFAULT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conta_bancaria_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `anexos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ol_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `ol_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ol VALUES("23","78888","cash-in","2019-12-20","opening balance","opening balance","32","2","1","1","","","","");
INSERT INTO ol VALUES("24","-1000","cash-out-by-transfer","2019-12-11","transfer-111","transferencia de","32","2","","2","","46","2019-12-20 16:23:49","");
INSERT INTO ol VALUES("25","1000","cash-in-by-transfer","2019-12-11","transfer-111","transferencia de","24","2","","2","","46","2019-12-20 16:23:49","");
INSERT INTO ol VALUES("30","5000","cash-in","2019-12-24","opening balance","opening balance","33","2","1","1","","","","");





CREATE TABLE IF NOT EXISTS `pacote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nr_funcionarios` int(11) DEFAULT NULL,
  `nr_usuarios` int(11) DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'activo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO pacote VALUES("6","Up to 50","50","3","activo");
INSERT INTO pacote VALUES("7","Up to 150","150","3","activo");





CREATE TABLE IF NOT EXISTS `permissao_armazem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `armazem_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grupo_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissao_armazem_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `permissao_armazem_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permissao_armazem VALUES("1","1","1","activo","46","2019-12-02 10:05:00","");





CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permission_role VALUES("1","1");
INSERT INTO permission_role VALUES("2","1");
INSERT INTO permission_role VALUES("3","1");
INSERT INTO permission_role VALUES("4","1");
INSERT INTO permission_role VALUES("5","1");
INSERT INTO permission_role VALUES("6","1");
INSERT INTO permission_role VALUES("7","1");
INSERT INTO permission_role VALUES("8","1");
INSERT INTO permission_role VALUES("9","1");
INSERT INTO permission_role VALUES("10","1");
INSERT INTO permission_role VALUES("11","1");
INSERT INTO permission_role VALUES("12","1");
INSERT INTO permission_role VALUES("13","1");
INSERT INTO permission_role VALUES("14","1");
INSERT INTO permission_role VALUES("15","1");
INSERT INTO permission_role VALUES("16","1");
INSERT INTO permission_role VALUES("17","1");
INSERT INTO permission_role VALUES("18","1");
INSERT INTO permission_role VALUES("19","1");
INSERT INTO permission_role VALUES("20","1");
INSERT INTO permission_role VALUES("21","1");
INSERT INTO permission_role VALUES("22","1");
INSERT INTO permission_role VALUES("23","1");
INSERT INTO permission_role VALUES("24","1");
INSERT INTO permission_role VALUES("25","1");
INSERT INTO permission_role VALUES("26","1");
INSERT INTO permission_role VALUES("27","1");
INSERT INTO permission_role VALUES("28","1");
INSERT INTO permission_role VALUES("29","1");
INSERT INTO permission_role VALUES("30","1");
INSERT INTO permission_role VALUES("31","1");
INSERT INTO permission_role VALUES("32","1");
INSERT INTO permission_role VALUES("33","1");
INSERT INTO permission_role VALUES("34","1");
INSERT INTO permission_role VALUES("35","1");
INSERT INTO permission_role VALUES("36","1");
INSERT INTO permission_role VALUES("37","1");
INSERT INTO permission_role VALUES("38","1");
INSERT INTO permission_role VALUES("39","1");
INSERT INTO permission_role VALUES("40","1");
INSERT INTO permission_role VALUES("41","1");
INSERT INTO permission_role VALUES("42","1");
INSERT INTO permission_role VALUES("43","1");
INSERT INTO permission_role VALUES("44","1");
INSERT INTO permission_role VALUES("45","1");
INSERT INTO permission_role VALUES("46","1");
INSERT INTO permission_role VALUES("47","1");
INSERT INTO permission_role VALUES("48","1");
INSERT INTO permission_role VALUES("49","1");
INSERT INTO permission_role VALUES("50","1");
INSERT INTO permission_role VALUES("51","1");
INSERT INTO permission_role VALUES("52","1");
INSERT INTO permission_role VALUES("53","1");
INSERT INTO permission_role VALUES("54","1");
INSERT INTO permission_role VALUES("55","1");
INSERT INTO permission_role VALUES("56","1");
INSERT INTO permission_role VALUES("57","1");
INSERT INTO permission_role VALUES("58","1");
INSERT INTO permission_role VALUES("59","1");
INSERT INTO permission_role VALUES("60","1");
INSERT INTO permission_role VALUES("61","1");
INSERT INTO permission_role VALUES("62","1");
INSERT INTO permission_role VALUES("63","1");
INSERT INTO permission_role VALUES("64","1");
INSERT INTO permission_role VALUES("65","1");
INSERT INTO permission_role VALUES("66","1");
INSERT INTO permission_role VALUES("67","1");
INSERT INTO permission_role VALUES("68","1");
INSERT INTO permission_role VALUES("69","1");
INSERT INTO permission_role VALUES("70","1");
INSERT INTO permission_role VALUES("71","1");
INSERT INTO permission_role VALUES("72","1");
INSERT INTO permission_role VALUES("73","1");
INSERT INTO permission_role VALUES("74","1");
INSERT INTO permission_role VALUES("75","1");
INSERT INTO permission_role VALUES("76","1");
INSERT INTO permission_role VALUES("77","1");
INSERT INTO permission_role VALUES("78","1");
INSERT INTO permission_role VALUES("79","1");
INSERT INTO permission_role VALUES("80","1");
INSERT INTO permission_role VALUES("81","1");
INSERT INTO permission_role VALUES("82","1");
INSERT INTO permission_role VALUES("83","1");
INSERT INTO permission_role VALUES("84","1");
INSERT INTO permission_role VALUES("85","1");
INSERT INTO permission_role VALUES("86","1");





CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categoria` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permissions VALUES("1","dashbord_manage","Gerir Dashbord","Manage Dashborad","","","Dashborad");
INSERT INTO permissions VALUES("2","dashbord_fun_aniversariantes","Mostrar Aniversarios","Mostrar Aniversarios","","","Dashborad");
INSERT INTO permissions VALUES("3","dashbord_fun_activos","Mostrar Funcionarios Activos","Funcionarios Activos","","","Dashborad");
INSERT INTO permissions VALUES("4","dashbord_ultimos_processamento","Mostar Ultmos Processamentos","Mostrar Ultimo Processamento","","","Dashborad");
INSERT INTO permissions VALUES("5","dashbord_categoria","Mostrar Categoria","Mostar Categoria","","","Dashborad");
INSERT INTO permissions VALUES("6","dashbord_usuarios_activos","Mostar Usuarios activos","Mostar Usuarios activos","","","Dashborad");
INSERT INTO permissions VALUES("7","funcionario_add","Adicionar Funcionario","Adicionar Funcionario","","","Funcionario");
INSERT INTO permissions VALUES("8","funcionario_edit","Editar Funcionario","Editar Funcionario","","","Funcionario");
INSERT INTO permissions VALUES("9","funcionario_list","Listar Funcionarios","Listar Funcionarios","","","Funcionario");
INSERT INTO permissions VALUES("10","funcionario_import","Importar Funcionarios","Importar Funcionarios","","","Funcionario");
INSERT INTO permissions VALUES("11","funcionario_exportar","Exportar Funcionarios","Exportar Funcionarios","","","Funcionario");
INSERT INTO permissions VALUES("12","funcionario_delete","Remover Funcionario","Remover Funcionario","","","Funcionario");
INSERT INTO permissions VALUES("13","tab_dados_principais","Dados Principais do Func.","Dados Principais do Funcionario","","","Tab_Funcionario");
INSERT INTO permissions VALUES("14","tab_dados_vencimento","Dados Vencimento","Dados Vencimento","","","Tab_Funcionario");
INSERT INTO permissions VALUES("15","tab_dados_historial","Dados historial","Dados historial","","","Tab_Funcionario");
INSERT INTO permissions VALUES("16","tab_dados_remuneracao","Dados remuneracao","Dados remuneracao","","","Tab_Funcionario");
INSERT INTO permissions VALUES("17","tab_dados_desconto","Dados desconto","Dados desconto","","","Tab_Funcionario");
INSERT INTO permissions VALUES("18","tab_dados_fiscais","Dados fiscais","Dados fiscais","","","Tab_Funcionario");
INSERT INTO permissions VALUES("19","tab_dados_despesas","Dados despesas","Dados despesas","","","Tab_Funcionario");
INSERT INTO permissions VALUES("20","menu_funcionarios","Menu dos funcionarios","Menu dos funcionarios","","","Tab_Funcionario");
INSERT INTO permissions VALUES("21","despesas_add","Adicionar Despesas","Adicionar Despesas","","","Despesas");
INSERT INTO permissions VALUES("22","despesas_edit","Editar Despesas","Editar Despesas","","","Despesas");
INSERT INTO permissions VALUES("23","despesas_listar","Listar despesas","Listar Despesas","","","Despesas");
INSERT INTO permissions VALUES("24","despesas_delete","Remover Despesas","Delete Despesas","","","Despesas");
INSERT INTO permissions VALUES("25","lancamento_listar","Mostar Lancamentos","Mostar Lancamentos","","","Lancamentos");
INSERT INTO permissions VALUES("26","Lancamento_novo","Adicionar Lancamento","Adicionar lancamento","","","Lancamentos");
INSERT INTO permissions VALUES("27","Lancamento_eliminar","Remover Lancamento","Remover Lancamento","","","Lancamentos");
INSERT INTO permissions VALUES("28","faltas_adicionar","Adicionar Faltas","Adicionar Faltas","","","Faltas");
INSERT INTO permissions VALUES("29","faltas_remover","Remover Faltas","Remover Faltas","","","Faltas");
INSERT INTO permissions VALUES("30","horas_extras_adicionar","Adicionar Horas Extras","Horas Extras","","","Horas_extras");
INSERT INTO permissions VALUES("31","horas_extras_eliminar","Remover horas Extras","Remover Horas Extras","","","Horas_extras");
INSERT INTO permissions VALUES("32","remuneracao_adicionar","Adicionar Remuneracao","Adicionar Remuneracao","","","Remuneracao");
INSERT INTO permissions VALUES("33","remuneracao_remover","Remover Remuneracao","Remover Remuneracao","","","Remuneracao");
INSERT INTO permissions VALUES("34","descontos_adicionar","Adicionar Descontos","Adicionar Descontos","","","Descontos");
INSERT INTO permissions VALUES("35","descontos_remover","Remover Descontos","Remover Descontos","","","Descontos");
INSERT INTO permissions VALUES("36","lancamento_horas_adicionar","Adicionar lancamento horas","Adicionar lancamento horas","","","lancamento_horas");
INSERT INTO permissions VALUES("37","lancamento_horas_remover","Remover lancamento horas","Remover lancamento horas","","","lancamento_horas");
INSERT INTO permissions VALUES("38","recibo_adicionar","Adicionar lancamento Recibo","Adicionar Recibo","","","Recibos");
INSERT INTO permissions VALUES("39","recibo_remover","Remover Recibo","Remover Recibo","","","Recibos");
INSERT INTO permissions VALUES("40","gerir_funcionarios","Gerir Funcionarios","Gerir Funcionarios","","","menu");
INSERT INTO permissions VALUES("41","gerir_asseduidade","Gerir Asseduidade","Gerir Asseduidade","","","menu");
INSERT INTO permissions VALUES("42","gerir_salarios","Gerir Salarios","Gerir Salarios","","","menu");
INSERT INTO permissions VALUES("43","gerir_relatorios","Gerir  relatorios","Gerir  relatorios","","","menu");
INSERT INTO permissions VALUES("44","visualizar_mapas_asseduidade","visualizar mapas asseduidade","visualizar mapas asseduidade","","","menu");
INSERT INTO permissions VALUES("45","visualizar_mapas_salarios","visualizar mapas salarios","visualizar mapas salarios","","","menu");
INSERT INTO permissions VALUES("46","gerir_tabelas_axiliares","gerir tabela axiliar","gerir tabela axiliar","","","menu");
INSERT INTO permissions VALUES("47","gerir_empresas","Gerir Empresas","Gerir Empresas","","","empresas");
INSERT INTO permissions VALUES("48","empresa_adicionar","Adicionar Empresa","Adicionar Empresa","","","empresas");
INSERT INTO permissions VALUES("49","empresa_editar","Editar Empresa","Editar Empresa","","","empresas");
INSERT INTO permissions VALUES("50","empresa_visualizar","empresa visualizar ","visualizar dados da empresa","","","empresas");
INSERT INTO permissions VALUES("51","empresa_remover","Remover Empresa","Remover Empresas","","","empresas");
INSERT INTO permissions VALUES("52","manage_setting","Manage Settings","Manage Settings","","","Settings");
INSERT INTO permissions VALUES("53","manage_company_setting","Manage Company Setting","Manage Company Setting","","","Settings");
INSERT INTO permissions VALUES("54","manage_team_member","Manage Team Member","Manage Team Member","","","Settings");
INSERT INTO permissions VALUES("55","add_team_member","Add Team Member","Add Team Member","","","Settings");
INSERT INTO permissions VALUES("56","edit_team_member","Edit Team Member","Edit Team Member","","","Settings");
INSERT INTO permissions VALUES("57","delete_team_member","Delete Team Member","Delete Team Member","","","Settings");
INSERT INTO permissions VALUES("58","manage_role","Manage Roles","Manage Roles","","","Settings");
INSERT INTO permissions VALUES("59","add_role","Add Role","Add Role","","","Settings");
INSERT INTO permissions VALUES("60","edit_role","Edit Role","Edit Role","","","Settings");
INSERT INTO permissions VALUES("61","delete_role","Delete Role","Delete Role","","","Settings");
INSERT INTO permissions VALUES("62","manage_general_setting","Manage General Settings","Manage General Settings","","","Settings");
INSERT INTO permissions VALUES("63","manage_db_backup","Manage Database Backup","Manage Database Backup","","","Settings");
INSERT INTO permissions VALUES("64","add_db_backup","Add Database Backup","Add Database Backup","","","Settings");
INSERT INTO permissions VALUES("65","delete_db_backup","Delete Database Backup","Delete Database Backup","","","Settings");
INSERT INTO permissions VALUES("66","manage_email_setup","Manage Email Setup","Manage Email Setup","","","Settings");
INSERT INTO permissions VALUES("67","manage_preference","Manage Preference","Manage Preference","","","Settings");
INSERT INTO permissions VALUES("68","atribuir_user_empresa","Atribuir Empresa a Usuario","Atribuir Empresa a Usuario","","","Settings");
INSERT INTO permissions VALUES("69","editar_user_empresa","Editar Empresa a Usuario","Editar Empresa a Usuario","","","Settings");
INSERT INTO permissions VALUES("70","presenca_adicionar","Adicionar Presenca","Adicionar Presenca","","","Presencas");
INSERT INTO permissions VALUES("71","presenca_editar","Editar Presenca","Editar Presenca","","","Presencas");
INSERT INTO permissions VALUES("72","presenca_importar","Presenca Importar","Presenca Importar","","","Presencas");
INSERT INTO permissions VALUES("73","presenca_listar","Presenca Listar","Presenca Listar","","","Presencas");
INSERT INTO permissions VALUES("74","gerir_painel_admin","Gerir Painel Administrativo","Gerir Painel Administrativo","","","Admin");
INSERT INTO permissions VALUES("75","manage_company","Dados da empresa","Dados Principais da empresa","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("76","manage_aux_table","Dados T. Auxiliar","Dados tableas Auxilares","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("77","manage_discount","Dados Desconto","Dados tableas Descontos","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("78","manage_remuneration","Dados T. remuneracao","Dados tableas remuneracao","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("79","manage_status","Dados T. status","Dados tableas status","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("80","manage_type_extra_time","Dados T. type_extra_time","Dados tableas type_extra_time","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("81","manage_category","Dados T. category","Dados tableas category","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("82","manage_sector","Dados T. sector","Dados tableas sector","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("83","manage_shift","Dados T. shift","Dados tableas shift","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("84","manage_type_contract","Dados T. type_contract","Dados tableas type_contract","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("85","manage_tab_irps","Dados T. tab_irps","Dados tableas tab_irps","","","Gestao tabelas Auxiliares");
INSERT INTO permissions VALUES("86","manage_groupo","Dados T. groupo","Dados tableas groupo","","","Gestao tabelas Auxiliares");





CREATE TABLE IF NOT EXISTS `preference` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=253 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO preference VALUES("1","preference","row_per_page","10");
INSERT INTO preference VALUES("2","preference","date_format","1");
INSERT INTO preference VALUES("3","preference","date_sepa","-");
INSERT INTO preference VALUES("4","preference","soft_name","goBilling");
INSERT INTO preference VALUES("5","company","site_short_name","NC");
INSERT INTO preference VALUES("6","preference","percentage","0");
INSERT INTO preference VALUES("7","preference","quantity","0");
INSERT INTO preference VALUES("8","preference","date_format_type","dd-mm-yyyy");
INSERT INTO preference VALUES("9","company","company_name","NC FACTURACAO");
INSERT INTO preference VALUES("10","company","company_email","info@ncsoftware.co.mz");
INSERT INTO preference VALUES("11","company","company_phone","847340800");
INSERT INTO preference VALUES("12","company","company_street","Rua Daniel Malinda");
INSERT INTO preference VALUES("13","company","company_city","Maputo");
INSERT INTO preference VALUES("14","company","company_state","Mocambique");
INSERT INTO preference VALUES("15","company","company_zipCode","10007");
INSERT INTO preference VALUES("16","company","company_country_id","Mozambique");
INSERT INTO preference VALUES("17","company","dflt_lang","po");
INSERT INTO preference VALUES("18","company","dflt_currency_id","3");
INSERT INTO preference VALUES("19","company","sates_type_id","1");
INSERT INTO preference VALUES("20","company","company_nuit","400863954");
INSERT INTO preference VALUES("23","payroll","tipo_salario","por_data");
INSERT INTO preference VALUES("24","payroll","dia_inicio","15");
INSERT INTO preference VALUES("25","payroll","dia_fim","14");
INSERT INTO preference VALUES("26","payroll"," h_semana","48");
INSERT INTO preference VALUES("22","preference","date_version","26032019");
INSERT INTO preference VALUES("21","preference","version","0.993");





CREATE TABLE IF NOT EXISTS `ra` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) DEFAULT NULL,
  `descricao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conta_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ra_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `ra_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `re` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conta_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `nome_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `numero_do_cheque` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `referencia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `re_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `rn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `documento_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `preco_total` double DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rn_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `rn_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO role_user VALUES("2","1");
INSERT INTO role_user VALUES("12","1");
INSERT INTO role_user VALUES("13","1");
INSERT INTO role_user VALUES("14","1");
INSERT INTO role_user VALUES("15","1");
INSERT INTO role_user VALUES("16","1");
INSERT INTO role_user VALUES("17","1");
INSERT INTO role_user VALUES("18","1");
INSERT INTO role_user VALUES("19","1");
INSERT INTO role_user VALUES("20","1");
INSERT INTO role_user VALUES("21","1");
INSERT INTO role_user VALUES("22","1");
INSERT INTO role_user VALUES("23","1");
INSERT INTO role_user VALUES("24","1");
INSERT INTO role_user VALUES("25","1");
INSERT INTO role_user VALUES("26","1");
INSERT INTO role_user VALUES("27","1");
INSERT INTO role_user VALUES("28","1");
INSERT INTO role_user VALUES("29","1");





CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO roles VALUES("1","admin","Admin","Admin User","","");





CREATE TABLE IF NOT EXISTS `se` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_inicio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_fim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `codigo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `se_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `se_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `st` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lotes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preco_venda` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preco_compra` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inclusao_iva` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marca_id` int(10) unsigned DEFAULT NULL,
  `categoria_id` int(10) unsigned DEFAULT NULL,
  `unidade_medida_id` int(10) unsigned DEFAULT NULL,
  `tipo_imposto_id` int(10) unsigned DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `st_marca_id_foreign` (`marca_id`),
  KEY `st_categoria_id_foreign` (`categoria_id`),
  KEY `st_unidade_medida_id_foreign` (`unidade_medida_id`),
  KEY `st_tipo_imposto_id_foreign` (`tipo_imposto_id`),
  KEY `st_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `st_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE,
  CONSTRAINT `st_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `st_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE CASCADE,
  CONSTRAINT `st_tipo_imposto_id_foreign` FOREIGN KEY (`tipo_imposto_id`) REFERENCES `tipo_imposto` (`id`) ON DELETE CASCADE,
  CONSTRAINT `st_unidade_medida_id_foreign` FOREIGN KEY (`unidade_medida_id`) REFERENCES `unidade_medida` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO st VALUES("1","123","Iphone 6s","0","no","","","400","350","1","activo","1","6","7","1","46","2019-12-03 15:34:18","");
INSERT INTO st VALUES("3","2154","Samsung S5","0","no","","","500","350","0","activo","1","6","7","1","46","2020-01-13 20:04:10","2020-01-31 16:43:28");
INSERT INTO st VALUES("6","S3","Sansung","0","yes","","","450","350","0","activo","1","6","7","1","46","2020-02-04 16:46:02","2020-02-04 16:46:08");





CREATE TABLE IF NOT EXISTS `taxas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_cambio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compra` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venda` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `moedas_id` int(10) unsigned NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taxas_moedas_id_foreign` (`moedas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO taxas VALUES("1","2019-03-15 15:23:44","1","1","activo","1","46","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("2","2019-03-15 15:23:44","61.2","62.42","inactivo","2","46","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("3","2019-03-15 15:23:44","69.7","71.09","activo","3","46","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("4","2019-03-15 15:23:44","78.8","80.38","activo","4","46","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("5","2019-03-15 15:23:45","4.39","4.48","activo","5","46","2019-03-15 15:23:45","");
INSERT INTO taxas VALUES("6","2019-06-24","61.5","74","activo","2","46","2019-06-24 09:54:10","");
INSERT INTO taxas VALUES("7","2019-04-18 08:30:36","1","1","activo","6","44","2019-04-18 08:30:36","");





CREATE TABLE IF NOT EXISTS `termo_pagamento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dias_vencimento` int(11) DEFAULT NULL,
  `default` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `termo_pagamento_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `termo_pagamento_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO termo_pagamento VALUES("1","Pagamento na Entrega","0","yes","activo","46","2019-12-02 11:22:00","");
INSERT INTO termo_pagamento VALUES("2","Net15","15","no","activo","46","2019-12-02 11:22:00","");
INSERT INTO termo_pagamento VALUES("3","Net30","30","no","activo","46","2019-12-02 11:22:00","");





CREATE TABLE IF NOT EXISTS `tipo_conta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `tipo_de_contas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_de_contas_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `tipo_de_contas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO tipo_de_contas VALUES("1","Cash Account","46","2019-03-11 16:56:45","");





CREATE TABLE IF NOT EXISTS `tipo_imposto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxa_imposto` double NOT NULL,
  `default` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_imposto_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `tipo_imposto_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO tipo_imposto VALUES("1","Isento","0","yes","46","2019-11-27 04:19:30","");
INSERT INTO tipo_imposto VALUES("2","Regime Simplificado","3","no","46","","");
INSERT INTO tipo_imposto VALUES("3","Iva","17","no","46","","");





CREATE TABLE IF NOT EXISTS `transacoes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `saldo` double NOT NULL,
  `anexo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_transacao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metodo_pagamento_id` int(10) unsigned DEFAULT NULL,
  `conta_bancaria_id` int(10) unsigned DEFAULT NULL,
  `categoria_id` int(10) unsigned DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `tipo_transacao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transacoes_empresa_id_foreign` (`empresa_id`),
  KEY `transacoes_conta_bancaria_id_foreign` (`conta_bancaria_id`),
  KEY `transacoes_categoria_id_foreign` (`categoria_id`),
  KEY `transacoes_metodo_pagamento_id_foreign` (`metodo_pagamento_id`),
  CONSTRAINT `transacoes_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transacoes_conta_bancaria_id_foreign` FOREIGN KEY (`conta_bancaria_id`) REFERENCES `conta_bancarias` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transacoes_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transacoes_metodo_pagamento_id_foreign` FOREIGN KEY (`metodo_pagamento_id`) REFERENCES `metodos_pagamento` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `transferencias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conta_bancaria_id` int(10) unsigned DEFAULT NULL,
  `origem` int(11) DEFAULT NULL,
  `destino` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `metodo_pagamento_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transferencias_empresa_id_foreign` (`empresa_id`),
  KEY `transferencias_metodo_pagamento_id_foreign` (`metodo_pagamento_id`),
  KEY `transferencias_conta_bancaria_id_foreign` (`conta_bancaria_id`),
  CONSTRAINT `transferencias_conta_bancaria_id_foreign` FOREIGN KEY (`conta_bancaria_id`) REFERENCES `conta_bancarias` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transferencias_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transferencias_metodo_pagamento_id_foreign` FOREIGN KEY (`metodo_pagamento_id`) REFERENCES `metodos_pagamento` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `unidade_medida` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abreviatura` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unidade_medida_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `unidade_medida_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO unidade_medida VALUES("2","litros","lt","46","2019-08-24 10:13:02","");
INSERT INTO unidade_medida VALUES("7","Each","each","46","2019-12-03 11:21:46","");





CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `real_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '1',
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `armazem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO users VALUES("2","","$2y$10$GbgX0Z2DGHOJIWAkFbkXaOPGH1Fu8QBqktctseholx3RLlKHGM/Y6","demo","1","+8012654159","demo@n3.co.mz","2019-02-27 15-21-28-blank-profile.png","0","1jf9v7p1UGwzWiKjutYxiPe9g4gCNY9RgyiAJfe68OjSYB5P7JdVNZQvPMgZ","2017-12-30 10:14:15","2020-02-13 19:26:01","0","1");
INSERT INTO users VALUES("29","","$2y$10$wdq9IoqRoY4GZAyogt2ne.rf3U3G7wCGhRMApjcPthkz6E8JcN8S.","Campany2","1","845058488","campany@teste.com","","0","lXPbkzSg989rT4PNQMKbYMHcPPfgHJTQKrwjTWBywt1078eqxbPgqqeG4rps","2020-01-31 15:19:45","2020-01-31 16:14:26","46","0");
INSERT INTO users VALUES("27","","$2y$10$/Jjc6dzrCLyeVa2NsuXLMOhuEKxp71ulWSbCPVXHdkEqpcAztu596","NC Software House","1","863335511","abdulsumail@gmail.com","","0","vmwDvSKE6F1mHardGSL6kdLaNtSbXkZWWOaACdKg3qr1VDFmeVyF4jd6dr2A","2020-01-23 07:25:24","2020-02-12 11:55:24","44","1");





CREATE TABLE IF NOT EXISTS `versoes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nr_versao` double(8,2) DEFAULT NULL,
  `descricao` text COLLATE utf8_unicode_ci,
  `registado_id` int(11) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO versoes VALUES("1","Gold 1.0.0","100.00","Primeira versao do Software lda\"\\n\"Primeira versao do Software lda \\n Primeira versao do Software lda\"\\n\"Primeira versao do Software lda \\n Primeira versao do Software lda \\n Primeira versao do Software lda\"\\n\"Primeira versao do Software lda\"\\n\"Primeira versao do Software lda \\n Primeira versao do Software lda \\n Primeira versao do Software lda \\n Primeira versao do Software lda \\n Primeira versao do Software lda \\n Primeira versao do Software lda \\n ","2","activo","2019-04-12","2019-04-12 14:36:07","");
INSERT INTO versoes VALUES("2","Gold 1.3.0","130.00","Salarios estavel com os detalhes abaixos corrigidos.\n									Possibilidade de editar os lan�amentos do m�s \n									2. Limitar acesso a edi��o de lan�amentos, por exemplo das despesas \n									3. Possibilidade de exportar a folha do Inss para o sissmo . \n									4. determinadas tabelas auxiliares devem estar dispon�veis em todas as empresas\n									5. Por alguma raz�o a l�ngua por defeito est� o espanhol\n									6. Funcionalidade de impress�o em massa dos recibos","2","activo","2019-05-30","2019-05-30 18:52:11","");



