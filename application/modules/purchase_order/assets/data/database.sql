CREATE TABLE IF NOT EXISTS `purchase_order` (
  `po_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `createby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `isapproved` tinyint(1) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `total_amnt` float NOT NULL,
  `is_received` tinyint(1) NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`po_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `purchase_order_details` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `po_no` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `receive_qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_po_no1` (`po_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `purchase_receive` (
  `receive_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `po_no` bigint(20) NOT NULL,
  `store_id` int(11) NOT NULL,
  `receive_by` int(11) NOT NULL,
  `receive_date` datetime NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `voucher_no` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`receive_id`),
  KEY `fk_po_no` (`po_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `purchase_receive_details` (
  `receive_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `receive_qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  KEY `fk_receive_id` (`receive_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
