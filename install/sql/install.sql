

--
-- Table structure for table `accesslog`
--

CREATE TABLE IF NOT EXISTS `accesslog` (
  `sl_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_page` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_done` text COLLATE utf8_unicode_ci,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  UNIQUE KEY `SerialNo` (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `acc_coa`
--

CREATE TABLE IF NOT EXISTS `acc_coa` (
  `HeadCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHeadName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HeadLevel` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `IsTransaction` tinyint(1) NOT NULL,
  `IsGL` tinyint(1) NOT NULL,
  `HeadType` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `IsBudget` tinyint(1) NOT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL,
  PRIMARY KEY (`HeadName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('4021403', 'AC', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:55', '', '2015-10-15 00:00:00'),
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:43', '', '2015-10-15 00:00:00'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, '0.00', '', '2015-10-15 00:00:00', 'admin', '2013-09-18 15:29:35'),
('1020201', 'Advance', 'Advance, Deposit And Pre-payments', 3, 1, 0, 1, 'A', 0, 0, '0.00', 'Zoherul', '2015-05-31 13:29:12', 'admin', '2015-12-31 16:46:32'),
('102020103', 'Advance House Rent', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-10-02 16:55:38', 'admin', '2016-10-02 16:57:32'),
('10202', 'Advance, Deposit And Pre-payments', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, '0.00', '', '2015-10-15 00:00:00', 'admin', '2015-12-31 16:46:24'),
('4020602', 'Advertisement and Publicity', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:51:44', '', '2015-10-15 00:00:00'),
('1010410', 'Air Cooler', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-05-23 12:13:55', '', '2015-10-15 00:00:00'),
('4020603', 'AIT Against Advertisement', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:09', '', '2015-10-15 00:00:00'),
('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, 0, '0.00', '', '2015-10-15 00:00:00', '', '2015-10-15 00:00:00'),
('1010204', 'Attendance Machine', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:49:31', '', '2015-10-15 00:00:00'),
('40216', 'Audit Fee', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2017-07-18 12:54:30', '', '2015-10-15 00:00:00'),
('102010202', 'Bank AlFalah', 'Cash At Bank', 4, 1, 1, 1, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:32:37', 'admin', '2015-10-15 15:32:52'),
('4021002', 'Bank Charge', 'Financial Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:21:03', '', '2015-10-15 00:00:00'),
('30203', 'Bank Interest', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'Obaidul', '2015-01-03 14:49:54', 'admin', '2016-09-25 11:04:19'),
('1010104', 'Book Shelf', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:11', '', '2015-10-15 00:00:00'),
('1010407', 'Books and Journal', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:45:37', '', '2015-10-15 00:00:00'),
('10201020301', 'Branch 1', 'Standard Bank', 5, 1, 1, 1, 'A', 0, 0, '0.00', '2', '2018-07-19 13:44:33', '', '2015-10-15 00:00:00'),
('4020604', 'Business Development Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:29', '', '2015-10-15 00:00:00'),
('4020606', 'Campaign Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:52:57', 'admin', '2016-09-19 14:52:48'),
('4020502', 'Campus Rent', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:46:53', 'admin', '2017-04-27 17:02:39'),
('40212', 'Car Running Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:28:43', '', '2015-10-15 00:00:00'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 0, 'A', 0, 0, '0.00', '', '2015-10-15 00:00:00', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-19 13:43:59', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 1, 'A', 0, 0, '0.00', '2', '2018-07-31 12:56:28', 'admin', '2016-05-23 12:05:43'),
('30101', 'Cash Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:26', '', '2015-10-15 00:00:00'),
('1010207', 'CCTV', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:24', '', '2015-10-15 00:00:00'),
('102020102', 'CEO Current A/C', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-09-25 11:54:54', '', '2015-10-15 00:00:00'),
('1010101', 'Class Room Chair', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:45:29', '', '2015-10-15 00:00:00'),
('4021407', 'Close Circuit Cemera', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:35', '', '2015-10-15 00:00:00'),
('4020601', 'Commision on Admission', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:51:21', 'admin', '2016-09-19 14:42:54'),
('1010206', 'Computer', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:09', '', '2015-10-15 00:00:00'),
('4021410', 'Computer (R)', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-03-24 12:38:52', 'Zoherul', '2016-03-24 12:41:40'),
('1010102', 'Computer Table', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:45:44', '', '2015-10-15 00:00:00'),
('301020401', 'Continuing Registration fee - UoL (Income)', 'Registration Fee (UOL) Income', 4, 1, 1, 0, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:40:40', '', '2015-10-15 00:00:00'),
('4020904', 'Contratuall Staff Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:34', '', '2015-10-15 00:00:00'),
('403', 'Cost of Sale', 'Expence', 0, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-08 10:37:16', '', '2015-10-15 00:00:00'),
('4020709', 'Cultural Expense', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'nasmud', '2017-04-29 12:45:10', '', '2015-10-15 00:00:00'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '', '2015-10-15 00:00:00', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:34:31', 'admin', '2018-07-07 12:31:42'),
('40100002', 'cw-Chichawatni', 'Store Expenses', 2, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-08-02 16:30:41', '', '2015-10-15 00:00:00'),
('1020202', 'Deposit', 'Advance, Deposit And Pre-payments', 3, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:40:42', '', '2015-10-15 00:00:00'),
('4020605', 'Design & Printing Expense', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:55:00', '', '2015-10-15 00:00:00'),
('4020404', 'Dish Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:21', '', '2015-10-15 00:00:00'),
('40215', 'Dividend', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2016-09-25 14:07:55', '', '2015-10-15 00:00:00'),
('4020403', 'Drinking Water Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:10', '', '2015-10-15 00:00:00'),
('1010211', 'DSLR Camera', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:53:17', 'admin', '2016-01-02 16:23:25'),
('4020908', 'Earned Leave', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:38', '', '2015-10-15 00:00:00'),
('4020607', 'Education Fair Expenses', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:53:42', '', '2015-10-15 00:00:00'),
('1010602', 'Electric Equipment', 'Electrical Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:44:51', '', '2015-10-15 00:00:00'),
('1010203', 'Electric Kettle', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:49:07', '', '2015-10-15 00:00:00'),
('10106', 'Electrical Equipment', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:43:44', '', '2015-10-15 00:00:00'),
('4020407', 'Electricity Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:59:31', '', '2015-10-15 00:00:00'),
('10202010501', 'employ', 'Salary', 5, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:47:10', '', '2015-10-15 00:00:00'),
('40201', 'Entertainment', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2013-07-08 16:21:26', 'anwarul', '2013-07-17 14:21:47'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, 0, '0.00', '', '2015-10-15 00:00:00', '', '2015-10-15 00:00:00'),
('4', 'Expence', 'COA', 0, 1, 0, 0, 'E', 0, 0, '0.00', '', '2015-10-15 00:00:00', '', '2015-10-15 00:00:00'),
('4020903', 'Faculty,Staff Salary & Allowances', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:21', '', '2015-10-15 00:00:00'),
('4021404', 'Fax Machine', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:34:15', '', '2015-10-15 00:00:00'),
('4020905', 'Festival & Incentive Bonus', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:48', '', '2015-10-15 00:00:00'),
('1010103', 'File Cabinet', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:02', '', '2015-10-15 00:00:00'),
('40210', 'Financial Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-08-20 12:24:31', 'admin', '2015-10-15 19:20:36'),
('1010403', 'Fire Extingushier', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:39:32', '', '2015-10-15 00:00:00'),
('4021408', 'Furniture', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:47', '', '2015-10-15 00:00:00'),
('10101', 'Furniture & Fixturers', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'anwarul', '2013-08-20 16:18:15', 'anwarul', '2013-08-21 13:35:40'),
('4020406', 'Gas Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:59:20', '', '2015-10-15 00:00:00'),
('20201', 'General Reserve', 'Reserve & Surplus', 2, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-25 14:07:12', 'admin', '2016-10-02 17:48:49'),
('10105', 'Generator', 'Non Current Assets', 2, 1, 1, 1, 'A', 0, 0, '0.00', 'Zoherul', '2016-02-27 16:02:35', 'admin', '2016-05-23 12:05:18'),
('4021414', 'Generator Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-06-16 10:21:05', '', '2015-10-15 00:00:00'),
('40213', 'Generator Running Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:29:29', '', '2015-10-15 00:00:00'),
('10103', 'Groceries and Cutleries', 'Non Current Assets', 2, 1, 1, 1, 'A', 0, 0, '0.00', '2', '2018-07-12 10:02:55', '', '2015-10-15 00:00:00'),
('1010408', 'Gym Equipment', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:46:03', '', '2015-10-15 00:00:00'),
('4020907', 'Honorarium', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:26', '', '2015-10-15 00:00:00'),
('40205', 'House Rent', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-08-24 10:26:56', '', '2015-10-15 00:00:00'),
('40100001', 'HP-Hasilpur', 'Academic Expenses', 2, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-29 03:44:23', '', '2015-10-15 00:00:00'),
('4020702', 'HR Recruitment Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:55:49', '', '2015-10-15 00:00:00'),
('4020703', 'Incentive on Admission', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:56:09', '', '2015-10-15 00:00:00'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, 0, '0.00', '', '2015-10-15 00:00:00', '', '2015-10-15 00:00:00'),
('30204', 'Income from Photocopy & Printing', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'Zoherul', '2015-07-14 10:29:54', 'admin', '2016-09-25 11:04:28'),
('5020302', 'Income Tax Payable', 'Liabilities for Expenses', 3, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2016-09-19 11:18:17', 'admin', '2016-09-28 13:18:35'),
('102020302', 'Insurance Premium', 'Prepayment', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-09-19 13:10:57', '', '2015-10-15 00:00:00'),
('4021001', 'Interest on Loan', 'Financial Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:20:53', 'admin', '2016-09-19 14:53:34'),
('4020401', 'Internet Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:56:55', 'admin', '2015-10-15 18:57:32'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-07 15:21:58', '', '2015-10-15 00:00:00'),
('10205010101', 'Jahangir', 'Hasan', 1, 1, 0, 0, 'A', 0, 0, '0.00', '2', '2018-07-07 10:40:56', '', '2015-10-15 00:00:00'),
('1010210', 'LCD TV', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:52:27', '', '2015-10-15 00:00:00'),
('30103', 'Lease Sale', 'Store Income', 1, 1, 1, 1, 'I', 0, 0, '0.00', '2', '2018-07-08 07:51:52', '', '2015-10-15 00:00:00'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, 0, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('50203', 'Liabilities for Expenses', 'Current Liabilities', 2, 1, 0, 0, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:59', '', '2015-10-15 00:00:00'),
('4020707', 'Library Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2017-01-10 15:34:54', '', '2015-10-15 00:00:00'),
('4021409', 'Lift', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:36:12', '', '2015-10-15 00:00:00'),
('50101', 'Long Term Borrowing', 'Non Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2013-07-04 12:32:26', 'admin', '2015-10-15 19:47:40'),
('4020608', 'Marketing & Promotion Exp.', 'Promonational Expence', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:53:59', '', '2015-10-15 00:00:00'),
('4020901', 'Medical Allowance', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:11:33', '', '2015-10-15 00:00:00'),
('1010411', 'Metal Ditector', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'Zoherul', '2016-08-22 10:55:22', '', '2015-10-15 00:00:00'),
('4021413', 'Micro Oven', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-05-12 14:53:51', '', '2015-10-15 00:00:00'),
('30202', 'Miscellaneous (Income)', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'anwarul', '2014-02-06 15:26:31', 'admin', '2016-09-25 11:04:35'),
('4020909', 'Miscellaneous Benifit', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:53', '', '2015-10-15 00:00:00'),
('4020701', 'Miscellaneous Exp', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-09-25 12:54:39', '', '2015-10-15 00:00:00'),
('40207', 'Miscellaneous Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2014-04-26 16:49:56', 'admin', '2016-09-25 12:54:19'),
('1010401', 'Mobile Phone', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-29 10:43:30', '', '2015-10-15 00:00:00'),
('102020101', 'Mr Ashiqur Rahman', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-12-31 16:47:23', 'admin', '2016-09-25 11:55:13'),
('1010212', 'Network Accessories', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-02 16:23:32', '', '2015-10-15 00:00:00'),
('4020408', 'News Paper Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-01-02 15:55:57', '', '2015-10-15 00:00:00'),
('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, 0, '0.00', '', '2015-10-15 00:00:00', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1010404', 'Office Decoration', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:40:02', '', '2015-10-15 00:00:00'),
('10102', 'Office Equipment', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'anwarul', '2013-12-06 18:08:00', 'admin', '2015-10-15 15:48:21'),
('4021401', 'Office Repair & Maintenance', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:15', '', '2015-10-15 00:00:00'),
('30201', 'Office Stationary (Income)', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'anwarul', '2013-07-17 15:21:06', 'admin', '2016-09-25 11:04:50'),
('402', 'Other Expenses', 'Expence', 1, 1, 0, 0, 'E', 0, 0, '0.00', '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42'),
('302', 'Other Income', 'Income', 1, 1, 0, 0, 'I', 0, 0, '0.00', '2', '2018-07-07 13:40:57', 'admin', '2016-09-25 11:04:09'),
('40211', 'Others (Non Academic Expenses)', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'Obaidul', '2014-12-03 16:05:42', 'admin', '2015-10-15 19:22:09'),
('30205', 'Others (Non-Academic Income)', 'Other Income', 2, 1, 0, 1, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:23:49', 'admin', '2015-10-15 17:57:52'),
('10104', 'Others Assets', 'Non Current Assets', 2, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2016-01-29 10:43:16', '', '2015-10-15 00:00:00'),
('4020910', 'Outstanding Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 11:56:50', '', '2015-10-15 00:00:00'),
('4021405', 'Oven', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:34:31', '', '2015-10-15 00:00:00'),
('4021412', 'PABX-Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 14:40:18', '', '2015-10-15 00:00:00'),
('4020902', 'Part-time Staff Salary', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:12:06', '', '2015-10-15 00:00:00'),
('1010202', 'Photocopy & Fax Machine', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:47:27', 'admin', '2016-05-23 12:14:40'),
('4021411', 'Photocopy Machine Repair', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'Zoherul', '2016-04-24 12:40:02', 'admin', '2017-04-27 17:03:17'),
('3020503', 'Practical Fee', 'Others (Non-Academic Income)', 3, 1, 1, 1, 'I', 0, 0, '0.00', 'admin', '2017-07-22 18:00:37', '', '2015-10-15 00:00:00'),
('1020203', 'Prepayment', 'Advance, Deposit And Pre-payments', 3, 1, 0, 1, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:40:51', 'admin', '2015-12-31 16:49:58'),
('1010201', 'Printer', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:47:15', '', '2015-10-15 00:00:00'),
('40202', 'Printing and Stationary', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2013-07-08 16:21:45', 'admin', '2016-09-19 14:39:32'),
('3020502', 'Professional Training Course(Oracal-1)', 'Others (Non-Academic Income)', 3, 1, 1, 0, 'I', 0, 0, '0.00', 'nasim', '2017-06-22 13:28:05', '', '2015-10-15 00:00:00'),
('30207', 'Professional Training Course(Oracal)', 'Other Income', 2, 1, 0, 1, 'I', 0, 0, '0.00', 'nasim', '2017-06-22 13:24:16', 'nasim', '2017-06-22 13:25:56'),
('1010208', 'Projector', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:44', '', '2015-10-15 00:00:00'),
('40206', 'Promonational Expence', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-07-11 13:48:57', 'anwarul', '2013-07-17 14:23:03'),
('40214', 'Repair and Maintenance', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:32:46', '', '2015-10-15 00:00:00'),
('202', 'Reserve & Surplus', 'Equity', 1, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2016-09-25 14:06:34', 'admin', '2016-10-02 17:48:57'),
('20102', 'Retained Earnings', 'Share Holders Equity', 2, 1, 1, 1, 'L', 0, 0, '0.00', 'admin', '2016-05-23 11:20:40', 'admin', '2016-09-25 14:05:06'),
('4020708', 'River Cruse', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2017-04-24 15:35:25', '', '2015-10-15 00:00:00'),
('102020105', 'Salary', 'Advance', 4, 1, 0, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:46:44', '', '2015-10-15 00:00:00'),
('40209', 'Salary & Allowances', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-12-12 11:22:58', '', '2015-10-15 00:00:00'),
('404', 'Sale Discount', 'Expence', 1, 1, 1, 0, 'E', 0, 0, '0.00', '2', '2018-07-19 10:15:11', '', '2015-10-15 00:00:00'),
('1010406', 'Security Equipment', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:41:30', '', '2015-10-15 00:00:00'),
('20101', 'Share Capital', 'Share Holders Equity', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'anwarul', '2013-12-08 19:37:32', 'admin', '2015-10-15 19:45:35'),
('201', 'Share Holders Equity', 'Equity', 1, 1, 0, 0, 'L', 0, 0, '0.00', '', '2015-10-15 00:00:00', 'admin', '2015-10-15 19:43:51'),
('50201', 'Short Term Borrowing', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:50:30', '', '2015-10-15 00:00:00'),
('5020200001', 'Smart Power & Techologies', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-25 11:45:12', '', '2015-10-15 00:00:00'),
('40208', 'Software Development Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-11-21 14:13:01', 'admin', '2015-10-15 19:02:51'),
('4020906', 'Special Allowances', 'Salary & Allowances', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:13:13', '', '2015-10-15 00:00:00'),
('50102', 'Sponsors Loan', 'Non Current Liabilities', 2, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:48:02', '', '2015-10-15 00:00:00'),
('4020706', 'Sports Expense', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'nasmud', '2016-11-09 13:16:53', '', '2015-10-15 00:00:00'),
('102010203', 'Standard Bank', 'Cash At Bank', 4, 1, 1, 1, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:33:33', 'admin', '2015-10-15 15:33:48'),
('102010204', 'State Bank', 'Cash At Bank', 4, 1, 1, 1, 'A', 0, 0, '0.00', 'admin', '2015-12-31 16:44:14', '', '2015-10-15 00:00:00'),
('401', 'Store Expenses', 'Expence', 1, 1, 0, 0, 'E', 0, 0, '0.00', '2', '2018-07-07 13:38:59', 'admin', '2015-10-15 17:58:46'),
('301', 'Store Income', 'Income', 1, 1, 0, 0, 'I', 0, 0, '0.00', '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02'),
('3020501', 'Students Info. Correction Fee', 'Others (Non-Academic Income)', 3, 1, 1, 0, 'I', 0, 0, '0.00', 'admin', '2015-10-15 17:24:45', '', '2015-10-15 00:00:00'),
('1010601', 'Sub Station', 'Electrical Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:44:11', '', '2015-10-15 00:00:00'),
('5020200006', 'sup-4-Eco star', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2018-07-27 10:15:58', '', '2015-10-15 00:00:00'),
('5020200007', 'sup-5-New', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2018-08-02 16:23:42', '', '2015-10-15 00:00:00'),
('5020200002', 'sup-5-Sharif', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2018-07-12 10:04:21', '', '2015-10-15 00:00:00'),
('5020200003', 'sup-6-Talha', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2018-07-14 10:16:52', '', '2015-10-15 00:00:00'),
('5020200004', 'sup-7-MS. Tel&Co.', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2018-07-19 05:06:18', '', '2015-10-15 00:00:00'),
('5020200005', 'sup-8-july', 'Account Payable', 3, 1, 1, 0, 'L', 0, 0, '0.00', '2', '2018-07-27 09:41:53', '', '2015-10-15 00:00:00'),
('4020704', 'TB Care Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-10-08 13:03:04', '', '2015-10-15 00:00:00'),
('30206', 'TB Care Income', 'Other Income', 2, 1, 1, 1, 'I', 0, 0, '0.00', 'admin', '2016-10-08 13:00:56', '', '2015-10-15 00:00:00'),
('4020501', 'TDS on House Rent', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:44:07', 'admin', '2016-09-19 14:40:16'),
('502030201', 'TDS Payable House Rent', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-19 11:19:42', 'admin', '2016-09-28 13:19:37'),
('502030203', 'TDS Payable on Advertisement Bill', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-28 13:20:51', '', '2015-10-15 00:00:00'),
('502030202', 'TDS Payable on Salary', 'Income Tax Payable', 4, 1, 1, 0, 'L', 0, 0, '0.00', 'admin', '2016-09-28 13:20:17', '', '2015-10-15 00:00:00'),
('4021402', 'Tea Kettle', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:33:45', '', '2015-10-15 00:00:00'),
('4020402', 'Telephone Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:57:59', '', '2015-10-15 00:00:00'),
('1010209', 'Telephone Set & PABX', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:51:57', 'admin', '2016-10-02 17:10:40'),
('102020104', 'Test', 'Advance', 4, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2018-07-05 11:42:48', '', '2015-10-15 00:00:00'),
('40203', 'Travelling & Conveyance', 'Other Expenses', 2, 1, 1, 1, 'E', 0, 0, '0.00', 'admin', '2013-07-08 16:22:06', 'admin', '2015-10-15 18:45:13'),
('4021406', 'TV', 'Repair and Maintenance', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 19:35:07', '', '2015-10-15 00:00:00'),
('1010205', 'UPS', 'Office Equipment', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:50:38', '', '2015-10-15 00:00:00'),
('40204', 'Utility Expenses', 'Other Expenses', 2, 1, 0, 1, 'E', 0, 0, '0.00', 'anwarul', '2013-07-11 16:20:24', 'admin', '2016-01-02 15:55:22'),
('4020503', 'VAT on House Rent Exp', 'House Rent', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:49:22', 'admin', '2016-09-25 14:00:52'),
('5020301', 'VAT Payable', 'Liabilities for Expenses', 3, 1, 0, 1, 'L', 0, 0, '0.00', 'admin', '2015-10-15 19:51:11', 'admin', '2016-09-28 13:23:53'),
('1010409', 'Vehicle A/C', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'Zoherul', '2016-05-12 12:13:21', '', '2015-10-15 00:00:00'),
('1010405', 'Voltage Stablizer', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-03-27 10:40:59', '', '2015-10-15 00:00:00'),
('1010105', 'Waiting Sofa - Steel', 'Furniture & Fixturers', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2015-10-15 15:46:29', '', '2015-10-15 00:00:00'),
('4020405', 'WASA Bill', 'Utility Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2015-10-15 18:58:51', '', '2015-10-15 00:00:00'),
('1010402', 'Water Purifier', 'Others Assets', 3, 1, 1, 0, 'A', 0, 0, '0.00', 'admin', '2016-01-29 11:14:11', '', '2015-10-15 00:00:00'),
('4020705', 'Website Development Expenses', 'Miscellaneous Expenses', 3, 1, 1, 0, 'E', 0, 0, '0.00', 'admin', '2016-10-15 12:42:47', '', '2015-10-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `acc_customer_income`
--

CREATE TABLE IF NOT EXISTS `acc_customer_income` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_glsummarybalance`
--

CREATE TABLE IF NOT EXISTS `acc_glsummarybalance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COAID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `FYear` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_income_expence`
--

CREATE TABLE IF NOT EXISTS `acc_income_expence` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Student_Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Paymode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Perpose` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci NOT NULL,
  `StoreID` int(11) NOT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `IsApprove` tinyint(4) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_temp`
--

CREATE TABLE IF NOT EXISTS `acc_temp` (
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Debit` decimal(18,2) NOT NULL,
  `Credit` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acc_transaction`
--

CREATE TABLE IF NOT EXISTS `acc_transaction` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `StoreID` int(11) NOT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `country_state_city`
--

CREATE TABLE IF NOT EXISTS `country_state_city` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `text` varchar(30) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_state_city`
--

INSERT INTO `country_state_city` (`id`, `name`, `text`, `parent_id`) VALUES
(1, 'test', 'sdfsdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL COMMENT 'This is Store ID',
  `customer_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_cnic` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `job_designation` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `createby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_code_unique` (`customer_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `customer_gurrantor_map`
--

CREATE TABLE IF NOT EXISTS `customer_gurrantor_map` (
  `rowid` bigint(20) NOT NULL AUTO_INCREMENT,
  `lease_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `gurrantor_id` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `lease_id` (`lease_id`,`customer_id`,`gurrantor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `employeeno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `store_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CardNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`employeeno`),
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `gurrantor`
--

CREATE TABLE IF NOT EXISTS `gurrantor` (
  `gurrantor_id` int(11) NOT NULL AUTO_INCREMENT,
  `gurrantor_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `gurrantor_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gurrantor_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gurrantor_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gurrantor_cnic` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `job_designation` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `business_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `createby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`gurrantor_id`),
  UNIQUE KEY `gurrantor_code_unique` (`gurrantor_code`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`) VALUES
(2, 'login', 'Login'),
(3, 'email', 'Email Address'),
(4, 'password', 'Password'),
(5, 'reset', 'Reset'),
(6, 'dashboard', 'Dashboard'),
(7, 'home', 'Home'),
(8, 'profile', 'Profile'),
(9, 'profile_setting', 'Profile Setting'),
(10, 'firstname', 'First Name'),
(11, 'lastname', 'Last Name'),
(12, 'about', 'About'),
(13, 'preview', 'Preview'),
(14, 'image', 'Image'),
(15, 'save', 'Save'),
(16, 'upload_successfully', 'Upload Successfully!'),
(17, 'user_added_successfully', 'User Added Successfully!'),
(18, 'please_try_again', 'Please Try Again...'),
(19, 'inbox_message', 'Inbox Messages'),
(20, 'sent_message', 'Sent Message'),
(21, 'message_details', 'Message Details'),
(22, 'new_message', 'New Message'),
(23, 'receiver_name', 'Receiver Name'),
(24, 'sender_name', 'Sender Name'),
(25, 'subject', 'Subject'),
(26, 'message', 'Message'),
(27, 'message_sent', 'Message Sent!'),
(28, 'ip_address', 'IP Address'),
(29, 'last_login', 'Last Login'),
(30, 'last_logout', 'Last Logout'),
(31, 'status', 'Status'),
(32, 'delete_successfully', 'Delete Successfully!'),
(33, 'send', 'Send'),
(34, 'date', 'Date'),
(35, 'action', 'Action'),
(36, 'sl_no', 'SL No.'),
(37, 'are_you_sure', 'Are You Sure ? '),
(38, 'application_setting', 'Application Setting'),
(39, 'application_title', 'Application Title'),
(40, 'address', 'Address'),
(41, 'phone', 'Phone'),
(42, 'favicon', 'Favicon'),
(43, 'logo', 'Logo'),
(44, 'language', 'Language'),
(45, 'left_to_right', 'Left To Right'),
(46, 'right_to_left', 'Right To Left'),
(47, 'footer_text', 'Footer Text'),
(48, 'site_align', 'Application Alignment'),
(49, 'welcome_back', 'Welcome Back!'),
(50, 'please_contact_with_admin', 'Please Contact With Admin'),
(51, 'incorrect_email_or_password', 'Incorrect Email/Password'),
(52, 'select_option', 'Select Option'),
(53, 'ftp_setting', 'Data Synchronize [FTP Setting]'),
(54, 'hostname', 'Host Name'),
(55, 'username', 'User Name'),
(56, 'ftp_port', 'FTP Port'),
(57, 'ftp_debug', 'FTP Debug'),
(58, 'project_root', 'Project Root'),
(59, 'update_successfully', 'Update Successfully'),
(60, 'save_successfully', 'Save Successfully!'),
(61, 'delete_successfully', 'Delete Successfully!'),
(62, 'internet_connection', 'Internet Connection'),
(63, 'ok', 'Ok'),
(64, 'not_available', 'Not Available'),
(65, 'available', 'Available'),
(66, 'outgoing_file', 'Outgoing File'),
(67, 'incoming_file', 'Incoming File'),
(68, 'data_synchronize', 'Data Synchronize'),
(69, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration'),
(70, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings'),
(71, 'download_successfully', 'Download Successfully'),
(72, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration'),
(73, 'data_import_first', 'Data Import First'),
(74, 'data_import_successfully', 'Data Import Successfully!'),
(75, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.'),
(76, 'download_data_from_server', 'Download Data from Server'),
(77, 'data_import_to_database', 'Data Import To Database'),
(79, 'data_upload_to_server', 'Data Upload to Server'),
(80, 'please_wait', 'Please Wait...'),
(81, 'ooops_something_went_wrong', ' Ooops something went wrong...'),
(82, 'module_permission_list', 'Module Permission List'),
(83, 'user_permission', 'User Permission'),
(84, 'add_module_permission', 'Add Module Permission'),
(85, 'module_permission_added_successfully', 'Module Permission Added Successfully!'),
(86, 'update_module_permission', 'Update Module Permission'),
(87, 'download', 'Download'),
(88, 'module_name', 'Module Name'),
(89, 'create', 'Create'),
(90, 'read', 'Read'),
(91, 'update', 'Update'),
(92, 'delete', 'Delete'),
(93, 'module_list', 'Module List'),
(94, 'add_module', 'Add Module'),
(95, 'directory', 'Module Direcotory'),
(96, 'description', 'Description'),
(97, 'image_upload_successfully', 'Image Upload Successfully!'),
(98, 'module_added_successfully', 'Module Added Successfully'),
(99, 'inactive', 'Inactive'),
(100, 'active', 'Active'),
(101, 'user_list', 'User List'),
(102, 'see_all_message', 'See All Messages'),
(103, 'setting', 'Setting'),
(104, 'logout', 'Logout'),
(105, 'admin', 'Admin'),
(106, 'add_user', 'Add User'),
(107, 'user', 'User'),
(108, 'module', 'Module'),
(109, 'new', 'New'),
(110, 'inbox', 'Inbox'),
(111, 'sent', 'Sent'),
(112, 'synchronize', 'Synchronize'),
(113, 'data_synchronizer', 'Data Synchronizer'),
(114, 'module_permission', 'Module Permission'),
(115, 'backup_now', 'Backup Now!'),
(116, 'restore_now', 'Restore Now!'),
(117, 'backup_and_restore', 'Backup and Restore'),
(118, 'captcha', 'Captcha Word'),
(119, 'database_backup', 'Database Backup'),
(120, 'restore_successfully', 'Restore Successfully'),
(121, 'backup_successfully', 'Backup Successfully'),
(122, 'filename', 'File Name'),
(123, 'file_information', 'File Information'),
(124, 'size', 'size'),
(125, 'backup_date', 'Backup Date'),
(126, 'overwrite', 'Overwrite'),
(127, 'invalid_file', 'Invalid File!'),
(128, 'invalid_module', 'Invalid Module'),
(129, 'remove_successfully', 'Remove Successfully!'),
(130, 'install', 'Install'),
(131, 'uninstall', 'Uninstall'),
(132, 'tables_are_not_available_in_database', 'Tables are not available in database.sql'),
(133, 'no_tables_are_registered_in_config', 'No tables are registerd in config.php'),
(134, 'enquiry', 'Enquiry'),
(135, 'read_unread', 'Read/Unread'),
(136, 'enquiry_information', 'Enquiry Information'),
(137, 'user_agent', 'User Agent'),
(138, 'checked_by', 'Checked By'),
(139, 'new_enquiry', 'New Enquiry'),
(140, 'role', 'Role'),
(141, 'add_role', 'Add Role'),
(142, 'role_list', 'Role List'),
(143, 'name', 'Name'),
(144, 'isactive', 'Is Active'),
(145, 'set', 'Set'),
(146, 'store', 'Store'),
(147, 'add_store', 'Add Store'),
(148, 'list_store', 'Store List'),
(149, 'store_name', 'Store Name'),
(150, 'store_code', 'Store Code'),
(151, 'store_address', 'Store Address'),
(152, 'store_phone', 'Store Phone'),
(153, 'user_role', 'User Role'),
(154, 'add_user_role', 'Add User Role'),
(155, 'user_role_list', 'User Role List'),
(156, 'role_name', 'Role Name'),
(157, 'user_type', 'User Type'),
(158, 'super_admin', 'Super Admin'),
(159, 'sl', 'SL'),
(160, 'user_name', 'User Name'),
(161, 'create_user_role', 'Create User Role'),
(162, 'role_permission', 'Role Permission'),
(163, 'add_role_permission', 'Add Role Permission'),
(164, 'role_permission_list', 'Role Permission List'),
(165, 'permission_error', 'You Have No Permission'),
(166, 'employee', 'Employee'),
(167, 'add', 'Add '),
(168, 'list', 'List'),
(169, 'designation', 'Designation'),
(170, 'cardno', 'NID'),
(171, 'department', 'Department'),
(172, 'customer', 'Customer'),
(173, 'customer_code', 'Customer Code'),
(174, 'customer_name', 'Customer Name'),
(175, 'business_address', 'Business Address'),
(176, 'customer_cnic', 'Customer CNIC'),
(177, 'product_name', 'Product Name'),
(178, 'product_category', 'Product Category'),
(179, 'product', 'Product'),
(180, 'product_details', 'Product Details'),
(181, 'price', 'Price'),
(182, 'category', 'Category'),
(183, 'category_name', 'Category Name'),
(184, 'supplier', 'Supplier'),
(185, 'supplier_name', 'Supplier Name'),
(186, 'purchase_order', 'Puchase Order'),
(187, 'stock_ctn', 'Stock Qty'),
(188, 'quantity', 'Qty'),
(189, 'total', 'Total'),
(190, 'grand_total', 'Grand Total'),
(191, 'add_new_item', 'Add New Product'),
(192, 'submit_and_add_another', 'Submit and Another'),
(193, 'submit', 'Submit '),
(194, 'order_no', 'Order NO'),
(195, 'warehouse', 'Warehouse'),
(196, 'assign_role', 'Assign Role'),
(197, 'add_warehouse', 'Add Warehouse'),
(198, 'list_warehouse', 'Warehouse list'),
(199, 'warehouse_name', 'Warehouse Name'),
(200, 'warehouse_code', 'Warehouse code'),
(201, 'warehouse_phone', 'Warehouse Phone'),
(202, 'warehouse_address', 'Warehouse Address'),
(203, 'check_receive', 'Check_receive'),
(204, 'receive', 'Receive'),
(205, 'order_qty', 'Order QTY'),
(206, 'receive_quantity', 'Receive QTY'),
(207, 'order_date', 'Order Date'),
(208, 'storewarehouse', 'Store/warehouse'),
(209, 'successfully_approved', 'Successfully Approved'),
(210, 'disapprove', 'Disapprove'),
(211, 'approved', 'Approve'),
(212, 'receive_list', 'Receive List'),
(213, 'voucher_no', 'Voucher No'),
(214, 'purchase_price', 'Purchase Price'),
(215, 'minimum_price', 'Minimum Price'),
(216, 'retail_price', 'Retail Price'),
(217, 'block_price', 'Block Price'),
(218, 'a', 'A'),
(219, 'in', 'In A'),
(220, 'receive_qty', 'Receive QTY'),
(221, 'sale', 'Sales'),
(222, 'cashsale', 'Cash Sale'),
(223, 'invoice_id', 'Invoice ID'),
(224, 'sales_man', 'Sales Man'),
(225, 'total_amount', 'Total Amount'),
(226, 'paid_amount', 'Paid Amount'),
(227, 'remaining_amnt', 'Remainig Amount'),
(228, 'lease', 'Lease'),
(229, 'pakage_code', 'Package  Code'),
(230, 'pakage_name', 'Package Name'),
(231, 'duration', 'Duration'),
(232, 'advance', 'Advance'),
(233, 'markup', 'Markup'),
(234, 'update_lease', 'Lease Update'),
(235, 'inquiry_officer', 'Inquiry Officer'),
(236, 'lease_package', 'Lease Package'),
(237, 'payment', 'Receiving '),
(238, 'invoice_no', 'Invoice No'),
(239, 'due_amnt', 'Due Amount'),
(240, 'cash_sale_list', 'Cash Sale List'),
(241, 'credit_sale_list', 'Credit Sale List'),
(242, 'lease_sale_list', 'Lease Sale List'),
(243, 'to', 'To'),
(244, 'advance_amount', 'Advance amount'),
(245, 'gurrantor_name', 'Gurrantor  Name'),
(246, 'gurrantor_code', 'Gurrantor  Code'),
(247, 'gurrantor_phone', 'Gurrantor  Phone'),
(248, 'gurrantor_address', 'Gurrantor Address'),
(249, 'gurrantor_cnic', 'Gurrantor  CNIC'),
(250, 'stockmovment', 'Stock Movement'),
(251, 'proposal_code', 'Proposal Code'),
(252, 'issue_code', 'Issue Code'),
(253, 'issue_date', 'Issue Date'),
(254, 'for_store', 'For Store'),
(255, 'from_store', 'From Store'),
(256, 'issue_by', 'Issue By'),
(257, 'product_code', 'Product Code'),
(258, 'proposal_qty', 'Proposal QTY'),
(259, 'please_choose_another_p_code', 'Please another Product Code!!!'),
(260, 'proposal_datetime', 'Proposal Date'),
(261, 'product_info', 'Product Info'),
(262, 'category_list', 'Category List'),
(263, 'add_product', 'Add Product'),
(264, 'product_list', 'Product List'),
(265, 'model_name', 'Model Name'),
(266, 'model', 'Model'),
(267, 'add_model', 'Add Model'),
(268, 'brand', 'Brand'),
(269, 'brand_name', 'Brand Name'),
(270, 'brand_list', 'Brand List'),
(271, 'unit_name', 'Unit Name'),
(272, 'unit', 'Unit of Measurement'),
(273, 'add_unit', 'Add Unit'),
(274, 'unit_list', 'Unit List'),
(275, 'pur_price', 'Pur Price'),
(276, 'min_price', 'Min Price'),
(277, 'retprice', 'Retl Price'),
(278, 'bl_price', 'BL Price'),
(279, 'cash', 'Cash'),
(280, 'credit', 'Credit'),
(281, 'customer_type', 'Customer Type'),
(282, 'code', 'Code'),
(283, 'cnic', 'CNIC'),
(284, 'um', 'U/M'),
(285, 'contact', 'Contact#'),
(286, 'package_amount', 'Package Amount'),
(287, 'recovery_received', 'Recovery Received'),
(288, 'require_install', 'Require Installment'),
(289, 'installment_amount', 'Installment Amount'),
(290, 'over_due_amount', 'Over Due Amount'),
(291, 'final_settlement', 'Final Settlement Amount'),
(292, 'final_settlement_discount', 'Final Settlement Discount'),
(293, 'receive_amnt', 'Receive Amount'),
(294, 'credit_receive', 'Credit Receive'),
(295, 'add_recovery_receiving', 'Add Recovery Receiving'),
(296, 'add_credit_receiving', 'Add Credit Receiving'),
(297, 'report', 'Report'),
(298, 'recovery', 'Recovery'),
(299, 'surplus', 'Surplus'),
(300, 'deficit', 'Deficit'),
(301, 'recovery_summary_report', 'Recovery Summary Report'),
(302, 'ac_wise_achivement', 'A/C Wise Achievement'),
(303, 'amount_wise_achivement', 'Amount Wise Achievement'),
(304, 'remaning_ac', 'Remaining A/C'),
(305, 'remaning_amount', 'Remaining Amount'),
(306, 'target', 'Target'),
(307, 'achievement', 'Achievement'),
(308, 'remaining', 'Remaining'),
(309, 'account', 'Account'),
(310, 'amount', 'Amount'),
(311, 'branches', 'Branches'),
(312, 'search', 'Search'),
(313, 'supplier_code', 'Supplier Code'),
(314, 'recovery_summary_report_datewise', 'Datewise Recovery Summary  '),
(315, 'proposed_by', 'Proposed By'),
(316, 'overdue_analysis', 'Over Due Analysis'),
(317, 'gurrantor', 'Gurrantor'),
(318, 'g_contact', 'G Contact'),
(319, 'install_no', '# of Installment'),
(320, 'lease_amount', 'Lease Amount'),
(321, 'installment_amnt', 'Installment Amount'),
(322, 'total_receive', 'Total Receive'),
(323, 'branch_wise_ov_du_analisis', 'Branch Wise Due Analysis'),
(324, 'over_due', 'Over Due'),
(325, 'days', 'Days'),
(326, 'last_payment_date', 'Last Payment Date'),
(327, 'location', 'Location'),
(328, 'discount', 'Disc'),
(329, 'creditsale', 'Credit Sale'),
(330, 'leasesale', 'Lease Sale'),
(331, 'oreder_list', 'Order List'),
(332, 'store_procedure', 'Store Procedure'),
(333, 'stock', 'Stock'),
(334, 'inqty', 'In QTY'),
(335, 'outqty', 'Out Qty'),
(336, 'select', 'Select'),
(337, 'contact_per_name', 'Contact Person '),
(338, 'c_p_contact', 'Person Contact#'),
(339, 'remark', 'Remark'),
(340, 'return', 'Return'),
(341, 'please_input_correct_invoice_no', 'Please Input a correct invoice number'),
(342, 'sales_return_form', 'Sales Return Form'),
(343, 'sale_qty', 'Sales Qty'),
(344, 'return_qty', 'Return Qty'),
(345, 'reason', 'Reason'),
(346, 'purchase_qty', 'Purchase Qty'),
(347, 'purchase_return', 'Purchase Return'),
(348, 'return_date', 'Return Date'),
(349, 'sale_return_list', 'Sales Return List'),
(350, 'purchase_return_list', 'Purchase Return List'),
(351, 'sales_return_view', 'Sales Return view'),
(352, 'purchase_return_view', 'Purchase Return veiw'),
(353, 'reports', 'Reports'),
(354, 'test', ''),
(355, 'recovery_list', 'Recovery List'),
(356, 'find', 'Find'),
(357, 'accounts', 'Accounts'),
(358, 'c_o_a', 'Chart of Accounts'),
(359, 'customer_transaction', 'Customer Transaction'),
(360, 'money_receipt', 'Money Receipt'),
(361, 'debit_voucher', 'Debit Voucher'),
(362, 'receive_by', 'Received By'),
(363, 'credit_voucher', 'Credit Voucher'),
(364, 'contra_voucher', 'Contra voucher'),
(365, 'journal_voucher', 'Journal Voucher'),
(366, 'voucher_approval', 'Voucher Approval'),
(367, 'check_status', 'Check Status'),
(368, 'account_report', 'Account Reports'),
(369, 'voucher_report', 'Voucher Report'),
(370, 'cash_book', 'Cash book'),
(371, 'bank_book', 'Bank Book'),
(372, 'income_expense', 'Income Expense'),
(373, 'general_ledger', 'General Ledger'),
(374, 'trial_balance', 'Trial Balance'),
(375, 'profit_loss', 'Profit Loss'),
(376, 'receipt_payment', 'Receipt Payment'),
(377, 'all_voucher', 'All Voucher'),
(378, 'cash_flow', 'Cash Flow'),
(379, 'stmt_of_financial_position', 'Stmt of Financial Position'),
(380, 'stmt_changes_equity', 'Stmt of Change Equity'),
(381, 'coa_print', 'Coa Print'),
(382, 'stock_qty', 'Stock Qty'),
(383, 'stock_value', 'Avg. Price'),
(384, 'add_more', 'Add more'),
(385, 'debit', 'Debit'),
(386, 'issue_qty', 'Issue Qty'),
(387, 'update_debit_voucher', 'Update Debit Voucher'),
(388, 'update_credit_voucher', 'Update Debit Voucher'),
(389, 'total_advance_amount', 'Total Advance Amount'),
(390, 'total_package_amount', 'Total Package Amount'),
(391, 'u_pack_price', 'Unit Package Price'),
(392, 'total_pack_price', 'Total Package Price'),
(393, 'from_date', 'From Date'),
(394, 'to_date', 'To Date'),
(395, 'gurrantor1', 'Gurrantor 1'),
(396, 'gurrantor2', 'Gurrantor 2'),
(397, 'customer_recovery', 'Customer Overdue Recovery'),
(398, 'stock_analysis_report', 'Stock Analysis Report'),
(399, 'lease_package_pricing', 'Lease Package Pricing'),
(400, 'cash_price', 'Cash Price'),
(401, 'package', 'Package'),
(402, 'lease_price', 'Lease Price'),
(403, 'monthly_installment', 'Monthly Installment'),
(404, 'recovery_report', 'Recovery Report'),
(405, 'stock_report', 'Stock Report'),
(406, 'lease_and_recovery_report', 'Lease & Recovery Report'),
(407, 'stock_history', 'Stock History'),
(408, 'sales_return', 'Sales Return'),
(409, 'balance_qty', 'Balance Qty'),
(410, 'sale_price', 'Sale Price'),
(411, 'general_ledger_of', 'general ledger of'),
(412, 'store_stock_history', 'Store Stock History'),
(413, 'po_no', 'PO No'),
(414, 'store_ledger', 'Store Ledger'),
(415, 'recovery_list_rpt', 'Recovery List Report'),
(416, 'store_isssue', 'Store Issue'),
(417, 'store_receive', 'Store Receive'),
(418, 'sales_amount', 'Sales Amount'),
(419, 'total_payable', 'Total Payable'),
(420, 'total_receivable', 'Total Receivable'),
(421, 'total_bank', 'Total Bank'),
(422, 'total_cash', 'Total Cash'),
(423, 'no_customer', '# of Customer'),
(424, 'monthly_sales_performance', 'Monthly Sales Performance'),
(425, 'over_due_analysis', 'Over Due Analysis'),
(426, 'products', 'Products'),
(427, 'stores', 'Stores'),
(428, 'customers', 'Customers'),
(429, 'users', 'Users'),
(430, 'qty', 'Qty'),
(431, 'value', 'Value'),
(432, 'backup', 'Backup'),
(433, 'receive_date', 'Receive Date'),
(434, 'customer_and_address', 'Customer & Address#'),
(435, 'gurrantor_and_contact', 'Gurrantor & Contact#'),
(436, 'lease_date', 'Lease Date'),
(437, 'remaining_amount', 'Remaining Amount'),
(438, 'last_payment', 'Last Payment'),
(439, 'overdue_amount', 'Over Due Amount'),
(440, 'lease_from', 'Lease From'),
(441, 'amount_greater_than', 'Amount Greater Than'),
(442, 'lease_to', 'Lease To'),
(443, 'amount_less_than', 'Amount less Than'),
(444, 'amount_equal', 'Amount Equal'),
(445, 'check_all_product', 'Check All Products'),
(446, 'check_all_store', 'Check All Stores');

-- --------------------------------------------------------

--
-- Table structure for table `lease`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `lease_product_map`
--

CREATE TABLE IF NOT EXISTS `lease_product_map` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lease_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_lease_id1` (`lease_id`),
  KEY `fk_prod_id1` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `lease_store_map`
--

CREATE TABLE IF NOT EXISTS `lease_store_map` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lease_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_store_lease_id1` (`lease_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;


--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'Accounts', 'Accounting', '', 'accounts', 1),
(3, 'Store Management', 'Store Management System', 'application/modules/store/assets/images/thumbnail.jpg', 'store', 1),
(6, 'Customer Management', 'Customer Information', 'application/modules/customer/assets/images/thumbnail.jpg', 'customer', 1),
(7, 'Product Management', 'Product Information', 'application/modules/product/assets/images/thumbnail.jpg', 'product', 1),
(9, 'supplier Management', 'supplier Information', 'application/modules/supplier/assets/images/thumbnail.jpg', 'supplier', 1),
(10, 'purchase Order Management', 'purchase_order Information', 'application/modules/purchase_order/assets/images/thumbnail.jpg', 'purchase_order', 1),
(12, 'sale Management', 'sale Information', 'application/modules/sale/assets/images/thumbnail.jpg', 'sale', 1),
(13, 'lease Management', 'lease Information', 'application/modules/lease/assets/images/thumbnail.jpg', 'lease', 1),
(14, 'Receiving', 'payment Management System', 'application/modules/payment/assets/images/thumbnail.jpg', 'payment', 1),
(17, 'stockmovment Management', 'stockmovment Information', 'application/modules/stockmovment/assets/images/thumbnail.jpg', 'stockmovment', 1),
(18, 'Return', 'return Information', 'application/modules/return/assets/images/thumbnail.jpg', 'return', 1),
(19, 'Reports', 'Reports Information', 'application/modules/reports/assets/images/thumbnail.jpg', 'reports', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_collection`
--

CREATE TABLE IF NOT EXISTS `payment_collection` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sale_id` bigint(20) NOT NULL,
  `invoice_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `receive_amnt` float NOT NULL,
  `due_amnt` float DEFAULT NULL,
  `receive_by` int(11) NOT NULL,
  `receive_date` date NOT NULL,
  `is_installment` int(11) NOT NULL DEFAULT '0',
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_details` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_price` float NOT NULL DEFAULT '0',
  `minimum_price` float NOT NULL DEFAULT '0',
  `retail_price` float NOT NULL DEFAULT '0',
  `block_price` float NOT NULL DEFAULT '0',
  `isactive` tinyint(1) NOT NULL,
  `createby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `product_brand`
--

CREATE TABLE IF NOT EXISTS `product_brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_name_unique` (`brand_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name_unique` (`category_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `product_model`
--

CREATE TABLE IF NOT EXISTS `product_model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`model_id`),
  UNIQUE KEY `model_name_unique` (`model_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--


--
-- Table structure for table `product_unit`
--

CREATE TABLE IF NOT EXISTS `product_unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`unit_id`),
  UNIQUE KEY `unit_name_unique` (`unit_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `purchase_order`
--

CREATE TABLE IF NOT EXISTS `purchase_order` (
  `po_no` bigint(20) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `createby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `isapproved` tinyint(1) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `total_amnt` float NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`po_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `purchase_order_details`
--

CREATE TABLE IF NOT EXISTS `purchase_order_details` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `po_no` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `discount` float NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_po_no1` (`po_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `purchase_receive`
--

CREATE TABLE IF NOT EXISTS `purchase_receive` (
  `receive_id` bigint(20) NOT NULL,
  `po_no` bigint(20) NOT NULL,
  `store_id` int(11) NOT NULL,
  `receive_by` int(11) NOT NULL,
  `receive_date` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `voucher_no` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`receive_id`),
  KEY `fk_po_no` (`po_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `purchase_receive_details`
--

CREATE TABLE IF NOT EXISTS `purchase_receive_details` (
  `receive_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `receive_qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float NOT NULL,
  KEY `fk_receive_id` (`receive_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `purchase_return`
--

CREATE TABLE IF NOT EXISTS `purchase_return` (
  `preturn_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `po_no` bigint(20) NOT NULL,
  `return_date` date NOT NULL,
  `totalamount` float NOT NULL,
  `totaldiscount` float NOT NULL,
  `return_reason` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`preturn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE IF NOT EXISTS `purchase_return_details` (
  `preturn_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Stand-in structure for view `recovery_list`
--
CREATE TABLE IF NOT EXISTS `recovery_list` (
`over_due` double
,`store_id` int(11)
,`invoice_no` varchar(20)
,`customer_id` int(11)
,`sales_date` date
,`lease_id` int(11)
,`installment_amnt` float
,`gurrantor_1` int(11)
,`remaining_amnt` float
,`package_price` float
,`advance_amnt` int(11)
,`receive_amnt` double
,`receive_date` date
,`is_installment` int(11)
,`lease_duration` int(11)
,`advance` decimal(2,2)
,`markup` decimal(2,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE IF NOT EXISTS `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_module_id` (`fk_module_id`),
  KEY `fk_user_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES
(52, 8, 4, 0, 0, 0, 0),
(53, 6, 4, 0, 0, 0, 0),
(54, 5, 4, 0, 0, 0, 0),
(55, 13, 4, 0, 0, 0, 0),
(56, 14, 4, 0, 0, 0, 0),
(57, 7, 4, 0, 0, 0, 0),
(58, 10, 4, 0, 0, 0, 0),
(59, 12, 4, 0, 0, 0, 0),
(61, 3, 4, 0, 0, 0, 0),
(62, 9, 4, 0, 0, 0, 0),
(63, 4, 4, 0, 0, 0, 0),
(64, 11, 4, 0, 0, 0, 0),
(178, 3, 1, 0, 0, 0, 0),
(179, 4, 1, 0, 0, 0, 0),
(180, 5, 1, 0, 0, 0, 0),
(181, 6, 1, 0, 0, 0, 0),
(182, 7, 1, 0, 0, 0, 0),
(183, 8, 1, 0, 0, 0, 0),
(184, 9, 1, 0, 0, 0, 0),
(185, 10, 1, 0, 0, 0, 0),
(186, 11, 1, 0, 0, 0, 0),
(187, 12, 1, 0, 0, 0, 0),
(188, 13, 1, 0, 0, 0, 0),
(189, 14, 1, 0, 0, 0, 0),
(214, 8, 5, 0, 0, 0, 0),
(215, 6, 5, 0, 0, 0, 0),
(216, 5, 5, 1, 1, 1, 1),
(217, 13, 5, 1, 1, 1, 1),
(218, 14, 5, 0, 0, 0, 0),
(219, 7, 5, 0, 0, 0, 0),
(220, 10, 5, 0, 0, 0, 0),
(221, 12, 5, 0, 0, 0, 0),
(223, 3, 5, 0, 0, 0, 0),
(224, 9, 5, 0, 0, 0, 0),
(225, 4, 5, 0, 0, 0, 0),
(226, 11, 5, 0, 0, 0, 0),
(313, 8, 2, 0, 0, 0, 0),
(314, 6, 2, 0, 0, 0, 0),
(315, 5, 2, 0, 0, 0, 0),
(316, 13, 2, 0, 0, 0, 0),
(317, 14, 2, 0, 0, 0, 0),
(318, 7, 2, 0, 0, 0, 0),
(319, 10, 2, 1, 1, 1, 1),
(320, 18, 2, 1, 1, 1, 1),
(321, 12, 2, 1, 1, 1, 1),
(322, 16, 2, 0, 0, 0, 0),
(323, 17, 2, 1, 1, 1, 1),
(324, 3, 2, 1, 1, 1, 1),
(325, 9, 2, 0, 0, 0, 0),
(326, 4, 2, 0, 0, 0, 0),
(327, 11, 2, 0, 0, 0, 0),
(473, 1, 3, 1, 1, 0, 0),
(474, 6, 3, 0, 1, 0, 1),
(475, 13, 3, 0, 0, 0, 0),
(476, 7, 3, 0, 1, 0, 0),
(477, 10, 3, 1, 1, 1, 1),
(478, 14, 3, 0, 0, 0, 0),
(479, 19, 3, 0, 0, 0, 0),
(480, 18, 3, 0, 0, 0, 0),
(481, 12, 3, 1, 1, 1, 1),
(482, 17, 3, 1, 1, 1, 0),
(483, 3, 3, 0, 0, 0, 0),
(484, 9, 3, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_parent`
--

CREATE TABLE IF NOT EXISTS `sales_parent` (
  `sale_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sale_type_id` tinyint(4) NOT NULL,
  `store_id` int(11) NOT NULL,
  `invoice_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `salesman` int(11) NOT NULL,
  `sales_date` date NOT NULL,
  `sales_time` time NOT NULL,
  `lease_id` int(11) DEFAULT NULL,
  `gurrantor_1` int(11) DEFAULT NULL,
  `gurrantor_2` int(11) DEFAULT NULL,
  `inquiry_officer` int(11) DEFAULT NULL,
  `total_amnt` float DEFAULT NULL,
  `package_price` float DEFAULT NULL,
  `advance_amnt` int(11) DEFAULT NULL,
  `remaining_amnt` float DEFAULT NULL,
  `installment_amnt` float DEFAULT NULL,
  `is_lease_settled` tinyint(1) NOT NULL DEFAULT '0',
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`sale_id`),
  UNIQUE KEY `invoice_no` (`invoice_no`),
  KEY `sale_type_id` (`sale_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `sales_return`
--

CREATE TABLE IF NOT EXISTS `sales_return` (
  `sreturn_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `sale_type_id` tinyint(1) DEFAULT NULL,
  `invoice_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `return_date` date NOT NULL,
  `totalamount` float NOT NULL,
  `totaldiscount` float NOT NULL,
  `return_reason` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`sreturn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `sales_return_details`
--

CREATE TABLE IF NOT EXISTS `sales_return_details` (
  `sreturn_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `sale_details`
--

CREATE TABLE IF NOT EXISTS `sale_details` (
  `sale_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sell_price` float NOT NULL,
  `lease_unit_price` float DEFAULT NULL,
  `sale_type_id` tinyint(4) DEFAULT NULL,
  UNIQUE KEY `sale_id` (`sale_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--

--
-- Table structure for table `sale_type`
--

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

--
-- Dumping data for table `sale_type`
--

INSERT INTO `sale_type` (`sale_type_id`, `sale_type`, `shortcode`, `createby`, `createdate`, `updateby`, `upadatedate`, `isactive`) VALUES
(1, 'Cash Sale', 'CS', 0, '2015-10-15 00:00:00', 0, '2015-10-15 00:00:00', 1),
(2, 'Partial Cash Sale', 'PS', 0, '2015-10-15 00:00:00', 0, '2015-10-15 00:00:00', 1),
(3, 'Lease Sale', 'LS', 0, '2015-10-15 00:00:00', 0, '2015-10-15 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sec_role`
--

CREATE TABLE IF NOT EXISTS `sec_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_role`
--

INSERT INTO `sec_role` (`id`, `name`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES
(5, 'Pricing User', 1, '2', '2018-05-15 03:23:45', '', NULL),
(4, 'Purchase User', 1, '2', '2018-05-15 03:23:32', '', NULL),
(2, 'Store Admin', 1, '2', '2018-05-15 03:22:59', '', NULL),
(3, 'Store User', 1, '2', '2018-05-15 03:23:22', '', NULL),
(1, 'Super Admin', 1, '2', '2018-05-15 03:22:44', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sec_userrole`
--

CREATE TABLE IF NOT EXISTS `sec_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_userrole`
--

INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES
(1, '3', 2, '2', '2018-05-15 03:24:36'),
(2, '6', 3, '2', '2018-05-15 03:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `address`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`) VALUES
(2, 'Multi Store Management', '98 Green Road, Farmgate, Dhaka-1215.', 'bdtask@gmail.com', '0123456789', 'assets/img/icons/logo.png', 'assets/img/icons/m.png', 'english', 'LTR', '2017Â©Copyright');

-- --------------------------------------------------------

--
-- Table structure for table `stock_movement`
--

CREATE TABLE IF NOT EXISTS `stock_movement` (
  `movement_id` int(11) NOT NULL AUTO_INCREMENT,
  `proposal_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `issue_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `for_store_id` int(11) NOT NULL,
  `from_store_id` int(11) NOT NULL,
  `for_warehouse` int(11) DEFAULT NULL,
  `from_warehouse` int(11) DEFAULT NULL,
  `proposal_datetime` date NOT NULL,
  `proposal_by` int(11) NOT NULL,
  `issue_datetime` date NOT NULL,
  `issue_by` int(11) NOT NULL,
  `proposal_remarks` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issue_remarks` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receive_by` int(11) NOT NULL,
  `receive_datetime` date NOT NULL,
  `receive_remarks` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `is_proposed` tinyint(1) DEFAULT NULL,
  `is_issued` tinyint(1) DEFAULT NULL,
  `is_received` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`movement_id`),
  UNIQUE KEY `proposal_code_unique` (`proposal_code`),
  UNIQUE KEY `issue_code_unique` (`issue_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `stock_movement_details`
--

CREATE TABLE IF NOT EXISTS `stock_movement_details` (
  `movement_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `proposal_qty` int(11) NOT NULL,
  `issue_qty` int(11) NOT NULL,
  `received_qty` int(11) NOT NULL,
  KEY `stock_movement_details_ibfk_1` (`movement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Stand-in structure for view `stoere_overdue`
--
CREATE TABLE IF NOT EXISTS `stoere_overdue` (
`store_id` int(11)
,`invoice_no` varchar(20)
,`customer_id` int(11)
,`sales_date` date
,`lease_id` int(11)
,`installment_amnt` float
,`package_price` float
,`advance_amnt` int(11)
,`receive_amnt` float
,`receive_date` date
,`is_installment` int(11)
,`lease_duration` int(11)
,`advance` decimal(2,2)
,`markup` decimal(2,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `store_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `store_phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `store_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `createby` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `contact_per_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `c_p_contact` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateby` int(11) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



--
-- Table structure for table `synchronizer_setting`
--

CREATE TABLE IF NOT EXISTS `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `synchronizer_setting`
--

INSERT INTO `synchronizer_setting` (`id`, `hostname`, `username`, `password`, `port`, `debug`, `project_root`) VALUES
(8, '70.35.198.200', 'spreadcargo', '123123123123', '21', 'true', './public_html/');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_store_stock`
--

CREATE TABLE IF NOT EXISTS `tmp_store_stock` (
  `StoreID` int(11) NOT NULL,
  `Stock_Date` datetime NOT NULL,
  `ProdID` bigint(20) NOT NULL,
  `InQty` int(11) NOT NULL,
  `OutQty` int(11) NOT NULL,
  `category_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `brand_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Remarks` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--

--
-- Table structure for table `treeview_items`
--

CREATE TABLE IF NOT EXISTS `treeview_items` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `text` varchar(200) NOT NULL,
  `parent_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--


-- Table structure for table `warehouse`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Structure for view `recovery_list`
--
DROP TABLE IF EXISTS `recovery_list`;

CREATE  VIEW `recovery_list`  AS  select (`sales_parent`.`remaining_amnt` - sum(`payment_collection`.`receive_amnt`)) AS `over_due`,`sales_parent`.`store_id` AS `store_id`,`sales_parent`.`invoice_no` AS `invoice_no`,`sales_parent`.`customer_id` AS `customer_id`,`sales_parent`.`sales_date` AS `sales_date`,`sales_parent`.`lease_id` AS `lease_id`,`sales_parent`.`installment_amnt` AS `installment_amnt`,`sales_parent`.`gurrantor_1` AS `gurrantor_1`,`sales_parent`.`remaining_amnt` AS `remaining_amnt`,`sales_parent`.`package_price` AS `package_price`,`sales_parent`.`advance_amnt` AS `advance_amnt`,sum(`payment_collection`.`receive_amnt`) AS `receive_amnt`,`payment_collection`.`receive_date` AS `receive_date`,`payment_collection`.`is_installment` AS `is_installment`,`lease`.`lease_duration` AS `lease_duration`,`lease`.`advance` AS `advance`,`lease`.`markup` AS `markup` from ((`sales_parent` join `payment_collection`) join `lease`) where ((`sales_parent`.`invoice_no` = `payment_collection`.`invoice_no`) and (`sales_parent`.`lease_id` = `lease`.`lease_id`) and (`payment_collection`.`is_installment` = 1)) group by `sales_parent`.`invoice_no` ;

-- --------------------------------------------------------

--
-- Structure for view `stoere_overdue`
--
DROP TABLE IF EXISTS `stoere_overdue`;

CREATE  VIEW `stoere_overdue`  AS  select `sales_parent`.`store_id` AS `store_id`,`sales_parent`.`invoice_no` AS `invoice_no`,`sales_parent`.`customer_id` AS `customer_id`,`sales_parent`.`sales_date` AS `sales_date`,`sales_parent`.`lease_id` AS `lease_id`,`sales_parent`.`installment_amnt` AS `installment_amnt`,`sales_parent`.`package_price` AS `package_price`,`sales_parent`.`advance_amnt` AS `advance_amnt`,`payment_collection`.`receive_amnt` AS `receive_amnt`,`payment_collection`.`receive_date` AS `receive_date`,`payment_collection`.`is_installment` AS `is_installment`,`lease`.`lease_duration` AS `lease_duration`,`lease`.`advance` AS `advance`,`lease`.`markup` AS `markup` from ((`sales_parent` join `payment_collection`) join `lease`) where ((`sales_parent`.`invoice_no` = `payment_collection`.`invoice_no`) and (`sales_parent`.`lease_id` = `lease`.`lease_id`)) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stock_movement_details`
--
ALTER TABLE `stock_movement_details`
  ADD CONSTRAINT `stock_movement_details_ibfk_1` FOREIGN KEY (`movement_id`) REFERENCES `stock_movement` (`movement_id`);

