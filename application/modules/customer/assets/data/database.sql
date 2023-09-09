CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL COMMENT 'This is Store ID',
  `customer_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `customer_cnic` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `job_designation` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `business_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `createby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_code_unique` (`customer_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;