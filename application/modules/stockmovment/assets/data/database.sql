CREATE TABLE IF NOT EXISTS `stock_movement` (
  `movement_id` int(11) NOT NULL AUTO_INCREMENT,
  `proposal_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `issue_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `for_store_id` int(11) NOT NULL,
  `from_store_id` int(11) NOT NULL,
  `for_warehouse` int(11) NOT NULL,
  `from_warehouse` int(11) NOT NULL,
  `proposal_datetime` datetime NOT NULL,
  `proposal_by` int(11) NOT NULL,
  `issue_datetime` datetime NOT NULL,
  `issue_by` int(11) NOT NULL,
  `proposal_remarks` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `issue_remarks` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `receive_by` int(11) NOT NULL,
  `receive_datetime` datetime NOT NULL,
  `receive_remarks` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `is_proposed` tinyint(1) NOT NULL,
  `is_issued` tinyint(1) NOT NULL,
  `is_received` tinyint(1) NOT NULL,
  PRIMARY KEY (`movement_id`),
  UNIQUE KEY `proposal_code_unique` (`proposal_code`),
  UNIQUE KEY `issue_code_unique` (`issue_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `stock_movement_details` (
  `movement_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `proposal_qty` int(11) NOT NULL,
  `issue_qty` int(11) NOT NULL,
  `received_qty` int(11) NOT NULL,
  UNIQUE KEY `movement_id` (`movement_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
ALTER TABLE `stock_movement_details`
  ADD CONSTRAINT `stock_movement_details_ibfk_1` FOREIGN KEY (`movement_id`) REFERENCES `stock_movement` (`movement_id`);