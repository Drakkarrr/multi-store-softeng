
CREATE TABLE IF NOT EXISTS `warehouse` (
  `warehouse_id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `warehouse_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `warehouse_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `warehouse_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `createby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;