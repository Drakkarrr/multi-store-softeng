CREATE TABLE IF NOT EXISTS `lease` (
  `lease_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_code` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `package_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `lease_duration` int(11) NOT NULL,
  `advance` decimal(2,2) NOT NULL,
  `markup` decimal(2,2) NOT NULL,
  `grace_period` tinyint(2) NOT NULL COMMENT 'if customer wants to settle within the grace period then he will not be charged for the current month''s lease',
  `isactive` tinyint(1) NOT NULL,
  `createby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`lease_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `lease_product_map` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lease_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_lease_id1` (`lease_id`),
  KEY `fk_prod_id1` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `lease_store_map` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lease_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_store_lease_id1` (`lease_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;