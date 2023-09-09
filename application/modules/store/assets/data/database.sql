
CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `store_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `store_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `store_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `createby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;