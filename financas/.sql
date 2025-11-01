ALTER TABLE `seguro_garantia` ADD `nacionalidade` VARCHAR(10) NOT NULL DEFAULT 'Nacional' COMMENT 'Nacional\r\nInternacional' AFTER `empresa_id`;
ALTER TABLE `seguro_garantia` CHANGE `nacionalidade` `nacionalidade` VARCHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Nacional' COMMENT 'Nacional\r\nInternacional';
