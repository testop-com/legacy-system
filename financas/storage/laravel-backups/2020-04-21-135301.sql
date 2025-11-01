

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ag VALUES("1","RH","activo","46","2020-02-18 20:08:32","");
INSERT INTO ag VALUES("3","Desenvolvimento","activo","46","2020-02-19 16:50:51","");
INSERT INTO ag VALUES("4","Departamento de Administra��o Publica","activo","46","2020-03-06 16:14:15","");





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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO armazem VALUES("1","Armazem 1","Loc 1","Rua Paiva Couceiro","loc@gmail.com","863335511","863335511","863335511","activo","yes","46","2019-12-02 10:03:00","");
INSERT INTO armazem VALUES("2","Armazem 2","Loc 2","Rua Paiva Couceiro","loc@gmail.com","863335511","863335511","863335511","activo","no","46","2019-12-02 10:03:00","");





CREATE TABLE IF NOT EXISTS `backup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO backup VALUES("4","2020-02-17-084130.sql","2020-02-17 08:41:30","");
INSERT INTO backup VALUES("5","2020-04-21-134857.sql","2020-04-21 13:48:57","");





CREATE TABLE IF NOT EXISTS `bi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bo_id` int(10) unsigned NOT NULL,
  `codigo_produto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `preco_custo` double DEFAULT NULL,
  `tipo_taxa_id` int(11) DEFAULT NULL,
  `valor_taxa` double DEFAULT NULL,
  `is_inventory` int(11) DEFAULT NULL,
  `percentagem_desconto` double DEFAULT NULL,
  `taxa_inclusa_valor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lote` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_servico` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bi_empresa_id_foreign` (`empresa_id`),
  KEY `bi_bo_id_foreign` (`bo_id`),
  CONSTRAINT `bi_bo_id_foreign` FOREIGN KEY (`bo_id`) REFERENCES `bo` (`id`) ON DELETE CASCADE,
  CONSTRAINT `bi_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `bl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_de_conta_id` int(11) DEFAULT NULL,
  `nome` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swift` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO bl VALUES("1","1","BCI","12344675656","BCI","","Rua dos Desportistas","0","0","","yes","1236123564","3215632135456123","46","","");
INSERT INTO bl VALUES("2","1","Banco Unico","21212312213","Unico","","Rua Daniel Malinda , Nr 142 1 andar","1","0","","no","","","46","","");





CREATE TABLE IF NOT EXISTS `bo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entidade_id` int(11) DEFAULT NULL,
  `localizacao_id` int(11) DEFAULT NULL,
  `localizacao_destino_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `taxa_total` double DEFAULT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comentario` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `conta_id` int(11) DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pago` double NOT NULL DEFAULT '0',
  `documento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxa_cambio` double DEFAULT NULL,
  `contra_valor` double DEFAULT NULL,
  `moedas_id` int(10) unsigned DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO categoria_vendas VALUES("1","Vendas","vendas","income","46","2020-02-21 00:00:00","");
INSERT INTO categoria_vendas VALUES("2","Vendas","vendas","income","48","2020-02-21 00:00:00","");
INSERT INTO categoria_vendas VALUES("3","Compras","Compras","expense","46","2020-02-21 00:00:00","");





CREATE TABLE IF NOT EXISTS `cc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `total_documento` double DEFAULT NULL,
  `pago` double NOT NULL DEFAULT '0',
  `por_pagar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debito` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credito` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'activo',
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cc_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `cc_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO cc VALUES("1","11","2","3","FT-0001/2020","2020-04-16","96670","96670","sim","FT","96670","","activo","46","2020-04-16 12:57:57","");
INSERT INTO cc VALUES("2","11","2","4","FT-0002/2020","2020-04-16","73800","73800","sim","FT","73800","","activo","46","2020-04-16 13:02:05","");
INSERT INTO cc VALUES("3","11","2","1","RE-0001/2020","2020-04-16","166800","0","nao","RE","","166800","cancelado","46","2020-04-16 13:04:32","");
INSERT INTO cc VALUES("4","9","2","5","FT-0003/2020","2020-04-20","184500","184500","sim","FT","184500","","activo","46","2020-04-20 10:13:08","");
INSERT INTO cc VALUES("5","11","2","2","RE-0002/2020","2020-04-20","70000","0","nao","RE","","70000","activo","46","2020-04-20 16:57:04","");
INSERT INTO cc VALUES("6","9","2","3","RE-0003/2020","2020-04-21","184500","0","nao","RE","","184500","activo","46","2020-04-21 13:32:34","");
INSERT INTO cc VALUES("7","11","2","4","RE-0004/2020","2020-04-21","100470","73800","nao","RE","","100470","activo","46","2020-04-21 13:32:54","");
INSERT INTO cc VALUES("8","10","2","6","FT-0004/2020","2020-04-21","92400","0","sim","FT","92400","","activo","46","2020-04-21 13:34:09","");





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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO cl VALUES("2","Alberto Matsinhe","albertomatsinhe@gmail.com","873803869","863335511","Rua Daniel Malinda , Nr 142 1 andar","Cidade de Maputo","Maputo","400004856","0","0","","activo","no","1100","46","2019-12-03 10:09:47","");
INSERT INTO cl VALUES("3","Alberto Shady","albertshady@gmail.com","843600390",".","Av. 16 de Junho, Bairro Cimento","Pemba,","Cabo Delgado","456131465","0","0","","activo","no","1100","46","2020-02-13 15:18:20","");
INSERT INTO cl VALUES("4","kayolera","kayolera@gmail.com","843600390",".","Av. 16 de Junho, Bairro Cimento","Pemba,","Cabo Delgado","545646788","0","0","","activo","no","1100","46","2020-02-13 15:18:54","");
INSERT INTO cl VALUES("5","Salvador Tchauque","salvador@hotmail.com","843600390","843600390","Av. 16 de Junho, Bairro Cimento","Pemba,","Cabo Delgado","545648912","0","0","","activo","no","1100","46","2020-02-13 15:19:29","");
INSERT INTO cl VALUES("8","Cliente  Teste","cliente@gmail.com","843600390","843600390","Av. 16 de Junho, Bairro Cimento","Pemba,","Cabo Delgado","156489465","0","0","","activo","no","1100","46","2020-02-19 16:49:36","");
INSERT INTO cl VALUES("9","Abdul Fatau Sumail","abdulsumail@gmail.com","848496979","863335511","Rua Paiva Couceira(actual Rua UDENAMO) , n� 153 2 andar, flat n� 8","Cidade de Maputo","Maputo","400000000","0","0","","activo","no","1100","46","2020-03-05 12:22:36","");
INSERT INTO cl VALUES("10","Mr. Smart","smart_kyd@hotmail.com","863335511","863335511","Av. Eduardo Mondlane","Maputo","Maputo Cidade","431202520","0","0","","activo","no","1100","46","2020-04-15 08:59:04","");
INSERT INTO cl VALUES("11","Mr. Fonix","fonix@gmail.com","8400000000","826000000","Ruajkdfjkdnsfkjmsdnfk","jhkdjhksfjhkdfhsjkh","jhksdjhkjhkdfjhk","465456125","0","0","","activo","no","1100","46","2020-04-16 12:50:35","");





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
  `pacote_id` int(11) DEFAULT NULL,
  `idioma_default` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'po',
  PRIMARY KEY (`id`),
  KEY `cust_empresa_empresa_id_foreign` (`empresa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO cust_empresa VALUES("46","NC Software House","ncsoftware@co.mz","400004856","1100","863335511","863335511","Rua Paiva Couceiro","1","ncsoftware.png","","","7","po");
INSERT INTO cust_empresa VALUES("48","Update","abdulsumail@gmail.com","4666452323","","84","","Rua Paiva Couceiro","1","NULL","","","6","po");





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
  `person_id` int(11) DEFAULT NULL,
  `endereco` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'activo',
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entidades_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `entidades_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `fc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fornecedor_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_documento` double DEFAULT NULL,
  `pago` double DEFAULT '0',
  `data` date DEFAULT NULL,
  `por_pagar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'nao',
  `debito` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credito` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fc_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `fc_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO fc VALUES("1","3","2","2","OC-0001/2020","43050","43050","2020-04-21","sim","43050","","activo","46","2020-04-21 10:32:13","");
INSERT INTO fc VALUES("2","3","2","3","PF-0001/2020","43050","0","2020-04-21","nao","","43050","activo","46","2020-04-21 10:32:24","");
INSERT INTO fc VALUES("3","2","2","3","OC-0002/2020","10850","0","2020-04-21","sim","10850","","activo","46","2020-04-21 13:34:25","");





CREATE TABLE IF NOT EXISTS `fi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ft_id` int(10) unsigned NOT NULL,
  `codigo_produto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `preco_custo` double DEFAULT NULL,
  `tipo_taxa_id` int(11) DEFAULT NULL,
  `is_inventory` int(11) DEFAULT NULL,
  `valor_taxa` double DEFAULT NULL,
  `percentagem_desconto` double DEFAULT NULL,
  `taxa_inclusa_valor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lote` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_servico` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fi_empresa_id_foreign` (`empresa_id`),
  KEY `fi_ft_id_foreign` (`ft_id`),
  CONSTRAINT `fi_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fi_ft_id_foreign` FOREIGN KEY (`ft_id`) REFERENCES `ft` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO fi VALUES("1","1","Gkci","Geleira K.I.C","91","1500","","1","1","0","0","no","","","46","","");
INSERT INTO fi VALUES("2","1","tvlg55","Tv LG 55","154","6000","","1","1","0","0","no","","","46","","");
INSERT INTO fi VALUES("3","2","tvlg55","Tv LG 55","15","6000","","3","1","0","10","no","","","46","","");
INSERT INTO fi VALUES("4","2","Gkci","Geleira K.I.C","1","1500","","1","1","0","0","no","","","46","","");
INSERT INTO fi VALUES("5","2","ip6s","Iphone 6s","1","400","","1","1","0","0","no","","","46","","");
INSERT INTO fi VALUES("6","3","tvlg55","Tv LG 55","15","6000","","3","1","0","10","no","","","46","2020-04-16 12:57:57","");
INSERT INTO fi VALUES("7","3","Gkci","Geleira K.I.C","1","1500","","1","1","0","0","no","","","46","2020-04-16 12:57:57","");
INSERT INTO fi VALUES("8","3","ip6s","Iphone 6s","1","400","","1","1","0","0","no","","","46","2020-04-16 12:57:58","");
INSERT INTO fi VALUES("9","4","Mo","Monitor 23","123","600","","1","1","0","0","no","","","46","2020-04-16 13:02:05","");
INSERT INTO fi VALUES("10","5","Gkci","Geleira K.I.C","123","1500","","1","1","0","0","no","","","46","2020-04-20 10:13:08","");
INSERT INTO fi VALUES("11","6","ip6s","Iphone 6s","231","400","","1","1","0","0","no","","","46","2020-04-21 13:34:09","");





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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO fl VALUES("1","Jorge Matsinhe","jorge_matsinhe@gmail.com","863335511","863335511","Rua Daniel Malinda , Nr 142 1 andar","Cidade de Maputo","Maputo Cidade","423154564","","activo","1100","46","2020-02-04 16:44:17","");
INSERT INTO fl VALUES("2","Teste fornecedor","teste@demo.com","843600390","843600390","Av. 16 de Junho, Bairro Cimento","Pemba,","Cabo Delgado","156489465","","activo","1100","46","2020-02-18 19:59:55","");
INSERT INTO fl VALUES("3","Fornecedor","asumail@ncsoftware.co.mz","843600390","843600390","Av. 16 de Junho, Bairro Cimento","Pemba,","Cabo Delgado","466645","","activo","1100","46","2020-02-19 16:50:27","");





CREATE TABLE IF NOT EXISTS `fn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fo_id` int(10) unsigned NOT NULL,
  `codigo_produto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco_unitario` double DEFAULT NULL,
  `preco_custo` double DEFAULT NULL,
  `tipo_taxa_id` int(11) DEFAULT NULL,
  `valor_taxa` double DEFAULT NULL,
  `is_inventory` int(11) DEFAULT NULL,
  `percentagem_desconto` double DEFAULT NULL,
  `taxa_inclusa_valor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lote` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_servico` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fn_empresa_id_foreign` (`empresa_id`),
  KEY `fn_fo_id_foreign` (`fo_id`),
  CONSTRAINT `fn_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fn_fo_id_foreign` FOREIGN KEY (`fo_id`) REFERENCES `fo` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO fn VALUES("2","2","ip6s","Iphone 6s","123","350","","1","0","1","0","no","","","46","","");
INSERT INTO fn VALUES("3","3","ip6s","Iphone 6s","31","350","","1","0","1","0","no","","","46","","");





CREATE TABLE IF NOT EXISTS `fo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fornecedor_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `localizacao_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `documento` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conta_id` int(11) DEFAULT NULL,
  `pago` double NOT NULL DEFAULT '0',
  `taxa_total` double DEFAULT NULL,
  `comentario` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taxa_cambio` double DEFAULT NULL,
  `contra_valor` double DEFAULT NULL,
  `moedas_id` int(11) DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fo_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `fo_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO fo VALUES("2","3","2","1","","2020-04-21","OC-0001/2020","43050","oc","","0","0","","","43050","1","activo","46","2020-04-21 10:32:13","");
INSERT INTO fo VALUES("3","2","2","1","","2020-04-21","OC-0002/2020","10850","oc","","0","0","","","10850","1","activo","46","2020-04-21 13:34:25","");





CREATE TABLE IF NOT EXISTS `ft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
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
  `local_entrega` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_motorista` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carta_conducao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matricula_carro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ft VALUES("1","2020-04-15","2020-04-30","COT-0001/2020","10","","","","","2","1","","","2","","","","","1060500","0","","activo","cot","1","1060500","1","46","2020-04-15 09:01:16","");
INSERT INTO ft VALUES("2","2020-04-16","2020-05-16","COT-0002/2020","11","","","","","2","1","","","3","","","","","96670","13770","adjasdjajhdjhkasdjhkasdjhkasdjhk","activo","cot","1","96670","1","46","2020-04-16 12:56:16","");
INSERT INTO ft VALUES("3","2020-04-16","2020-05-16","FT-0001/2020","11","","2","","COT-0002/2020","2","1","","","3","","","","","96670","13770","adjasdjajhdjhkasdjhkasdjhkasdjhk","activo","ft","1","96670","1","46","2020-04-16 12:57:57","");
INSERT INTO ft VALUES("4","2020-04-16","0000-00-00","FT-0002/2020","11","","","","","2","1","","","1","","","","","73800","0","","activo","ft","1","0","1","46","2020-04-16 13:02:05","");
INSERT INTO ft VALUES("5","2020-04-20","0000-00-00","FT-0003/2020","9","","","","","2","1","","","1","","","","","184500","0","","activo","ft","1","0","1","46","2020-04-20 10:13:08","");
INSERT INTO ft VALUES("6","2020-04-21","0000-00-00","FT-0004/2020","10","","","","","2","1","","","1","","","","","92400","0","","activo","ft","1","0","1","46","2020-04-21 13:34:09","");





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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO grupo_armazem VALUES("1","Armazen 1","AM1","Mexe com armazem 1","activo","46","2019-12-02 10:06:00","");
INSERT INTO grupo_armazem VALUES("2","Armazen 2","AM2","Mexe com armazem 2","activo","46","2019-12-02 10:06:00","");





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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO lotes_validades VALUES("1","mt23","2020-02-18","2020-04-03","activo","ISCD","46","2020-02-18 20:10:29","");
INSERT INTO lotes_validades VALUES("2","mt23","2020-02-20","2020-02-20","activo","ISCD","46","2020-02-19 16:54:24","");





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





CREATE TABLE IF NOT EXISTS `metodos_pagamento` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `metodos_pagamento_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `metodos_pagamento_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO metodos_pagamento VALUES("1","Numerario","46","2019-03-11 16:56:45","");
INSERT INTO metodos_pagamento VALUES("2","M-Pesa","46","2019-03-11 16:56:45","");
INSERT INTO metodos_pagamento VALUES("3","POS","46","2019-12-19 07:24:00","");
INSERT INTO metodos_pagamento VALUES("4","Transferencia","46","2019-07-07 00:00:00","");
INSERT INTO metodos_pagamento VALUES("5","Cheque","46","2019-12-19 07:24:00","");





CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO moedas VALUES("1","MZN","Metical","Meticais","Centavo","Centavos","46","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("2","USD","Dollar","Dollars","C�ntimo","C�ntimos","46","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("3","EUR","Euro","Euros","C�ntimo","C�ntimos","46","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("4","GBP","Libra","Libras","C�ntimo","C�ntimos","46","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("5","ZAR","Rand","Rands","C�ntimo","C�ntimos","46","2019-03-15 15:23:44","");
INSERT INTO moedas VALUES("6","MZN","Metical","Meticais","Centavo","Centavos","44","2019-04-18 08:30:36","");
INSERT INTO moedas VALUES("7","MZN","Metical","Meticais","Centavo","Centavos","49","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("8","USD","Dollar","Dollars","C�ntimo","C�ntimos","49","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("9","EUR","Euro","Euros","C�ntimo","C�ntimos","49","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("10","GBP","Libra","Libras","C�ntimo","C�ntimos","49","2019-03-15 15:23:43","");
INSERT INTO moedas VALUES("11","ZAR","Rand","Rands","C�ntimo","C�ntimos","49","2019-03-15 15:23:44","");





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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO notificacoes VALUES("1","sistema","O Usuario demo  fez login na data 2020-02-25 15:14:42","","","2","vista","","2","2020-02-25 15:14:42","");
INSERT INTO notificacoes VALUES("2","sistema","O Usuario demo  fez login na data 2020-02-26 08:49:03","","","2","vista","","2","2020-02-26 08:49:03","");
INSERT INTO notificacoes VALUES("3","sistema","O Usuario demo  fez login na data 2020-02-26 13:19:53","","","2","vista","","2","2020-02-26 13:19:53","");
INSERT INTO notificacoes VALUES("4","sistema","O Usuario demo  fez login na data 2020-02-27 16:10:01","","","2","vista","","2","2020-02-27 16:10:01","");
INSERT INTO notificacoes VALUES("5","sistema","O Usuario demo  fez login na data 2020-02-28 08:12:27","","","2","vista","","2","2020-02-28 08:12:27","");
INSERT INTO notificacoes VALUES("6","sistema","O Usuario demo  fez login na data 2020-02-28 13:48:38","","","2","vista","","2","2020-02-28 13:48:38","");
INSERT INTO notificacoes VALUES("7","sistema","O Usuario demo  fez login na data 2020-02-28 16:15:17","","","2","vista","","2","2020-02-28 16:15:17","");
INSERT INTO notificacoes VALUES("8","sistema","O Usuario demo  fez login na data 2020-02-29 10:38:35","","","2","vista","","2","2020-02-29 10:38:35","");
INSERT INTO notificacoes VALUES("9","sistema","O Usuario demo  fez login na data 2020-03-01 11:12:19","","","2","vista","","2","2020-03-01 11:12:19","");
INSERT INTO notificacoes VALUES("10","sistema","O Usuario demo  fez login na data 2020-03-02 07:03:21","","","2","vista","","2","2020-03-02 07:03:21","");
INSERT INTO notificacoes VALUES("11","sistema","O Usuario demo  fez login na data 2020-03-02 09:31:10","","","2","vista","","2","2020-03-02 09:31:10","");
INSERT INTO notificacoes VALUES("12","sistema","O Usuario demo  fez login na data 2020-03-02 22:49:24","","","2","vista","","2","2020-03-02 22:49:24","");
INSERT INTO notificacoes VALUES("13","sistema","O Usuario demo  fez login na data 2020-03-03 08:18:15","","","2","vista","","2","2020-03-03 08:18:15","");
INSERT INTO notificacoes VALUES("14","sistema","O Usuario demo  fez login na data 2020-03-03 15:18:30","","","2","vista","","2","2020-03-03 15:18:30","");
INSERT INTO notificacoes VALUES("15","sistema","O Usuario demo  fez login na data 2020-03-04 08:09:33","","","2","vista","","2","2020-03-04 08:09:33","");
INSERT INTO notificacoes VALUES("16","sistema","O Usuario demo  fez login na data 2020-03-04 12:23:28","","","2","vista","","2","2020-03-04 12:23:28","");
INSERT INTO notificacoes VALUES("17","sistema","O Usuario demo  fez login na data 2020-03-04 14:46:18","","","2","vista","","2","2020-03-04 14:46:18","");
INSERT INTO notificacoes VALUES("18","sistema","O Usuario demo  fez login na data 2020-03-05 08:14:41","","","2","vista","","2","2020-03-05 08:14:41","");
INSERT INTO notificacoes VALUES("19","sistema","O Usuario demo  fez login na data 2020-03-06 08:23:33","","","2","vista","","2","2020-03-06 08:23:33","");
INSERT INTO notificacoes VALUES("20","sistema","O Usuario demo  fez login na data 2020-03-06 10:59:39","","","2","vista","","2","2020-03-06 10:59:39","");
INSERT INTO notificacoes VALUES("21","sistema","O Usuario demo  fez login na data 2020-03-06 14:07:45","","","2","vista","","2","2020-03-06 14:07:45","");
INSERT INTO notificacoes VALUES("22","sistema","O Usuario demo  fez login na data 2020-03-07 07:23:15","","","2","vista","","2","2020-03-07 07:23:15","");
INSERT INTO notificacoes VALUES("23","sistema","O Usuario NC Software House  fez login na data 2020-03-07 09:29:29","","","27","vista","","27","2020-03-07 09:29:29","");
INSERT INTO notificacoes VALUES("24","sistema","O Usuario demo  fez login na data 2020-03-07 09:30:14","","","2","vista","","2","2020-03-07 09:30:14","");
INSERT INTO notificacoes VALUES("25","sistema","O Usuario demo  fez login na data 2020-03-07 09:30:25","","","2","vista","","2","2020-03-07 09:30:25","");
INSERT INTO notificacoes VALUES("26","sistema","O Usuario demo  fez login na data 2020-03-07 15:41:57","","","2","vista","","2","2020-03-07 15:41:57","");
INSERT INTO notificacoes VALUES("27","sistema","O Usuario demo  fez login na data 2020-03-07 18:08:15","","","2","vista","","2","2020-03-07 18:08:15","");
INSERT INTO notificacoes VALUES("28","sistema","O Usuario demo  fez login na data 2020-03-08 07:32:34","","","2","vista","","2","2020-03-08 07:32:34","");
INSERT INTO notificacoes VALUES("29","sistema","O Usuario demo  fez login na data 2020-03-09 08:37:32","","","2","vista","","2","2020-03-09 08:37:32","");
INSERT INTO notificacoes VALUES("30","sistema","O Usuario demo  fez login na data 2020-03-09 14:30:38","","","2","vista","","2","2020-03-09 14:30:38","");
INSERT INTO notificacoes VALUES("31","sistema","O Usuario demo  fez login na data 2020-03-10 09:46:24","","","2","vista","","2","2020-03-10 09:46:24","");
INSERT INTO notificacoes VALUES("32","sistema","O Usuario demo  fez login na data 2020-03-10 13:47:55","","","2","vista","","2","2020-03-10 13:47:55","");
INSERT INTO notificacoes VALUES("33","sistema","O Usuario demo  fez login na data 2020-03-10 15:46:18","","","2","vista","","2","2020-03-10 15:46:18","");
INSERT INTO notificacoes VALUES("34","sistema","O Usuario demo  fez login na data 2020-03-10 18:15:51","","","2","vista","","2","2020-03-10 18:15:51","");
INSERT INTO notificacoes VALUES("35","sistema","O Usuario demo  fez login na data 2020-03-11 09:15:12","","","2","vista","","2","2020-03-11 09:15:12","");
INSERT INTO notificacoes VALUES("36","sistema","O Usuario demo  fez login na data 2020-03-11 15:41:06","","","2","vista","","2","2020-03-11 15:41:06","");
INSERT INTO notificacoes VALUES("37","sistema","O Usuario demo  fez login na data 2020-03-11 16:18:59","","","2","vista","","2","2020-03-11 16:18:59","");
INSERT INTO notificacoes VALUES("38","sistema","O Usuario demo  fez login na data 2020-03-11 16:35:17","","","2","vista","","2","2020-03-11 16:35:17","");
INSERT INTO notificacoes VALUES("39","sistema","O Usuario demo  fez login na data 2020-03-12 08:49:26","","","2","vista","","2","2020-03-12 08:49:26","");
INSERT INTO notificacoes VALUES("40","sistema","O Usuario demo  fez login na data 2020-03-12 09:55:54","","","2","vista","","2","2020-03-12 09:55:54","");
INSERT INTO notificacoes VALUES("41","sistema","O Usuario demo  fez login na data 2020-03-12 16:44:18","","","2","vista","","2","2020-03-12 16:44:18","");
INSERT INTO notificacoes VALUES("42","sistema","O Usuario demo  fez login na data 2020-03-12 18:00:12","","","2","vista","","2","2020-03-12 18:00:12","");
INSERT INTO notificacoes VALUES("43","sistema","O Usuario demo  fez login na data 2020-03-12 18:02:48","","","2","vista","","2","2020-03-12 18:02:48","");
INSERT INTO notificacoes VALUES("44","sistema","O Usuario demo  fez login na data 2020-03-12 18:03:50","","","2","vista","","2","2020-03-12 18:03:50","");
INSERT INTO notificacoes VALUES("45","sistema","O Usuario demo  fez login na data 2020-03-12 18:04:41","","","2","vista","","2","2020-03-12 18:04:41","");
INSERT INTO notificacoes VALUES("46","sistema","O Usuario demo  fez login na data 2020-03-12 18:06:22","","","2","vista","","2","2020-03-12 18:06:22","");
INSERT INTO notificacoes VALUES("47","sistema","O Usuario demo  fez login na data 2020-03-12 18:12:07","","","2","vista","","2","2020-03-12 18:12:07","");
INSERT INTO notificacoes VALUES("48","sistema","O Usuario demo  fez login na data 2020-03-12 18:13:23","","","2","vista","","2","2020-03-12 18:13:23","");
INSERT INTO notificacoes VALUES("49","sistema","O Usuario demo  fez login na data 2020-03-12 18:14:01","","","2","vista","","2","2020-03-12 18:14:01","");
INSERT INTO notificacoes VALUES("50","sistema","O Usuario demo  fez login na data 2020-03-12 18:16:37","","","2","vista","","2","2020-03-12 18:16:37","");
INSERT INTO notificacoes VALUES("51","sistema","O Usuario demo  fez login na data 2020-03-12 18:22:15","","","2","vista","","2","2020-03-12 18:22:15","");
INSERT INTO notificacoes VALUES("52","sistema","O Usuario demo  fez login na data 2020-03-12 18:29:48","","","2","vista","","2","2020-03-12 18:29:48","");
INSERT INTO notificacoes VALUES("53","sistema","O Usuario demo  fez login na data 2020-03-13 09:30:13","","","2","vista","","2","2020-03-13 09:30:13","");
INSERT INTO notificacoes VALUES("54","sistema","O Usuario demo  fez login na data 2020-03-13 09:34:48","","","2","vista","","2","2020-03-13 09:34:48","");
INSERT INTO notificacoes VALUES("55","sistema","O Usuario demo  fez login na data 2020-03-13 09:43:56","","","2","vista","","2","2020-03-13 09:43:56","");
INSERT INTO notificacoes VALUES("56","sistema","O Usuario demo  fez login na data 2020-03-13 10:04:13","","","2","vista","","2","2020-03-13 10:04:13","");
INSERT INTO notificacoes VALUES("57","sistema","O Usuario demo  fez login na data 2020-03-13 10:17:37","","","2","vista","","2","2020-03-13 10:17:37","");
INSERT INTO notificacoes VALUES("58","sistema","O Usuario demo  fez login na data 2020-03-13 10:43:46","","","2","vista","","2","2020-03-13 10:43:46","");
INSERT INTO notificacoes VALUES("59","sistema","O Usuario demo  fez login na data 2020-03-13 10:43:46","","","2","vista","","2","2020-03-13 10:43:46","");
INSERT INTO notificacoes VALUES("60","sistema","O Usuario demo  fez login na data 2020-03-13 11:03:32","","","2","vista","","2","2020-03-13 11:03:32","");
INSERT INTO notificacoes VALUES("61","sistema","O Usuario demo  fez login na data 2020-03-13 11:07:35","","","2","vista","","2","2020-03-13 11:07:35","");
INSERT INTO notificacoes VALUES("62","sistema","O Usuario demo  fez login na data 2020-03-13 17:20:36","","","2","vista","","2","2020-03-13 17:20:36","");
INSERT INTO notificacoes VALUES("63","sistema","O Usuario demo  fez login na data 2020-03-14 10:29:03","","","2","vista","","2","2020-03-14 10:29:03","");
INSERT INTO notificacoes VALUES("64","sistema","O Usuario demo  fez login na data 2020-03-16 08:32:30","","","2","vista","","2","2020-03-16 08:32:30","");
INSERT INTO notificacoes VALUES("65","sistema","O Usuario demo  fez login na data 2020-03-16 15:25:58","","","2","vista","","2","2020-03-16 15:25:58","");
INSERT INTO notificacoes VALUES("66","sistema","O Usuario demo  fez login na data 2020-03-16 17:03:02","","","2","vista","","2","2020-03-16 17:03:02","");
INSERT INTO notificacoes VALUES("67","sistema","O Usuario demo  fez login na data 2020-03-16 17:04:54","","","2","vista","","2","2020-03-16 17:04:54","");
INSERT INTO notificacoes VALUES("68","sistema","O Usuario demo  fez login na data 2020-03-17 09:15:19","","","2","vista","","2","2020-03-17 09:15:19","");
INSERT INTO notificacoes VALUES("69","sistema","O Usuario demo  fez login na data 2020-03-17 14:17:43","","","2","vista","","2","2020-03-17 14:17:43","");
INSERT INTO notificacoes VALUES("70","sistema","O Usuario demo  fez login na data 2020-03-18 08:51:04","","","2","vista","","2","2020-03-18 08:51:04","");
INSERT INTO notificacoes VALUES("71","sistema","O Usuario demo  fez login na data 2020-03-18 09:01:28","","","2","vista","","2","2020-03-18 09:01:28","");
INSERT INTO notificacoes VALUES("72","sistema","O Usuario demo  fez login na data 2020-03-18 11:42:24","","","2","vista","","2","2020-03-18 11:42:24","");
INSERT INTO notificacoes VALUES("73","sistema","O Usuario demo  fez login na data 2020-03-18 16:01:31","","","2","vista","","2","2020-03-18 16:01:31","");
INSERT INTO notificacoes VALUES("74","sistema","O Usuario demo  fez login na data 2020-03-18 16:25:45","","","2","vista","","2","2020-03-18 16:25:45","");
INSERT INTO notificacoes VALUES("75","sistema","O Usuario demo  fez login na data 2020-03-18 16:38:11","","","2","vista","","2","2020-03-18 16:38:11","");
INSERT INTO notificacoes VALUES("76","sistema","O Usuario demo  fez login na data 2020-03-18 17:44:05","","","2","vista","","2","2020-03-18 17:44:05","");
INSERT INTO notificacoes VALUES("77","sistema","O Usuario demo  fez login na data 2020-03-19 08:30:18","","","2","vista","","2","2020-03-19 08:30:18","");
INSERT INTO notificacoes VALUES("78","sistema","O Usuario demo  fez login na data 2020-03-19 09:11:30","","","2","vista","","2","2020-03-19 09:11:30","");
INSERT INTO notificacoes VALUES("79","sistema","O Usuario demo  fez login na data 2020-03-19 09:54:40","","","2","vista","","2","2020-03-19 09:54:40","");
INSERT INTO notificacoes VALUES("80","sistema","O Usuario demo  fez login na data 2020-03-19 17:24:06","","","2","vista","","2","2020-03-19 17:24:06","");
INSERT INTO notificacoes VALUES("81","sistema","O Usuario demo  fez login na data 2020-03-20 08:10:44","","","2","vista","","2","2020-03-20 08:10:44","");
INSERT INTO notificacoes VALUES("82","sistema","O Usuario demo  fez login na data 2020-03-20 08:10:47","","","2","vista","","2","2020-03-20 08:10:47","");
INSERT INTO notificacoes VALUES("83","sistema","O Usuario demo  fez login na data 2020-03-20 10:40:20","","","2","vista","","2","2020-03-20 10:40:20","");
INSERT INTO notificacoes VALUES("84","sistema","O Usuario demo  fez login na data 2020-03-20 14:14:25","","","2","vista","","2","2020-03-20 14:14:25","");
INSERT INTO notificacoes VALUES("85","sistema","O Usuario demo  fez login na data 2020-03-20 17:17:00","","","2","vista","","2","2020-03-20 17:17:00","");
INSERT INTO notificacoes VALUES("86","sistema","O Usuario demo  fez login na data 2020-03-20 23:00:00","","","2","vista","","2","2020-03-20 23:00:00","");
INSERT INTO notificacoes VALUES("87","sistema","O Usuario demo  fez login na data 2020-03-21 07:23:04","","","2","vista","","2","2020-03-21 07:23:04","");
INSERT INTO notificacoes VALUES("88","sistema","O Usuario demo  fez login na data 2020-03-21 15:41:05","","","2","vista","","2","2020-03-21 15:41:05","");
INSERT INTO notificacoes VALUES("89","sistema","O Usuario demo  fez login na data 2020-03-23 09:07:41","","","2","vista","","2","2020-03-23 09:07:41","");
INSERT INTO notificacoes VALUES("90","sistema","O Usuario demo  fez login na data 2020-03-23 10:12:24","","","2","vista","","2","2020-03-23 10:12:24","");
INSERT INTO notificacoes VALUES("91","sistema","O Usuario demo  fez login na data 2020-03-23 15:04:04","","","2","vista","","2","2020-03-23 15:04:04","");
INSERT INTO notificacoes VALUES("92","sistema","O Usuario demo  fez login na data 2020-03-25 08:13:16","","","2","vista","","2","2020-03-25 08:13:16","");
INSERT INTO notificacoes VALUES("93","sistema","O Usuario demo  fez login na data 2020-03-25 13:24:11","","","2","vista","","2","2020-03-25 13:24:11","");
INSERT INTO notificacoes VALUES("94","sistema","O Usuario demo  fez login na data 2020-03-26 08:34:29","","","2","vista","","2","2020-03-26 08:34:29","");
INSERT INTO notificacoes VALUES("95","sistema","O Usuario demo  fez login na data 2020-03-26 11:31:45","","","2","vista","","2","2020-03-26 11:31:45","");
INSERT INTO notificacoes VALUES("96","sistema","O Usuario demo  fez login na data 2020-03-27 10:00:57","","","2","vista","","2","2020-03-27 10:00:57","");
INSERT INTO notificacoes VALUES("97","sistema","O Usuario demo  fez login na data 2020-03-28 14:50:03","","","2","vista","","2","2020-03-28 14:50:03","");
INSERT INTO notificacoes VALUES("98","sistema","O Usuario demo  fez login na data 2020-03-28 17:53:36","","","2","vista","","2","2020-03-28 17:53:36","");
INSERT INTO notificacoes VALUES("99","sistema","O Usuario demo  fez login na data 2020-03-29 09:00:50","","","2","vista","","2","2020-03-29 09:00:50","");
INSERT INTO notificacoes VALUES("100","sistema","O Usuario demo  fez login na data 2020-03-29 09:44:17","","","2","vista","","2","2020-03-29 09:44:17","");
INSERT INTO notificacoes VALUES("101","sistema","O Usuario demo  fez login na data 2020-03-29 13:24:20","","","2","vista","","2","2020-03-29 13:24:20","");
INSERT INTO notificacoes VALUES("102","sistema","O Usuario demo  fez login na data 2020-03-30 08:49:27","","","2","vista","","2","2020-03-30 08:49:27","");
INSERT INTO notificacoes VALUES("103","sistema","O Usuario demo  fez login na data 2020-03-30 22:04:38","","","2","vista","","2","2020-03-30 22:04:38","");
INSERT INTO notificacoes VALUES("104","sistema","O Usuario demo  fez login na data 2020-03-31 08:52:47","","","2","vista","","2","2020-03-31 08:52:47","");
INSERT INTO notificacoes VALUES("105","sistema","O Usuario demo  fez login na data 2020-03-31 12:46:51","","","2","vista","","2","2020-03-31 12:46:51","");
INSERT INTO notificacoes VALUES("106","sistema","O Usuario demo  fez login na data 2020-04-02 07:45:03","","","2","vista","","2","2020-04-02 07:45:03","");
INSERT INTO notificacoes VALUES("107","sistema","O Usuario demo  fez login na data 2020-04-02 18:04:06","","","2","vista","","2","2020-04-02 18:04:06","");
INSERT INTO notificacoes VALUES("108","sistema","O Usuario demo  fez login na data 2020-04-02 18:30:00","","","2","vista","","2","2020-04-02 18:30:00","");
INSERT INTO notificacoes VALUES("109","sistema","O Usuario demo  fez login na data 2020-04-03 07:13:43","","","2","vista","","2","2020-04-03 07:13:43","");
INSERT INTO notificacoes VALUES("110","sistema","O Usuario demo  fez login na data 2020-04-03 20:36:05","","","2","vista","","2","2020-04-03 20:36:05","");
INSERT INTO notificacoes VALUES("111","sistema","O Usuario demo  fez login na data 2020-04-06 07:10:22","","","2","vista","","2","2020-04-06 07:10:22","");
INSERT INTO notificacoes VALUES("112","sistema","O Usuario demo  fez login na data 2020-04-06 09:48:40","","","2","vista","","2","2020-04-06 09:48:40","");
INSERT INTO notificacoes VALUES("113","sistema","O Usuario demo  fez login na data 2020-04-14 08:57:23","","","2","vista","","2","2020-04-14 08:57:23","");
INSERT INTO notificacoes VALUES("114","sistema","O Usuario demo  fez login na data 2020-04-15 08:17:34","","","2","vista","","2","2020-04-15 08:17:34","");
INSERT INTO notificacoes VALUES("115","sistema","O Usuario demo  fez login na data 2020-04-16 09:42:41","","","2","vista","","2","2020-04-16 09:42:41","");
INSERT INTO notificacoes VALUES("116","sistema","O Usuario demo  fez login na data 2020-04-16 12:23:53","","","2","vista","","2","2020-04-16 12:23:53","");
INSERT INTO notificacoes VALUES("117","sistema","O Usuario demo  fez login na data 2020-04-16 12:48:48","","","2","vista","","2","2020-04-16 12:48:48","");
INSERT INTO notificacoes VALUES("118","sistema","O Usuario demo  fez login na data 2020-04-20 09:28:04","","","2","vista","","2","2020-04-20 09:28:04","");
INSERT INTO notificacoes VALUES("119","sistema","O Usuario demo  fez login na data 2020-04-20 10:27:11","","","2","vista","","2","2020-04-20 10:27:11","");
INSERT INTO notificacoes VALUES("120","sistema","O Usuario demo  fez login na data 2020-04-20 16:23:37","","","2","vista","","2","2020-04-20 16:23:37","");
INSERT INTO notificacoes VALUES("121","sistema","O Usuario demo  fez login na data 2020-04-21 08:26:46","","","2","vista","","2","2020-04-21 08:26:46","");
INSERT INTO notificacoes VALUES("122","sistema","O Usuario demo  fez login na data 2020-04-21 09:46:50","","","2","vista","","2","2020-04-21 09:46:50","");
INSERT INTO notificacoes VALUES("123","sistema","O Usuario demo  fez login na data 2020-04-21 11:02:09","","","2","vista","","2","2020-04-21 11:02:09","");





CREATE TABLE IF NOT EXISTS `ol` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) DEFAULT NULL,
  `referencia` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `montante` double DEFAULT NULL,
  `data_transacao` date DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `conta_bancaria_id` int(11) DEFAULT NULL,
  `tipo_de_transacao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anexos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ol_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `ol_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO ol VALUES("1","2","FT-0002/2020","166800","2020-04-16","1","1","2","cash-in-by-sale","Payment for FT-0002/2020","","46","2020-04-16 13:04:32","");
INSERT INTO ol VALUES("2","2","FT-0001/2020","166800","2020-04-16","1","1","2","cash-in-by-sale","Payment for FT-0001/2020","","46","2020-04-16 13:04:33","");
INSERT INTO ol VALUES("3","2","FT-0002/2020","70000","2020-04-20","1","1","2","cash-in-by-sale","Payment for FT-0002/2020","","46","2020-04-20 16:57:04","");
INSERT INTO ol VALUES("4","2","OC-0001/2020","-43050","2020-04-21","1","1","2","cash-in-by-sale","Payment for Supplier OC-0001/2020","","46","2020-04-21 10:08:50","");
INSERT INTO ol VALUES("5","2","OC-0001/2020","-43050","2020-04-21","1","1","2","cash-in-by-sale","Payment for Supplier OC-0001/2020","","46","2020-04-21 10:08:51","");
INSERT INTO ol VALUES("6","2","OC-0001/2020","-43050","2020-04-21","1","1","2","cash-in-by-sale","Payment for Supplier OC-0001/2020","","46","2020-04-21 10:32:24","");
INSERT INTO ol VALUES("7","2","FT-0003/2020","184500","2020-04-21","1","1","2","cash-in-by-sale","Payment for FT-0003/2020","","46","2020-04-21 13:32:34","");
INSERT INTO ol VALUES("8","2","FT-0002/2020","100470","2020-04-21","1","1","2","cash-in-by-sale","Payment for FT-0002/2020","","46","2020-04-21 13:32:54","");
INSERT INTO ol VALUES("9","2","FT-0001/2020","100470","2020-04-21","1","1","2","cash-in-by-sale","Payment for FT-0001/2020","","46","2020-04-21 13:32:54","");





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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permissao_armazem VALUES("1","1","1","activo","46","2020-02-24 09:23:00","");
INSERT INTO permissao_armazem VALUES("2","2","1","activo","46","2020-02-24 09:23:00","");
INSERT INTO permissao_armazem VALUES("3","2","2","activo","48","2020-02-24 09:23:00","");
INSERT INTO permissao_armazem VALUES("4","1","2","activo","48","2020-02-24 09:23:00","");





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





CREATE TABLE IF NOT EXISTS `pl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `po_id` int(11) DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor_pago` double DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pl_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `pl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO pl VALUES("3","3","2","OC-0001/2020","2020-04-21","43050","46","","");





CREATE TABLE IF NOT EXISTS `po` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fornecedor_id` int(11) DEFAULT NULL,
  `conta_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `referencia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `codigo_movimento` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_do_cheque` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `po_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `po_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO po VALUES("3","3","2","1","1","2020-04-21","PF-0001/2020","43050","2","","","","46","2020-04-21 10:32:24","");





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
INSERT INTO preference VALUES("5","company","site_short_name","FT");
INSERT INTO preference VALUES("6","preference","percentage","0");
INSERT INTO preference VALUES("7","preference","quantity","0");
INSERT INTO preference VALUES("8","preference","date_format_type","dd-mm-yyyy");
INSERT INTO preference VALUES("9","company","company_name","FACTURACAO");
INSERT INTO preference VALUES("10","company","company_email","abdulsumail@gmail.com");
INSERT INTO preference VALUES("11","company","company_phone","863335511");
INSERT INTO preference VALUES("12","company","company_street","Rua Paiva Couceira(UDENAMO) , Nr 153 2 andar");
INSERT INTO preference VALUES("13","company","company_city","Cidade de Maputo");
INSERT INTO preference VALUES("14","company","company_state","Maputo");
INSERT INTO preference VALUES("15","company","company_zipCode","1100");
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
  `conta_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `referencia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `codigo_movimento` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_do_cheque` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'activo',
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ra_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `ra_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `re` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) DEFAULT NULL,
  `conta_id` int(11) DEFAULT NULL,
  `metodo_pagamento_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `referencia` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `codigo_movimento` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome_do_banco` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_do_cheque` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'activo',
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `re_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO re VALUES("1","11","2","1","1","2020-04-16","RE-0001/2020","166800","2","","","","cancelado","46","2020-04-16 13:04:32","");
INSERT INTO re VALUES("2","11","2","1","1","2020-04-20","RE-0002/2020","70000","2","","","","activo","46","2020-04-20 16:57:03","");
INSERT INTO re VALUES("3","9","2","1","1","2020-04-21","RE-0003/2020","184500","2","","","","activo","46","2020-04-21 13:32:34","");
INSERT INTO re VALUES("4","11","2","1","1","2020-04-21","RE-0004/2020","100470","2","","","","activo","46","2020-04-21 13:32:54","");





CREATE TABLE IF NOT EXISTS `rn` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `re_id` int(10) NOT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` date DEFAULT NULL,
  `valor_pago` double DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rn_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `rn_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO rn VALUES("1","1","4","FT-0002/2020","2020-04-16","70800","46","","");
INSERT INTO rn VALUES("2","1","3","FT-0001/2020","2020-04-16","96000","46","","");
INSERT INTO rn VALUES("3","2","4","FT-0002/2020","2020-04-16","70000","46","","");
INSERT INTO rn VALUES("4","3","5","FT-0003/2020","2020-04-20","184500","46","","");
INSERT INTO rn VALUES("5","4","4","FT-0002/2020","2020-04-16","3800","46","","");
INSERT INTO rn VALUES("6","4","3","FT-0001/2020","2020-04-16","96670","46","","");





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
INSERT INTO role_user VALUES("30","1");





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






CREATE TABLE IF NOT EXISTS `sl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo_produto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_movimento` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `documento_id` int(11) DEFAULT NULL,
  `referencia_documento` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `armazem_id` int(11) DEFAULT NULL,
  `referencia_armazem` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sl_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `sl_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO sl VALUES("1","tvlg55","saida","2","2020-04-16","3","FT-0001/2020","1","","-15","46","2020-04-16 12:57:57","");
INSERT INTO sl VALUES("2","Gkci","saida","2","2020-04-16","3","FT-0001/2020","1","","-1","46","2020-04-16 12:57:57","");
INSERT INTO sl VALUES("3","ip6s","saida","2","2020-04-16","3","FT-0001/2020","1","","-1","46","2020-04-16 12:57:58","");
INSERT INTO sl VALUES("4","Mo","saida","2","2020-04-16","4","FT-0002/2020","1","","-123","46","2020-04-16 13:02:05","");
INSERT INTO sl VALUES("5","Gkci","saida","2","2020-04-20","5","FT-0003/2020","1","","-123","46","2020-04-20 10:13:08","");
INSERT INTO sl VALUES("7","ip6s","entrada","2","2020-04-21","2","OC-0001/2020","1","","123","46","2020-04-21 10:32:13","");
INSERT INTO sl VALUES("8","ip6s","saida","2","2020-04-21","6","FT-0004/2020","1","","-231","46","2020-04-21 13:34:09","");
INSERT INTO sl VALUES("9","ip6s","entrada","2","2020-04-21","3","OC-0002/2020","1","","31","46","2020-04-21 13:34:25","");





CREATE TABLE IF NOT EXISTS `st` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lotes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imagem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preco_venda` double DEFAULT '0',
  `preco_compra` double DEFAULT '0',
  `inclusao_iva` int(11) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `unidade_medida_id` int(11) DEFAULT NULL,
  `tipo_imposto_id` int(11) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `st_empresa_id_foreign` (`empresa_id`),
  CONSTRAINT `st_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `cust_empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO st VALUES("5","ip6s","Iphone 6s","0","no","","","400","350","0","1","6","7","1","activo","46","2020-03-30 22:07:35","");
INSERT INTO st VALUES("7","Gkci","Geleira K.I.C","0","no","","","1500","990","0","1","6","7","1","activo","46","2020-03-31 08:55:51","");
INSERT INTO st VALUES("8","Mo","Monitor 23\"","0","no","","","600","500","0","1","6","7","1","activo","46","2020-03-31 09:08:13","2020-04-02 20:27:44");
INSERT INTO st VALUES("9","tvlg55\"","Tv LG 55\"","0","no","","","6000","5500","0","1","6","7","1","activo","46","2020-04-15 08:59:51","");





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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO taxas VALUES("1","2019-03-15 15:23:44","1","1","activo","1","46","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("2","2019-03-15 15:23:44","61.2","62.42","inactivo","2","46","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("3","2019-03-15 15:23:44","69.7","71.09","activo","3","46","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("4","2019-03-15 15:23:44","78.8","80.38","activo","4","46","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("5","2019-03-15 15:23:45","4.39","4.48","activo","5","46","2019-03-15 15:23:45","");
INSERT INTO taxas VALUES("6","2019-06-24","61.5","66.30","activo","2","46","2019-06-24 09:54:10","");
INSERT INTO taxas VALUES("7","2019-04-18 08:30:36","1","1","activo","6","44","2019-04-18 08:30:36","");
INSERT INTO taxas VALUES("8","2019-03-15 15:23:44","1","1","activo","1","49","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("9","2019-03-15 15:23:44","61.2","62.42","inactivo","2","49","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("10","2019-03-15 15:23:44","69.7","71.09","activo","3","49","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("11","2019-03-15 15:23:44","78.8","80.38","activo","4","49","2019-03-15 15:23:44","");
INSERT INTO taxas VALUES("12","2019-03-15 15:23:45","4.39","4.48","activo","5","49","2019-03-15 15:23:45","");





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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO termo_pagamento VALUES("1","Pagamento na Entrega","0","yes","activo","46","2019-12-02 11:22:00","");
INSERT INTO termo_pagamento VALUES("2","Net15","15","no","activo","46","2019-12-02 11:22:00","");
INSERT INTO termo_pagamento VALUES("3","Net30","30","no","activo","46","2019-12-02 11:22:00","");
INSERT INTO termo_pagamento VALUES("7","Pagamento na Entrega","0","yes","activo","48","2019-12-02 11:22:00","");
INSERT INTO termo_pagamento VALUES("8","Net15","15","no","activo","48","2019-12-02 11:22:00","");
INSERT INTO termo_pagamento VALUES("9","Net30","30","no","activo","48","2019-12-02 11:22:00","");





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
INSERT INTO tipo_imposto VALUES("2","Regime Simplificado","3","no","48","","");
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
  KEY `transacoes_metodo_pagamento_id_foreign` (`metodo_pagamento_id`)
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
  KEY `transferencias_conta_bancaria_id_foreign` (`conta_bancaria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `unidade_medida` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abreviatura` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `empresa_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unidade_medida_empresa_id_foreign` (`empresa_id`)
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO users VALUES("2","","$2y$10$GbgX0Z2DGHOJIWAkFbkXaOPGH1Fu8QBqktctseholx3RLlKHGM/Y6","demo","1","+258 847 775 604","demo@n3.co.mz","2019-02-27 15-21-28-blank-profile.png","0","dpPKfUe35rxRLw2Xzzqna49VDUozPhu3a6gxzJTPIvcCoC2nRsNTKUvoOJmv","2017-12-30 10:14:15","2020-04-21 11:02:07","0","1");
INSERT INTO users VALUES("27","","$2y$10$/Jjc6dzrCLyeVa2NsuXLMOhuEKxp71ulWSbCPVXHdkEqpcAztu596","NC Software House","1","863335511","abdulsumail@gmail.com","","0","PxwVf1iwOHv5bhB3FZ0aLHZahmuNFg3OtfD5T3XaRyIM3c9vCxRa46DNGpNV","2020-01-23 07:25:24","2020-03-07 09:30:11","48","1");





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
INSERT INTO versoes VALUES("2","Gold 1.3.0","130.00","Facturacao estavel com os detalhes abaixos corrigidos.
\n									Possibilidade de editar os lan�amentos do m�s 
\n									2. Limitar acesso a edi��o de lan�amentos, por exemplo das despesas 
\n									3. Possibilidade de exportar a folha do Inss para o sissmo . 
\n									4. determinadas tabelas auxiliares devem estar dispon�veis em todas as empresas
\n									5. Por alguma raz�o a l�ngua por defeito est� o espanhol
\n									6. Funcionalidade de impress�o em massa dos recibos","2","activo","2019-05-30","2019-05-30 18:52:11","");



