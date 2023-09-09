CREATE TABLE IF NOT EXISTS `sales_parent` (
  `sale_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sale_type_id` tinyint(4) NOT NULL,
  `store_id` int(11) NOT NULL,
  `invoice_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `salesman` int(11) NOT NULL,
  `sales_date` date NOT NULL,
  `sales_time` time NOT NULL,
  `lease_id` int(11) NOT NULL,
  `gurrantor_1` int(11) NOT NULL,
  `gurrantor_2` int(11) NOT NULL,
  `inquiry_officer` int(11) NOT NULL,
  `total_amnt` float NOT NULL,
  `advance_amnt` int(11) NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`sale_id`),
  UNIQUE KEY `invoice_no` (`invoice_no`),
  KEY `sale_type_id` (`sale_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `sale_details` (
  `sale_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sell_price` float NOT NULL,
  `sale_type_id` tinyint(4) NOT NULL,
  UNIQUE KEY `sale_id` (`sale_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `sale_type` (
  `sale_type_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `sale_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shortcode` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` int(11) NOT NULL,
  `upadatedate` datetime NOT NULL,
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`sale_type_id`),
  UNIQUE KEY `shortcode` (`shortcode`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sale_type` (`sale_type_id`, `sale_type`, `shortcode`, `createby`, `createdate`, `updateby`, `upadatedate`, `isactive`) VALUES
(1, 'Cash Sale', 'CS', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(2, 'Partial Cash Sale', 'PS', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(3, 'Lease Sale', 'LS', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1);

