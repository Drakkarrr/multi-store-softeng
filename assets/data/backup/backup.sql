#
# TABLE STRUCTURE FOR: acc_coa
#

DROP TABLE IF EXISTS `acc_coa`;

CREATE TABLE `acc_coa` (
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

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021403', 'AC', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:33:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50202', 'Account Payable', 'Current Liabilities', '2', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2015-10-15 19:50:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10203', 'Account Receivable', 'Current Asset', '2', '1', '0', '0', 'A', '0', '0', '0.00', '', '0000-00-00 00:00:00', 'admin', '2013-09-18 15:29:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020201', 'Advance', 'Advance, Deposit And Pre-payments', '3', '1', '0', '1', 'A', '0', '0', '0.00', 'Zoherul', '2015-05-31 13:29:12', 'admin', '2015-12-31 16:46:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102020103', 'Advance House Rent', 'Advance', '4', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-10-02 16:55:38', 'admin', '2016-10-02 16:57:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10202', 'Advance, Deposit And Pre-payments', 'Current Asset', '2', '1', '0', '0', 'A', '0', '0', '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-12-31 16:46:24');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020602', 'Advertisement and Publicity', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:51:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010410', 'Air Cooler', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-05-23 12:13:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020603', 'AIT Against Advertisement', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:52:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1', 'Assets', 'COA', '0', '1', '0', '0', 'A', '0', '0', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010204', 'Attendance Machine', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:49:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40216', 'Audit Fee', 'Other Expenses', '2', '1', '1', '1', 'E', '0', '0', '0.00', 'admin', '2017-07-18 12:54:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102010202', 'Bank AlFalah', 'Cash At Bank', '4', '1', '1', '1', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:32:37', 'admin', '2015-10-15 15:32:52');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021002', 'Bank Charge', 'Financial Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:21:03', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30203', 'Bank Interest', 'Other Income', '2', '1', '1', '1', 'I', '0', '0', '0.00', 'Obaidul', '2015-01-03 14:49:54', 'admin', '2016-09-25 11:04:19');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010104', 'Book Shelf', 'Furniture & Fixturers', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:46:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010407', 'Books and Journal', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:45:37', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10201020301', 'Branch 1', 'Standard Bank', '5', '1', '1', '1', 'A', '0', '0', '0.00', '2', '2018-07-19 13:44:33', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020604', 'Business Development Expenses', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:52:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020606', 'Campaign Expenses', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:52:57', 'admin', '2016-09-19 14:52:48');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020502', 'Campus Rent', 'House Rent', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:46:53', 'admin', '2017-04-27 17:02:39');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40212', 'Car Running Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:28:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10201', 'Cash & Cash Equivalent', 'Current Asset', '2', '1', '0', '0', 'A', '0', '0', '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-10-15 15:57:55');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', '3', '1', '0', '0', 'A', '0', '0', '0.00', '2', '2018-07-19 13:43:59', 'admin', '2015-10-15 15:32:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', '3', '1', '1', '1', 'A', '0', '0', '0.00', '2', '2018-07-31 12:56:28', 'admin', '2016-05-23 12:05:43');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30101', 'Cash Sale', 'Store Income', '1', '1', '1', '1', 'I', '0', '0', '0.00', '2', '2018-07-08 07:51:26', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020101000002', 'Cash-Bdt-bdt-01', 'Cash In Hand', '4', '1', '1', '0', 'A', '0', '0', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020101000003', 'Cash-cw-Chichawatni', 'Cash In Hand', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-08-02 16:30:41', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000001', 'cc-1-Hasan', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-08 11:15:58', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000014', 'cc-1-shahin', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-08-01 07:53:03', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000013', 'cc-1-test', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-08-01 07:48:35', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000015', 'cc-2-TikTik', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-08-02 07:22:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000016', 'cc-3-cash sale', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-08-02 16:32:28', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000017', 'cc-4-Chicha', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '26', '2018-08-04 05:20:17', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000018', 'cc-5-aaa', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-08-04 16:22:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000019', 'cc-6-aaa', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '27', '2018-08-05 06:32:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010207', 'CCTV', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:51:24', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102020102', 'CEO Current A/C', 'Advance', '4', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-09-25 11:54:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010101', 'Class Room Chair', 'Furniture & Fixturers', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:45:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021407', 'Close Circuit Cemera', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:35:35', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020601', 'Commision on Admission', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:51:21', 'admin', '2016-09-19 14:42:54');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010206', 'Computer', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:51:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021410', 'Computer (R)', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-03-24 12:38:52', 'Zoherul', '2016-03-24 12:41:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010102', 'Computer Table', 'Furniture & Fixturers', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:45:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('301020401', 'Continuing Registration fee - UoL (Income)', 'Registration Fee (UOL) Income', '4', '1', '1', '0', 'I', '0', '0', '0.00', 'admin', '2015-10-15 17:40:40', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020904', 'Contratuall Staff Salary', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:12:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('403', 'Cost of Sale', 'Expence', '0', '1', '1', '0', 'E', '0', '0', '0.00', '2', '2018-07-08 10:37:16', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102030200', 'cr-1-nisar', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-12 06:08:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000011', 'cr-2-imad', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-27 10:39:37', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000002', 'cr-3-kpr', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-08 12:01:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000003', 'cr-4-Isahaq', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-08 12:46:06', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30102', 'Credit Sale', 'Store Income', '1', '1', '1', '1', 'I', '0', '0', '0.00', '2', '2018-07-08 07:51:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020709', 'Cultural Expense', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'nasmud', '2017-04-29 12:45:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102', 'Current Asset', 'Assets', '1', '1', '0', '0', 'A', '0', '0', '0.00', '', '0000-00-00 00:00:00', 'admin', '2018-07-07 11:23:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502', 'Current Liabilities', 'Liabilities', '1', '1', '0', '0', 'L', '0', '0', '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301', 'Customer Receivable', 'Account Receivable', '3', '1', '0', '1', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:34:31', 'admin', '2018-07-07 12:31:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40100002', 'cw-Chichawatni', 'Store Expenses', '2', '1', '1', '0', 'E', '0', '0', '0.00', '2', '2018-08-02 16:30:41', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020202', 'Deposit', 'Advance, Deposit And Pre-payments', '3', '1', '0', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:40:42', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020605', 'Design & Printing Expense', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:55:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020404', 'Dish Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:58:21', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40215', 'Dividend', 'Other Expenses', '2', '1', '1', '1', 'E', '0', '0', '0.00', 'admin', '2016-09-25 14:07:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020403', 'Drinking Water Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:58:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010211', 'DSLR Camera', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:53:17', 'admin', '2016-01-02 16:23:25');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020908', 'Earned Leave', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:13:38', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020607', 'Education Fair Expenses', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:53:42', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010602', 'Electric Equipment', 'Electrical Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:44:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010203', 'Electric Kettle', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:49:07', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10106', 'Electrical Equipment', 'Non Current Assets', '2', '1', '0', '1', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:43:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020407', 'Electricity Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:59:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10202010501', 'employ', 'Salary', '5', '1', '0', '0', 'A', '0', '0', '0.00', 'admin', '2018-07-05 11:47:10', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40201', 'Entertainment', 'Other Expenses', '2', '1', '1', '1', 'E', '0', '0', '0.00', 'admin', '2013-07-08 16:21:26', 'anwarul', '2013-07-17 14:21:47');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('2', 'Equity', 'COA', '0', '1', '0', '0', 'L', '0', '0', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4', 'Expence', 'COA', '0', '1', '0', '0', 'E', '0', '0', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020903', 'Faculty,Staff Salary & Allowances', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:12:21', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021404', 'Fax Machine', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:34:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020905', 'Festival & Incentive Bonus', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:12:48', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010103', 'File Cabinet', 'Furniture & Fixturers', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:46:02', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40210', 'Financial Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-08-20 12:24:31', 'admin', '2015-10-15 19:20:36');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010403', 'Fire Extingushier', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:39:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021408', 'Furniture', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:35:47', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10101', 'Furniture & Fixturers', 'Non Current Assets', '2', '1', '0', '1', 'A', '0', '0', '0.00', 'anwarul', '2013-08-20 16:18:15', 'anwarul', '2013-08-21 13:35:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020406', 'Gas Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:59:20', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('20201', 'General Reserve', 'Reserve & Surplus', '2', '1', '1', '0', 'L', '0', '0', '0.00', 'admin', '2016-09-25 14:07:12', 'admin', '2016-10-02 17:48:49');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10105', 'Generator', 'Non Current Assets', '2', '1', '1', '1', 'A', '0', '0', '0.00', 'Zoherul', '2016-02-27 16:02:35', 'admin', '2016-05-23 12:05:18');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021414', 'Generator Repair', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-06-16 10:21:05', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40213', 'Generator Running Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:29:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10103', 'Groceries and Cutleries', 'Non Current Assets', '2', '1', '1', '1', 'A', '0', '0', '0.00', '2', '2018-07-12 10:02:55', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010408', 'Gym Equipment', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:46:03', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020907', 'Honorarium', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:13:26', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40205', 'House Rent', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-08-24 10:26:56', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40100001', 'HP-Hasilpur', 'Academic Expenses', '2', '1', '1', '0', 'E', '0', '0', '0.00', '2', '2018-07-29 03:44:23', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020702', 'HR Recruitment Expenses', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2016-09-25 12:55:49', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020703', 'Incentive on Admission', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2016-09-25 12:56:09', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('3', 'Income', 'COA', '0', '1', '0', '0', 'I', '0', '0', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30204', 'Income from Photocopy & Printing', 'Other Income', '2', '1', '1', '1', 'I', '0', '0', '0.00', 'Zoherul', '2015-07-14 10:29:54', 'admin', '2016-09-25 11:04:28');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020302', 'Income Tax Payable', 'Liabilities for Expenses', '3', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2016-09-19 11:18:17', 'admin', '2016-09-28 13:18:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102020302', 'Insurance Premium', 'Prepayment', '4', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-09-19 13:10:57', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021001', 'Interest on Loan', 'Financial Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:20:53', 'admin', '2016-09-19 14:53:34');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020401', 'Internet Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:56:55', 'admin', '2015-10-15 18:57:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10107', 'Inventory', 'Non Current Assets', '1', '1', '0', '0', 'A', '0', '0', '0.00', '2', '2018-07-07 15:21:58', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10205010101', 'Jahangir', 'Hasan', '1', '1', '0', '0', 'A', '0', '0', '0.00', '2', '2018-07-07 10:40:56', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010210', 'LCD TV', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:52:27', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30103', 'Lease Sale', 'Store Income', '1', '1', '1', '1', 'I', '0', '0', '0.00', '2', '2018-07-08 07:51:52', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5', 'Liabilities', 'COA', '0', '1', '0', '0', 'L', '0', '0', '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50203', 'Liabilities for Expenses', 'Current Liabilities', '2', '1', '0', '0', 'L', '0', '0', '0.00', 'admin', '2015-10-15 19:50:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020707', 'Library Expenses', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2017-01-10 15:34:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021409', 'Lift', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:36:12', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50101', 'Long Term Borrowing', 'Non Current Liabilities', '2', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2013-07-04 12:32:26', 'admin', '2015-10-15 19:47:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000009', 'ls-10-abc', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-24 06:07:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000010', 'ls-11-xyz', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-24 06:10:56', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000012', 'ls-12-asd', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '24', '2018-07-29 03:23:43', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102030200', 'ls-5-new', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-16 11:50:34', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000006', 'ls-5-Nokia', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-11 11:12:22', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000004', 'ls-5-PPPPP', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-11 10:52:39', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102030200', 'ls-5-Talha', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-12 05:51:00', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000005', 'ls-6-LLLLL', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-11 10:53:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102030200', 'ls-7-Mubin', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-17 06:20:35', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000007', 'ls-8-Arafat', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-17 06:55:35', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020301000008', 'ls-9-Zubair', 'Customer Receivable', '4', '1', '1', '0', 'A', '0', '0', '0.00', '2', '2018-07-18 16:32:54', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020608', 'Marketing & Promotion Exp.', 'Promonational Expence', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:53:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020901', 'Medical Allowance', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:11:33', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010411', 'Metal Ditector', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'Zoherul', '2016-08-22 10:55:22', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021413', 'Micro Oven', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-05-12 14:53:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30202', 'Miscellaneous (Income)', 'Other Income', '2', '1', '1', '1', 'I', '0', '0', '0.00', 'anwarul', '2014-02-06 15:26:31', 'admin', '2016-09-25 11:04:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020909', 'Miscellaneous Benifit', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:13:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020701', 'Miscellaneous Exp', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2016-09-25 12:54:39', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40207', 'Miscellaneous Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2014-04-26 16:49:56', 'admin', '2016-09-25 12:54:19');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010401', 'Mobile Phone', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-01-29 10:43:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102020101', 'Mr Ashiqur Rahman', 'Advance', '4', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-12-31 16:47:23', 'admin', '2016-09-25 11:55:13');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010212', 'Network Accessories', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-01-02 16:23:32', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020408', 'News Paper Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2016-01-02 15:55:57', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('101', 'Non Current Assets', 'Assets', '1', '1', '0', '0', 'A', '0', '0', '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-10-15 15:29:11');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('501', 'Non Current Liabilities', 'Liabilities', '1', '1', '0', '0', 'L', '0', '0', '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010404', 'Office Decoration', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:40:02', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10102', 'Office Equipment', 'Non Current Assets', '2', '1', '0', '1', 'A', '0', '0', '0.00', 'anwarul', '2013-12-06 18:08:00', 'admin', '2015-10-15 15:48:21');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021401', 'Office Repair & Maintenance', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:33:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30201', 'Office Stationary (Income)', 'Other Income', '2', '1', '1', '1', 'I', '0', '0', '0.00', 'anwarul', '2013-07-17 15:21:06', 'admin', '2016-09-25 11:04:50');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('402', 'Other Expenses', 'Expence', '1', '1', '0', '0', 'E', '0', '0', '0.00', '2', '2018-07-07 14:00:16', 'admin', '2015-10-15 18:37:42');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('302', 'Other Income', 'Income', '1', '1', '0', '0', 'I', '0', '0', '0.00', '2', '2018-07-07 13:40:57', 'admin', '2016-09-25 11:04:09');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40211', 'Others (Non Academic Expenses)', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'Obaidul', '2014-12-03 16:05:42', 'admin', '2015-10-15 19:22:09');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30205', 'Others (Non-Academic Income)', 'Other Income', '2', '1', '0', '1', 'I', '0', '0', '0.00', 'admin', '2015-10-15 17:23:49', 'admin', '2015-10-15 17:57:52');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('10104', 'Others Assets', 'Non Current Assets', '2', '1', '0', '1', 'A', '0', '0', '0.00', 'admin', '2016-01-29 10:43:16', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020910', 'Outstanding Salary', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-04-24 11:56:50', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021405', 'Oven', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:34:31', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021412', 'PABX-Repair', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-04-24 14:40:18', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020902', 'Part-time Staff Salary', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:12:06', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010202', 'Photocopy & Fax Machine', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:47:27', 'admin', '2016-05-23 12:14:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021411', 'Photocopy Machine Repair', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'Zoherul', '2016-04-24 12:40:02', 'admin', '2017-04-27 17:03:17');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('3020503', 'Practical Fee', 'Others (Non-Academic Income)', '3', '1', '1', '1', 'I', '0', '0', '0.00', 'admin', '2017-07-22 18:00:37', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1020203', 'Prepayment', 'Advance, Deposit And Pre-payments', '3', '1', '0', '1', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:40:51', 'admin', '2015-12-31 16:49:58');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010201', 'Printer', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:47:15', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40202', 'Printing and Stationary', 'Other Expenses', '2', '1', '1', '1', 'E', '0', '0', '0.00', 'admin', '2013-07-08 16:21:45', 'admin', '2016-09-19 14:39:32');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('3020502', 'Professional Training Course(Oracal-1)', 'Others (Non-Academic Income)', '3', '1', '1', '0', 'I', '0', '0', '0.00', 'nasim', '2017-06-22 13:28:05', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30207', 'Professional Training Course(Oracal)', 'Other Income', '2', '1', '0', '1', 'I', '0', '0', '0.00', 'nasim', '2017-06-22 13:24:16', 'nasim', '2017-06-22 13:25:56');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010208', 'Projector', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:51:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40206', 'Promonational Expence', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-07-11 13:48:57', 'anwarul', '2013-07-17 14:23:03');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40214', 'Repair and Maintenance', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:32:46', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('202', 'Reserve & Surplus', 'Equity', '1', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2016-09-25 14:06:34', 'admin', '2016-10-02 17:48:57');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('20102', 'Retained Earnings', 'Share Holders Equity', '2', '1', '1', '1', 'L', '0', '0', '0.00', 'admin', '2016-05-23 11:20:40', 'admin', '2016-09-25 14:05:06');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020708', 'River Cruse', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2017-04-24 15:35:25', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102020105', 'Salary', 'Advance', '4', '1', '0', '0', 'A', '0', '0', '0.00', 'admin', '2018-07-05 11:46:44', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40209', 'Salary & Allowances', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-12-12 11:22:58', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('404', 'Sale Discount', 'Expence', '1', '1', '1', '0', 'E', '0', '0', '0.00', '2', '2018-07-19 10:15:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010406', 'Security Equipment', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:41:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('20101', 'Share Capital', 'Share Holders Equity', '2', '1', '0', '1', 'L', '0', '0', '0.00', 'anwarul', '2013-12-08 19:37:32', 'admin', '2015-10-15 19:45:35');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('201', 'Share Holders Equity', 'Equity', '1', '1', '0', '0', 'L', '0', '0', '0.00', '', '0000-00-00 00:00:00', 'admin', '2015-10-15 19:43:51');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50201', 'Short Term Borrowing', 'Current Liabilities', '2', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2015-10-15 19:50:30', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020200001', 'Smart Power & Techologies', 'Account Payable', '3', '1', '1', '0', 'L', '0', '0', '0.00', 'admin', '2016-09-25 11:45:12', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40208', 'Software Development Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-11-21 14:13:01', 'admin', '2015-10-15 19:02:51');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020906', 'Special Allowances', 'Salary & Allowances', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:13:13', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('50102', 'Sponsors Loan', 'Non Current Liabilities', '2', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2015-10-15 19:48:02', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020706', 'Sports Expense', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'nasmud', '2016-11-09 13:16:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102010203', 'Standard Bank', 'Cash At Bank', '4', '1', '1', '1', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:33:33', 'admin', '2015-10-15 15:33:48');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102010204', 'State Bank', 'Cash At Bank', '4', '1', '1', '1', 'A', '0', '0', '0.00', 'admin', '2015-12-31 16:44:14', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('401', 'Store Expenses', 'Expence', '1', '1', '0', '0', 'E', '0', '0', '0.00', '2', '2018-07-07 13:38:59', 'admin', '2015-10-15 17:58:46');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('301', 'Store Income', 'Income', '1', '1', '0', '0', 'I', '0', '0', '0.00', '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('3020501', 'Students Info. Correction Fee', 'Others (Non-Academic Income)', '3', '1', '1', '0', 'I', '0', '0', '0.00', 'admin', '2015-10-15 17:24:45', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010601', 'Sub Station', 'Electrical Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:44:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020200006', 'sup-4-Eco star', 'Account Payable', '3', '1', '1', '0', 'L', '0', '0', '0.00', '2', '2018-07-27 10:15:58', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020200007', 'sup-5-New', 'Account Payable', '3', '1', '1', '0', 'L', '0', '0', '0.00', '2', '2018-08-02 16:23:42', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020200002', 'sup-5-Sharif', 'Account Payable', '3', '1', '1', '0', 'L', '0', '0', '0.00', '2', '2018-07-12 10:04:21', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020200003', 'sup-6-Talha', 'Account Payable', '3', '1', '1', '0', 'L', '0', '0', '0.00', '2', '2018-07-14 10:16:52', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020200004', 'sup-7-MS. Tel&Co.', 'Account Payable', '3', '1', '1', '0', 'L', '0', '0', '0.00', '2', '2018-07-19 05:06:18', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020200005', 'sup-8-july', 'Account Payable', '3', '1', '1', '0', 'L', '0', '0', '0.00', '2', '2018-07-27 09:41:53', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020704', 'TB Care Expenses', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2016-10-08 13:03:04', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('30206', 'TB Care Income', 'Other Income', '2', '1', '1', '1', 'I', '0', '0', '0.00', 'admin', '2016-10-08 13:00:56', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020501', 'TDS on House Rent', 'House Rent', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:44:07', 'admin', '2016-09-19 14:40:16');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502030201', 'TDS Payable House Rent', 'Income Tax Payable', '4', '1', '1', '0', 'L', '0', '0', '0.00', 'admin', '2016-09-19 11:19:42', 'admin', '2016-09-28 13:19:37');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502030203', 'TDS Payable on Advertisement Bill', 'Income Tax Payable', '4', '1', '1', '0', 'L', '0', '0', '0.00', 'admin', '2016-09-28 13:20:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('502030202', 'TDS Payable on Salary', 'Income Tax Payable', '4', '1', '1', '0', 'L', '0', '0', '0.00', 'admin', '2016-09-28 13:20:17', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021402', 'Tea Kettle', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:33:45', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020402', 'Telephone Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:57:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010209', 'Telephone Set & PABX', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:51:57', 'admin', '2016-10-02 17:10:40');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('102020104', 'Test', 'Advance', '4', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2018-07-05 11:42:48', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40203', 'Travelling & Conveyance', 'Other Expenses', '2', '1', '1', '1', 'E', '0', '0', '0.00', 'admin', '2013-07-08 16:22:06', 'admin', '2015-10-15 18:45:13');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4021406', 'TV', 'Repair and Maintenance', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 19:35:07', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010205', 'UPS', 'Office Equipment', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:50:38', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('40204', 'Utility Expenses', 'Other Expenses', '2', '1', '0', '1', 'E', '0', '0', '0.00', 'anwarul', '2013-07-11 16:20:24', 'admin', '2016-01-02 15:55:22');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020503', 'VAT on House Rent Exp', 'House Rent', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:49:22', 'admin', '2016-09-25 14:00:52');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('5020301', 'VAT Payable', 'Liabilities for Expenses', '3', '1', '0', '1', 'L', '0', '0', '0.00', 'admin', '2015-10-15 19:51:11', 'admin', '2016-09-28 13:23:53');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010409', 'Vehicle A/C', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'Zoherul', '2016-05-12 12:13:21', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010405', 'Voltage Stablizer', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-03-27 10:40:59', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010105', 'Waiting Sofa - Steel', 'Furniture & Fixturers', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2015-10-15 15:46:29', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020405', 'WASA Bill', 'Utility Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2015-10-15 18:58:51', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('1010402', 'Water Purifier', 'Others Assets', '3', '1', '1', '0', 'A', '0', '0', '0.00', 'admin', '2016-01-29 11:14:11', '', '0000-00-00 00:00:00');
INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES ('4020705', 'Website Development Expenses', 'Miscellaneous Expenses', '3', '1', '1', '0', 'E', '0', '0', '0.00', 'admin', '2016-10-15 12:42:47', '', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: acc_customer_income
#

DROP TABLE IF EXISTS `acc_customer_income`;

CREATE TABLE `acc_customer_income` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: acc_glsummarybalance
#

DROP TABLE IF EXISTS `acc_glsummarybalance`;

CREATE TABLE `acc_glsummarybalance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COAID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `FYear` int(11) DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: acc_income_expence
#

DROP TABLE IF EXISTS `acc_income_expence`;

CREATE TABLE `acc_income_expence` (
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

#
# TABLE STRUCTURE FOR: acc_temp
#

DROP TABLE IF EXISTS `acc_temp`;

CREATE TABLE `acc_temp` (
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Debit` decimal(18,2) NOT NULL,
  `Credit` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: acc_transaction
#

DROP TABLE IF EXISTS `acc_transaction`;

CREATE TABLE `acc_transaction` (
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
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('89', '1003', 'LSIV', '2018-07-10', '1020101', 'LSIV For Invoice No1003', '2300.00', '0.00', '2', '1', '2', '2018-07-10 14:46:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('90', '1003', 'LSIV', '2018-07-10', '30102', 'LSIV For Invoice No1003', '0.00', '28175.00', '2', '1', '2', '2018-07-10 14:46:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('91', '1003', 'LSIV', '2018-07-10', '403', 'LSIV For Invoice No1003', '20000.00', '0.00', '2', '1', '2', '2018-07-10 14:46:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('92', '1003', 'LSIV', '2018-07-10', '10107', 'LSIV For Invoice No1003', '0.00', '20000.00', '2', '1', '2', '2018-07-10 14:46:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('93', '1003', 'RECVIV', '2018-07-10', '1020101', 'RECVIV For Invoice No1003', '8625.00', '0.00', '2', '1', '2', '2018-07-10 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('94', '1004', 'CRIV', '2018-07-11', '1020101', 'CRIV For Invoice No1004', '0.00', '0.00', '2', '1', '2', '2018-07-11 10:52:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('95', '1004', 'CRIV', '2018-07-11', '30102', 'CRIV For Invoice No1004', '0.00', '46000.00', '2', '1', '2', '2018-07-11 10:52:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('96', '1004', 'CIV', '2018-07-11', '403', 'CIV For Invoice No1004', '40000.00', '0.00', '2', '1', '2', '2018-07-11 10:52:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('97', '1004', 'CIV', '2018-07-11', '10107', 'CIV For Invoice No1004', '0.00', '40000.00', '2', '1', '2', '2018-07-11 10:52:57', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('98', '1004', 'RECVIV', '2018-07-11', '1020101', 'RECVIV For Invoice No1004', '5000.00', '0.00', '2', '1', '2', '2018-07-11 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('99', '1005', 'LSIV', '2018-07-12', '1020101', 'LSIV For Invoice No1005', '2300.00', '0.00', '2', '1', '2', '2018-07-12 05:51:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('100', '1005', 'LSIV', '2018-07-12', '30102', 'LSIV For Invoice No1005', '0.00', '28175.00', '2', '1', '2', '2018-07-12 05:51:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('101', '1005', 'LSIV', '2018-07-12', '403', 'LSIV For Invoice No1005', '20000.00', '0.00', '2', '1', '2', '2018-07-12 05:51:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('102', '1005', 'LSIV', '2018-07-12', '10107', 'LSIV For Invoice No1005', '0.00', '20000.00', '2', '1', '2', '2018-07-12 05:51:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('103', '1004', 'RECVIV', '2018-07-12', '1020101', 'RECVIV For Invoice No1004', '-5000.00', '0.00', '2', '1', '2', '2018-07-12 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('104', '1004', 'RECVIV', '2018-07-12', '102030108', 'RECVIV For Invoice No1004', '0.00', '-5000.00', '2', '1', '2', '2018-07-12 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('105', '1006', 'CRIV', '2018-07-12', '102030200', 'CRIV For Invoice No1006', '0.00', '0.00', '2', '1', '2', '2018-07-12 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('106', '1006', 'CRIV', '2018-07-12', '102030200', 'CRIV For Invoice No1006', '0.00', '23000.00', '2', '1', '2', '2018-07-12 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('107', '1006', 'CRIV', '2018-07-12', '1020101', 'CRIV For Invoice No1006', '0.00', '0.00', '2', '1', '2', '2018-07-12 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('108', '1006', 'CRIV', '2018-07-12', '30102', 'CRIV For Invoice No1006', '0.00', '23000.00', '2', '1', '2', '2018-07-12 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('109', '1006', 'CIV', '2018-07-12', '403', 'CIV For Invoice No1006', '20000.00', '0.00', '2', '1', '2', '2018-07-12 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('110', '1006', 'CIV', '2018-07-12', '10107', 'CIV For Invoice No1006', '0.00', '20000.00', '2', '1', '2', '2018-07-12 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('111', '1007', 'LSIV', '2018-07-12', '102030200', 'LSIV For Invoice No1007', '0.00', '0.00', '2', '1', '2', '2018-07-12 06:10:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('112', '1007', 'LSIV', '2018-07-12', '102030200', 'LSIV For Invoice No1007', '0.00', '0.00', '2', '1', '2', '2018-07-12 06:10:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('113', '1007', 'LSIV', '2018-07-12', '1020101', 'LSIV For Invoice No1007', '0.00', '0.00', '2', '1', '2', '2018-07-12 06:10:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('114', '1007', 'LSIV', '2018-07-12', '30102', 'LSIV For Invoice No1007', '0.00', '0.00', '2', '1', '2', '2018-07-12 06:10:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('115', '1007', 'LSIV', '2018-07-12', '403', 'LSIV For Invoice No1007', '20000.00', '0.00', '2', '1', '2', '2018-07-12 06:10:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('116', '1007', 'LSIV', '2018-07-12', '10107', 'LSIV For Invoice No1007', '0.00', '20000.00', '2', '1', '2', '2018-07-12 06:10:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('117', '1006', 'RECVIV', '2018-07-12', '1020101', 'RECVIV For Invoice No1006', '2000.00', '0.00', '2', '1', '2', '2018-07-12 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('118', '1006', 'RECVIV', '2018-07-12', '102030200', 'RECVIV For Invoice No1006', '0.00', '2000.00', '2', '1', '2', '2018-07-12 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('119', '1008', 'LSIV', '2018-07-16', '1020101', 'LSIV For Invoice No1008', '2300.00', '0.00', '2', '1', '2', '2018-07-16 11:51:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('120', '1008', 'LSIV', '2018-07-16', '30102', 'LSIV For Invoice No1008', '0.00', '33350.00', '2', '1', '2', '2018-07-16 11:51:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('121', '1008', 'LSIV', '2018-07-16', '403', 'LSIV For Invoice No1008', '20000.00', '0.00', '2', '1', '2', '2018-07-16 11:51:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('122', '1008', 'LSIV', '2018-07-16', '10107', 'LSIV For Invoice No1008', '0.00', '20000.00', '2', '1', '2', '2018-07-16 11:51:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('123', 'DV-1', 'DV', '2018-07-16', '1020101', '', '0.00', '5000.00', '2', '1', '2', '2018-07-16 15:55:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('124', 'DV-1', 'DV', '2018-07-16', '102020103', '', '5000.00', '0.00', '2', '1', '2', '2018-07-16 15:55:01', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('125', 'DV-2', 'DV', '2018-07-16', '102010203', '', '0.00', '2000.00', '2', '1', '2', '2018-07-16 15:55:15', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('126', 'DV-2', 'DV', '2018-07-16', '', '', '2000.00', '0.00', '2', '1', '2', '2018-07-16 15:55:15', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('127', '1009', 'LSIV', '2018-07-17', '102030200', 'LSIV For Invoice No1009', '2300.00', '0.00', '2', '1', '2', '2018-07-17 06:21:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('128', '1009', 'LSIV', '2018-07-17', '102030200', 'LSIV For Invoice No1009', '0.00', '28175.00', '2', '1', '2', '2018-07-17 06:21:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('129', '1009', 'LSIV', '2018-07-17', '1020101', 'LSIV For Invoice No1009', '2300.00', '0.00', '2', '1', '2', '2018-07-17 06:21:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('130', '1009', 'LSIV', '2018-07-17', '30102', 'LSIV For Invoice No1009', '0.00', '28175.00', '2', '1', '2', '2018-07-17 06:21:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('131', '1009', 'LSIV', '2018-07-17', '403', 'LSIV For Invoice No1009', '20000.00', '0.00', '2', '1', '2', '2018-07-17 06:21:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('132', '1009', 'LSIV', '2018-07-17', '10107', 'LSIV For Invoice No1009', '0.00', '20000.00', '2', '1', '2', '2018-07-17 06:21:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('133', '1010', 'LSIV', '2018-07-17', '1020301000007', 'LSIV For Invoice No1010', '4600.00', '0.00', '2', '1', '2', '2018-07-17 07:00:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('134', '1010', 'LSIV', '2018-07-17', '1020301000007', 'LSIV For Invoice No1010', '0.00', '29440.00', '2', '1', '2', '2018-07-17 07:00:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('135', '1010', 'LSIV', '2018-07-17', '1020101', 'LSIV For Invoice No1010', '4600.00', '0.00', '2', '1', '2', '2018-07-17 07:00:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('136', '1010', 'LSIV', '2018-07-17', '30102', 'LSIV For Invoice No1010', '0.00', '29440.00', '2', '1', '2', '2018-07-17 07:00:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('137', '1010', 'LSIV', '2018-07-17', '403', 'LSIV For Invoice No1010', '20000.00', '0.00', '2', '1', '2', '2018-07-17 07:00:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('138', '1010', 'LSIV', '2018-07-17', '10107', 'LSIV For Invoice No1010', '0.00', '20000.00', '2', '1', '2', '2018-07-17 07:00:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('139', '1011', 'LSIV', '2018-07-18', '1020301000008', 'ls-9-Zubair Credit For Invoice No1011', '0.00', '2300.00', '2', '1', '2', '2018-07-18 16:34:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('140', '1011', 'LSIV', '2018-07-18', '1020301000008', 'ls-9-Zubair Debit of Remaining Price For Invoice#1011', '28175.00', '0.00', '2', '1', '2', '2018-07-18 16:34:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('141', '1011', 'LSIV', '2018-07-18', '1020101', 'Cash In Hand Debit For Invoice No1011', '2300.00', '0.00', '2', '1', '2', '2018-07-18 16:34:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('142', '1011', 'LSIV', '2018-07-18', '30102', 'Store Credit For Invoice No1011', '0.00', '28175.00', '2', '1', '2', '2018-07-18 16:34:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('143', '1011', 'LSIV', '2018-07-18', '403', 'Cost Of Sale Debit For Invoice No1011', '20000.00', '0.00', '2', '1', '2', '2018-07-18 16:34:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('144', '1011', 'LSIV', '2018-07-18', '10107', 'Inventory Credit For Invoice No1011', '0.00', '20000.00', '2', '1', '2', '2018-07-18 16:34:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('145', '20180718163807', 'PO', '2018-07-18', '5020203', 'PO For 20180718163807', '0.00', '230000.00', '2', '1', '2', '2018-07-18 16:38:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('146', 'DV-3', 'DV', '2018-07-18', '1020101', '', '0.00', '150000.00', '2', '1', '2', '2018-07-18 16:41:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('147', 'DV-3', 'DV', '2018-07-18', '5020203', '', '150000.00', '0.00', '2', '1', '2', '2018-07-18 16:41:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('148', '20180719051134', 'PO', '2018-07-19', '5020204', 'PO For 20180719051134', '0.00', '400000.00', '2', '1', '2', '2018-07-19 05:11:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('149', '20180721071535', 'PO', '2018-07-21', '10107', 'PO Receive Receive No 20180721071558', '40000.00', '0.00', '7', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('150', '1012', 'LSIV', '2018-07-24', '1020301000009', 'ls-10-abc Credit For Invoice No1012', '0.00', '0.00', '2', '1', '2', '2018-07-24 06:08:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('151', '1012', 'LSIV', '2018-07-24', '1020301000009', 'ls-10-abc Debit of Total Package Price For Invoice#1012', '0.00', '0.00', '2', '1', '2', '2018-07-24 06:08:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('152', '1012', 'LSIV', '2018-07-24', '1020101', 'Cash In Hand Debit For Invoice No1012', '0.00', '0.00', '2', '1', '2', '2018-07-24 06:08:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('153', '1012', 'LSIV', '2018-07-24', '30102', 'Store Credit For Invoice No1012', '0.00', '0.00', '2', '1', '2', '2018-07-24 06:08:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('154', '1012', 'LSIV', '2018-07-24', '403', 'Cost Of Sale Debit For Invoice No1012', '100000.00', '0.00', '2', '1', '2', '2018-07-24 06:08:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('155', '1012', 'LSIV', '2018-07-24', '10107', 'Inventory Credit For Invoice No1012', '0.00', '100000.00', '2', '1', '2', '2018-07-24 06:08:35', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('156', '1012', 'LSIV', '2018-07-24', '1020301000009', 'ls-10-abc Credit For Invoice No1012', '0.00', '2300.00', '2', '1', '2', '2018-07-24 06:08:43', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('157', '1012', 'LSIV', '2018-07-24', '1020301000009', 'ls-10-abc Debit of Total Package Price For Invoice#1012', '28175.00', '0.00', '2', '1', '2', '2018-07-24 06:08:43', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('158', '1012', 'LSIV', '2018-07-24', '1020101', 'Cash In Hand Debit For Invoice No1012', '2300.00', '0.00', '2', '1', '2', '2018-07-24 06:08:43', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('159', '1012', 'LSIV', '2018-07-24', '30102', 'Store Credit For Invoice No1012', '0.00', '28175.00', '2', '1', '2', '2018-07-24 06:08:43', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('160', '1012', 'LSIV', '2018-07-24', '403', 'Cost Of Sale Debit For Invoice No1012', '20000.00', '0.00', '2', '1', '2', '2018-07-24 06:08:43', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('161', '1012', 'LSIV', '2018-07-24', '10107', 'Inventory Credit For Invoice No1012', '0.00', '20000.00', '2', '1', '2', '2018-07-24 06:08:43', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('162', '1012', 'LSIV', '2018-07-24', '1020301000009', 'ls-10-abc Credit For Invoice No1012', '0.00', '2300.00', '2', '1', '2', '2018-07-24 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('163', '1012', 'LSIV', '2018-07-24', '1020301000009', 'ls-10-abc Debit of Total Package Price For Invoice#1012', '28175.00', '0.00', '2', '1', '2', '2018-07-24 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('164', '1012', 'LSIV', '2018-07-24', '1020101', 'Cash In Hand Debit For Invoice No1012', '2300.00', '0.00', '2', '1', '2', '2018-07-24 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('165', '1012', 'LSIV', '2018-07-24', '30102', 'Store Credit For Invoice No1012', '0.00', '28175.00', '2', '1', '2', '2018-07-24 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('166', '1012', 'LSIV', '2018-07-24', '403', 'Cost Of Sale Debit For Invoice No1012', '20000.00', '0.00', '2', '1', '2', '2018-07-24 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('167', '1012', 'LSIV', '2018-07-24', '10107', 'Inventory Credit For Invoice No1012', '0.00', '20000.00', '2', '1', '2', '2018-07-24 06:08:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('168', '1013', 'LSIV', '2018-07-24', '1020301000010', 'ls-11-xyz Credit For Invoice No1013', '0.00', '2300.00', '2', '1', '2', '2018-07-24 06:12:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('169', '1013', 'LSIV', '2018-07-24', '1020301000010', 'ls-11-xyz Debit of Total Package Price For Invoice#1013', '28175.00', '0.00', '2', '1', '2', '2018-07-24 06:12:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('170', '1013', 'LSIV', '2018-07-24', '1020101', 'Cash In Hand Debit For Invoice No1013', '2300.00', '0.00', '2', '1', '2', '2018-07-24 06:12:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('171', '1013', 'LSIV', '2018-07-24', '30102', 'Store Credit For Invoice No1013', '0.00', '28175.00', '2', '1', '2', '2018-07-24 06:12:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('172', '1013', 'LSIV', '2018-07-24', '403', 'Cost Of Sale Debit For Invoice No1013', '20000.00', '0.00', '2', '1', '2', '2018-07-24 06:12:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('173', '1013', 'LSIV', '2018-07-24', '10107', 'Inventory Credit For Invoice No1013', '0.00', '20000.00', '2', '1', '2', '2018-07-24 06:12:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('174', '1014', 'CIV', '2018-07-24', '30101', 'Cash sale credit For Invoice No1014', '0.00', '5000.00', '2', '1', '2', '2018-07-24 06:13:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('175', '1014', 'CIV', '2018-07-24', '1020101', 'Cash in hand debit For Invoice No1014', '5000.00', '0.00', '2', '1', '2', '2018-07-24 06:13:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('176', '1014', 'CIV', '2018-07-24', '403', 'Cost of sale debit For Invoice No1014', NULL, '0.00', '2', '1', '2', '2018-07-24 06:13:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('177', '1014', 'CIV', '2018-07-24', '10107', 'Inventory credit For Invoice No1014', '0.00', NULL, '2', '1', '2', '2018-07-24 06:13:54', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('178', '1015', 'CRIV', '2018-07-24', '1020301000010', 'Customer Credit For Invoice No1015', '0.00', '5000.00', '2', '1', '2', '2018-07-24 06:15:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('179', '1015', 'CRIV', '2018-07-24', '1020301000010', 'Customer Debit For Invoice No1015', '23000.00', '0.00', '2', '1', '2', '2018-07-24 06:15:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('180', '1015', 'CRIV', '2018-07-24', '1020101', 'Cash in Hand For Invoice No1015', '5000.00', '0.00', '2', '1', '2', '2018-07-24 06:15:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('181', '1015', 'CRIV', '2018-07-24', '30102', 'store credit For Invoice No1015', '0.00', '23000.00', '2', '1', '2', '2018-07-24 06:15:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('182', '1015', 'CIV', '2018-07-24', '403', 'Cost of sale credit For Invoice No1015', '0.00', '0.00', '2', '1', '2', '2018-07-24 06:15:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('183', '1015', 'CIV', '2018-07-24', '10107', 'Inventory Credit For Invoice No1015', '0.00', '0.00', '2', '1', '2', '2018-07-24 06:15:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('184', '1013', 'RECVIV', '2018-07-24', '1020101', 'Recovery Receive For Invoice No1013', '2000.00', '0.00', '2', '1', '2', '2018-07-24 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('185', '1013', 'RECVIV', '2018-07-24', '1020301000010', 'Recovery Payment For Invoice No1013', '0.00', '2000.00', '2', '1', '2', '2018-07-24 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('186', '1015', 'RECVIV', '2018-07-24', '1020101', 'Credit Receive For Invoice No1015', '10000.00', '0.00', '2', '1', '2', '2018-07-24 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('187', '1015', 'RECVIV', '2018-07-24', '1020301000010', 'Credit Payment For Invoice No1015', '0.00', '10000.00', '2', '1', '2', '2018-07-24 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('188', '1016', 'CIV', '2018-07-24', '30101', 'Cash sale credit For Invoice No1016', '0.00', '50000.00', '2', '1', '2', '2018-07-24 06:19:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('189', '1016', 'CIV', '2018-07-24', '1020101', 'Cash in hand debit For Invoice No1016', '50000.00', '0.00', '2', '1', '2', '2018-07-24 06:19:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('190', '1016', 'CIV', '2018-07-24', '403', 'Cost of sale debit For Invoice No1016', NULL, '0.00', '2', '1', '2', '2018-07-24 06:19:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('191', '1016', 'CIV', '2018-07-24', '10107', 'Inventory credit For Invoice No1016', '0.00', NULL, '2', '1', '2', '2018-07-24 06:19:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('192', '20180724062050', 'PO', '2018-07-24', '5020203', 'PO For 20180724062050', '0.00', '2300000.00', '2', '1', '2', '2018-07-24 06:20:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('193', '20180727095912', 'PO', '2018-07-27', '5020205', 'PO For 20180727095912', '0.00', '75000.00', '2', '1', '2', '2018-07-27 09:59:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('194', '20180727095912', 'PO', '2018-07-27', '10107', 'PO Receive Receive No 20180727100252', '15000.00', '0.00', '7', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('195', '20180727095912', 'PO', '2018-07-27', '10107', 'PO Receive Receive No 20180727100328', '4900.00', '0.00', '7', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('196', '20180727100912', 'PO', '2018-07-27', '10107', 'PO Receive Receive No 20180727101053', '5000.00', '0.00', '7', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('197', '20180727101658', 'PO', '2018-07-27', '5020206', 'PO For 20180727101658', '0.00', '5000.00', '2', '1', '2', '2018-07-27 10:16:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('198', '1017', 'CIV', '2018-07-27', '30101', 'Cash sale credit For Invoice No1017', '0.00', '6500.00', '7', '1', '25', '2018-07-27 10:18:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('199', '1017', 'CIV', '2018-07-27', '1020101', 'Cash in hand debit For Invoice No1017', '6500.00', '0.00', '7', '1', '25', '2018-07-27 10:18:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('200', '1017', 'CIV', '2018-07-27', '403', 'Cost of sale debit For Invoice No1017', NULL, '0.00', '7', '1', '25', '2018-07-27 10:18:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('201', '1017', 'CIV', '2018-07-27', '10107', 'Inventory credit For Invoice No1017', '0.00', NULL, '7', '1', '25', '2018-07-27 10:18:48', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('202', '1018', 'CIV', '2018-07-27', '30101', 'Cash sale credit For Invoice No1018', '0.00', '6500.00', '6', '1', '24', '2018-07-27 10:24:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('203', '1018', 'CIV', '2018-07-27', '1020101', 'Cash in hand debit For Invoice No1018', '6500.00', '0.00', '6', '1', '24', '2018-07-27 10:24:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('204', '1018', 'CIV', '2018-07-27', '403', 'Cost of sale debit For Invoice No1018', NULL, '0.00', '6', '1', '24', '2018-07-27 10:24:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('205', '1018', 'CIV', '2018-07-27', '10107', 'Inventory credit For Invoice No1018', '0.00', NULL, '6', '1', '24', '2018-07-27 10:24:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('206', '1019', 'CIV', '2018-07-27', '30101', 'Cash sale credit For Invoice No1019', '0.00', '6500.00', '6', '1', '24', '2018-07-27 10:41:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('207', '1019', 'CIV', '2018-07-27', '1020101', 'Cash in hand debit For Invoice No1019', '6500.00', '0.00', '6', '1', '24', '2018-07-27 10:41:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('208', '1019', 'CIV', '2018-07-27', '403', 'Cost of sale debit For Invoice No1019', NULL, '0.00', '6', '1', '24', '2018-07-27 10:41:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('209', '1019', 'CIV', '2018-07-27', '10107', 'Inventory credit For Invoice No1019', '0.00', NULL, '6', '1', '24', '2018-07-27 10:41:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('210', '1020', 'CIV', '2018-07-29', '30101', 'Cash sale credit For Invoice No1020', '0.00', '5500.00', '6', '1', '24', '2018-07-29 03:21:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('211', '1020', 'CIV', '2018-07-29', '1020101', 'Cash in hand debit For Invoice No1020', '5500.00', '0.00', '6', '1', '24', '2018-07-29 03:21:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('212', '1020', 'CIV', '2018-07-29', '403', 'Cost of sale debit For Invoice No1020', NULL, '0.00', '6', '1', '24', '2018-07-29 03:21:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('213', '1020', 'CIV', '2018-07-29', '10107', 'Inventory credit For Invoice No1020', '0.00', NULL, '6', '1', '24', '2018-07-29 03:21:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('214', '1021', 'LSIV', '2018-07-29', '1020301000012', 'ls-12-asd Credit For Invoice No1021', '0.00', '1200.00', '6', '1', '24', '2018-07-29 03:31:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('215', '1021', 'LSIV', '2018-07-29', '1020301000012', 'ls-12-asd Debit of Total Package Price For Invoice#1021', '14700.00', '0.00', '6', '1', '24', '2018-07-29 03:31:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('216', '1021', 'LSIV', '2018-07-29', '1020101', 'Cash In Hand Debit For Invoice No1021', '1200.00', '0.00', '6', '1', '24', '2018-07-29 03:31:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('217', '1021', 'LSIV', '2018-07-29', '30102', 'Store Credit For Invoice No1021', '0.00', '14700.00', '6', '1', '24', '2018-07-29 03:31:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('218', '1021', 'LSIV', '2018-07-29', '403', 'Cost Of Sale Debit For Invoice No1021', '5000.00', '0.00', '6', '1', '24', '2018-07-29 03:31:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('219', '1021', 'LSIV', '2018-07-29', '10107', 'Inventory Credit For Invoice No1021', '0.00', '5000.00', '6', '1', '24', '2018-07-29 03:31:06', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('220', '1015', 'RECVIV', '2018-07-29', '1020101', 'Credit Receive For Invoice No1015', '100000.00', '0.00', '2', '1', '2', '2018-07-29 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('221', '1015', 'RECVIV', '2018-07-29', '1020301000010', 'Credit Payment For Invoice No1015', '0.00', '100000.00', '2', '1', '2', '2018-07-29 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('222', '1013', 'RECVIV', '2018-07-29', '1020101', 'Recovery Receive For Invoice No1013', '18700.00', '0.00', '2', '1', '2', '2018-07-29 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('223', '1013', 'RECVIV', '2018-07-29', '1020301000010', 'Recovery Payment For Invoice No1013', '0.00', '18700.00', '2', '1', '2', '2018-07-29 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('224', '1013', 'RECVIV', '2018-07-29', '404', 'Settlement Discount For Invoice# 1013 to 1020301000010', '0.00', '5175.00', '2', '1', '2', '2018-07-29 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('225', '1013', 'RECVIV', '2018-07-29', '1020301000010', 'Discounted Amount Credited to Customer Balance For Invoice# 1013', '0.00', '5175.00', '2', '1', '2', '2018-07-29 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('226', '4', 'RT', '2018-07-29', '1020301000012', 'Receive For 4', '3250000.00', '0.00', '6', '1', '2', '2018-07-29 03:39:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('227', '1021', 'RT', '2018-07-29', '403', 'RT For Invoice No1021', '0.00', '0.00', '2', '1', '2', '2018-07-29 03:39:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('228', '1021', 'RT', '2018-07-29', '10107', 'RT For Invoice No1021', '0.00', '0.00', '2', '1', '2', '2018-07-29 03:39:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('229', '1021', 'CIV', '2018-07-29', '1020101', 'CIV For Invoice No1021', '0.00', '3250000.00', '2', '1', '2', '2018-07-29 03:39:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('230', '20180727095912', 'PO', '2018-07-29', '5020205', 'P Return For 20180727095912', '4900.00', '0.00', '2', '1', '2', '2018-07-29 03:42:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('231', '20180727095912', 'PO', '2018-07-29', '10107', 'Purchase Return For PO No20180727095912', '0.00', '4900.00', '2', '1', '2', '2018-07-29 03:42:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('232', '20180730093805', 'PO', '2018-07-30', '5020203', 'PO For 20180730093805', '0.00', '20000.00', '2', '1', '2', '2018-07-30 09:38:05', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('233', '20180730093805', 'PO', '2018-07-30', '10107', 'PO Receive Receive No 20180730093823', '11900.00', '0.00', '6', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('234', '20180730093930', 'PO', '2018-07-30', '5020203', 'PO For 20180730093930', '0.00', '4000.00', '2', '1', '2', '2018-07-30 09:39:30', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('235', '20180730093930', 'PO', '2018-07-30', '10107', 'PO Receive Receive No 20180730093947', '4000.00', '0.00', '6', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('236', '1022', 'CIV', '2018-07-31', '30101', 'Cash sale credit For Invoice No1022', '0.00', '6500.00', '2', '1', '2', '2018-07-31 10:55:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('237', '1022', 'CIV', '2018-07-31', '1020101', 'Cash in hand debit For Invoice No1022', '6500.00', '0.00', '2', '1', '2', '2018-07-31 10:55:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('238', '1022', 'CIV', '2018-07-31', '403', 'Cost of sale debit For Invoice No1022', NULL, '0.00', '2', '1', '2', '2018-07-31 10:55:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('239', '1022', 'CIV', '2018-07-31', '10107', 'Inventory credit For Invoice No1022', '0.00', NULL, '2', '1', '2', '2018-07-31 10:55:40', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('240', '1023', 'CIV', '2018-07-31', '30101', 'Cash sale credit For Invoice No1023', '0.00', '13000.00', '2', '1', '2', '2018-07-31 10:57:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('241', '1023', 'CIV', '2018-07-31', '1020101', 'Cash in hand debit For Invoice No1023', '13000.00', '0.00', '2', '1', '2', '2018-07-31 10:57:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('242', '1023', 'CIV', '2018-07-31', '403', 'Cost of sale debit For Invoice No1023', NULL, '0.00', '2', '1', '2', '2018-07-31 10:57:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('243', '1023', 'CIV', '2018-07-31', '10107', 'Inventory credit For Invoice No1023', '0.00', NULL, '2', '1', '2', '2018-07-31 10:57:09', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('244', '1024', 'CIV', '2018-07-31', '30101', 'Cash sale credit For Invoice No1024', '0.00', '13000.00', '2', '1', '2', '2018-07-31 11:10:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('245', '1024', 'CIV', '2018-07-31', '1020101', 'Cash in hand debit For Invoice No1024', '13000.00', '0.00', '2', '1', '2', '2018-07-31 11:10:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('246', '1024', 'CIV', '2018-07-31', '403', 'Cost of sale debit For Invoice No1024', NULL, '0.00', '2', '1', '2', '2018-07-31 11:10:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('247', '1024', 'CIV', '2018-07-31', '10107', 'Inventory credit For Invoice No1024', '0.00', NULL, '2', '1', '2', '2018-07-31 11:10:39', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('248', '1009', 'RECVIV', '2018-08-01', '1020101', 'Recovery Receive For Invoice No1009', '8625.00', '0.00', '2', '1', '2', '2018-08-01 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('249', '1009', 'RECVIV', '2018-08-01', '102030200', 'Recovery Payment For Invoice No1009', '0.00', '8625.00', '2', '1', '2', '2018-08-01 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('250', '1021', 'RECVIV', '2018-08-01', '1020101', 'Recovery Receive For Invoice No1021', '4500.00', '0.00', '2', '1', '2', '2018-08-01 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('251', '1021', 'RECVIV', '2018-08-01', '1020301000012', 'Recovery Payment For Invoice No1021', '0.00', '4500.00', '2', '1', '2', '2018-08-01 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('252', '1011', 'RECVIV', '2018-08-01', '1020101', 'Recovery Receive For Invoice No1011', '8000.00', '0.00', '2', '1', '2', '2018-08-01 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('253', '1011', 'RECVIV', '2018-08-01', '1020301000008', 'Recovery Payment For Invoice No1011', '0.00', '8000.00', '2', '1', '2', '2018-08-01 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('254', '1025', 'CIV', '2018-08-02', '1020101000001', 'Cash in hand debit For Invoice No1025', '32500.00', '0.00', '2', '1', '2', '2018-08-02 08:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('255', '1025', 'CIV', '2018-08-02', '403', 'Cost of sale debit For Invoice No1025', NULL, '0.00', '2', '1', '2', '2018-08-02 08:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('256', '1025', 'CIV', '2018-08-02', '10107', 'Inventory credit For Invoice No1025', '0.00', NULL, '2', '1', '2', '2018-08-02 08:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('257', '1025', 'CIV', '2018-08-02', '1020301000015', 'Customer debit for Product For Invoice No1025', '32500.00', '0.00', '2', '1', '2', '2018-08-02 08:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('258', '1025', 'CIV', '2018-08-02', '1020301000015', 'Customer credit for Paid Amount For Invoice No1025', '0.00', '32500.00', '2', '1', '2', '2018-08-02 08:05:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('259', '1026', 'CIV', '2018-08-02', '1020101000002', 'Cash in hand debit For Invoice No1026', '13000.00', '0.00', '2', '1', '2', '2018-08-02 08:23:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('260', '1026', 'CIV', '2018-08-02', '403', 'Cost of sale debit For Invoice No1026', NULL, '0.00', '2', '1', '2', '2018-08-02 08:23:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('261', '1026', 'CIV', '2018-08-02', '10107', 'Inventory credit For Invoice No1026', '0.00', NULL, '2', '1', '2', '2018-08-02 08:23:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('262', '1026', 'CIV', '2018-08-02', '1020301000015', 'Customer debit for Product For Invoice No1026', '13000.00', '0.00', '2', '1', '2', '2018-08-02 08:23:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('263', '1026', 'CIV', '2018-08-02', '1020301000015', 'Customer credit for Paid Amount For Invoice No1026', '0.00', '13000.00', '2', '1', '2', '2018-08-02 08:23:14', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('264', '1021', 'RECVIV', '2018-08-02', '1020301000012', 'Recovery Paid For Invoice No1021', '0.00', '2000.00', '2', '1', '2', '2018-08-02 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('265', '20180802162437', 'PO', '2018-08-02', '10107', 'PO Receive Receive No 20180802162451', '40000.00', '0.00', '6', '1', '2', '2018-08-02 16:24:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('266', '20180802162437', 'PO', '2018-08-02', '10107', 'PO Receive Receive No 20180802162451', '10000.00', '0.00', '9', '1', '2', '2018-08-02 16:24:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('267', '20180802162437', 'PO', '2018-08-02', '5020200007', 'PO received For PO No.20180802162437 Receive No.20180802162451', '0.00', '50000.00', '2', '1', '2', '2018-08-02 16:24:51', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('268', '1027', 'CIV', '2018-08-02', '1020101000002', 'Cash in hand debit For Invoice No1027', '15000.00', '0.00', '2', '1', '2', '2018-08-02 16:32:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('269', '1027', 'CIV', '2018-08-02', '403', 'Cost of sale debit For Invoice No1027', NULL, '0.00', '2', '1', '2', '2018-08-02 16:32:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('270', '1027', 'CIV', '2018-08-02', '10107', 'Inventory credit For Invoice No1027', '0.00', NULL, '2', '1', '2', '2018-08-02 16:32:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('271', '1027', 'CIV', '2018-08-02', '1020301000016', 'Customer debit for Product For Invoice No1027', '15000.00', '0.00', '2', '1', '2', '2018-08-02 16:32:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('272', '1027', 'CIV', '2018-08-02', '1020301000016', 'Customer credit for Paid Amount For Invoice No1027', '0.00', '15000.00', '2', '1', '2', '2018-08-02 16:32:47', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('273', '1028', 'CIV', '2018-08-02', '403', 'Cost of sale debit For Invoice No1028', NULL, '0.00', '6', '1', '24', '2018-08-02 16:44:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('274', '1028', 'CIV', '2018-08-02', '10107', 'Inventory credit For Invoice No1028', '0.00', NULL, '6', '1', '24', '2018-08-02 16:44:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('275', '1028', 'CIV', '2018-08-02', '1020301000012', 'Customer debit for Product For Invoice No1028', '15000.00', '0.00', '6', '1', '24', '2018-08-02 16:44:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('276', '1028', 'CIV', '2018-08-02', '1020301000012', 'Customer credit for Paid Amount For Invoice No1028', '0.00', '15000.00', '6', '1', '24', '2018-08-02 16:44:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('277', '20180804045253', 'PO', '2018-08-04', '10107', 'PO Receive Receive No 20180804045304', '700000.00', '0.00', '2', '1', '2', '2018-08-04 04:53:04', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('278', '1029', 'LSIV', '2018-08-04', '1020301000015', 'cc-2-TikTik Credit For Invoice No1029', '0.00', '8000.00', '2', '1', '2', '2018-08-04 05:06:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('279', '1029', 'LSIV', '2018-08-04', '1020301000015', 'cc-2-TikTik Debit of Total Package Price For Invoice#1029', '94400.00', '0.00', '2', '1', '2', '2018-08-04 05:06:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('280', '1029', 'LSIV', '2018-08-04', '1020101000002', 'Cash In Hand Debit For Lease Invoice No1029', '8000.00', '0.00', '2', '1', '2', '2018-08-04 05:06:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('281', '1029', 'LSIV', '2018-08-04', '30102', 'Store Credit For Invoice No1029', '0.00', '94400.00', '2', '1', '2', '2018-08-04 05:06:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('282', '1029', 'LSIV', '2018-08-04', '403', 'Cost Of Sale Debit For Invoice No1029', '70000.00', '0.00', '2', '1', '2', '2018-08-04 05:06:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('283', '1029', 'LSIV', '2018-08-04', '10107', 'Inventory Credit For Invoice No1029', '0.00', '70000.00', '2', '1', '2', '2018-08-04 05:06:07', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('284', '20180804052157', 'PO', '2018-08-04', '10107', 'PO Receive Receive No 20180804052456', '100000.00', '0.00', '10', '1', '26', '2018-08-04 05:24:56', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('285', '20180804052157', 'PO', '2018-08-04', '5020200002', 'PO received For PO No.20180804052157 Receive No.20180804052456', '0.00', '100000.00', '10', '1', '26', '2018-08-04 05:24:56', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('286', '1030', 'CIV', '2018-08-04', '1020101000003', 'Cash in hand debit For Invoice No1030', '19500.00', '0.00', '10', '1', '26', '2018-08-04 05:26:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('287', '1030', 'CIV', '2018-08-04', '403', 'Cost of sale debit For Invoice No1030', NULL, '0.00', '10', '1', '26', '2018-08-04 05:26:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('288', '1030', 'CIV', '2018-08-04', '10107', 'Inventory credit For Invoice No1030', '0.00', NULL, '10', '1', '26', '2018-08-04 05:26:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('289', '1030', 'CIV', '2018-08-04', '1020301000017', 'Customer debit for Product For Invoice No1030', '19500.00', '0.00', '10', '1', '26', '2018-08-04 05:26:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('290', '1030', 'CIV', '2018-08-04', '1020301000017', 'Customer credit for Paid Amount For Invoice No1030', '0.00', '19500.00', '10', '1', '26', '2018-08-04 05:26:49', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('291', '20180727101658', 'PO', '2018-08-04', '10107', 'PO Receive Receive No 20180804063814', '5000.00', '0.00', '7', '1', '2', '2018-08-04 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('292', '20180727101658', 'PO', '2018-08-04', '5020200006', 'PO received For PO No.20180727101658 Receive No.20180804063814', '0.00', '5000.00', '2', '1', '2', '2018-08-04 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('293', '20180804162054', 'PO', '2018-08-04', '10107', 'PO Receive Receive No 20180804162129', '20000.00', '0.00', '2', '1', '2', '2018-08-04 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('294', '20180804162054', 'PO', '2018-08-04', '5020200007', 'PO received For PO No.20180804162054 Receive No.20180804162129', '0.00', '20000.00', '2', '1', '2', '2018-08-04 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('295', '1031', 'CIV', '2018-08-04', '1020101000002', 'Cash in hand debit For Invoice No1031', '30000.00', '0.00', '2', '1', '2', '2018-08-04 16:22:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('296', '1031', 'CIV', '2018-08-04', '403', 'Cost of sale debit For Invoice No1031', NULL, '0.00', '2', '1', '2', '2018-08-04 16:22:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('297', '1031', 'CIV', '2018-08-04', '10107', 'Inventory credit For Invoice No1031', '0.00', NULL, '2', '1', '2', '2018-08-04 16:22:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('298', '1031', 'CIV', '2018-08-04', '1020301000018', 'Customer debit for Product For Invoice No1031', '30000.00', '0.00', '2', '1', '2', '2018-08-04 16:22:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('299', '1031', 'CIV', '2018-08-04', '1020301000018', 'Customer credit for Paid Amount For Invoice No1031', '0.00', '30000.00', '2', '1', '2', '2018-08-04 16:22:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('300', '5', 'RT', '2018-08-04', '1020301000018', 'Receive For 5', '15000.00', '0.00', '2', '1', '2', '2018-08-04 16:23:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('301', '1031', 'RT', '2018-08-04', '403', 'RT For Invoice No1031', '0.00', '0.00', '2', '1', '2', '2018-08-04 16:23:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('302', '1031', 'RT', '2018-08-04', '10107', 'RT For Invoice No1031', '0.00', '0.00', '2', '1', '2', '2018-08-04 16:23:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('303', '1031', 'CIV', '2018-08-04', '1020101', 'CIV For Invoice No1031', '0.00', '15000.00', '2', '1', '2', '2018-08-04 16:23:31', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('304', '20180804162054', 'PO', '2018-08-04', '5020200007', 'P Return For 20180804162054', '9900.00', '0.00', '2', '1', '2', '2018-08-04 16:26:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('305', '20180804162054', 'PO', '2018-08-04', '10107', 'Purchase Return For PO No20180804162054', '0.00', '9900.00', '2', '1', '2', '2018-08-04 16:26:20', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('306', '20180804162054', 'PO', '2018-08-04', '5020200007', 'P Return For 20180804162054', '19500.00', '0.00', '2', '1', '2', '2018-08-04 16:28:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('307', '20180804162054', 'PO', '2018-08-04', '10107', 'Purchase Return For PO No20180804162054', '0.00', '19500.00', '2', '1', '2', '2018-08-04 16:28:12', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('308', '20180804045253', 'PO', '2018-08-05', '10107', 'Purchase Return For PO No20180804045253', '0.00', '175000.00', '2', '1', '2', '2018-08-05 05:20:37', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('309', '20180805054633', 'PO', '2018-08-05', '10107', 'PO Receive Receive No 20180805054643', '100000.00', '0.00', '2', '1', '2', '2018-08-05 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('310', '20180805054633', 'PO', '2018-08-05', '5020200002', 'PO received For PO No.20180805054633 Receive No.20180805054643', '0.00', '100000.00', '2', '1', '2', '2018-08-05 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('311', '1032', 'CIV', '2018-08-05', '1020101000002', 'Cash in hand debit For Invoice No1032', '15000.00', '0.00', '2', '1', '2', '2018-08-05 05:48:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('312', '1032', 'CIV', '2018-08-05', '403', 'Cost of sale debit For Invoice No1032', NULL, '0.00', '2', '1', '2', '2018-08-05 05:48:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('313', '1032', 'CIV', '2018-08-05', '10107', 'Inventory credit For Invoice No1032', '0.00', NULL, '2', '1', '2', '2018-08-05 05:48:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('314', '1032', 'CIV', '2018-08-05', '1020301000007', 'Customer debit for Product For Invoice No1032', '15000.00', '0.00', '2', '1', '2', '2018-08-05 05:48:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('315', '1032', 'CIV', '2018-08-05', '1020301000007', 'Customer credit for Paid Amount For Invoice No1032', '0.00', '15000.00', '2', '1', '2', '2018-08-05 05:48:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('316', '20180805054633', 'PO', '2018-08-05', '5020200002', 'P Return For 20180805054633', '20000.00', '0.00', '2', '1', '2', '2018-08-05 05:49:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('317', '20180805054633', 'PO', '2018-08-05', '10107', 'Purchase Return For PO No20180805054633', '0.00', '20000.00', '2', '1', '2', '2018-08-05 05:49:08', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('318', '20180804162054', 'PO', '2018-08-05', '5020200007', 'P Return For 20180804162054', '10000.00', '0.00', '2', '1', '2', '2018-08-05 06:06:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('319', '20180804162054', 'PO', '2018-08-05', '10107', 'Purchase Return For PO No20180804162054', '0.00', '10000.00', '2', '1', '2', '2018-08-05 06:06:34', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('320', '20180805063043', 'PO', '2018-08-05', '10107', 'PO Receive Receive No 20180805063116', '20000.00', '0.00', '9', '1', '27', '2018-08-05 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('321', '20180805063043', 'PO', '2018-08-05', '5020200007', 'PO received For PO No.20180805063043 Receive No.20180805063116', '0.00', '20000.00', '9', '1', '27', '2018-08-05 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('322', '1033', 'CIV', '2018-08-05', '403', 'Cost of sale debit For Invoice No1033', NULL, '0.00', '9', '1', '27', '2018-08-05 06:33:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('323', '1033', 'CIV', '2018-08-05', '10107', 'Inventory credit For Invoice No1033', '0.00', NULL, '9', '1', '27', '2018-08-05 06:33:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('324', '1033', 'CIV', '2018-08-05', '1020301000019', 'Customer debit for Product For Invoice No1033', '30000.00', '0.00', '9', '1', '27', '2018-08-05 06:33:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('325', '1033', 'CIV', '2018-08-05', '1020301000019', 'Customer credit for Paid Amount For Invoice No1033', '0.00', '30000.00', '9', '1', '27', '2018-08-05 06:33:02', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('326', '6', 'RT', '2018-08-05', '1020301000019', 'Receive For 6', '15000.00', '0.00', '9', '1', '27', '2018-08-05 06:33:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('327', '1033', 'RT', '2018-08-05', '403', 'RT For Invoice No1033', '0.00', '0.00', '9', '1', '27', '2018-08-05 06:33:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('328', '1033', 'RT', '2018-08-05', '10107', 'RT For Invoice No1033', '0.00', '0.00', '9', '1', '27', '2018-08-05 06:33:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('329', '1033', 'CIV', '2018-08-05', '1020101', 'CIV For Invoice No1033', '0.00', '15000.00', '9', '1', '27', '2018-08-05 06:33:50', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('330', '20180805063043', 'PO', '2018-08-05', '5020200007', 'P Return For 20180805063043', '10000.00', '0.00', '9', '1', '27', '2018-08-05 06:34:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('331', '20180805063043', 'PO', '2018-08-05', '10107', 'Purchase Return For PO No20180805063043', '0.00', '10000.00', '9', '1', '27', '2018-08-05 06:34:10', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('332', '20180805092943', 'PO', '2018-08-05', '10107', 'PO Receive Receive No 20180805093026', '30000.00', '0.00', '9', '1', '27', '2018-08-05 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('333', '20180805092943', 'PO', '2018-08-05', '5020200003', 'PO received For PO No.20180805092943 Receive No.20180805093026', '0.00', '30000.00', '9', '1', '27', '2018-08-05 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('334', '20180805092943', 'PO', '2018-08-05', '10107', 'PO Receive Receive No 20180805093043', '10000.00', '0.00', '9', '1', '27', '2018-08-05 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('335', '20180805092943', 'PO', '2018-08-05', '5020200003', 'PO received For PO No.20180805092943 Receive No.20180805093043', '0.00', '10000.00', '9', '1', '27', '2018-08-05 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('336', '20180805092943', 'PO', '2018-08-05', '10107', 'PO Receive Receive No 20180805093057', '10000.00', '0.00', '9', '1', '27', '2018-08-05 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('337', '20180805092943', 'PO', '2018-08-05', '5020200003', 'PO received For PO No.20180805092943 Receive No.20180805093057', '0.00', '10000.00', '9', '1', '27', '2018-08-05 00:00:00', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('338', '7', 'RT', '2018-08-06', '1020301000019', 'Receive For 7', '15000.00', '0.00', '9', '1', '2', '2018-08-06 05:57:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('339', '1033', 'RT', '2018-08-06', '403', 'RT For Invoice No1033', '0.00', '0.00', '2', '1', '2', '2018-08-06 05:57:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('340', '1033', 'RT', '2018-08-06', '10107', 'RT For Invoice No1033', '0.00', '0.00', '2', '1', '2', '2018-08-06 05:57:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('341', '1033', 'CIV', '2018-08-06', '1020101', 'CIV For Invoice No1033', '0.00', '15000.00', '2', '1', '2', '2018-08-06 05:57:58', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('342', '20180805092943', 'PO', '2018-08-06', '5020200003', 'P Return For 20180805092943', '10000.00', '0.00', '2', '1', '2', '2018-08-06 05:58:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('343', '20180805092943', 'PO', '2018-08-06', '10107', 'Purchase Return For PO No20180805092943', '0.00', '10000.00', '2', '1', '2', '2018-08-06 05:58:23', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('344', 'DV-4', 'DV', '2018-08-06', '102010204', 'sdfsdf', '0.00', '500000.00', '10', '1', '26', '2018-08-06 07:30:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('345', 'DV-4', 'DV', '2018-08-06', '102020103', 'sdfsdf', '500000.00', '0.00', '10', '1', '26', '2018-08-06 07:30:28', NULL, NULL, '1');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('346', 'DV-5', 'DV', '2018-08-06', '102010203', '', '0.00', '2000.00', '10', '1', '26', '2018-08-06 07:59:33', NULL, NULL, '0');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('347', 'DV-5', 'DV', '2018-08-06', '4021002', '', '2000.00', '0.00', '10', '1', '26', '2018-08-06 07:59:33', NULL, NULL, '0');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('348', 'DV-6', 'DV', '2018-09-27', '1020101', '', '0.00', '5000.00', '2', '1', '2', '2018-09-27 12:10:55', NULL, NULL, '0');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('349', 'DV-6', 'DV', '2018-09-27', '102010202', '', '5000.00', '0.00', '2', '1', '2', '2018-09-27 12:10:55', NULL, NULL, '0');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('350', 'DV-7', 'DV', '2018-09-27', '1020101', '', '0.00', '2000.00', '2', '1', '2', '2018-09-27 12:11:19', NULL, NULL, '0');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('351', 'DV-7', 'DV', '2018-09-27', '102010202', '', '2000.00', '0.00', '2', '1', '2', '2018-09-27 12:11:19', NULL, NULL, '0');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('352', 'DV-8', 'DV', '2018-09-27', '102010203', '', '0.00', '1000000.00', '2', '1', '2', '2018-09-27 12:16:57', NULL, NULL, '0');
INSERT INTO `acc_transaction` (`ID`, `VNo`, `Vtype`, `VDate`, `COAID`, `Narration`, `Debit`, `Credit`, `StoreID`, `IsPosted`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`, `IsAppove`) VALUES ('353', 'DV-8', 'DV', '2018-09-27', '4021002', '', '1000000.00', '0.00', '2', '1', '2', '2018-09-27 12:16:57', NULL, NULL, '0');


#
# TABLE STRUCTURE FOR: accesslog
#

DROP TABLE IF EXISTS `accesslog`;

CREATE TABLE `accesslog` (
  `sl_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `action_page` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_done` text COLLATE utf8_unicode_ci,
  `remarks` text COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  UNIQUE KEY `SerialNo` (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('1', 'purchase order', 'create', '11', '2', '2018-05-13 10:05:56');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('2', 'purchase order', 'create', 'Orde Id-20180513101115total amount-1156.00', '2', '2018-05-13 10:11:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('3', 'Customer', 'create', '', '2', '2018-05-13 10:27:35');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('4', 'Customer', 'create', '', '2', '2018-05-13 10:29:29');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('5', 'Customer', 'create', '', '2', '2018-05-13 10:31:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('6', 'Customer', 'create', '5', '2', '2018-05-13 10:32:50');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('7', 'Customer', 'delete', '4', '2', '2018-05-13 10:35:36');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('8', 'Customer', 'delete', 'customer ID :3', '2', '2018-05-13 10:36:20');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('9', 'Customer', 'update', 'customer ID :', '2', '2018-05-13 10:37:30');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('10', 'Customer', 'update', 'customer ID :1', '2', '2018-05-13 10:39:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('11', 'Product', 'create', 'product ID :3', '2', '2018-05-13 10:41:30');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('12', 'Product', 'delete', 'product ID :3', '2', '2018-05-13 10:43:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('13', 'Store', 'create', 'Store ID :3', '2', '2018-05-13 10:46:05');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('14', 'Store', 'delete', 'Store ID :3', '2', '2018-05-13 10:47:56');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('15', 'Supplier', 'create', 'Supplier ID :2', '2', '2018-05-13 10:50:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('16', 'Supplier', 'create', 'Supplier ID :3', '2', '2018-05-13 10:52:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('17', 'Supplier', 'create', 'Supplier ID :4', '2', '2018-05-13 10:52:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('18', 'Supplier', 'create', 'Supplier ID :5', '2', '2018-05-13 10:55:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('19', 'Supplier', 'update', 'Supplier ID :5', '2', '2018-05-13 10:57:03');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('20', 'Supplier', 'delete', 'Supplier ID :5', '2', '2018-05-13 10:57:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('21', 'Warehouse', 'delete', 'Warehouse ID :2', '2', '2018-05-13 11:00:22');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('22', 'Warehouse', 'update', 'Warehouse ID :2', '2', '2018-05-13 11:01:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('23', 'Supplier', 'delete', 'Supplier ID :4', '2', '2018-05-13 12:02:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('24', 'Supplier', 'delete', 'Supplier ID :3', '2', '2018-05-13 12:02:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('25', 'Product', 'create', 'product ID :4', '2', '2018-05-13 12:54:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('26', 'Product', 'create', 'product ID :5', '2', '2018-05-14 08:31:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('27', 'purchase order', 'create', 'Orde Id-20180514084546 total amount-40.00', '2', '2018-05-14 08:45:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('28', 'purchase order', 'create', 'Orde Id-20180514093237 total amount-600.00', '2', '2018-05-14 09:32:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('29', 'purchase order', 'create', 'Orde Id-20180514093316 total amount-120.00', '2', '2018-05-14 09:33:16');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('30', 'purchase order', 'create', 'Orde Id-20180514100849 total amount-776.00', '2', '2018-05-14 10:08:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('31', 'purchase order', 'create', 'Orde Id-20180514122943 total amount-250.00', '2', '2018-05-14 12:29:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('32', 'Role Permission', 'update', 'Role id :9', '2', '2018-05-14 13:38:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('33', 'User', 'create', 'User ID :20', '2', '2018-05-14 13:39:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('34', 'purchase order', 'create', 'Orde Id-20180515060421 total amount-195.00', '2', '2018-05-15 06:04:21');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('35', 'purchase order receive', 'create', 'Orde Id- total amount-120.00', '2', '2018-05-15 07:01:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('36', 'purchase order receive', 'create', 'Orde Id- total amount-80.00', '2', '2018-05-15 07:03:28');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('37', 'purchase order receive', 'create', 'Orde Id- total amount-80.00', '2', '2018-05-15 07:05:39');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('38', 'purchase order receive', 'create', 'Orde Id- total amount-110.00', '2', '2018-05-15 07:07:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('39', 'purchase order', 'create', 'Orde Id-20180515075023 total amount-920.00', '2', '2018-05-15 07:50:23');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('40', 'Role Permission', 'update', 'Role id :6', '2', '2018-05-15 08:57:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('41', 'purchase order', 'create', 'Orde Id-20180515075023 total amount-980.00', '2', '2018-05-15 12:10:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('42', 'purchase order', 'create', 'Orde Id-20180515060421 total amount-210.00', '2', '2018-05-15 12:11:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('43', 'purchase order', 'create', 'Orde Id-20180514122943 total amount-60.00', '2', '2018-05-15 12:24:17');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('44', 'purchase order', 'delete', 'Orde Id-20180514100849', '2', '2018-05-15 12:28:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('45', 'purchase order', 'delete', 'Orde Id-20180514093316', '2', '2018-05-15 12:29:05');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('46', 'purchase order', 'delete', 'Orde Id-20180514093237', '2', '2018-05-15 12:29:25');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('47', 'purchase order', 'delete', 'Orde Id-20180514084546', '2', '2018-05-15 12:29:29');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('48', 'purchase order', 'delete', 'Orde Id-20180513064344', '2', '2018-05-15 12:29:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('49', 'purchase order', 'delete', 'Orde Id-20180513063621', '2', '2018-05-15 12:29:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('50', 'purchase order', 'create', 'Orde Id-20180514122943 total amount-110.00', '2', '2018-05-15 12:30:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('51', 'purchase order', 'create', 'Orde Id-20180514122943 total amount-190.00', '2', '2018-05-15 12:33:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('52', 'purchase order', 'create', 'Orde Id-20180515075023 total amount-60.00', '2', '2018-05-15 12:34:35');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('53', 'purchase order receive', 'create', 'Orde Id- total amount-60.00', '2', '2018-05-15 12:43:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('54', 'purchase Receive', 'delete', 'Receive Id-20180515124354', '2', '2018-05-15 12:44:13');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('55', 'purchase order receive', 'create', 'Orde Id- total amount-60.00', '2', '2018-05-15 12:47:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('56', 'purchase Receive', 'delete', 'Receive Id-20180515124700', '2', '2018-05-15 12:47:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('57', 'purchase order receive', 'create', 'Orde Id- total amount-60.00', '2', '2018-05-15 12:47:29');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('58', 'Product', 'create', 'product ID :6', '2', '2018-05-15 13:36:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('59', 'Warehouse', 'create', 'Warehouse ID :3', '2', '2018-05-15 14:23:01');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('60', 'Product', 'create', 'product ID :7', '2', '2018-05-15 14:34:04');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('61', 'purchase order', 'create', 'Orde Id-20180515143434 total amount-900.00', '2', '2018-05-15 14:34:34');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('62', 'Role Permission', 'update', 'Role id :4', '2', '2018-05-15 15:19:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('63', 'Role Permission', 'update', 'Role id :3', '2', '2018-05-15 15:19:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('64', 'Role Permission', 'update', 'Role id :9', '2', '2018-05-15 15:19:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('65', 'Role Permission', 'update', 'Role id :6', '2', '2018-05-15 15:20:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('66', 'User Role', 'update', 'Role id :4', '2', '2018-05-15 15:21:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('67', 'User Role', 'update', 'Role id :6', '2', '2018-05-15 15:21:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('68', 'User Role', 'update', 'Role id :7', '2', '2018-05-15 15:21:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('69', 'User Role', 'update', 'Role id :9', '2', '2018-05-15 15:21:18');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('70', 'Role Permission', 'create', 'Role id :1', '2', '2018-05-15 15:24:20');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('71', 'Role Permission', 'update', 'Role id :2', '2', '2018-05-15 15:25:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('72', 'Role Permission', 'create', 'Role id :19', '2', '2018-05-15 15:33:18');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('73', 'Sales', 'create', 'invoice_no-1000 total amount-275.00', '2', '2018-05-16 10:51:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('74', 'Sales', 'create', 'invoice_no-1000 total amount-550.00', '2', '2018-05-16 10:56:56');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('75', 'Sales', 'create', 'invoice_no-1001 total amount-700.00', '2', '2018-05-16 11:27:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('76', 'purchase order receive', 'create', 'Orde Id- total amount-675.00', '2', '2018-05-16 14:29:18');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('77', 'Sales', 'create', 'invoice_no-1002 total amount-305.00', '2', '2018-05-17 06:57:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('78', 'Sales', 'create', 'invoice_no-1006 total amount-490.00', '2', '2018-05-17 07:09:17');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('79', 'Sales', 'create', 'invoice_no-1007 total amount-165.00', '2', '2018-05-17 07:10:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('80', 'Sales', 'create', 'invoice_no-1008 total amount-110.00', '2', '2018-05-17 07:13:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('81', 'Sales', 'create', 'invoice_no-1009 total amount-1800.00', '2', '2018-05-17 07:17:45');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('82', 'Sales', 'create', 'invoice_no-1010 total amount-110.00', '2', '2018-05-17 07:22:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('83', 'Sales', 'create', 'invoice_no-1011 total amount-165.00', '2', '2018-05-17 07:23:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('84', 'Sales', 'create', 'invoice_no-1012 total amount-110.00', '2', '2018-05-17 07:25:28');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('85', 'Sales', 'create', 'invoice_no-1013 total amount-550.00', '2', '2018-05-17 07:27:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('86', 'Sales', 'create', 'invoice_no-1014 total amount-105.00', '2', '2018-05-17 07:28:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('87', 'Sales', 'create', 'invoice_no-1015 total amount-165.00', '2', '2018-05-17 07:29:13');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('88', 'purchase order', 'create', 'Orde Id-20180517074220 total amount-1500.00', '2', '2018-05-17 07:42:21');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('89', 'purchase order receive', 'create', 'Orde Id- total amount-1500.00', '2', '2018-05-17 07:42:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('90', 'Sales', 'create', 'invoice_no-1016 total amount-125.00', '2', '2018-05-17 07:43:17');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('91', 'Sales', 'create', 'invoice_no- total amount-', '2', '2018-05-17 12:43:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('92', 'Sales', 'create', 'invoice_no- total amount-', '2', '2018-05-17 14:41:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('93', 'Store', 'create', 'Store ID :3', '2', '2018-05-19 08:34:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('94', 'leases', 'create', 'Lease Id-0', '2', '2018-05-20 05:41:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('95', 'leases', 'create', 'Lease Id-1', '2', '2018-05-20 05:47:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('96', 'leases', 'create', 'Lease Id-2', '2', '2018-05-20 05:58:40');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('97', 'leases', 'update', 'Lease Id-2', '2', '2018-05-20 07:09:13');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('98', 'leases', 'update', 'Lease Id-1', '2', '2018-05-20 07:14:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('99', 'leases', 'update', 'Lease Id-1', '2', '2018-05-20 07:15:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('100', 'leases', 'create', 'Lease Id-3', '2', '2018-05-20 07:18:29');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('101', 'leases', 'update', 'Lease Id-3', '2', '2018-05-20 07:20:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('102', 'leases', 'create', 'Lease Id-4', '2', '2018-05-20 07:23:20');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('103', 'leases', 'update', 'Lease Id-4', '2', '2018-05-20 07:23:59');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('104', 'Lease ', 'delete', 'Lease Id-4', '2', '2018-05-20 07:25:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('105', 'Lease ', 'delete', 'Lease Id-3', '2', '2018-05-20 07:25:24');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('106', 'leases', 'update', 'Lease Id-2', '2', '2018-05-20 07:29:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('107', 'leases', 'update', 'Lease Id-2', '2', '2018-05-20 07:32:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('108', 'leases', 'update', 'Lease Id-2', '2', '2018-05-20 07:33:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('109', 'Role Permission', 'update', 'Role id :2', '2', '2018-05-20 08:32:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('110', 'purchase Receive', 'update', 'Receive Id-20180514122943 total amount-250.00', '2', '2018-05-20 09:48:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('111', 'purchase Receive', 'update', 'Receive Id-20180514122943 total amount-430.00', '2', '2018-05-20 09:49:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('112', 'purchase order', 'create', 'Orde Id-20180520095432 total amount-7000.00', '2', '2018-05-20 09:54:32');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('113', 'purchase order', 'create', 'Orde Id-20180520095550 total amount-1200.00', '2', '2018-05-20 09:55:50');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('114', 'purchase order', 'create', 'Orde Id-20180520095758 total amount-7000.00', '2', '2018-05-20 09:57:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('115', 'purchase Receive', 'update', 'Receive Id-20180520095758 total amount-7015.00', '2', '2018-05-20 09:59:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('116', 'purchase order', 'create', 'Orde Id-20180520100119 total amount-2100.00', '2', '2018-05-20 10:01:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('117', 'purchase order receive', 'create', 'Orde Id- total amount-2100.00', '2', '2018-05-20 10:35:50');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('118', 'purchase order receive', 'create', 'Orde Id- total amount-7000.00', '2', '2018-05-20 10:36:32');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('119', 'Sales', 'create', 'invoice_no-1017 total amount-725.00', '2', '2018-05-20 10:37:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('120', 'Sales', 'create', 'invoice_no-1017 total amount-550.00', '2', '2018-05-20 10:38:34');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('121', 'Sales', 'create', 'invoice_no-1017 total amount-275.00', '2', '2018-05-20 10:39:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('122', 'sale ', 'delete', 'sales id-20180517074317', '2', '2018-05-20 10:56:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('123', 'sale ', 'delete', 'sales id-20180516105656', '2', '2018-05-20 10:57:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('124', 'sale ', 'delete', 'sales id-20180517065731', '2', '2018-05-20 10:57:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('125', 'sale ', 'delete', 'sales id-20180516112747', '2', '2018-05-20 10:58:04');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('126', 'Sales', 'create', 'invoice_no-1017 total amount-445.00', '2', '2018-05-20 12:24:13');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('127', 'Sales', 'create', 'invoice_no-1017 total amount-725.00', '2', '2018-05-20 12:26:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('128', 'Sales', 'create', 'invoice_no-1017 total amount-535.00', '2', '2018-05-20 12:28:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('129', 'Sales', 'create', 'invoice_no-1017 total amount-270.00', '2', '2018-05-20 12:31:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('130', 'Sales', 'create', 'invoice_no-1018 total amount-560.00', '9', '2018-05-20 12:37:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('131', 'sale ', 'delete', 'sales id-20180517072810', '9', '2018-05-20 13:19:24');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('132', 'sale ', 'delete', 'sales id-20180517071744', '9', '2018-05-20 13:19:32');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('133', 'sale ', 'delete', 'sales id-20180517072913', '9', '2018-05-20 13:20:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('134', 'sale ', 'delete', 'sales id-20180517072732', '9', '2018-05-20 13:20:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('135', 'sale ', 'delete', 'sales id-20180517072528', '9', '2018-05-20 13:20:16');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('136', 'sale ', 'delete', 'sales id-20180517072341', '9', '2018-05-20 13:20:40');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('137', 'sale ', 'delete', 'sales id-20180517072210', '9', '2018-05-20 13:20:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('138', 'sale ', 'delete', 'sales id-20180517071008', '9', '2018-05-20 13:20:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('139', 'leases', 'create', 'Lease Id-3', '2', '2018-05-21 06:18:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('140', 'leases', 'update', 'Lease Id-3', '2', '2018-05-21 06:21:30');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('141', 'Sales', 'create', 'invoice_no-1019 total amount-340.00', '9', '2018-05-21 06:50:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('142', 'Sales', 'update', 'invoice_no-1017 total amount-295.00', '2', '2018-05-21 12:11:29');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('143', 'Sales', 'update', 'invoice_no-1017 total amount-270.00', '2', '2018-05-21 12:17:17');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('144', 'Sales', 'update', 'invoice_no-1017 total amount-270', '2', '2018-05-21 12:22:28');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('145', 'Sales', 'update', 'invoice_no-1017 total amount-270', '2', '2018-05-21 12:23:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('146', 'Sales', 'update', 'invoice_no-1018 total amount-560', '2', '2018-05-21 12:59:39');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('147', 'Gurrantor', 'create', '0', '2', '2018-05-22 11:47:25');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('148', 'Gurrantor', 'create', '3', '2', '2018-05-22 11:49:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('149', 'Gurrantor', 'create', '4', '2', '2018-05-22 12:46:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('150', 'Gurrantor', 'create', '5', '2', '2018-05-22 12:50:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('151', 'Gurrantor', 'create', '6', '2', '2018-05-23 05:53:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('152', 'Gurrantor', 'create', '7', '2', '2018-05-23 06:11:45');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('153', 'Gurrantor', 'create', '8', '2', '2018-05-23 06:15:40');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('154', 'Gurrantor', 'create', '9', '2', '2018-05-23 06:18:35');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('155', 'Gurrantor', 'create', '10', '2', '2018-05-23 06:37:21');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('156', 'Gurrantor', 'create', '11', '2', '2018-05-23 06:39:32');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('157', 'Sales', 'create', 'invoice_no-1020 total amount-140.00', '2', '2018-05-23 07:06:22');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('158', 'Sales', 'create', 'invoice_no-1021 total amount-140.00', '2', '2018-05-23 07:08:45');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('159', 'Sales', 'create', 'invoice_no-1021 total amount-70.00', '2', '2018-05-23 07:19:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('160', 'Gurrantor', 'create', '12', '2', '2018-05-23 08:46:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('161', 'leases', 'create', 'Lease Id-4', '2', '2018-05-23 08:57:50');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('162', 'leases', 'update', 'Lease Id-4', '2', '2018-05-23 09:52:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('163', 'Sales', 'create', 'invoice_no-1022 total amount-105.00', '2', '2018-05-23 11:08:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('164', 'Sales', 'create', 'invoice_no-1022 total amount-105.00', '2', '2018-05-23 11:12:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('165', 'Sales', 'create', 'invoice_no-1022 total amount-70.00', '2', '2018-05-23 11:16:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('166', 'Sales', 'create', 'invoice_no-1022 total amount-70.00', '2', '2018-05-23 11:21:13');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('167', 'Sales', 'create', 'invoice_no-1022 total amount-35.00', '2', '2018-05-23 11:25:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('168', 'Sales', 'create', 'invoice_no-1022 total amount-105.00', '2', '2018-05-23 11:31:39');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('169', 'Sales', 'create', 'invoice_no-1023 total amount-485.00', '2', '2018-05-23 11:33:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('170', 'Product', 'create', 'product ID :8', '2', '2018-05-24 06:43:06');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('171', 'Product', 'create', 'product ID :9', '2', '2018-05-24 06:46:28');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('172', 'Stockmovment', 'create', 'Stockmovment ID :1', '2', '2018-05-24 08:23:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('173', 'Stockmovment', 'create', 'Stockmovment ID :1', '2', '2018-05-24 08:30:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('174', 'Stockmovment', 'create', 'Stockmovment ID :2', '2', '2018-05-24 10:06:26');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('175', 'Stockmovment', 'create', 'Stockmovment ID :5', '2', '2018-05-24 10:14:04');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('176', 'Stockmovment', 'create', 'Stockmovment ID :1', '2', '2018-05-24 10:16:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('177', 'Stockmovment', 'create', 'Stockmovment ID :2', '2', '2018-05-24 10:35:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('178', 'Product', 'create', 'product ID :10', '2', '2018-05-24 10:36:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('179', 'Stockmovment', 'create', 'Stockmovment ID :3', '2', '2018-05-24 10:39:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('180', 'Stockmovment', 'create', 'Stockmovment ID :4', '2', '2018-05-24 10:40:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('181', 'Stockmovment', 'create', 'Stockmovment ID :7', '2', '2018-05-24 10:50:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('182', 'Sales', 'create', 'invoice_no-1024 total amount-110.00', '2', '2018-05-26 07:50:13');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('183', 'Sales', 'create', 'invoice_no-1024 total amount-105.00', '2', '2018-05-26 07:58:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('184', 'Sales', 'create', 'invoice_no-1024 total amount-175.00', '2', '2018-05-26 07:59:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('185', 'Sales', 'create', 'invoice_no-1024 total amount-105.00', '2', '2018-05-26 08:00:40');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('186', 'Sales', 'create', 'invoice_no-1024 total amount-105.00', '2', '2018-05-26 08:00:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('187', 'Sales', 'create', 'invoice_no-1024 total amount-70.00', '2', '2018-05-26 08:02:29');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('188', 'Sales', 'create', 'invoice_no-1024 total amount-70.00', '2', '2018-05-26 08:25:56');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('189', 'Sales', 'create', 'invoice_no-1024 total amount-70.00', '2', '2018-05-26 08:26:32');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('190', 'Sales', 'create', 'invoice_no-1025 total amount-105.00', '2', '2018-05-26 12:31:01');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('191', 'Sales', 'create', 'invoice_no-1026 total amount-165.00', '2', '2018-05-26 12:32:04');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('192', 'Product', 'create', 'product ID :11', '2', '2018-05-26 13:00:59');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('193', 'Product', 'create', 'product ID :12', '2', '2018-05-27 07:18:05');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('194', 'Product', 'delete', 'product ID :1', '2', '2018-05-27 07:27:56');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('195', 'Product', 'update', 'product ID :12', '2', '2018-05-27 09:55:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('196', 'Sales', 'create', 'invoice_no-1027 total amount-70.00', '2', '2018-05-27 10:32:26');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('197', 'User', 'create', 'User ID :21', '2', '2018-05-27 10:38:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('198', 'Customer', 'create', '26', '2', '2018-05-27 12:14:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('199', 'Product', 'create', 'product ID :13', '2', '2018-05-28 05:40:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('200', 'Product', 'update', 'product ID :13', '2', '2018-05-28 05:42:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('201', 'Product', 'update', 'product ID :13', '2', '2018-05-28 05:43:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('202', 'Sales', 'create', 'invoice_no-1028 total amount-350.00', '2', '2018-05-28 07:52:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('203', 'Customer', 'create', '30', '2', '2018-05-28 08:36:22');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('204', 'Customer', 'create', '31', '2', '2018-05-28 08:47:03');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('205', 'sale ', 'delete', 'sales id-20180520123130', '2', '2018-05-28 07:19:45');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('206', 'sale ', 'delete', 'sales id-20180526123204', '2', '2018-05-28 07:19:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('207', 'sale ', 'delete', 'sales id-20180526123101', '2', '2018-05-28 07:19:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('208', 'sale ', 'delete', 'sales id-20180521065014', '2', '2018-05-28 07:20:06');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('209', 'sale ', 'delete', 'sales id-20180523113343', '2', '2018-05-28 07:51:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('210', 'Sales', 'create', 'invoice_no-1029 total amount-175.00', '2', '2018-06-02 10:38:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('211', 'Sales', 'create', 'invoice_no-1029 total amount-175.00', '2', '2018-06-02 10:43:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('212', 'Sales', 'create', 'invoice_no-1030 total amount-70.00', '2', '2018-06-02 10:47:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('213', 'recovery', 'create', 'payment ID :31', '2', '2018-06-02 11:32:04');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('214', 'recovery', 'create', 'payment ID :32', '2', '2018-06-02 11:32:26');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('215', 'recovery', 'create', 'payment ID :33', '2', '2018-06-02 11:34:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('216', 'recovery', 'create', 'payment ID :34', '2', '2018-06-02 11:48:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('217', 'recovery', 'create', 'payment ID :35', '2', '2018-06-02 12:03:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('218', 'recovery', 'create', 'payment ID :36', '2', '2018-06-02 12:04:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('219', 'recovery', 'create', 'payment ID :37', '2', '2018-06-02 12:04:34');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('220', 'recovery', 'create', 'payment ID :38', '2', '2018-06-02 12:04:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('221', 'recovery', 'create', 'payment ID :39', '2', '2018-06-02 12:05:22');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('222', 'Sales', 'create', 'invoice_no-1031 total amount-450.00', '2', '2018-06-03 06:51:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('223', 'recovery', 'create', 'payment ID :41', '2', '2018-06-03 07:01:05');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('224', 'recovery', 'create', 'payment ID :42', '2', '2018-06-03 07:03:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('225', 'recovery', 'create', 'payment ID :43', '2', '2018-06-03 07:04:07');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('226', 'payment', 'create', 'payment ID :44', '2', '2018-06-03 07:22:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('227', 'Sales', 'create', 'invoice_no-1032 total amount-175.00', '2', '2018-06-03 08:30:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('228', 'recovery', 'create', 'payment ID :46', '2', '2018-06-03 11:23:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('229', 'recovery', 'create', 'payment ID :47', '2', '2018-06-04 07:15:07');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('230', 'Sales', 'create', 'invoice_no-1033 total amount-70.00', '2', '2018-06-04 07:16:06');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('231', 'recovery', 'create', 'payment ID :49', '2', '2018-06-04 07:30:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('232', 'recovery', 'create', 'payment ID :50', '2', '2018-06-04 07:39:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('233', 'recovery', 'create', 'payment ID :51', '2', '2018-06-04 07:44:17');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('234', 'Sales', 'create', 'invoice_no-1034 total amount-655.00', '9', '2018-06-04 10:34:22');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('235', 'recovery', 'create', 'payment ID :53', '2', '2018-06-04 10:35:18');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('236', 'Sales', 'create', 'invoice_no-1035 total amount-200.00', '2', '2018-06-04 10:41:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('237', 'Store', 'create', 'Store ID :4', '2', '2018-06-04 10:42:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('238', 'recovery', 'create', 'payment ID :55', '2', '2018-06-04 10:42:50');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('239', 'recovery', 'create', 'payment ID :56', '2', '2018-06-04 10:43:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('240', 'Sales', 'create', 'invoice_no-1036 total amount-145.00', '2', '2018-06-04 10:45:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('241', 'recovery', 'create', 'payment ID :58', '2', '2018-06-04 10:46:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('242', 'recovery', 'create', 'payment ID :59', '2', '2018-06-04 10:47:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('243', 'recovery', 'create', 'payment ID :60', '2', '2018-06-04 10:50:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('244', 'recovery', 'create', 'payment ID :61', '2', '2018-06-04 10:52:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('245', 'recovery', 'create', 'payment ID :62', '2', '2018-06-05 07:38:34');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('246', 'recovery', 'create', 'payment ID :63', '2', '2018-06-05 07:39:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('247', 'recovery', 'create', 'payment ID :64', '2', '2018-06-05 07:39:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('248', 'recovery', 'create', 'payment ID :65', '2', '2018-06-05 07:40:40');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('249', 'recovery', 'create', 'payment ID :66', '2', '2018-06-05 07:41:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('250', 'recovery', 'create', 'payment ID :67', '2', '2018-06-05 07:41:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('251', 'Sales', 'create', 'invoice_no-1037 total amount-220.00', '2', '2018-06-05 07:45:06');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('252', 'recovery', 'create', 'payment ID :69', '2', '2018-06-05 07:46:16');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('253', 'recovery', 'create', 'payment ID :70', '2', '2018-06-05 07:46:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('254', 'recovery', 'create', 'payment ID :71', '2', '2018-06-05 07:52:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('255', 'recovery', 'create', 'payment ID :72', '2', '2018-06-05 07:53:04');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('256', 'recovery', 'create', 'payment ID :73', '2', '2018-06-05 07:53:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('257', 'recovery', 'create', 'payment ID :74', '2', '2018-06-05 07:54:17');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('258', 'Sales', 'create', 'invoice_no-1000 total amount-310.00', '2', '2018-06-05 07:57:45');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('259', 'recovery', 'create', 'payment ID :2', '2', '2018-06-05 07:58:13');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('260', 'recovery', 'create', 'payment ID :3', '2', '2018-06-05 07:59:01');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('261', 'recovery', 'create', 'payment ID :4', '2', '2018-06-05 08:00:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('262', 'recovery', 'create', 'payment ID :5', '2', '2018-06-05 08:07:03');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('263', 'recovery', 'create', 'payment ID :6', '2', '2018-06-05 08:11:39');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('264', 'Sales', 'create', 'invoice_no-1001 total amount-395.00', '2', '2018-06-05 08:21:40');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('265', 'recovery', 'create', 'payment ID :8', '2', '2018-06-05 08:22:24');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('266', 'Sales', 'create', 'invoice_no-1002 total amount-140.00', '2', '2018-06-05 09:25:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('267', 'recovery', 'create', 'payment ID :10', '2', '2018-06-05 09:26:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('268', 'recovery', 'create', 'payment ID :11', '2', '2018-06-05 09:27:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('269', 'Store', 'create', 'Store ID :5', '2', '2018-06-06 06:41:24');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('270', 'recovery', 'create', 'payment ID :12', '2', '2018-06-06 08:09:01');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('271', 'Sales', 'create', 'invoice_no-1003 total amount-470.00', '2', '2018-06-06 08:22:07');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('272', 'recovery', 'create', 'payment ID :14', '2', '2018-06-06 08:23:20');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('273', 'recovery', 'create', 'payment ID :15', '2', '2018-06-06 09:26:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('274', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-07 05:46:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('275', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-07 05:51:59');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('276', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-07 05:52:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('277', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-07 05:54:38');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('278', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-07 05:55:26');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('279', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-07 06:01:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('280', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-07 06:03:17');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('281', 'Sales', 'create', 'invoice_no-1004 total amount-415.00', '2', '2018-06-07 07:02:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('282', 'recovery', 'create', 'payment ID :17', '2', '2018-06-07 07:03:16');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('283', 'Sales', 'create', 'invoice_no-1005 total amount-700.00', '2', '2018-06-07 08:20:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('284', 'Sales', 'create', 'invoice_no-1006 total amount-350.00', '2', '2018-06-09 08:35:21');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('285', 'recovery', 'create', 'payment ID :20', '2', '2018-06-09 08:46:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('286', 'Sales', 'create', 'invoice_no-1007 total amount-430.00', '2', '2018-06-09 10:08:40');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('287', 'recovery', 'create', 'payment ID :22', '2', '2018-06-09 10:09:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('288', 'recovery', 'create', 'payment ID :23', '2', '2018-06-09 10:53:20');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('289', 'Product', 'create', 'product ID :14', '2', '2018-06-12 07:45:21');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('290', 'purchase order', 'create', 'Orde Id-20180612103148 total amount-330.00', '2', '2018-06-12 10:31:48');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('291', 'purchase order', 'create', 'Orde Id-20180612103551 total amount-180.00', '2', '2018-06-12 10:35:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('292', 'purchase order', 'create', 'Orde Id-20180612103748 total amount-225.00', '2', '2018-06-12 10:37:48');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('293', 'purchase order', 'create', 'Orde Id-20180612104319 total amount-160.00', '2', '2018-06-12 10:43:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('294', 'purchase order', 'create', 'Orde Id-20180612105558 total amount-300.00', '2', '2018-06-12 10:55:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('295', 'purchase order', 'create', 'Orde Id-20180612124820 total amount-619.00', '2', '2018-06-12 12:48:21');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('296', 'Sales', 'create', 'invoice_no-1008 total amount-105.00', '2', '2018-06-23 07:51:23');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('297', 'Sales', 'create', 'invoice_no-1009 total amount-105.00', '2', '2018-06-23 07:51:45');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('298', 'purchase order', 'create', 'Orde Id-20180623084403 total amount-1040.00', '2', '2018-06-23 08:44:03');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('299', 'purchase Receive', 'delete', 'Receive Id-201806070617', '2', '2018-06-23 10:39:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('300', 'purchase Receive', 'delete', 'Receive Id-20180607060317', '2', '2018-06-23 10:39:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('301', 'purchase order receive', 'create', 'Orde Id- total amount-190.00', '2', '2018-06-23 11:07:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('302', 'purchase order receive', 'create', 'Orde Id- total amount-385.00', '2', '2018-06-23 11:07:36');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('303', 'Stockmovment', 'create', 'Stockmovment ID :8', '2', '2018-06-23 11:38:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('304', 'Stockmovment', 'create', 'Stockmovment ID :9', '2', '2018-06-23 11:40:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('305', 'Stockmovment', 'create', 'Stockmovment ID :10', '2', '2018-06-23 12:04:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('306', 'User', 'create', 'User ID :22', '2', '2018-06-23 12:32:24');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('307', 'Role Permission', 'update', 'Role id :3', '2', '2018-06-23 12:33:25');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('308', 'User', 'create', 'User ID :23', '2', '2018-06-23 12:35:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('309', 'stockmovement ', 'create', 'receive_id-', '23', '2018-06-23 12:37:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('310', 'Role Permission', 'create', 'Role id :52', '2', '2018-06-24 10:57:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('311', 'Role Permission', 'update', 'Role id :3', '2', '2018-06-24 12:46:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('312', 'Role Permission', 'create', 'Role id :78', '2', '2018-06-25 06:45:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('313', 'Role Permission', 'create', 'Role id :88', '2', '2018-06-25 06:46:03');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('314', 'Role Permission', 'create', 'Role id :98', '2', '2018-06-25 06:51:07');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('315', 'Role Permission', 'create', 'Role id :108', '2', '2018-06-25 06:51:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('316', 'Role Permission', 'create', 'Role id :118', '2', '2018-06-25 07:01:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('317', 'Role Permission', 'create', 'Role id :128', '2', '2018-06-25 07:02:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('318', 'Role Permission', 'create', 'Role id :138', '2', '2018-06-25 07:07:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('319', 'Role Permission', 'create', 'Role id :148', '2', '2018-06-25 07:08:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('320', 'Role Permission', 'create', 'Role id :158', '2', '2018-06-25 07:08:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('321', 'Role Permission', 'create', 'Role id :168', '2', '2018-06-25 07:08:28');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('322', 'Role Permission', 'update', 'Role id :1', '2', '2018-06-25 07:08:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('323', 'Role Permission', 'create', 'Role id :191', '2', '2018-06-25 07:30:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('324', 'Role Permission', 'create', 'Role id :201', '2', '2018-06-25 09:52:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('325', 'Role Permission', 'create', 'Role id :214', '2', '2018-06-25 10:42:29');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('326', 'Role Permission', 'create', 'Role id :227', '2', '2018-06-25 10:50:04');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('327', 'Role Permission', 'create', 'Role id :237', '2', '2018-06-25 10:58:34');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('328', 'Role Permission', 'create', 'Role id :247', '2', '2018-06-25 11:00:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('329', 'Role Permission', 'create', 'Role id :260', '2', '2018-06-25 13:50:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('330', 'Role Permission', 'create', 'Role id :273', '2', '2018-06-25 13:50:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('331', 'Role Permission', 'create', 'Role id :286', '2', '2018-06-25 13:51:01');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('332', 'Store', 'delete', 'Store ID :5', '2', '2018-06-28 14:41:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('333', 'purchase order', 'create', 'Orde Id-20180629065013 total amount-2075.00', '2', '2018-06-29 06:50:13');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('334', 'purchase Receive', 'update', 'Receive Id-20180629065013 total amount-2146.00', '2', '2018-06-29 08:47:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('335', 'purchase order receive', 'create', 'Orde Id- total amount-2125.00', '2', '2018-06-29 11:12:30');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('336', 'purchase order receive', 'create', 'Orde Id- total amount-68.00', '2', '2018-06-29 11:40:50');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('337', 'purchase order', 'create', 'Orde Id-20180629114146 total amount-542.00', '2', '2018-06-29 11:41:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('338', 'purchase order receive', 'create', 'Orde Id- total amount-90.00', '2', '2018-06-29 11:42:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('339', 'purchase order receive', 'create', 'Orde Id- total amount-25.00', '2', '2018-06-29 11:46:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('340', 'purchase order', 'create', 'Orde Id-20180629120153 total amount-25.00', '2', '2018-06-29 12:01:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('341', 'User Role', 'update', 'Role id :', '2', '2018-06-30 07:57:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('342', 'Supplier', 'create', 'Supplier ID :3', '2', '2018-06-30 08:32:04');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('343', 'Customer', 'create', '9', '2', '2018-06-30 09:58:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('344', 'purchase order', 'create', 'Orde Id-20180630104049 total amount-3425.00', '2', '2018-06-30 10:40:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('345', 'purchase order receive', 'create', 'Orde Id- total amount-3500.00', '2', '2018-06-30 10:41:45');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('346', 'Role Permission', 'update', 'Role id :2', '2', '2018-06-30 10:50:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('347', 'Stockmovment', 'create', 'Stockmovment ID :1', '23', '2018-06-30 10:51:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('348', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-30 10:51:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('349', 'Stockmovment', 'create', 'Stockmovment ID :8', '23', '2018-06-30 11:21:20');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('350', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-30 11:21:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('351', 'Sales', 'create', 'invoice_no-1000 total amount-70.00', '2', '2018-06-30 11:57:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('352', 'Stockmovment', 'create', 'Stockmovment ID :9', '23', '2018-06-30 12:05:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('353', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-30 12:05:40');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('354', 'Stockmovment', 'create', 'Stockmovment ID :10', '23', '2018-06-30 14:05:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('355', 'stockmovement ', 'create', 'receive_id-', '2', '2018-06-30 14:05:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('356', 'Stockmovment', 'issue', 'Stockmovment ID :10', '2', '2018-06-30 14:11:06');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('357', 'Stockmovment', 'issue', 'Stockmovment ID :9', '2', '2018-06-30 14:12:24');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('358', 'Stockmovment', 'create', 'Stockmovment ID :11', '23', '2018-06-30 14:30:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('359', 'Stockmovment', 'create', 'Stockmovment ID :12', '23', '2018-07-01 05:37:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('360', 'Stockmovment', 'create', 'Stockmovment ID :1', '23', '2018-07-01 06:33:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('361', 'Stockmovment', 'issue', 'Stockmovment ID :1', '2', '2018-07-01 06:34:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('362', 'Stockmovment', 'create', 'Stockmovment ID :2', '23', '2018-07-01 06:41:01');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('363', 'Stockmovment', 'issue', 'Stockmovment ID :2', '2', '2018-07-01 07:00:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('364', 'Stockmovment', 'create', 'Stockmovment ID :3', '23', '2018-07-01 07:01:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('365', 'Stockmovment', 'issue', 'Stockmovment ID :3', '2', '2018-07-01 07:01:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('366', 'Stockmovment', 'issue', 'Stockmovment ID :3', '2', '2018-07-01 07:07:07');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('367', 'Stockmovment', 'issue', 'Stockmovment ID :3', '2', '2018-07-01 07:21:22');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('368', 'Stockmovment', 'create', 'Stockmovment ID :1', '23', '2018-07-01 07:23:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('369', 'Stockmovment', 'issue', 'Stockmovment ID :1', '2', '2018-07-01 07:23:34');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('370', 'stockmovement ', 'create', 'receive_id-', '23', '2018-07-01 07:44:29');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('371', 'purchase order', 'create', 'Orde Id-20180701080440 total amount-250.00', '23', '2018-07-01 08:04:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('372', 'purchase order receive', 'create', 'Orde Id- total amount-250.00', '2', '2018-07-01 08:05:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('373', 'Sales', 'create', 'invoice_no-1001 total amount-450.00', '2', '2018-07-01 11:27:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('374', 'Role Permission', 'create', 'Role id :313', '2', '2018-07-02 09:05:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('375', 'Sales', 'create', 'invoice_no-1002 total amount-140.00', '2', '2018-07-02 12:28:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('376', 'Sales', 'create', 'invoice_no-1003 total amount-415.00', '2', '2018-07-02 14:35:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('377', 'recovery', 'create', 'payment ID :2', '2', '2018-07-02 14:37:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('378', 'Sales', 'create', 'invoice_no-1004 total amount-900.00', '2', '2018-07-03 08:49:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('379', 'Sales', 'create', 'invoice_no-1005 total amount-725.00', '2', '2018-07-03 08:51:56');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('380', 'recovery', 'create', 'payment ID :5', '2', '2018-07-03 08:52:18');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('381', 'purchase order', 'create', 'Orde Id-20180705103432 total amount-200000.00', '2', '2018-07-05 10:34:32');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('382', 'purchase order receive', 'create', 'Orde Id- total amount-200000.00', '2', '2018-07-05 10:36:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('383', 'User', 'update', 'User ID :19', '2', '2018-07-05 11:12:17');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('384', 'purchase order receive', 'create', 'Orde Id- total amount-200000.00', '19', '2018-07-05 11:18:23');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('385', 'leases', 'create', 'Lease Id-1', '2', '2018-07-05 11:19:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('386', 'Sales', 'create', 'invoice_no-1000 total amount-46000.00', '19', '2018-07-05 11:25:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('387', 'Sales', 'create', 'invoice_no-1000 total amount-46000.00', '19', '2018-07-05 11:33:26');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('388', 'recovery', 'create', 'payment ID :8', '2', '2018-07-05 11:34:13');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('389', 'recovery', 'create', 'payment ID :9', '2', '2018-07-05 11:50:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('390', 'Sales', 'create', 'invoice_no-1000 total amount-46000.00', '19', '2018-07-05 11:54:01');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('391', 'recovery', 'create', 'payment ID :11', '2', '2018-07-05 11:54:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('392', 'leases', 'create', 'Lease Id-2', '2', '2018-07-05 15:37:29');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('393', 'purchase order', 'create', 'Orde Id-20180705153957 total amount-200000.00', '2', '2018-07-05 15:39:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('394', 'purchase order receive', 'create', 'Orde Id- total amount-200000.00', '2', '2018-07-05 15:40:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('395', 'Sales', 'create', 'invoice_no-1001 total amount-46000.00', '2', '2018-07-06 04:57:28');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('396', 'recovery', 'create', 'payment ID :13', '2', '2018-07-06 05:00:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('397', 'purchase order', 'create', 'Orde Id-20180706061156 total amount-5000.00', '2', '2018-07-06 06:11:56');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('398', 'purchase order receive', 'create', 'Orde Id- total amount-5000.00', '2', '2018-07-06 06:12:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('399', 'leases', 'update', 'Lease Id-2', '2', '2018-07-06 06:14:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('400', 'Sales', 'create', 'invoice_no-1002 total amount-24380.00', '19', '2018-07-06 06:48:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('401', 'leases', 'create', 'Lease Id-3', '2', '2018-07-06 17:55:34');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('402', 'purchase order', 'create', 'Orde Id-20180709130520 total amount-450000.00', '2', '2018-07-09 13:05:20');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('403', 'purchase order receive', 'create', 'Orde Id- total amount-200000.00', '2', '2018-07-09 13:05:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('404', 'Sales', 'create', 'invoice_no-1000 total amount-46000.00', '2', '2018-07-10 04:49:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('405', 'Sales', 'create', 'invoice_no-1000 total amount-46000.00', '19', '2018-07-10 04:52:50');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('406', 'Sales', 'create', 'invoice_no-1000 total amount-46000.00', '19', '2018-07-10 05:05:30');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('407', 'Stockmovment', 'create', 'Stockmovment ID :2', '19', '2018-07-10 05:10:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('408', 'User', 'update', 'User ID :21', '2', '2018-07-10 05:13:01');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('409', 'User', 'update', 'User ID :21', '2', '2018-07-10 05:13:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('410', 'Stockmovment', 'issue', 'Stockmovment ID :2', '21', '2018-07-10 05:34:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('411', 'Stockmovment', 'create', 'Stockmovment ID :3', '21', '2018-07-10 07:59:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('412', 'Stockmovment', 'create', 'Stockmovment ID :4', '19', '2018-07-10 08:01:27');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('413', 'Sales', 'create', 'invoice_no-1001 total amount-0.00', '2', '2018-07-10 09:55:05');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('414', 'Sales', 'create', 'invoice_no-1002 total amount-0.00', '2', '2018-07-10 09:55:50');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('415', 'Sales', 'create', 'invoice_no-1003 total amount-28175.00', '2', '2018-07-10 14:46:35');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('416', 'recovery', 'create', 'payment ID :21', '2', '2018-07-10 14:49:40');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('417', 'Stockmovment', 'create', 'Stockmovment ID :5', '2', '2018-07-10 14:55:39');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('418', 'Stockmovment', 'issue', 'Stockmovment ID :4', '2', '2018-07-10 14:56:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('419', 'stockmovement ', 'create', 'movemet received', '2', '2018-07-10 14:56:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('420', 'Sales', 'create', 'invoice_no-1004 total amount-46000.00', '2', '2018-07-11 10:52:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('421', 'payment', 'create', 'payment ID :23', '2', '2018-07-11 10:53:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('422', 'Customer', 'create', '5', '2', '2018-07-11 10:53:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('423', 'Customer', 'update', 'customer ID :3', '2', '2018-07-11 10:54:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('424', 'Customer', 'create', '0', '2', '2018-07-11 11:12:22');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('425', 'Sales', 'create', 'invoice_no-1005 total amount-28175.00', '2', '2018-07-12 05:51:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('426', 'payment', 'create', 'payment ID :25', '2', '2018-07-12 06:06:20');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('427', 'Sales', 'create', 'invoice_no-1006 total amount-23000.00', '2', '2018-07-12 06:08:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('428', 'Sales', 'create', 'invoice_no-1007 total amount-0.00', '2', '2018-07-12 06:10:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('429', 'payment', 'create', 'payment ID :28', '2', '2018-07-12 06:11:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('430', 'Supplier', 'create', 'Supplier ID :5', '2', '2018-07-12 10:04:21');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('431', 'User', 'create', 'User ID :24', '2', '2018-07-14 09:53:48');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('432', 'purchase order', 'create', 'Orde Id-20180714095536 total amount-15000.00', '2', '2018-07-14 09:55:36');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('433', 'User', 'update', 'User ID :24', '2', '2018-07-14 09:57:39');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('434', 'Role Permission', 'create', 'Role id :328', '2', '2018-07-14 10:02:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('435', 'Role Permission', 'update', 'Role id :3', '2', '2018-07-14 10:05:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('436', 'Supplier', 'create', 'Supplier ID :6', '2', '2018-07-14 10:16:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('437', 'purchase order', 'create', 'Orde Id-20180715073649 total amount-120000.00', '2', '2018-07-15 07:36:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('438', 'purchase order', 'create', 'Orde Id-20180715073724 total amount-200000.00', '2', '2018-07-15 07:37:24');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('439', 'purchase order', 'create', 'Orde Id-20180715073811 total amount-500000.00', '2', '2018-07-15 07:38:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('440', 'Stockmovment', 'create', 'Stockmovment ID :6', '2', '2018-07-15 07:40:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('441', 'Stockmovment', 'create', 'Stockmovment ID :7', '2', '2018-07-15 07:41:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('442', 'User Role', 'update', 'Role id :', '2', '2018-07-15 07:42:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('443', 'User', 'create', 'User ID :25', '2', '2018-07-15 07:45:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('444', 'User', 'create', 'User ID :26', '2', '2018-07-15 07:51:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('445', 'Role Permission', 'update', 'Role id :3', '2', '2018-07-15 07:53:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('446', 'purchase order', 'create', 'Orde Id-20180715075409 total amount-100000.00', '2', '2018-07-15 07:54:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('447', 'leases', 'create', 'Lease Id-4', '2', '2018-07-16 11:49:13');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('448', 'Sales', 'create', 'invoice_no-1008 total amount-33350.00', '2', '2018-07-16 11:51:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('449', 'Stockmovment', 'create', 'Stockmovment ID :8', '2', '2018-07-16 11:54:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('450', 'purchase order', 'create', 'Orde Id-20180716154454 total amount-40000.00', '2', '2018-07-16 15:44:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('451', 'purchase order receive', 'create', 'Orde Id- total amount-50000.00', '24', '2018-07-16 15:45:27');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('452', 'purchase order', 'create', 'Orde Id-20180716154659 total amount-200000.00', '2', '2018-07-16 15:46:59');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('453', 'purchase order receive', 'create', 'Orde Id- total amount-100000.00', '2', '2018-07-16 15:47:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('454', 'Sales', 'create', 'invoice_no-1009 total amount-28175.00', '2', '2018-07-17 06:21:20');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('455', 'Sales', 'create', 'invoice_no-1010 total amount-29440.00', '2', '2018-07-17 07:00:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('456', 'Sales', 'create', 'invoice_no-1011 total amount-28175.00', '2', '2018-07-18 16:34:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('457', 'purchase order', 'create', 'Orde Id-20180718163807 total amount-230000.00', '2', '2018-07-18 16:38:07');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('458', 'purchase order', 'create', 'Orde Id-20180718163910 total amount-115000.00', '2', '2018-07-18 16:39:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('459', 'Stockmovment', 'create', 'Stockmovment ID :9', '2', '2018-07-18 16:47:30');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('460', 'Supplier', 'create', 'Supplier ID :7', '2', '2018-07-19 05:06:18');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('461', 'Product', 'update', 'product ID :18', '2', '2018-07-19 05:10:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('462', 'purchase order', 'create', 'Orde Id-20180719051134 total amount-400000.00', '2', '2018-07-19 05:11:34');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('463', 'leases', 'create', 'Lease Id-5', '2', '2018-07-19 12:13:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('464', 'leases', 'update', 'Lease Id-5', '2', '2018-07-19 12:15:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('465', 'leases', 'update', 'Lease Id-5', '2', '2018-07-19 12:15:24');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('466', 'purchase order', 'create', 'Orde Id-20180719122046 total amount-31751.00', '2', '2018-07-19 12:20:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('467', 'purchase order', 'create', 'Orde Id-20180721071535 total amount-40000.00', '2', '2018-07-21 07:15:35');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('468', 'purchase order receive', 'create', 'Orde Id- total amount-40000.00', '2', '2018-07-21 07:15:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('469', 'leases', 'create', 'Lease Id-6', '2', '2018-07-23 10:23:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('470', 'leases', 'create', 'Lease Id-7', '2', '2018-07-23 10:25:18');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('471', 'Sales', 'create', 'invoice_no-1012 total amount-0.00', '2', '2018-07-24 06:08:35');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('472', 'Sales', 'create', 'invoice_no-1012 total amount-23000.00', '2', '2018-07-24 06:08:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('473', 'Sales', 'create', 'invoice_no-1012 total amount-23000.00', '2', '2018-07-24 06:08:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('474', 'Sales', 'create', 'invoice_no-1013 total amount-23000.00', '2', '2018-07-24 06:12:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('475', 'Sales', 'create', 'invoice_no-1014 total amount-5000.00', '2', '2018-07-24 06:13:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('476', 'Sales', 'create', 'invoice_no-1015 total amount-23000.00', '2', '2018-07-24 06:15:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('477', 'recovery', 'create', 'payment ID :39', '2', '2018-07-24 06:16:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('478', 'payment', 'create', 'payment ID :40', '2', '2018-07-24 06:17:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('479', 'Sales', 'create', 'invoice_no-1016 total amount-50000.00', '2', '2018-07-24 06:19:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('480', 'purchase order', 'create', 'Orde Id-20180724062050 total amount-2300000.00', '2', '2018-07-24 06:20:50');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('481', 'Product', 'create', 'product ID :20', '2', '2018-07-24 07:23:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('482', 'Product', 'update', 'product ID :20', '2', '2018-07-24 08:01:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('483', 'leases', 'create', 'Lease Id-8', '2', '2018-07-27 04:36:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('484', 'leases', 'update', 'Lease Id-8', '2', '2018-07-27 04:43:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('485', 'leases', 'update', 'Lease Id-8', '2', '2018-07-27 04:44:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('486', 'Product', 'create', 'product ID :21', '2', '2018-07-27 04:53:06');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('487', 'Supplier', 'create', 'Supplier ID :8', '2', '2018-07-27 09:41:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('488', 'purchase order', 'create', 'Orde Id-20180727095912 total amount-75000.00', '2', '2018-07-27 09:59:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('489', 'purchase order receive', 'create', 'Orde Id- total amount-15000.00', '25', '2018-07-27 10:02:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('490', 'purchase order receive', 'create', 'Orde Id- total amount-4900.00', '25', '2018-07-27 10:03:28');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('491', 'purchase order', 'create', 'Orde Id-20180727100744 total amount-5000.00', '2', '2018-07-27 10:07:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('492', 'purchase order', 'create', 'Orde Id-20180727100912 total amount-4500.00', '2', '2018-07-27 10:09:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('493', 'purchase Receive', 'update', 'Receive Id-20180727100912 total amount-14500.00', '2', '2018-07-27 10:10:26');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('494', 'purchase order receive', 'create', 'Orde Id- total amount-5000.00', '2', '2018-07-27 10:10:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('495', 'Supplier', 'update', 'Supplier ID :4', '2', '2018-07-27 10:15:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('496', 'purchase order', 'create', 'Orde Id-20180727101658 total amount-5000.00', '2', '2018-07-27 10:16:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('497', 'Sales', 'create', 'invoice_no-1017 total amount-6500.00', '25', '2018-07-27 10:18:48');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('498', 'User Role', 'update', 'Role id :', '2', '2018-07-27 10:22:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('499', 'Sales', 'create', 'invoice_no-1018 total amount-6500.00', '24', '2018-07-27 10:24:28');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('500', 'Sales', 'create', 'invoice_no-1019 total amount-6500.00', '24', '2018-07-27 10:41:34');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('501', 'Product', 'create', 'product ID :22', '2', '2018-07-29 03:18:17');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('502', 'Sales', 'create', 'invoice_no-1020 total amount-5500.00', '24', '2018-07-29 03:21:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('503', 'leases', 'update', 'Lease Id-1', '2', '2018-07-29 03:24:48');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('504', 'Sales', 'create', 'invoice_no-1021 total amount-12000.00', '24', '2018-07-29 03:31:06');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('505', 'payment', 'create', 'payment ID :47', '2', '2018-07-29 03:34:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('506', 'recovery', 'create', 'payment ID :48', '2', '2018-07-29 03:36:05');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('507', 'Store', 'create', 'Store ID :9', '2', '2018-07-29 03:44:23');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('508', 'User', 'create', 'User ID :27', '2', '2018-07-29 03:48:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('509', 'User', 'update', 'User ID :27', '2', '2018-07-29 03:49:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('510', 'Stockmovment', 'create', 'Stockmovment ID :10', '24', '2018-07-29 06:17:48');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('511', 'Stockmovment', 'create', 'Stockmovment ID :11', '24', '2018-07-29 06:20:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('512', 'Stockmovment', 'issue', 'Stockmovment ID :11', '2', '2018-07-29 06:25:03');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('513', 'stockmovement ', 'create', 'movemet received', '24', '2018-07-29 06:25:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('514', 'Stockmovment', 'create', 'Stockmovment ID :12', '27', '2018-07-29 06:28:36');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('515', 'Stockmovment', 'issue', 'Stockmovment ID :12', '24', '2018-07-29 06:30:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('516', 'purchase order', 'create', 'Orde Id-20180730093805 total amount-20000.00', '2', '2018-07-30 09:38:05');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('517', 'purchase order receive', 'create', 'Orde Id- total amount-11900.00', '2', '2018-07-30 09:38:23');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('518', 'purchase order', 'create', 'Orde Id-20180730093930 total amount-4000.00', '2', '2018-07-30 09:39:30');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('519', 'purchase order receive', 'create', 'Orde Id- total amount-4000.00', '2', '2018-07-30 09:39:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('520', 'Stockmovment', 'create', 'Stockmovment ID :13', '2', '2018-07-30 12:42:26');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('521', 'stockmovement ', 'create', 'movemet received', '2', '2018-07-31 09:02:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('522', 'Sales', 'create', 'invoice_no-1022 total amount-6500.00', '2', '2018-07-31 10:55:40');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('523', 'Sales', 'create', 'invoice_no-1023 total amount-13000.00', '2', '2018-07-31 10:57:09');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('524', 'Sales', 'create', 'invoice_no-1024 total amount-13000.00', '2', '2018-07-31 11:10:39');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('525', 'recovery', 'create', 'payment ID :52', '2', '2018-08-01 09:56:05');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('526', 'recovery', 'create', 'payment ID :53', '2', '2018-08-01 10:00:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('527', 'recovery', 'create', 'payment ID :54', '2', '2018-08-01 10:41:23');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('528', 'Sales', 'create', 'invoice_no-1025 total amount-32500.00', '2', '2018-08-02 08:05:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('529', 'Sales', 'create', 'invoice_no-1026 total amount-13000.00', '2', '2018-08-02 08:23:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('530', 'leases', 'update', 'Lease Id-8', '2', '2018-08-02 16:14:30');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('531', 'leases', 'update', 'Lease Id-1', '2', '2018-08-02 16:14:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('532', 'leases', 'update', 'Lease Id-1', '2', '2018-08-02 16:15:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('533', 'recovery', 'create', 'payment ID :57', '2', '2018-08-02 16:17:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('534', 'Product', 'create', 'product ID :23', '2', '2018-08-02 16:23:04');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('535', 'Supplier', 'create', 'Supplier ID :9', '2', '2018-08-02 16:23:42');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('536', 'purchase order', 'create', 'Orde Id-20180802162437 total amount-60000.00', '2', '2018-08-02 16:24:37');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('537', 'purchase order receive', 'create', 'Order Id- total amount-50000.00', '2', '2018-08-02 16:24:51');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('538', 'Store', 'create', 'Store ID :10', '2', '2018-08-02 16:30:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('539', 'Sales', 'create', 'invoice_no-1027 total amount-15000.00', '2', '2018-08-02 16:32:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('540', 'Sales', 'create', 'invoice_no-1028 total amount-15000.00', '24', '2018-08-02 16:44:07');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('541', 'Product', 'create', 'product ID :24', '2', '2018-08-04 04:47:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('542', 'leases', 'create', 'Lease Id-9', '2', '2018-08-04 04:50:36');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('543', 'purchase order', 'create', 'Orde Id-20180804045253 total amount-700000.00', '2', '2018-08-04 04:52:53');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('544', 'purchase order receive', 'create', 'Order Id- total amount-700000.00', '2', '2018-08-04 04:53:04');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('545', 'Sales', 'create', 'invoice_no-1029 total amount-80000.00', '2', '2018-08-04 05:06:07');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('546', 'User', 'update', 'User ID :26', '2', '2018-08-04 05:17:45');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('547', 'purchase order', 'create', 'Orde Id-20180804052157 total amount-100000.00', '2', '2018-08-04 05:21:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('548', 'purchase order receive', 'create', 'Order Id- total amount-100000.00', '26', '2018-08-04 05:24:56');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('549', 'Sales', 'create', 'invoice_no-1030 total amount-19500.00', '26', '2018-08-04 05:26:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('550', 'purchase order receive', 'create', 'Order Id- total amount-5000.00', '2', '2018-08-04 06:38:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('551', 'leases', 'create', 'Lease Id-10', '2', '2018-08-04 16:11:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('552', 'purchase order', 'create', 'Orde Id-20180804162054 total amount-20000.00', '2', '2018-08-04 16:20:54');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('553', 'purchase order receive', 'create', 'Order Id- total amount-20000.00', '2', '2018-08-04 16:21:29');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('554', 'Sales', 'create', 'invoice_no-1031 total amount-30000.00', '2', '2018-08-04 16:22:50');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('555', 'Stockmovment', 'create', 'Stockmovment ID :14', '2', '2018-08-04 16:31:47');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('556', 'Stockmovment', 'issue', 'Stockmovment ID :14', '2', '2018-08-04 16:32:00');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('557', 'stockmovement ', 'create', 'movemet received', '2', '2018-08-04 16:32:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('558', 'Role Permission', 'create', 'Role id :376', '2', '2018-08-05 04:12:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('559', 'Stockmovment', 'create', 'Stockmovment ID :15', '26', '2018-08-05 04:16:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('560', 'purchase order', 'create', 'Orde Id-20180805054633 total amount-100000.00', '2', '2018-08-05 05:46:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('561', 'purchase order receive', 'create', 'Order Id- total amount-100000.00', '2', '2018-08-05 05:46:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('562', 'Sales', 'create', 'invoice_no-1032 total amount-15000.00', '2', '2018-08-05 05:48:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('563', 'Stockmovment', 'create', 'Stockmovment ID :16', '2', '2018-08-05 06:07:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('564', 'Stockmovment', 'issue', 'Stockmovment ID :16', '2', '2018-08-05 06:08:06');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('565', 'stockmovement ', 'create', 'movemet received', '2', '2018-08-05 06:08:12');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('566', 'Stockmovment', 'create', 'Stockmovment ID :17', '2', '2018-08-05 06:09:15');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('567', 'Stockmovment', 'create', 'Stockmovment ID :18', '2', '2018-08-05 06:10:31');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('568', 'Stockmovment', 'issue', 'Stockmovment ID :18', '2', '2018-08-05 06:10:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('569', 'stockmovement ', 'create', 'movemet received', '2', '2018-08-05 06:11:06');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('570', 'purchase order', 'create', 'Orde Id-20180805063043 total amount-50000.00', '2', '2018-08-05 06:30:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('571', 'purchase order receive', 'create', 'Order Id- total amount-20000.00', '27', '2018-08-05 06:31:16');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('572', 'Sales', 'create', 'invoice_no-1033 total amount-30000.00', '27', '2018-08-05 06:33:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('573', 'Stockmovment', 'create', 'Stockmovment ID :19', '27', '2018-08-05 06:34:34');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('574', 'Stockmovment', 'issue', 'Stockmovment ID :19', '2', '2018-08-05 06:36:10');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('575', 'stockmovement ', 'create', 'movemet received', '2', '2018-08-05 06:36:21');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('576', 'Stockmovment', 'create', 'Stockmovment ID :20', '26', '2018-08-05 09:07:05');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('577', 'Stockmovment', 'issue', 'Stockmovment ID :20', '2', '2018-08-05 09:07:49');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('578', 'stockmovement ', 'create', 'movemet received', '26', '2018-08-05 09:13:56');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('579', 'Stockmovment', 'create', 'Stockmovment ID :21', '2', '2018-08-05 09:26:58');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('580', 'Stockmovment', 'issue', 'Stockmovment ID :21', '2', '2018-08-05 09:27:19');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('581', 'stockmovement ', 'create', 'movemet received', '2', '2018-08-05 09:27:26');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('582', 'purchase order', 'create', 'Orde Id-20180805092943 total amount-50000.00', '2', '2018-08-05 09:29:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('583', 'purchase order receive', 'create', 'Order Id- total amount-30000.00', '27', '2018-08-05 09:30:26');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('584', 'purchase order receive', 'create', 'Order Id- total amount-10000.00', '27', '2018-08-05 09:30:43');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('585', 'purchase order receive', 'create', 'Order Id- total amount-10000.00', '27', '2018-08-05 09:30:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('586', 'Role Permission', 'create', 'Role id :389', '2', '2018-08-05 10:26:52');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('587', 'Role Permission', 'create', 'Role id :401', '2', '2018-08-05 10:30:11');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('588', 'Stockmovment', 'create', 'Stockmovment ID :22', '2', '2018-08-05 10:43:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('589', 'Stockmovment', 'issue', 'Stockmovment ID :22', '2', '2018-08-05 10:43:08');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('590', 'stockmovement ', 'create', 'movemet received', '2', '2018-08-05 10:43:14');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('591', 'Stockmovment', 'create', 'Stockmovment ID :23', '2', '2018-08-05 11:12:05');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('592', 'Stockmovment', 'issue', 'Stockmovment ID :23', '2', '2018-08-05 11:12:21');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('593', 'stockmovement ', 'create', 'movemet received', '2', '2018-08-05 11:13:44');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('594', 'Role Permission', 'create', 'Role id :413', '2', '2018-08-05 12:02:16');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('595', 'Role Permission', 'create', 'Role id :425', '2', '2018-08-05 12:09:30');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('596', 'Role Permission', 'create', 'Role id :437', '2', '2018-08-05 12:17:48');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('597', 'Stockmovment', 'create', 'Stockmovment ID :35', '2', '2018-08-05 12:45:55');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('598', 'Stockmovment', 'delete', 'Stockmovment ID :35', '2', '2018-08-05 12:46:02');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('599', 'Stockmovment', 'create', 'Stockmovment ID :36', '2', '2018-08-05 12:48:57');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('600', 'Stockmovment', 'create', 'Stockmovment ID :37', '2', '2018-08-05 16:58:28');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('601', 'Stockmovment', 'issue', 'Stockmovment ID :37', '2', '2018-08-05 16:58:41');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('602', 'stockmovement ', 'create', 'movemet received', '2', '2018-08-05 16:59:46');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('603', 'Role Permission', 'create', 'Role id :449', '2', '2018-08-06 09:44:33');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('604', 'Role Permission', 'create', 'Role id :461', '2', '2018-08-06 12:04:39');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('605', 'Role Permission', 'create', 'Role id :473', '2', '2018-08-06 12:11:35');
INSERT INTO `accesslog` (`sl_no`, `action_page`, `action_done`, `remarks`, `user_name`, `entry_date`) VALUES ('606', 'Stockmovment', 'delete', 'Stockmovment ID :37', '2', '2018-08-06 12:42:47');


#
# TABLE STRUCTURE FOR: country_state_city
#

DROP TABLE IF EXISTS `country_state_city`;

CREATE TABLE `country_state_city` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `text` varchar(30) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `country_state_city` (`id`, `name`, `text`, `parent_id`) VALUES ('1', 'test', 'sdfsdf', '1');


#
# TABLE STRUCTURE FOR: customer
#

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
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

INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('1', 'ls-2', '2', 'আরাফাত', '145525552', 'sdfsdfsdfsd', '321656464', '', '', '3', '2', '2018-07-10 04:48:58', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('2', 'ls-3', '6', 'আরাফাত', '1245633133', 'sdfsdfsdf', '234234234234234', '', '', '3', '19', '2018-07-10 04:52:05', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('3', 'ls-4', '2', 'Test', '0304123456789', '', '454212', 'gjuy', '', '3', '2', '2018-07-11 10:54:52', '2', '2018-07-11 10:54:52', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('4', 'ls-5', '2', 'PPPPP', '2216', '', '151515', '', '', '3', '2', '2018-07-11 10:52:39', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('5', 'ls-6', '5', 'LLLLL', '20502', '', '250250242', '', '', '3', '2', '2018-07-11 10:53:51', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('9', 'cr-1', '2', 'nisar', '789', '', '789', '', '', '2', '2', '2018-07-12 06:08:34', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('11', 'ls-7', '2', 'Mubin', '342234', 'dsdsf', '545643', '', '', '3', '2', '2018-07-17 06:20:35', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('12', 'ls-8', '2', 'Arafat', '478445', '', '15655614516', '', '', '3', '2', '2018-07-17 06:55:35', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('13', 'ls-9', '2', 'Zubair', '0304123456789', '', '12345674', '', '', '3', '2', '2018-07-18 16:32:54', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('14', 'ls-10', '2', 'abc', '1234', '', '122222', '', '', '3', '2', '2018-07-24 06:07:15', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('15', 'ls-11', '2', 'xyz', '111', '', '111', '', '', '3', '2', '2018-07-24 06:10:56', '', '0000-00-00 00:00:00', '0');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('16', 'cr-2', '2', 'imad', '11', '', '1', '', '', '2', '2', '2018-07-27 10:39:37', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('20', 'ls-12', '6', 'asd', '111111', '', '1111', '', '', '3', '24', '2018-07-29 03:23:43', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('21', 'cc-1', '2', 'shahin', '4234', 'null', '545343', 'null', 'null', '1', '2', '2018-08-01 07:53:03', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('22', 'cc-2', '2', 'TikTik', '45654654654', 'null', '213548463521', 'null', 'null', '1', '2', '2018-08-02 07:22:53', '', '0000-00-00 00:00:00', '1');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('23', 'cc-3', '2', 'cash sale', '', 'null', '', 'null', 'null', '1', '2', '2018-08-02 16:32:28', '', '0000-00-00 00:00:00', '0');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('24', 'cc-4', '10', 'Chicha', '445454345345', 'null', '56456456', 'null', 'null', '1', '26', '2018-08-04 05:20:17', '', '0000-00-00 00:00:00', '0');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('25', 'cc-5', '2', 'aaa', '', 'null', '', 'null', 'null', '1', '2', '2018-08-04 16:22:11', '', '0000-00-00 00:00:00', '0');
INSERT INTO `customer` (`customer_id`, `customer_code`, `store_id`, `customer_name`, `customer_phone`, `customer_address`, `customer_cnic`, `job_designation`, `business_address`, `type`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('26', 'cc-6', '9', 'aaa', '', 'null', '', 'null', 'null', '1', '27', '2018-08-05 06:32:53', '', '0000-00-00 00:00:00', '0');


#
# TABLE STRUCTURE FOR: customer_gurrantor_map
#

DROP TABLE IF EXISTS `customer_gurrantor_map`;

CREATE TABLE `customer_gurrantor_map` (
  `rowid` bigint(20) NOT NULL AUTO_INCREMENT,
  `lease_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `gurrantor_id` int(11) NOT NULL,
  PRIMARY KEY (`rowid`),
  UNIQUE KEY `lease_id` (`lease_id`,`customer_id`,`gurrantor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('6', '1', '0', '63');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('5', '1', '0', '64');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('4', '1', '3', '61');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('3', '1', '3', '62');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('8', '1', '9', '65');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('7', '1', '9', '66');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('12', '1', '11', '69');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('11', '1', '11', '70');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('14', '1', '13', '71');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('13', '1', '13', '72');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('16', '1', '14', '73');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('15', '1', '14', '74');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('22', '1', '15', '75');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('21', '1', '15', '76');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('24', '1', '20', '-1');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('23', '1', '20', '0');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('2', '2', '3', '59');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('1', '2', '3', '60');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('10', '4', '0', '67');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('9', '4', '0', '68');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('26', '9', '22', '79');
INSERT INTO `customer_gurrantor_map` (`rowid`, `lease_id`, `customer_id`, `gurrantor_id`) VALUES ('25', '9', '22', '80');


#
# TABLE STRUCTURE FOR: employee
#

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
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

INSERT INTO `employee` (`id`, `image`, `employeeno`, `name`, `store_id`, `designation`, `CardNo`, `department`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('9', './application/modules/employee/assets/images/employee/2018-05-10/a7.jpg', '12412', 'Test', '2', 'Chairman', '16546156', 'IT', '1', '2', '2018-05-12 09:13:02', '2', '2018-05-12 09:13:02');
INSERT INTO `employee` (`id`, `image`, `employeeno`, `name`, `store_id`, `designation`, `CardNo`, `department`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('14', './application/modules/employee/assets/images/employee/2018-05-12/2.jpg', 'P3Q0LHJ4', 'S.M Malek', '2', 'Keeper', '2342343444', 'sdafasd', '1', '2', '2018-05-12 09:12:24', '2', '2018-05-12 09:12:24');
INSERT INTO `employee` (`id`, `image`, `employeeno`, `name`, `store_id`, `designation`, `CardNo`, `department`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('13', './application/modules/employee/assets/images/employee/2018-05-10/.jpeg', 'PG8TEPFG', 'sdfsadf', '2', 'sdfsdf', '24234', 'sdf', '1', '2', '2018-05-12 09:12:49', '2', '2018-05-12 09:12:49');


#
# TABLE STRUCTURE FOR: gurrantor
#

DROP TABLE IF EXISTS `gurrantor`;

CREATE TABLE `gurrantor` (
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

INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('1', '2', '2', 'g2', '234234', 'sadfasd', 'sdfsadf', 'sdfsda', 'sdfsdf', '2', '2018-05-28 06:42:02', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('4', '456', '2', 'h4', '34', 'dfgsdf', '232', 'dgdsf', 'dfgdfg', '2', '2018-05-28 07:31:17', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('5', '3221', '2', 'r2', '1233', 'fsdfsd', '7423', 'fsdf', 'sdfsadf', '2', '2018-05-28 07:33:59', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('6', '056', '2', 'z', '432', 'gdfg', '23122', 'dfgd', 'dfgdfg', '2', '2018-05-28 07:40:55', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('7', '6', '2', 'ss', '346', 'dfg', '0231', 'dfgs', 'dsfgdsf', '2', '2018-05-28 07:41:29', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('8', '086', '2', 's', '3123', 'dsfsd', '3412', 'sdfsd', 'sdfs', '2', '2018-05-28 07:45:06', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('9', '563', '2', 'isahaq', '56', 'dfgdsf', '888', 'dfdfg', 'fdgdfg', '2', '2018-05-28 07:47:14', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('10', '546', '2', 'kamal', '231', 'dfgdfg', '666', 'dfgsdf', 'dfgsdfg', '2', '2018-05-28 07:47:14', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('11', '1236', '2', 'jahid', '324234', 'fdgsdfg', '6455645', 'hsdfgdsf', 'gfsdfg', '2', '2018-05-28 07:50:08', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('12', '2367', '2', 'alom', '234324', 'dfsgsd', '456457', 'dsfg', 'dsfgsdf', '2', '2018-05-28 07:50:08', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('13', 'G1', '2', 'erwerwe', '34234234', '', '234234234', '', '', '2', '2018-05-29 03:55:26', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('14', 'G2', '2', 'dfsdf', '234234234', '', '65456456456', '', '', '2', '2018-05-29 03:55:26', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('15', 'gc-1', '2', 'g1', '23432', 'fsadf', '234234', 'dsfasdf', 'asdfasdf', '2', '2018-06-02 10:28:38', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('16', 'gc-2', '2', 'g2', '23423', 'sadfsdf', '1231', 'dsfasd', 'sdfasdf', '2', '2018-06-02 10:28:38', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('17', 'gc-3', '2', 'ret', '345', 'sdfasd', '234234', 'dafsdfs', 'sdfasdf', '2', '2018-06-02 10:38:29', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('18', 'gc-4', '2', 'ert', '23412', 'fasdf', '23423', 'sdfasdf', 'asdf', '2', '2018-06-02 10:38:29', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('19', 'gc-5', '2', 'fdg', '325421', 'fsdf', '34231', 'sdfsdf', 'dsafsdf', '2', '2018-06-02 10:43:20', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('20', 'gc-6', '2', 'dfgsd', '3423', 'sdfas', '123123', 'sdfsad', 'sdfsadf', '2', '2018-06-02 10:43:20', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('21', 'gc-7', '2', 'fdfg', '435', '', '32234', 'dfgsdf', '', '2', '2018-06-02 10:47:17', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('22', 'gc-8', '2', 'dfga', '3452', '', '234234', 'dfgsdfg', '', '2', '2018-06-02 10:47:17', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('23', 'gc-9', '2', 'test1', '34223', 'sdfasd', '4523', 'sdfasd', 'sdfsdfsa', '2', '2018-06-03 06:50:46', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('24', 'gc-10', '2', 'test2', '23123', 'fsdafsadf', '34123', 'sdfasdf', 'dfsdfsdaf', '2', '2018-06-03 06:50:46', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('25', 'gc-11', '2', 'gh', '423', 'gdsfgdsf', '34545', 'dfgsdfg', 'gsdfg', '2', '2018-06-04 07:15:50', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('26', 'gc-12', '2', 'hd', '4453', 'gsdfgsdf', '345345', 'dfgsdf', 'dsfgsdfg', '2', '2018-06-04 07:15:50', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('27', 'gc-13', '2', 'dfgfdg', '6453', 'dfgs', '5345243', 'dfgdfg', 'gdfgsdf', '9', '2018-06-04 10:33:39', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('28', 'gc-14', '2', 'tretert', '534532', 'dfgdf', '66743563', 'fdgsdfg', 'gdfg', '9', '2018-06-04 10:33:39', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('29', 'gc-15', '2', 'kjl', '4324', 'fasdf', '53453', 'sdfsa', 'asdf', '2', '2018-06-04 10:41:11', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('30', 'gc-16', '2', 'klfs', '213', 'sdafasdf', '67754', 'dfsadfsad', 'asdfasd', '2', '2018-06-04 10:41:11', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('31', 'gc-17', '2', 'fdgsdfg', '5654', 'dfgsdf', '673213', 'fdgdfg', 'sdfgsdf', '2', '2018-06-04 10:45:27', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('32', 'gc-18', '2', 'dfgdsfg', '4563', 'gsdfg', '434324', 'fdgdsfg', 'gsdfg', '2', '2018-06-04 10:45:27', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('33', 'gc-19', '2', 'd435345', '3242', 'fasdf', '234', 'sdfsad', 'sdfasdf', '2', '2018-06-05 07:44:51', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('34', 'gc-20', '2', '345', '234', 'asdfsd', '324', 'fsdfasd', 'asdf', '2', '2018-06-05 07:44:51', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('35', 'gc-21', '2', 'sss', '345', 'gdfgsd', '45324', 'dfgdsfg', 'dsfgsd', '2', '2018-06-05 07:56:49', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('36', 'gc-22', '2', 'dfgsdfg', '4234', 'fgsdfg', '234213', 'dfgsdf', 'fgsdfg', '2', '2018-06-05 07:56:49', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('37', 'gc-23', '2', 'kldsf', '3453', 'gsdfg', '45345', 'dfgdfg', 'gdsfgsdf', '2', '2018-06-05 08:21:03', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('38', 'gc-24', '2', 'dfgdfg', '23423', 'dsfgsdf', '345345', 'dfgdsf', 'gdfg', '2', '2018-06-05 08:21:03', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('39', 'gc-25', '2', 'gjhj', '345345', 'dsfg', '3212', 'dfgsdfgd', 'gdsfg', '2', '2018-06-05 09:25:37', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('40', 'gc-26', '2', 'kfgdf', '34534', 'dsfgsdf', '2356', 'fgsdfg', 'sdfgdsf', '2', '2018-06-05 09:25:37', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('41', 'gc-27', '2', 'Jumboo', '234234', 'dfasd', '234234', 'sdfasd', 'sdfsdf', '2', '2018-06-06 08:21:35', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('42', 'gc-28', '2', 'John st', '234', 'fsadf', '3453324', 'fsdfas', 'sdf', '2', '2018-06-06 08:21:35', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('43', 'gc-29', '2', 'hhjdg', '5234', '', '45435', 'fdgdfgdfgd', '', '2', '2018-06-07 07:01:46', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('44', 'gc-30', '2', 'fasdfds', '32345', '', '623432', 'fgdfgdfg', '', '2', '2018-06-07 07:01:46', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('45', 'gc-31', '2', 'fgdfg', '43234', '', '435', 'dfg', '', '2', '2018-06-07 08:19:21', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('46', 'gc-32', '2', 'jgfsfdg', '76856', '', '3423', 'dfgdfg', '', '2', '2018-06-07 08:19:21', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('47', 'gc-33', '2', 'Rana', '65345', 'Farmgate', '32134', 'dfgdfg', 'gsdfg', '2', '2018-06-09 08:34:18', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('48', 'gc-34', '2', 'Tamim', '23523', 'Dhanmondi', '5463423', 'dfg', 'sdfg', '2', '2018-06-09 08:34:18', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('49', 'gc-35', '2', 'lfd', '23412', 'fdgsdf', '57432', 'dfgsd', 'dsfgsdf', '2', '2018-06-09 10:08:01', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('50', 'gc-36', '2', 'sdfu', '34234', 'gdsfg', '6783', 'fgdsfg', 'gsdfg', '2', '2018-06-09 10:08:01', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('57', 'gc-37', '2', 'sdfasdf', '34223', 'gsdfgs', '54643', 'fgdfg', 'dsfgsd', '2', '2018-07-06 04:57:05', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('58', 'gc-38', '2', 'dsfsdf', '325435', 'dfgsdfg', '345345', 'dfgsdfgdsf', 'fgsdfg', '2', '2018-07-06 04:57:05', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('59', 'gc-39', '2', 'Test', '1111', '', '123', '', '', '2', '2018-07-10 09:55:41', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('60', 'gc-40', '2', 'Test1', '2222', '', '1234', '', '', '2', '2018-07-10 09:55:41', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('61', 'gc-41', '2', 'Test', '1111', '', '123', '', '', '2', '2018-07-10 14:46:29', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('62', 'gc-42', '2', 'Test1', '2222', '', '1234', '', '', '2', '2018-07-10 14:46:29', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('63', 'gc-43', '2', 'khan', '1111', '', '561641', '', '', '2', '2018-07-12 05:51:22', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('64', 'gc-44', '2', 'khan 1', '456', '', '444', '', '', '2', '2018-07-12 05:51:22', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('65', 'gc-45', '2', 'asaa', '477', '', '8885', '', '', '2', '2018-07-12 06:09:18', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('66', 'gc-46', '2', 'asddas888', '8888', '', '8888', '', '', '2', '2018-07-12 06:09:18', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('67', 'gc-47', '2', 'Test', '111111', '', '11111', '', '', '2', '2018-07-16 11:51:00', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('68', 'gc-48', '2', '1111111111', '1111111111', '', '11111111', '', '', '2', '2018-07-16 11:51:00', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('69', 'gc-49', '2', 'dfsdf', '43532', '', '345345', '', '', '2', '2018-07-17 06:20:50', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('70', 'gc-50', '2', 'sdfsdf', '456432', '', '546456', '', '', '2', '2018-07-17 06:20:50', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('71', 'gc-51', '2', 'Test', '1111', '', '123', '', '', '2', '2018-07-18 16:33:11', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('72', 'gc-52', '2', 'Test1', '2222', '', '1234', '', '', '2', '2018-07-18 16:33:11', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('73', 'gc-53', '2', 'sad', '111', '', '111', '', '', '2', '2018-07-24 06:07:33', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('74', 'gc-54', '2', 'ioi', '111', '', '111', '', '', '2', '2018-07-24 06:07:33', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('75', 'gc-55', '2', 'Test', '477', '', '123', '', '', '2', '2018-07-24 06:11:09', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('76', 'gc-56', '2', 'Test1', '456', '', '444', '', '', '2', '2018-07-24 06:11:09', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('79', 'gc-57', '2', 'dfsdfs', '2354234', 'dfg', '43534523', 'dfg', 'gdfgdf', '2', '2018-08-04 04:53:41', '', '0000-00-00 00:00:00', '1');
INSERT INTO `gurrantor` (`gurrantor_id`, `gurrantor_code`, `store_id`, `gurrantor_name`, `gurrantor_phone`, `gurrantor_address`, `gurrantor_cnic`, `job_designation`, `business_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('80', 'gc-58', '2', 'sdfsdfsdf', '234234', 'dfgsdf', '23454352', 'dfgdfg', 'gdfgdfg', '2', '2018-08-04 04:53:41', '', '0000-00-00 00:00:00', '1');


#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8;

INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('2', 'login', 'Login');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('3', 'email', 'Email Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('4', 'password', 'Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('5', 'reset', 'Reset');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('6', 'dashboard', 'Dashboard');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('7', 'home', 'Home');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('8', 'profile', 'Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('9', 'profile_setting', 'Profile Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('10', 'firstname', 'First Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('11', 'lastname', 'Last Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('12', 'about', 'About');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('13', 'preview', 'Preview');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('14', 'image', 'Image');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('15', 'save', 'Save');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('16', 'upload_successfully', 'Upload Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('17', 'user_added_successfully', 'User Added Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('18', 'please_try_again', 'Please Try Again...');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('19', 'inbox_message', 'Inbox Messages');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('20', 'sent_message', 'Sent Message');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('21', 'message_details', 'Message Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('22', 'new_message', 'New Message');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('23', 'receiver_name', 'Receiver Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('24', 'sender_name', 'Sender Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('25', 'subject', 'Subject');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('26', 'message', 'Message');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('27', 'message_sent', 'Message Sent!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('28', 'ip_address', 'IP Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('29', 'last_login', 'Last Login');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('30', 'last_logout', 'Last Logout');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('31', 'status', 'Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('32', 'delete_successfully', 'Delete Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('33', 'send', 'Send');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('34', 'date', 'Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('35', 'action', 'Action');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('36', 'sl_no', 'SL No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('37', 'are_you_sure', 'Are You Sure ? ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('38', 'application_setting', 'Application Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('39', 'application_title', 'Application Title');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('40', 'address', 'Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('41', 'phone', 'Phone');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('42', 'favicon', 'Favicon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('43', 'logo', 'Logo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('44', 'language', 'Language');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('45', 'left_to_right', 'Left To Right');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('46', 'right_to_left', 'Right To Left');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('47', 'footer_text', 'Footer Text');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('48', 'site_align', 'Application Alignment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('49', 'welcome_back', 'Welcome Back!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('50', 'please_contact_with_admin', 'Please Contact With Admin');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('51', 'incorrect_email_or_password', 'Incorrect Email/Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('52', 'select_option', 'Select Option');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('53', 'ftp_setting', 'Data Synchronize [FTP Setting]');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('54', 'hostname', 'Host Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('55', 'username', 'User Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('56', 'ftp_port', 'FTP Port');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('57', 'ftp_debug', 'FTP Debug');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('58', 'project_root', 'Project Root');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('59', 'update_successfully', 'Update Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('60', 'save_successfully', 'Save Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('61', 'delete_successfully', 'Delete Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('62', 'internet_connection', 'Internet Connection');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('63', 'ok', 'Ok');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('64', 'not_available', 'Not Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('65', 'available', 'Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('66', 'outgoing_file', 'Outgoing File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('67', 'incoming_file', 'Incoming File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('68', 'data_synchronize', 'Data Synchronize');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('69', 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('70', 'please_configure_synchronizer_settings', 'Please configure synchronizer settings');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('71', 'download_successfully', 'Download Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('72', 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('73', 'data_import_first', 'Data Import First');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('74', 'data_import_successfully', 'Data Import Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('75', 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('76', 'download_data_from_server', 'Download Data from Server');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('77', 'data_import_to_database', 'Data Import To Database');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('79', 'data_upload_to_server', 'Data Upload to Server');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('80', 'please_wait', 'Please Wait...');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('81', 'ooops_something_went_wrong', ' Ooops something went wrong...');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('82', 'module_permission_list', 'Module Permission List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('83', 'user_permission', 'User Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('84', 'add_module_permission', 'Add Module Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('85', 'module_permission_added_successfully', 'Module Permission Added Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('86', 'update_module_permission', 'Update Module Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('87', 'download', 'Download');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('88', 'module_name', 'Module Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('89', 'create', 'Create');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('90', 'read', 'Read');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('91', 'update', 'Update');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('92', 'delete', 'Delete');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('93', 'module_list', 'Module List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('94', 'add_module', 'Add Module');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('95', 'directory', 'Module Direcotory');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('96', 'description', 'Description');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('97', 'image_upload_successfully', 'Image Upload Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('98', 'module_added_successfully', 'Module Added Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('99', 'inactive', 'Inactive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('100', 'active', 'Active');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('101', 'user_list', 'User List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('102', 'see_all_message', 'See All Messages');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('103', 'setting', 'Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('104', 'logout', 'Logout');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('105', 'admin', 'Admin');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('106', 'add_user', 'Add User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('107', 'user', 'User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('108', 'module', 'Module');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('109', 'new', 'New');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('110', 'inbox', 'Inbox');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('111', 'sent', 'Sent');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('112', 'synchronize', 'Synchronize');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('113', 'data_synchronizer', 'Data Synchronizer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('114', 'module_permission', 'Module Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('115', 'backup_now', 'Backup Now!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('116', 'restore_now', 'Restore Now!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('117', 'backup_and_restore', 'Backup and Restore');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('118', 'captcha', 'Captcha Word');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('119', 'database_backup', 'Database Backup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('120', 'restore_successfully', 'Restore Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('121', 'backup_successfully', 'Backup Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('122', 'filename', 'File Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('123', 'file_information', 'File Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('124', 'size', 'size');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('125', 'backup_date', 'Backup Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('126', 'overwrite', 'Overwrite');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('127', 'invalid_file', 'Invalid File!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('128', 'invalid_module', 'Invalid Module');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('129', 'remove_successfully', 'Remove Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('130', 'install', 'Install');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('131', 'uninstall', 'Uninstall');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('132', 'tables_are_not_available_in_database', 'Tables are not available in database.sql');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('133', 'no_tables_are_registered_in_config', 'No tables are registerd in config.php');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('134', 'enquiry', 'Enquiry');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('135', 'read_unread', 'Read/Unread');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('136', 'enquiry_information', 'Enquiry Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('137', 'user_agent', 'User Agent');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('138', 'checked_by', 'Checked By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('139', 'new_enquiry', 'New Enquiry');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('140', 'role', 'Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('141', 'add_role', 'Add Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('142', 'role_list', 'Role List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('143', 'name', 'Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('144', 'isactive', 'Is Active');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('145', 'set', 'Set');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('146', 'store', 'Store');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('147', 'add_store', 'Add Store');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('148', 'list_store', 'Store List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('149', 'store_name', 'Store Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('150', 'store_code', 'Store Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('151', 'store_address', 'Store Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('152', 'store_phone', 'Store Phone');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('153', 'user_role', 'User Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('154', 'add_user_role', 'Add User Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('155', 'user_role_list', 'User Role List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('156', 'role_name', 'Role Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('157', 'user_type', 'User Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('158', 'super_admin', 'Super Admin');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('159', 'sl', 'SL');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('160', 'user_name', 'User Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('161', 'create_user_role', 'Create User Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('162', 'role_permission', 'Role Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('163', 'add_role_permission', 'Add Role Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('164', 'role_permission_list', 'Role Permission List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('165', 'permission_error', 'You Have No Permission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('166', 'employee', 'Employee');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('167', 'add', 'Add ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('168', 'list', 'List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('169', 'designation', 'Designation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('170', 'cardno', 'NID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('171', 'department', 'Department');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('172', 'customer', 'Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('173', 'customer_code', 'Customer Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('174', 'customer_name', 'Customer Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('175', 'business_address', 'Business Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('176', 'customer_cnic', 'Customer CNIC');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('177', 'product_name', 'Product Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('178', 'product_category', 'Product Category');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('179', 'product', 'Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('180', 'product_details', 'Product Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('181', 'price', 'Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('182', 'category', 'Category');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('183', 'category_name', 'Category Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('184', 'supplier', 'Supplier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('185', 'supplier_name', 'Supplier Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('186', 'purchase_order', 'Puchase Order');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('187', 'stock_ctn', 'Stock Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('188', 'quantity', 'Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('189', 'total', 'Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('190', 'grand_total', 'Grand Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('191', 'add_new_item', 'Add New Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('192', 'submit_and_add_another', 'Submit and Another');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('193', 'submit', 'Submit ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('194', 'order_no', 'Order NO');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('195', 'warehouse', 'Warehouse');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('196', 'assign_role', 'Assign Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('197', 'add_warehouse', 'Add Warehouse');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('198', 'list_warehouse', 'Warehouse list');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('199', 'warehouse_name', 'Warehouse Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('200', 'warehouse_code', 'Warehouse code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('201', 'warehouse_phone', 'Warehouse Phone');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('202', 'warehouse_address', 'Warehouse Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('203', 'check_receive', 'Check_receive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('204', 'receive', 'Receive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('205', 'order_qty', 'Order QTY');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('206', 'receive_quantity', 'Receive QTY');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('207', 'order_date', 'Order Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('208', 'storewarehouse', 'Store/warehouse');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('209', 'successfully_approved', 'Successfully Approved');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('210', 'disapprove', 'Disapprove');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('211', 'approved', 'Approve');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('212', 'receive_list', 'Receive List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('213', 'voucher_no', 'Voucher No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('214', 'purchase_price', 'Purchase Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('215', 'minimum_price', 'Minimum Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('216', 'retail_price', 'Retail Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('217', 'block_price', 'Block Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('218', 'a', 'A');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('219', 'in', 'In A');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('220', 'receive_qty', 'Receive QTY');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('221', 'sale', 'Sales');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('222', 'cashsale', 'Cash Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('223', 'invoice_id', 'Invoice ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('224', 'sales_man', 'Sales Man');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('225', 'total_amount', 'Total Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('226', 'paid_amount', 'Paid Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('227', 'remaining_amnt', 'Remainig Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('228', 'lease', 'Lease');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('229', 'pakage_code', 'Package  Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('230', 'pakage_name', 'Package Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('231', 'duration', 'Duration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('232', 'advance', 'Advance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('233', 'markup', 'Markup');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('234', 'update_lease', 'Lease Update');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('235', 'inquiry_officer', 'Inquiry Officer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('236', 'lease_package', 'Lease Package');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('237', 'payment', 'Receiving ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('238', 'invoice_no', 'Invoice No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('239', 'due_amnt', 'Due Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('240', 'cash_sale_list', 'Cash Sale List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('241', 'credit_sale_list', 'Credit Sale List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('242', 'lease_sale_list', 'Lease Sale List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('243', 'to', 'To');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('244', 'advance_amount', 'Advance amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('245', 'gurrantor_name', 'Gurrantor  Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('246', 'gurrantor_code', 'Gurrantor  Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('247', 'gurrantor_phone', 'Gurrantor  Phone');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('248', 'gurrantor_address', 'Gurrantor Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('249', 'gurrantor_cnic', 'Gurrantor  CNIC');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('250', 'stockmovment', 'Stock Movement');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('251', 'proposal_code', 'Proposal Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('252', 'issue_code', 'Issue Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('253', 'issue_date', 'Issue Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('254', 'for_store', 'For Store');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('255', 'from_store', 'From Store');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('256', 'issue_by', 'Issue By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('257', 'product_code', 'Product Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('258', 'proposal_qty', 'Proposal QTY');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('259', 'please_choose_another_p_code', 'Please another Product Code!!!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('260', 'proposal_datetime', 'Proposal Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('261', 'product_info', 'Product Info');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('262', 'category_list', 'Category List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('263', 'add_product', 'Add Product');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('264', 'product_list', 'Product List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('265', 'model_name', 'Model Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('266', 'model', 'Model');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('267', 'add_model', 'Add Model');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('268', 'brand', 'Brand');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('269', 'brand_name', 'Brand Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('270', 'brand_list', 'Brand List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('271', 'unit_name', 'Unit Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('272', 'unit', 'Unit of Measurement');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('273', 'add_unit', 'Add Unit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('274', 'unit_list', 'Unit List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('275', 'pur_price', 'Pur Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('276', 'min_price', 'Min Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('277', 'retprice', 'Retl Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('278', 'bl_price', 'BL Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('279', 'cash', 'Cash');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('280', 'credit', 'Credit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('281', 'customer_type', 'Customer Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('282', 'code', 'Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('283', 'cnic', 'CNIC');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('284', 'um', 'U/M');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('285', 'contact', 'Contact#');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('286', 'package_amount', 'Package Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('287', 'recovery_received', 'Recovery Received');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('288', 'require_install', 'Require Installment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('289', 'installment_amount', 'Installment Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('290', 'over_due_amount', 'Over Due Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('291', 'final_settlement', 'Final Settlement Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('292', 'final_settlement_discount', 'Final Settlement Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('293', 'receive_amnt', 'Receive Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('294', 'credit_receive', 'Credit Receive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('295', 'add_recovery_receiving', 'Add Recovery Receiving');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('296', 'add_credit_receiving', 'Add Credit Receiving');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('297', 'report', 'Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('298', 'recovery', 'Recovery');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('299', 'surplus', 'Surplus');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('300', 'deficit', 'Deficit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('301', 'recovery_summary_report', 'Recovery Summary Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('302', 'ac_wise_achivement', 'A/C Wise Achievement');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('303', 'amount_wise_achivement', 'Amount Wise Achievement');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('304', 'remaning_ac', 'Remaining A/C');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('305', 'remaning_amount', 'Remaining Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('306', 'target', 'Target');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('307', 'achievement', 'Achievement');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('308', 'remaining', 'Remaining');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('309', 'account', 'Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('310', 'amount', 'Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('311', 'branches', 'Branches');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('312', 'search', 'Search');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('313', 'supplier_code', 'Supplier Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('314', 'recovery_summary_report_datewise', 'Recovery Summary Report Datewise');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('315', 'proposed_by', 'Proposed By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('316', 'overdue_analysis', 'Over Due Analysis');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('317', 'gurrantor', 'Gurrantor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('318', 'g_contact', 'G Contact');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('319', 'install_no', '# of Installment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('320', 'lease_amount', 'Lease Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('321', 'installment_amnt', 'Installment Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('322', 'total_receive', 'Total Receive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('323', 'branch_wise_ov_du_analisis', 'Branch Wise Due Analysis');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('324', 'over_due', 'Over Due');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('325', 'days', 'Days');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('326', 'last_payment_date', 'Last Payment Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('327', 'location', 'Location');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('328', 'discount', 'Disc');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('329', 'creditsale', 'Credit Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('330', 'leasesale', 'Lease Sale');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('331', 'oreder_list', 'Order List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('332', 'store_procedure', 'Store Procedure');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('333', 'stock', 'Stock');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('334', 'inqty', 'In QTY');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('335', 'outqty', 'Out Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('336', 'select', 'Select');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('337', 'contact_per_name', 'Contact Person ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('338', 'c_p_contact', 'Person Contact#');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('339', 'remark', 'Remark');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('340', 'return', 'Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('341', 'please_input_correct_invoice_no', 'Please Input a correct invoice number');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('342', 'sales_return_form', 'Sales Return Form');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('343', 'sale_qty', 'Sales Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('344', 'return_qty', 'Return Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('345', 'reason', 'Reason');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('346', 'purchase_qty', 'Purchase Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('347', 'purchase_return', 'Purchase Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('348', 'return_date', 'Return Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('349', 'sale_return_list', 'Sales Return List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('350', 'purchase_return_list', 'Purchase Return List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('351', 'sales_return_view', 'Sales Return view');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('352', 'purchase_return_view', 'Purchase Return veiw');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('353', 'reports', 'Reports');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('354', 'test', '');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('355', 'recovery_list', 'Recovery List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('356', 'find', 'Find');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('357', 'accounts', 'Accounts');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('358', 'c_o_a', 'Chart of Accounts');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('359', 'customer_transaction', 'Customer Transaction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('360', 'money_receipt', 'Money Receipt');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('361', 'debit_voucher', 'Debit Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('362', 'receive_by', 'Received By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('363', 'credit_voucher', 'Credit Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('364', 'contra_voucher', 'Contra voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('365', 'journal_voucher', 'Journal Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('366', 'voucher_approval', 'Voucher Approval');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('367', 'check_status', 'Check Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('368', 'account_report', 'Account Reports');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('369', 'voucher_report', 'Voucher Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('370', 'cash_book', 'Cash book');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('371', 'bank_book', 'Bank Book');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('372', 'income_expense', 'Income Expense');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('373', 'general_ledger', 'General Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('374', 'trial_balance', 'Trial Balance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('375', 'profit_loss', 'Profit Loss');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('376', 'receipt_payment', 'Receipt Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('377', 'all_voucher', 'All Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('378', 'cash_flow', 'Cash Flow');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('379', 'stmt_of_financial_position', 'Stmt of Financial Position');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('380', 'stmt_changes_equity', 'Stmt of Change Equity');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('381', 'coa_print', 'Coa Print');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('382', 'stock_qty', 'Stock Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('383', 'stock_value', 'Avg. Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('384', 'add_more', 'Add more');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('385', 'debit', 'Debit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('386', 'issue_qty', 'Issue Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('387', 'update_debit_voucher', 'Update Debit Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('388', 'update_credit_voucher', 'Update Debit Voucher');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('389', 'total_advance_amount', 'Total Advance Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('390', 'total_package_amount', 'Total Package Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('391', 'u_pack_price', 'Unit Package Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('392', 'total_pack_price', 'Total Package Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('393', 'from_date', 'From Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('394', 'to_date', 'To Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('395', 'gurrantor1', 'Gurrantor 1');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('396', 'gurrantor2', 'Gurrantor 2');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('397', 'customer_recovery', 'Customer_overdue_recovery');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('398', 'stock_analysis_report', 'Stock Analysis Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('399', 'lease_package_pricing', 'Lease Package Pricing');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('400', 'cash_price', 'Cash Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('401', 'package', 'Package');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('402', 'lease_price', 'Lease Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('403', 'monthly_installment', 'Monthly Installment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('404', 'recovery_report', 'Recovery Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('405', 'stock_report', 'Stock Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('406', 'lease_and_recovery_report', 'Lease & Recovery Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('407', 'stock_history', 'Stock History');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('408', 'sales_return', 'Sales Return');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('409', 'balance_qty', 'Balance Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('410', 'sale_price', 'Sale Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('411', 'general_ledger_of', 'general ledger of');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('412', 'store_stock_history', 'Store Stock History');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('413', 'po_no', 'PO No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('414', 'store_ledger', 'Store Ledger');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('415', 'recovery_list_rpt', 'Recovery List Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('416', 'store_isssue', 'Store Issue');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('417', 'store_receive', 'Store Receive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('418', 'sales_amount', 'Sales Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('419', 'total_payable', 'Total Payable');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('420', 'total_receivable', 'Total Receivable');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('421', 'total_bank', 'Total Bank');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('422', 'total_cash', 'Total Cash');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('423', 'no_customer', '# of Customer');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('424', 'monthly_sales_performance', 'Monthly Sales Performance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('425', 'over_due_analysis', 'Over Due Analysis');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('426', 'products', 'Products');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('427', 'stores', 'Stores');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('428', 'customers', 'Customers');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('429', 'users', 'Users');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('430', 'qty', 'Qty');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('431', 'value', 'Value');


#
# TABLE STRUCTURE FOR: lease
#

DROP TABLE IF EXISTS `lease`;

CREATE TABLE `lease` (
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

INSERT INTO `lease` (`lease_id`, `package_code`, `package_name`, `lease_duration`, `advance`, `markup`, `grace_period`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('1', 'AR-154', 'Sharif-Test', '6', '0.10', '0.25', '0', '1', '2', '2018-07-05 11:19:44', '2', '2018-08-02 16:15:00');
INSERT INTO `lease` (`lease_id`, `package_code`, `package_name`, `lease_duration`, `advance`, `markup`, `grace_period`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('2', '123', 'Tes', '10', '0.20', '0.35', '0', '1', '2', '2018-07-05 15:37:29', '2', '2018-07-06 06:14:49');
INSERT INTO `lease` (`lease_id`, `package_code`, `package_name`, `lease_duration`, `advance`, `markup`, `grace_period`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('3', '', '', '0', '0.00', '0.00', '0', '0', '2', '2018-07-06 17:55:34', '', '0000-00-00 00:00:00');
INSERT INTO `lease` (`lease_id`, `package_code`, `package_name`, `lease_duration`, `advance`, `markup`, `grace_period`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('4', '123', 'TK', '12', '0.10', '0.50', '0', '1', '2', '2018-07-16 11:49:13', '', '0000-00-00 00:00:00');
INSERT INTO `lease` (`lease_id`, `package_code`, `package_name`, `lease_duration`, `advance`, `markup`, `grace_period`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('5', 'sdfsdfsdf', 'fsdfsdfsdf', '2', '0.02', '0.11', '0', '0', '2', '2018-07-19 12:13:42', '2', '2018-07-19 12:15:24');
INSERT INTO `lease` (`lease_id`, `package_code`, `package_name`, `lease_duration`, `advance`, `markup`, `grace_period`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('6', 'AR-230718', 'AR-230718', '12', '0.10', '0.20', '0', '1', '2', '2018-07-23 10:23:12', '', '0000-00-00 00:00:00');
INSERT INTO `lease` (`lease_id`, `package_code`, `package_name`, `lease_duration`, `advance`, `markup`, `grace_period`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('7', 'AR-02', 'AR-02', '12', '0.15', '0.30', '0', '1', '2', '2018-07-23 10:25:18', '', '0000-00-00 00:00:00');
INSERT INTO `lease` (`lease_id`, `package_code`, `package_name`, `lease_duration`, `advance`, `markup`, `grace_period`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('8', '123', 'testing123', '12', '0.20', '0.50', '0', '1', '2', '2018-07-27 04:36:47', '2', '2018-08-02 16:14:30');
INSERT INTO `lease` (`lease_id`, `package_code`, `package_name`, `lease_duration`, `advance`, `markup`, `grace_period`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('9', 'fr-210', 'new-hotpackage', '8', '0.10', '0.20', '0', '1', '2', '2018-08-04 04:50:36', '', '0000-00-00 00:00:00');
INSERT INTO `lease` (`lease_id`, `package_code`, `package_name`, `lease_duration`, `advance`, `markup`, `grace_period`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('10', '1033', 'Final', '5', '0.10', '0.10', '0', '1', '2', '2018-08-04 16:11:41', '', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: lease_product_map
#

DROP TABLE IF EXISTS `lease_product_map`;

CREATE TABLE `lease_product_map` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lease_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_lease_id1` (`lease_id`),
  KEY `fk_prod_id1` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('7', '2', '11');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('8', '2', '17');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('9', '2', '18');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('10', '2', '19');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('11', '3', '2');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('12', '3', '15');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('13', '4', '15');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('14', '4', '16');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('15', '4', '17');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('16', '4', '18');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('23', '5', '8');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('24', '5', '10');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('25', '5', '12');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('26', '5', '13');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('27', '5', '15');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('28', '5', '16');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('29', '6', '6');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('30', '6', '11');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('31', '6', '17');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('32', '6', '18');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('33', '7', '6');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('34', '7', '11');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('50', '8', '16');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('51', '8', '17');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('52', '8', '18');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('53', '8', '8');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('54', '8', '22');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('62', '1', '15');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('63', '1', '17');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('64', '1', '19');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('65', '1', '21');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('66', '1', '22');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('67', '1', '21');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('68', '1', '22');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('69', '9', '20');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('70', '9', '24');
INSERT INTO `lease_product_map` (`row_id`, `lease_id`, `product_id`) VALUES ('71', '10', '22');


#
# TABLE STRUCTURE FOR: lease_store_map
#

DROP TABLE IF EXISTS `lease_store_map`;

CREATE TABLE `lease_store_map` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `lease_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_store_lease_id1` (`lease_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('9', '2', '2');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('10', '2', '3');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('11', '2', '4');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('12', '2', '5');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('13', '2', '6');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('14', '2', '7');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('15', '4', '6');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('16', '4', '7');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('17', '6', '4');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('18', '6', '6');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('19', '6', '7');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('20', '7', '4');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('21', '7', '6');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('22', '7', '7');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('29', '8', '7');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('30', '8', '5');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('31', '8', '9');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('35', '1', '6');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('36', '1', '7');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('37', '1', '9');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('38', '9', '7');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('39', '9', '9');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('40', '9', '10');
INSERT INTO `lease_store_map` (`row_id`, `lease_id`, `store_id`) VALUES ('41', '10', '10');


#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES ('1', '2', '1', 'TEST', 'All the best', '2017-02-07 00:00:00', '0', '2');
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES ('3', '26', '3', 'TEST', 'Hello world!', '2017-02-07 00:00:00', '0', '1');
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES ('10', '2', '17', 'TEST', 'The quick brown fox jumps over the lazy dog!', '2017-02-07 11:34:41', '0', '1');
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES ('11', '2', '6', 'ateat', '<p>TEST</p>', '2017-05-11 10:00:07', '1', '0');
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES ('12', '2', '9', 'test information', '<p><span xss=removed>dsfsdf</span></p>', '2018-05-24 12:14:42', '1', '1');
INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES ('13', '9', '2', 'dfgdfgdfsg', '<p>dfgsdfgfg</p>', '2018-05-24 12:19:51', '1', '1');


#
# TABLE STRUCTURE FOR: module
#

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('1', 'Accounts', 'Accounting', '', 'accounts', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('3', 'Store Management', 'Store Management System', 'application/modules/store/assets/images/thumbnail.jpg', 'store', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('6', 'Customer Management', 'Customer Information', 'application/modules/customer/assets/images/thumbnail.jpg', 'customer', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('7', 'Product Management', 'Product Information', 'application/modules/product/assets/images/thumbnail.jpg', 'product', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('9', 'supplier Management', 'supplier Information', 'application/modules/supplier/assets/images/thumbnail.jpg', 'supplier', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('10', 'purchase Order Management', 'purchase_order Information', 'application/modules/purchase_order/assets/images/thumbnail.jpg', 'purchase_order', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('12', 'sale Management', 'sale Information', 'application/modules/sale/assets/images/thumbnail.jpg', 'sale', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('13', 'lease Management', 'lease Information', 'application/modules/lease/assets/images/thumbnail.jpg', 'lease', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('14', 'Receiving', 'payment Management System', 'application/modules/payment/assets/images/thumbnail.jpg', 'payment', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('17', 'stockmovment Management', 'stockmovment Information', 'application/modules/stockmovment/assets/images/thumbnail.jpg', 'stockmovment', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('18', 'Return', 'return Information', 'application/modules/return/assets/images/thumbnail.jpg', 'return', '1');
INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES ('19', 'Reports', 'Reports Information', 'application/modules/reports/assets/images/thumbnail.jpg', 'reports', '1');


#
# TABLE STRUCTURE FOR: payment_collection
#

DROP TABLE IF EXISTS `payment_collection`;

CREATE TABLE `payment_collection` (
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('12', '20180706045728', '1001', '8', '9200', '49680', '2', '2018-07-06', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('13', '0', '1001', '8', '3000', NULL, '2', '2018-07-05', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('14', '20180706064812', '1002', '8', '4876', '26330.4', '19', '2018-05-06', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('17', '20180710050530', '1000', '2', '4600', '51750', '19', '2018-06-10', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('18', '20180710095505', '1001', '3', '0', '0', '2', '2018-07-10', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('19', '20180710095550', '1002', '3', '0', '0', '2', '2018-07-10', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('20', '20180710144635', '1003', '3', '2300', '25875', '2', '2018-07-10', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('21', '0', '1003', '3', '8625', NULL, '2', '2018-07-10', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('22', '20180711105257', '1004', '3', '46000', '46000', '2', '2018-07-11', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('23', '0', '1004', '3', '5000', NULL, '2', '2018-07-11', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('24', '20180712055154', '1005', '0', '2300', '25875', '2', '2018-07-12', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('25', '0', '1004', '3', '-5000', NULL, '2', '2018-07-12', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('26', '20180712060847', '1006', '9', '23000', '23000', '2', '2018-07-12', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('27', '20180712061000', '1007', '9', '0', '0', '2', '2018-07-12', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('28', '0', '1006', '9', '2000', NULL, '2', '2018-07-12', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('29', '20180716115151', '1008', '0', '2300', '31050', '2', '2018-07-16', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('30', '20180717062120', '1009', '11', '2300', '25875', '2', '2018-05-17', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('31', '20180717070047', '1010', '12', '4600', '24840', '2', '2018-07-17', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('32', '20180718163409', '1011', '13', '2300', '25875', '2', '2018-07-18', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('33', '20180724060835', '1012', '14', '0', '0', '2', '2018-07-24', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('34', '20180724060843', '1012', '14', '2300', '25875', '2', '2018-07-24', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('35', '20180724060847', '1012', '14', '2300', '25875', '2', '2018-07-24', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('36', '20180724061210', '1013', '15', '2300', '25875', '2', '2018-07-24', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('37', '20180724061354', '1014', '15', '5000', NULL, '2', '2018-07-24', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('38', '20180724061510', '1015', '15', '5000', '18000', '2', '2018-07-24', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('39', '0', '1013', '15', '2000', NULL, '2', '2018-07-24', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('40', '0', '1015', '15', '10000', NULL, '2', '2018-07-24', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('41', '20180724061931', '1016', '15', '50000', NULL, '2', '2018-07-24', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('42', '20180727101848', '1017', '0', '6500', NULL, '25', '2018-07-27', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('43', '20180727102428', '1018', '0', '6500', NULL, '24', '2018-07-27', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('44', '20180727104134', '1019', '0', '6500', NULL, '24', '2018-07-27', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('45', '20180729032108', '1020', '2', '5500', NULL, '24', '2018-07-29', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('46', '20180729033106', '1021', '20', '1200', '13500', '24', '2018-05-01', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('47', '0', '1015', '15', '100000', NULL, '2', '2018-05-20', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('48', '0', '1013', '15', '18700', NULL, '2', '2018-07-29', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('49', '20180731105540', '1022', '2', '6500', NULL, '2', '2018-07-31', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('50', '20180731105709', '1023', '2', '13000', NULL, '2', '2018-07-31', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('51', '20180731111039', '1024', '2', '13000', NULL, '2', '2018-05-20', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('52', '0', '1009', '11', '8625', NULL, '2', '2018-06-15', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('54', '0', '1011', '13', '8000', NULL, '2', '2018-08-01', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('55', '20180802080502', '1025', '22', '32500', NULL, '2', '2018-08-02', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('56', '20180802082314', '1026', '22', '13000', NULL, '2', '2018-08-02', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('58', '20180802163247', '1027', '23', '15000', NULL, '2', '2018-08-02', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('59', '20180802164407', '1028', '20', '15000', NULL, '24', '2018-08-02', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('60', '20180804050607', '1029', '22', '8000', '86400', '2', '2018-08-04', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('61', '20180804052649', '1030', '24', '19500', NULL, '26', '2018-08-04', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('62', '20180804162250', '1031', '25', '30000', NULL, '2', '2018-08-04', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('63', '20180805054810', '1032', '12', '15000', NULL, '2', '2018-08-05', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `payment_collection` (`id`, `sale_id`, `invoice_no`, `customer_id`, `receive_amnt`, `due_amnt`, `receive_by`, `receive_date`, `is_installment`, `updateby`, `updatedate`) VALUES ('64', '20180805063302', '1033', '26', '30000', NULL, '27', '2018-08-05', '0', '0', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: product
#

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('2', '', 'Second product', '1', '1', '1', '1', 'sdfsdf', '0', '0', '0', '0', '1', '2', '2018-05-12 08:53:37', '2', '2018-05-12 08:53:37');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('4', '', 'xxxxxx', '1', '1', '1', '1', '234234', '0', '0', '0', '0', '1', '2', '2018-05-13 12:54:51', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('5', '', 'kkr', '1', '1', '1', '1', 'sdf', '0', '0', '0', '0', '1', '2', '2018-05-14 08:31:12', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('6', 'pro-0', 'Mango', '1', '1', '1', '1', 'sdfsdf', '25', '30', '35', '28', '1', '2', '2018-05-15 13:36:08', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('7', 'pro-01', 'Coconut', '1', '1', '1', '1', 'Etc', '45', '50', '55', '48', '1', '2', '2018-05-15 14:34:04', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('8', 'a-1', 'A', '1', '1', '1', '1', 'dsfsd', '20', '23', '25', '21', '1', '2', '2018-05-24 06:43:06', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('9', 'a-1', 'B', '1', '1', '1', '1', 'sadfsdf', '15', '18', '20', '17', '1', '2', '2018-05-24 06:46:28', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('10', 'o-12', 'Orange', '1', '1', '1', '1', 'measurement test', '120', '130', '150', '6', '1', '2', '2018-05-24 10:36:31', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('11', 'pro-0001', 'Banana', '1', '1', '1', '1', 'sdfsdf', '100', '110', '115', '105', '1', '2', '2018-05-26 13:00:59', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('12', 'pro-2', 'Test+Second+Test Model', '1', '1', '1', '1', '', '12', '16', '19', '0', '1', '2', '2018-05-27 09:55:53', '2', '2018-05-27 09:55:53');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('13', 'pro-3', 'Test-Second-Test Model', '1', '1', '1', '1', '', '5', '7', '10', '0', '1', '2', '2018-05-28 05:43:38', '2', '2018-05-28 05:43:38');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('14', 'pro-4', 'Test-Second-Test Model', '1', '1', '1', '1', '', '1000', '1200', '1500', '1100', '1', '2', '2018-06-12 07:45:21', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('15', 'pro-5', 'Ref-Dawlance-9170', '1', '1', '1', '1', '', '1000', '1500', '2000', '1200', '1', '22', '2018-06-22 09:30:29', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('16', 'pro-6', 'Ref-Dawlance-9175', '1', '1', '1', '1', '', '1500', '2000', '2500', '1900', '1', '22', '2018-06-22 09:31:18', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('17', 'pro-7', 'Led-Eco star-20Dl2000', '1', '1', '1', '1', '', '20000', '22000', '23000', '20000', '1', '22', '2018-06-22 09:33:16', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('18', 'pro-8', 'LED-Eco Star-30D2000', '2', '3', '1', '2', 'dfsdfsdf', '40000', '45000', '55000', '43000', '1', '2', '2018-07-19 05:10:31', '2', '2018-07-19 05:10:31');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('19', 'pro-9', 'AC-Eco star-5100', '1', '1', '1', '1', '', '50000', '40000', '45000', '0', '0', '22', '2018-06-22 09:34:28', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('20', 'pro-10', 'Test-Eco Star-30D2000', '1', '3', '1', '2', 'test', '0', '0', '0', '0', '1', '2', '2018-07-24 08:01:11', '2', '2018-07-24 08:01:11');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('21', 'pro-11', 'Laptop-HP-650', '3', '4', '2', '3', 'xyz', '5000', '6000', '6500', '5500', '1', '2', '2018-07-27 04:53:06', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('22', 'pro-12', 'Laptop-HP-700', '3', '4', '2', '4', '123', '4000', '5000', '5500', '4500', '1', '2', '2018-07-29 03:18:17', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('23', 'pro-13', 'Laptop-HP-1000', '3', '4', '2', '5', '', '10000', '0', '15000', '0', '1', '2', '2018-08-02 16:23:04', '', '0000-00-00 00:00:00');
INSERT INTO `product` (`product_id`, `product_code`, `product_name`, `category`, `brand`, `unit`, `model`, `product_details`, `purchase_price`, `minimum_price`, `retail_price`, `block_price`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('24', 'pro-14', 'Refrezarator-Walton-Refrez-1200', '4', '5', '4', '6', 'New  product', '35000', '37000', '40000', '36000', '1', '2', '2018-08-04 04:47:41', '', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: product_brand
#

DROP TABLE IF EXISTS `product_brand`;

CREATE TABLE `product_brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`brand_id`),
  UNIQUE KEY `brand_name_unique` (`brand_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `product_brand` (`brand_id`, `brand_name`, `isactive`) VALUES ('1', 'Test Brand', '1');
INSERT INTO `product_brand` (`brand_id`, `brand_name`, `isactive`) VALUES ('2', 'Second', '1');
INSERT INTO `product_brand` (`brand_id`, `brand_name`, `isactive`) VALUES ('3', 'Eco Star', '1');
INSERT INTO `product_brand` (`brand_id`, `brand_name`, `isactive`) VALUES ('4', 'HP', '1');
INSERT INTO `product_brand` (`brand_id`, `brand_name`, `isactive`) VALUES ('5', 'Walton', '1');


#
# TABLE STRUCTURE FOR: product_category
#

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name_unique` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `product_category` (`category_id`, `category_name`, `isactive`) VALUES ('1', 'Test', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `isactive`) VALUES ('2', 'LED', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `isactive`) VALUES ('3', 'Laptop', '1');
INSERT INTO `product_category` (`category_id`, `category_name`, `isactive`) VALUES ('4', 'Refrezarator', '1');


#
# TABLE STRUCTURE FOR: product_model
#

DROP TABLE IF EXISTS `product_model`;

CREATE TABLE `product_model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`model_id`),
  UNIQUE KEY `model_name_unique` (`model_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `product_model` (`model_id`, `model_name`, `isactive`) VALUES ('1', 'Test Model', '0');
INSERT INTO `product_model` (`model_id`, `model_name`, `isactive`) VALUES ('2', '30D2000', '1');
INSERT INTO `product_model` (`model_id`, `model_name`, `isactive`) VALUES ('3', '650', '1');
INSERT INTO `product_model` (`model_id`, `model_name`, `isactive`) VALUES ('4', '700', '1');
INSERT INTO `product_model` (`model_id`, `model_name`, `isactive`) VALUES ('5', '1000', '1');
INSERT INTO `product_model` (`model_id`, `model_name`, `isactive`) VALUES ('6', 'Refrez-1200', '1');


#
# TABLE STRUCTURE FOR: product_unit
#

DROP TABLE IF EXISTS `product_unit`;

CREATE TABLE `product_unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `isactive` tinyint(1) NOT NULL,
  PRIMARY KEY (`unit_id`),
  UNIQUE KEY `unit_name_unique` (`unit_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `product_unit` (`unit_id`, `unit_name`, `isactive`) VALUES ('1', 'Test', '1');
INSERT INTO `product_unit` (`unit_id`, `unit_name`, `isactive`) VALUES ('2', 'Each', '1');
INSERT INTO `product_unit` (`unit_id`, `unit_name`, `isactive`) VALUES ('3', '123', '1');
INSERT INTO `product_unit` (`unit_id`, `unit_name`, `isactive`) VALUES ('4', 'Pcs', '1');


#
# TABLE STRUCTURE FOR: purchase_order
#

DROP TABLE IF EXISTS `purchase_order`;

CREATE TABLE `purchase_order` (
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

INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180709130520', '0', '0', '2', '2018-07-09 13:05:20', '1', '2', '450000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180714095536', '0', '0', '2', '2018-07-14 09:55:36', '0', '3', '15000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180715073649', '0', '0', '2', '2018-07-15 07:36:49', '1', '6', '120000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180715073724', '0', '0', '2', '2018-07-15 07:37:24', '1', '4', '200000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180715073811', '0', '0', '2', '2018-07-15 07:38:11', '1', '3', '500000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180715075409', '0', '0', '2', '2018-07-15 07:54:09', '1', '4', '100000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180716154454', '0', '0', '2', '2018-07-16 15:44:54', '0', '4', '40000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180716154659', '0', '0', '2', '2018-07-16 15:46:59', '0', '6', '200000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180718163807', '0', '0', '2', '2018-07-18 16:38:07', '0', '6', '230000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180718163910', '0', '0', '2', '2018-07-18 16:39:10', '0', '4', '115000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180719051134', '0', '0', '2', '2018-07-19 05:11:34', '0', '7', '400000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180719122046', '0', '0', '2', '2018-07-19 12:20:46', '0', '3', '31751', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180721071535', '0', '0', '2', '2018-07-21 07:15:35', '0', '1', '40000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180724062050', '0', '0', '2', '2018-07-24 06:20:50', '0', '6', '2300000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180727095912', '0', '0', '2', '2018-07-27 09:59:12', '1', '8', '75000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180727100744', '0', '0', '2', '2018-07-27 10:07:44', '0', '1', '5000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180727100912', '0', '0', '2', '2018-07-27 10:10:26', '0', '4', '14500', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180727101658', '0', '0', '2', '2018-07-27 10:16:58', '0', '4', '5000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180730093805', '0', '0', '2', '2018-07-30 09:38:05', '0', '6', '20000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180730093930', '0', '0', '2', '2018-07-30 09:39:30', '0', '6', '4000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180802162437', '0', '0', '2', '2018-08-02 16:24:37', '0', '9', '60000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180804045253', '0', '0', '2', '2018-08-04 04:52:53', '0', '3', '700000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180804052157', '0', '0', '2', '2018-08-04 05:21:57', '1', '5', '100000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180804162054', '0', '0', '2', '2018-08-04 16:20:54', '0', '9', '20000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180805054633', '0', '0', '2', '2018-08-05 05:46:33', '1', '5', '100000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180805063043', '0', '0', '2', '2018-08-05 06:30:43', '1', '9', '50000', NULL, NULL);
INSERT INTO `purchase_order` (`po_no`, `store_id`, `warehouse_id`, `createby`, `createdate`, `isapproved`, `supplier_id`, `total_amnt`, `updateby`, `updatedate`) VALUES ('20180805092943', '0', '0', '2', '2018-08-05 09:29:43', '1', '6', '50000', NULL, NULL);


#
# TABLE STRUCTURE FOR: purchase_order_details
#

DROP TABLE IF EXISTS `purchase_order_details`;

CREATE TABLE `purchase_order_details` (
  `row_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `po_no` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `discount` float NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`row_id`),
  KEY `fk_po_no1` (`po_no`)
) ENGINE=InnoDB AUTO_INCREMENT=966815324656120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('113299265674737', '20180718163807', '17', '10', '23000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('134499714711544', '20180727095912', '21', '5', '5000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('197167486725746', '20180804045253', '24', '20', '35000', '0', '2');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('251737567171675', '20180730093930', '22', '1', '4000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('351315928441276', '20180727100912', '21', '3', '5000', '500', '7');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('376626482714244', '20180802162437', '23', '5', '10000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('388591827915144', '20180715075409', '19', '2', '50000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('445138493366382', '20180709130520', '17', '10', '20000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('454662332335914', '20180718163910', '18', '5', '23000', '0', '7');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('482487264129233', '20180805063043', '23', '5', '10000', '0', '9');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('487975623541696', '20180719122046', '7', '44', '444', '4', '5');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('616769535283755', '20180715073724', '17', '10', '20000', '0', '7');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('625232443281671', '20180716154659', '17', '10', '20000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('631931816777632', '20180802162437', '23', '1', '10000', '0', '9');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('643913843363566', '20180805054633', '23', '10', '10000', '0', '2');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('656244855744543', '20180727100744', '21', '1', '5000', '0', '0');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('662636479538685', '20180727095912', '21', '10', '5000', '0', '7');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('667523457583958', '20180719051134', '18', '10', '40000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('718827416221599', '20180724062050', '15', '100', '23000', '0', '7');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('721185833858568', '20180804052157', '21', '20', '5000', '0', '10');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('728358198931946', '20180715073811', '17', '5', '20000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('748875771633298', '20180719122046', '6', '11', '1111', '2', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('795123624173277', '20180714095536', '15', '10', '1000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('816645278375643', '20180716154454', '17', '2', '20000', '0', '7');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('826186239712691', '20180730093805', '22', '5', '4000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('837545919686142', '20180804162054', '23', '2', '10000', '0', '2');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('856531927235843', '20180805092943', '23', '5', '10000', '0', '9');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('876534717913614', '20180715073811', '18', '10', '40000', '0', '7');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('894673249984923', '20180721071535', '18', '1', '40000', '0', '7');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('946617952121187', '20180715073649', '17', '6', '20000', '0', '6');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('966188985633824', '20180727101658', '21', '1', '5000', '0', '7');
INSERT INTO `purchase_order_details` (`row_id`, `po_no`, `product_id`, `order_qty`, `product_rate`, `discount`, `store_id`) VALUES ('966815324656119', '20180714095536', '15', '5', '1000', '0', '7');


#
# TABLE STRUCTURE FOR: purchase_receive
#

DROP TABLE IF EXISTS `purchase_receive`;

CREATE TABLE `purchase_receive` (
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

INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180709130551', '20180709130520', '0', '2', '2018-07-09', '2', '1000', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180716154527', '20180715075409', '0', '24', '2018-07-16', '4', '1001', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180716154712', '20180716154659', '0', '2', '2018-07-16', '6', '1002', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180721071558', '20180721071535', '0', '2', '2018-07-21', '1', '1003', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180727100252', '20180727095912', '0', '25', '2018-07-27', '8', '1004', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180727100328', '20180727095912', '0', '25', '2018-07-27', '8', '1005', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180727101053', '20180727100912', '0', '2', '2018-07-27', '4', '1006', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180730093823', '20180730093805', '0', '2', '2018-07-30', '6', '1007', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180730093947', '20180730093930', '0', '2', '2018-07-30', '6', '1008', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180802162451', '20180802162437', '0', '2', '2018-08-02', '9', '1009', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180804045304', '20180804045253', '0', '2', '2018-08-04', '3', '1010', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180804052456', '20180804052157', '0', '26', '2018-08-04', '5', '1011', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180804063814', '20180727101658', '0', '2', '2018-08-04', '4', '1012', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180804162129', '20180804162054', '0', '2', '2018-08-04', '9', '1013', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180805054643', '20180805054633', '0', '2', '2018-08-05', '5', '1014', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180805063116', '20180805063043', '0', '27', '2018-08-05', '9', '1015', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180805093026', '20180805092943', '0', '27', '2018-08-05', '6', '1016', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180805093043', '20180805092943', '0', '27', '2018-08-05', '6', '1017', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_receive` (`receive_id`, `po_no`, `store_id`, `receive_by`, `receive_date`, `supplier_id`, `voucher_no`, `warehouse_id`, `updateby`, `updatedate`) VALUES ('20180805093057', '20180805092943', '0', '27', '2018-08-05', '6', '1018', '0', '0', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: purchase_receive_details
#

DROP TABLE IF EXISTS `purchase_receive_details`;

CREATE TABLE `purchase_receive_details` (
  `receive_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `receive_qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float NOT NULL,
  KEY `fk_receive_id` (`receive_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180709130551', '17', '10', '20000', '6', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180716154527', '19', '1', '50000', '6', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180716154712', '17', '5', '20000', '6', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180721071558', '18', '1', '40000', '7', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180727100252', '21', '3', '5000', '7', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180727100328', '21', '1', '5000', '7', '100');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180727101053', '21', '1', '5000', '7', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180730093823', '22', '3', '4000', '6', '100');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180730093947', '22', '1', '4000', '6', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180802162451', '23', '4', '10000', '6', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180802162451', '23', '1', '10000', '9', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180804045304', '24', '20', '35000', '2', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180804052456', '21', '20', '5000', '10', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180804063814', '21', '1', '5000', '7', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180804162129', '23', '2', '10000', '2', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180805054643', '23', '10', '10000', '2', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180805063116', '23', '2', '10000', '9', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180805093026', '23', '3', '10000', '9', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180805093043', '23', '1', '10000', '9', '0');
INSERT INTO `purchase_receive_details` (`receive_id`, `product_id`, `receive_qty`, `product_rate`, `store_id`, `discount`) VALUES ('20180805093057', '23', '1', '10000', '9', '0');


#
# TABLE STRUCTURE FOR: purchase_return
#

DROP TABLE IF EXISTS `purchase_return`;

CREATE TABLE `purchase_return` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `purchase_return` (`preturn_id`, `store_id`, `warehouse_id`, `supplier_id`, `po_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('1', '0', '0', '2', '20180709130520', '2018-07-10', '60000', '0', '', '19', '2018-07-10 05:08:15', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_return` (`preturn_id`, `store_id`, `warehouse_id`, `supplier_id`, `po_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('2', '0', '0', '8', '20180727095912', '2018-07-29', '4900', '0', '', '2', '2018-07-29 03:42:37', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_return` (`preturn_id`, `store_id`, `warehouse_id`, `supplier_id`, `po_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('3', '0', '0', '9', '20180804162054', '2018-08-04', '9900', '0', '', '2', '2018-08-04 16:26:20', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_return` (`preturn_id`, `store_id`, `warehouse_id`, `supplier_id`, `po_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('4', '0', '0', '9', '20180804162054', '2018-08-04', '19500', '0', '', '2', '2018-08-04 16:28:12', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_return` (`preturn_id`, `store_id`, `warehouse_id`, `supplier_id`, `po_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('5', '0', '0', '3', '20180804045253', '2018-08-05', '175000', '0', '', '2', '2018-08-05 05:20:37', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_return` (`preturn_id`, `store_id`, `warehouse_id`, `supplier_id`, `po_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('6', '0', '0', '5', '20180805054633', '2018-08-05', '20000', '0', 'jfhjm', '2', '2018-08-05 05:49:08', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_return` (`preturn_id`, `store_id`, `warehouse_id`, `supplier_id`, `po_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('7', '0', '0', '9', '20180804162054', '2018-08-05', '10000', '0', '', '2', '2018-08-05 06:06:34', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_return` (`preturn_id`, `store_id`, `warehouse_id`, `supplier_id`, `po_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('8', '0', '0', '9', '20180805063043', '2018-08-05', '10000', '0', '', '27', '2018-08-05 06:34:10', '0', '0000-00-00 00:00:00');
INSERT INTO `purchase_return` (`preturn_id`, `store_id`, `warehouse_id`, `supplier_id`, `po_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('9', '0', '0', '6', '20180805092943', '2018-08-06', '10000', '0', '', '2', '2018-08-06 05:58:23', '0', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: purchase_return_details
#

DROP TABLE IF EXISTS `purchase_return_details`;

CREATE TABLE `purchase_return_details` (
  `preturn_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `store_id` int(11) NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `purchase_return_details` (`preturn_id`, `product_id`, `qty`, `product_rate`, `store_id`, `discount`) VALUES ('1', '17', '3', '20000', '6', NULL);
INSERT INTO `purchase_return_details` (`preturn_id`, `product_id`, `qty`, `product_rate`, `store_id`, `discount`) VALUES ('2', '21', '1', '5000', '7', NULL);
INSERT INTO `purchase_return_details` (`preturn_id`, `product_id`, `qty`, `product_rate`, `store_id`, `discount`) VALUES ('3', '23', '1', '10000', '2', NULL);
INSERT INTO `purchase_return_details` (`preturn_id`, `product_id`, `qty`, `product_rate`, `store_id`, `discount`) VALUES ('4', '23', '2', '10000', '2', NULL);
INSERT INTO `purchase_return_details` (`preturn_id`, `product_id`, `qty`, `product_rate`, `store_id`, `discount`) VALUES ('5', '24', '5', '35000', '2', NULL);
INSERT INTO `purchase_return_details` (`preturn_id`, `product_id`, `qty`, `product_rate`, `store_id`, `discount`) VALUES ('6', '23', '2', '10000', '2', NULL);
INSERT INTO `purchase_return_details` (`preturn_id`, `product_id`, `qty`, `product_rate`, `store_id`, `discount`) VALUES ('7', '23', '1', '10000', '2', NULL);
INSERT INTO `purchase_return_details` (`preturn_id`, `product_id`, `qty`, `product_rate`, `store_id`, `discount`) VALUES ('8', '23', '1', '10000', '9', NULL);
INSERT INTO `purchase_return_details` (`preturn_id`, `product_id`, `qty`, `product_rate`, `store_id`, `discount`) VALUES ('9', '23', '1', '10000', '9', NULL);


#
# TABLE STRUCTURE FOR: recovery_list
#

DROP TABLE IF EXISTS `recovery_list`;

CREATE   VIEW `recovery_list` AS select (`sales_parent`.`remaining_amnt` - sum(`payment_collection`.`receive_amnt`)) AS `over_due`,`sales_parent`.`store_id` AS `store_id`,`sales_parent`.`invoice_no` AS `invoice_no`,`sales_parent`.`customer_id` AS `customer_id`,`sales_parent`.`sales_date` AS `sales_date`,`sales_parent`.`lease_id` AS `lease_id`,`sales_parent`.`installment_amnt` AS `installment_amnt`,`sales_parent`.`gurrantor_1` AS `gurrantor_1`,`sales_parent`.`remaining_amnt` AS `remaining_amnt`,`sales_parent`.`package_price` AS `package_price`,`sales_parent`.`advance_amnt` AS `advance_amnt`,sum(`payment_collection`.`receive_amnt`) AS `receive_amnt`,`payment_collection`.`receive_date` AS `receive_date`,`payment_collection`.`is_installment` AS `is_installment`,`lease`.`lease_duration` AS `lease_duration`,`lease`.`advance` AS `advance`,`lease`.`markup` AS `markup` from ((`sales_parent` join `payment_collection`) join `lease`) where ((`sales_parent`.`invoice_no` = `payment_collection`.`invoice_no`) and (`sales_parent`.`lease_id` = `lease`.`lease_id`) and (`payment_collection`.`is_installment` = 1)) group by `sales_parent`.`invoice_no`;

utf8mb4_unicode_ci;

INSERT INTO `recovery_list` (`over_due`, `store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `gurrantor_1`, `remaining_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('-3000', '2', '1001', '3', '2018-07-10', '2', '0', NULL, '0', '0', '0', '3000', '2018-07-05', '1', '10', '0.20', '0.35');
INSERT INTO `recovery_list` (`over_due`, `store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `gurrantor_1`, `remaining_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('0', '2', '1003', '3', '2018-07-10', '1', '8625', '62', '8625', '28175', '2300', '8625', '2018-07-10', '1', '6', '0.10', '0.25');
INSERT INTO `recovery_list` (`over_due`, `store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `gurrantor_1`, `remaining_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('17250', '2', '1009', '11', '2018-05-17', '1', '8625', '70', '25875', '28175', '2300', '8625', '2018-06-15', '1', '6', '0.10', '0.25');
INSERT INTO `recovery_list` (`over_due`, `store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `gurrantor_1`, `remaining_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('17875', '2', '1011', '13', '2018-07-18', '1', '8625', '72', '25875', '28175', '2300', '8000', '2018-08-01', '1', '6', '0.10', '0.25');
INSERT INTO `recovery_list` (`over_due`, `store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `gurrantor_1`, `remaining_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('5175', '2', '1013', '15', '2018-07-24', '1', '8625', '76', '25875', '28175', '2300', '20700', '2018-07-24', '1', '6', '0.10', '0.25');


#
# TABLE STRUCTURE FOR: role_permission
#

DROP TABLE IF EXISTS `role_permission`;

CREATE TABLE `role_permission` (
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

INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('52', '8', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('53', '6', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('54', '5', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('55', '13', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('56', '14', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('57', '7', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('58', '10', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('59', '12', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('61', '3', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('62', '9', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('63', '4', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('64', '11', '4', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('178', '3', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('179', '4', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('180', '5', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('181', '6', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('182', '7', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('183', '8', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('184', '9', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('185', '10', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('186', '11', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('187', '12', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('188', '13', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('189', '14', '1', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('214', '8', '5', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('215', '6', '5', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('216', '5', '5', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('217', '13', '5', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('218', '14', '5', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('219', '7', '5', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('220', '10', '5', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('221', '12', '5', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('223', '3', '5', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('224', '9', '5', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('225', '4', '5', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('226', '11', '5', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('313', '8', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('314', '6', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('315', '5', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('316', '13', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('317', '14', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('318', '7', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('319', '10', '2', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('320', '18', '2', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('321', '12', '2', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('322', '16', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('323', '17', '2', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('324', '3', '2', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('325', '9', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('326', '4', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('327', '11', '2', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('473', '1', '3', '1', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('474', '6', '3', '0', '1', '0', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('475', '13', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('476', '7', '3', '0', '1', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('477', '10', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('478', '14', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('479', '19', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('480', '18', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('481', '12', '3', '1', '1', '1', '1');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('482', '17', '3', '1', '1', '1', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('483', '3', '3', '0', '0', '0', '0');
INSERT INTO `role_permission` (`id`, `fk_module_id`, `role_id`, `create`, `read`, `update`, `delete`) VALUES ('484', '9', '3', '0', '0', '0', '0');


#
# TABLE STRUCTURE FOR: sale_details
#

DROP TABLE IF EXISTS `sale_details`;

CREATE TABLE `sale_details` (
  `sale_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sell_price` float NOT NULL,
  `lease_unit_price` float DEFAULT NULL,
  `sale_type_id` tinyint(4) DEFAULT NULL,
  UNIQUE KEY `sale_id` (`sale_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180710050530', '17', '2', '23000', '0', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180710095505', '17', '1', '23000', '0', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180710095550', '0', '1', '23000', '0', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180710144635', '17', '1', '28175', '0', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180711105257', '17', '2', '23000', '0', '2');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180712055154', '17', '1', '23000', '28175', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180712061000', '17', '1', '23000', '28175', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180716115151', '17', '1', '23000', '33350', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180717062120', '17', '1', '23000', '28175', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180717070047', '17', '1', '23000', '29440', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180718163409', '17', '1', '23000', '28175', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180724060835', '17', '5', '23000', '28175', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180724060843', '17', '1', '23000', '28175', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180724060847', '17', '1', '23000', '28175', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180724061210', '17', '1', '23000', '28175', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180724061354', '0', '1', '5000', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180724061510', '0', '1', '23000', NULL, '2');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180724061931', '0', '1', '50000', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180727101848', '21', '1', '6500', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180727102428', '21', '1', '6500', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180727104134', '21', '1', '6500', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180729032108', '22', '1', '5500', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180729033106', '21', '1', '6500', '7962.5', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180729033106', '22', '1', '5500', '6737.5', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180731105540', '21', '1', '6500', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180731105709', '21', '2', '6500', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180731111039', '21', '2', '6500', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180802080502', '21', '5', '6500', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180802082314', '21', '2', '6500', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180802163247', '23', '1', '15000', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180802164407', '23', '1', '15000', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180804050607', '24', '2', '40000', '47200', '3');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180804052649', '21', '3', '6500', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180804162250', '23', '2', '15000', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180805054810', '23', '1', '15000', NULL, '1');
INSERT INTO `sale_details` (`sale_id`, `product_id`, `qty`, `sell_price`, `lease_unit_price`, `sale_type_id`) VALUES ('20180805063302', '23', '2', '15000', NULL, '1');


#
# TABLE STRUCTURE FOR: sale_type
#

DROP TABLE IF EXISTS `sale_type`;

CREATE TABLE `sale_type` (
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

INSERT INTO `sale_type` (`sale_type_id`, `sale_type`, `shortcode`, `createby`, `createdate`, `updateby`, `upadatedate`, `isactive`) VALUES ('1', 'Cash Sale', 'CS', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '1');
INSERT INTO `sale_type` (`sale_type_id`, `sale_type`, `shortcode`, `createby`, `createdate`, `updateby`, `upadatedate`, `isactive`) VALUES ('2', 'Partial Cash Sale', 'PS', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '1');
INSERT INTO `sale_type` (`sale_type_id`, `sale_type`, `shortcode`, `createby`, `createdate`, `updateby`, `upadatedate`, `isactive`) VALUES ('3', 'Lease Sale', 'LS', '0', '0000-00-00 00:00:00', '0', '0000-00-00 00:00:00', '1');


#
# TABLE STRUCTURE FOR: sales_parent
#

DROP TABLE IF EXISTS `sales_parent`;

CREATE TABLE `sales_parent` (
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
) ENGINE=InnoDB AUTO_INCREMENT=20180805063303 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180710050530', '3', '6', '1000', '2', '19', '2018-06-10', '05:05:30', '1', NULL, NULL, '22', '46000', '56350', '4600', '17250', '17250', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180710095505', '3', '2', '1001', '3', '2', '2018-07-10', '09:55:05', '2', NULL, NULL, '3', '0', '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180710095550', '3', '2', '1002', '3', '2', '2018-07-10', '09:55:50', '2', '60', '59', '3', '0', '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180710144635', '3', '2', '1003', '3', '2', '2018-07-10', '14:46:35', '1', '62', '61', '0', '28175', '28175', '2300', '8625', '8625', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180711105257', '2', '2', '1004', '3', '2', '2018-07-11', '10:52:57', NULL, NULL, NULL, NULL, '46000', '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180712055154', '3', '2', '1005', '2', '2', '2018-07-12', '05:51:54', '1', '64', '63', '0', '28175', '28175', '2300', '25875', '8625', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180712060847', '2', '2', '1006', '9', '2', '2018-07-12', '06:08:47', NULL, NULL, NULL, NULL, '23000', '0', '0', '23000', '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180712061000', '3', '2', '1007', '9', '2', '2018-07-12', '06:10:00', '1', '66', '65', '0', '0', '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180716115151', '3', '2', '1008', '0', '2', '2018-07-16', '11:51:51', '4', '68', '67', '0', '33350', '33350', '2300', '31050', '2587.5', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180717062120', '3', '2', '1009', '11', '2', '2018-05-17', '06:21:20', '1', '70', '69', '3', '28175', '28175', '2300', '25875', '8625', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180717070047', '3', '2', '1010', '12', '2', '2018-07-17', '07:00:47', '2', NULL, NULL, '3', '29440', '29440', '4600', '24840', '2484', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180718163409', '3', '2', '1011', '13', '2', '2018-07-18', '16:34:09', '1', '72', '71', '0', '28175', '28175', '2300', '25875', '8625', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180724060835', '3', '2', '1012', '14', '2', '2018-07-24', '06:08:35', '1', '74', '73', '0', '0', '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180724061210', '3', '2', '1013', '15', '2', '2018-07-24', '06:12:10', '1', '76', '75', '0', '23000', '28175', '2300', '25875', '8625', '1', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180724061354', '1', '2', '1014', '15', '2', '2018-07-24', '06:13:54', NULL, NULL, NULL, NULL, '5000', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180724061510', '2', '2', '1015', '15', '2', '2018-07-24', '06:15:10', NULL, NULL, NULL, NULL, '23000', '0', '5000', '18000', '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180724061931', '1', '2', '1016', '15', '2', '2018-07-24', '06:19:31', NULL, NULL, NULL, NULL, '50000', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180727101848', '1', '7', '1017', '0', '25', '2018-07-27', '10:18:48', NULL, NULL, NULL, NULL, '6500', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180727102428', '1', '6', '1018', '0', '24', '2018-07-27', '10:24:28', NULL, NULL, NULL, NULL, '6500', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180727104134', '1', '6', '1019', '0', '24', '2018-07-27', '10:41:34', NULL, NULL, NULL, NULL, '6500', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180729032108', '1', '6', '1020', '2', '24', '2018-07-29', '03:21:08', NULL, NULL, NULL, NULL, '5500', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180729033106', '3', '6', '1021', '20', '24', '2018-05-01', '03:31:06', '1', '0', '2', '0', '12000', '14700', '1200', '13500', '4500', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180731105540', '1', '2', '1022', '2', '2', '2018-07-31', '10:55:40', NULL, NULL, NULL, NULL, '6500', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180731105709', '1', '2', '1023', '2', '2', '2018-07-31', '10:57:09', NULL, NULL, NULL, NULL, '13000', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180731111039', '1', '2', '1024', '2', '2', '2018-05-20', '11:10:39', NULL, NULL, NULL, NULL, '13000', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180802080502', '1', '2', '1025', '22', '2', '2018-08-02', '08:05:02', NULL, NULL, NULL, NULL, '32500', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180802082314', '1', '2', '1026', '22', '2', '2018-08-02', '08:23:14', NULL, NULL, NULL, NULL, '13000', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180802163247', '1', '2', '1027', '23', '2', '2018-08-02', '16:32:47', NULL, NULL, NULL, NULL, '15000', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180802164407', '1', '6', '1028', '20', '24', '2018-08-02', '16:44:07', NULL, NULL, NULL, NULL, '15000', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180804050607', '3', '2', '1029', '22', '2', '2018-08-04', '05:06:07', '9', '80', '79', '27', '80000', '94400', '8000', '86400', '10800', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180804052649', '1', '10', '1030', '24', '26', '2018-08-04', '05:26:49', NULL, NULL, NULL, NULL, '19500', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180804162250', '1', '2', '1031', '25', '2', '2018-08-04', '16:22:50', NULL, NULL, NULL, NULL, '30000', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180805054810', '1', '2', '1032', '12', '2', '2018-08-05', '05:48:10', NULL, NULL, NULL, NULL, '15000', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_parent` (`sale_id`, `sale_type_id`, `store_id`, `invoice_no`, `customer_id`, `salesman`, `sales_date`, `sales_time`, `lease_id`, `gurrantor_1`, `gurrantor_2`, `inquiry_officer`, `total_amnt`, `package_price`, `advance_amnt`, `remaining_amnt`, `installment_amnt`, `is_lease_settled`, `updateby`, `updatedate`) VALUES ('20180805063302', '1', '9', '1033', '26', '27', '2018-08-05', '06:33:02', NULL, NULL, NULL, NULL, '30000', '0', '0', NULL, '0', '0', '0', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: sales_return
#

DROP TABLE IF EXISTS `sales_return`;

CREATE TABLE `sales_return` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sales_return` (`sreturn_id`, `customer_id`, `store_id`, `sale_type_id`, `invoice_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('1', '2', '6', '3', '1000', '2018-07-10', '23000', '0', '', '19', '2018-07-10 05:07:30', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_return` (`sreturn_id`, `customer_id`, `store_id`, `sale_type_id`, `invoice_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('2', '3', '2', '3', '1003', '2018-07-12', '0', '0', '', '2', '2018-07-12 06:03:41', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_return` (`sreturn_id`, `customer_id`, `store_id`, `sale_type_id`, `invoice_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('3', '3', '2', '2', '1004', '2018-07-12', '0', '0', '', '2', '2018-07-12 06:05:40', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_return` (`sreturn_id`, `customer_id`, `store_id`, `sale_type_id`, `invoice_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('4', '20', '6', '3', '1021', '2018-07-29', '3250000', '0', '', '2', '2018-07-29 03:39:37', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_return` (`sreturn_id`, `customer_id`, `store_id`, `sale_type_id`, `invoice_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('5', '25', '2', '1', '1031', '2018-08-04', '15000', '0', '', '2', '2018-08-04 16:23:31', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_return` (`sreturn_id`, `customer_id`, `store_id`, `sale_type_id`, `invoice_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('6', '26', '9', '1', '1033', '2018-08-05', '15000', '0', '', '27', '2018-08-05 06:33:50', '0', '0000-00-00 00:00:00');
INSERT INTO `sales_return` (`sreturn_id`, `customer_id`, `store_id`, `sale_type_id`, `invoice_no`, `return_date`, `totalamount`, `totaldiscount`, `return_reason`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('7', '26', '9', '1', '1033', '2018-08-06', '15000', '0', '', '2', '2018-08-06 05:57:58', '0', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: sales_return_details
#

DROP TABLE IF EXISTS `sales_return_details`;

CREATE TABLE `sales_return_details` (
  `sreturn_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_rate` float NOT NULL,
  `discount` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sales_return_details` (`sreturn_id`, `product_id`, `qty`, `product_rate`, `discount`) VALUES ('1', '17', '1', '23000', NULL);
INSERT INTO `sales_return_details` (`sreturn_id`, `product_id`, `qty`, `product_rate`, `discount`) VALUES ('2', '17', '1', '28175', NULL);
INSERT INTO `sales_return_details` (`sreturn_id`, `product_id`, `qty`, `product_rate`, `discount`) VALUES ('3', '17', '1', '23000', NULL);
INSERT INTO `sales_return_details` (`sreturn_id`, `product_id`, `qty`, `product_rate`, `discount`) VALUES ('4', '21', '500', '6500', NULL);
INSERT INTO `sales_return_details` (`sreturn_id`, `product_id`, `qty`, `product_rate`, `discount`) VALUES ('5', '23', '1', '15000', NULL);
INSERT INTO `sales_return_details` (`sreturn_id`, `product_id`, `qty`, `product_rate`, `discount`) VALUES ('6', '23', '1', '15000', NULL);
INSERT INTO `sales_return_details` (`sreturn_id`, `product_id`, `qty`, `product_rate`, `discount`) VALUES ('7', '23', '1', '15000', NULL);


#
# TABLE STRUCTURE FOR: sec_role
#

DROP TABLE IF EXISTS `sec_role`;

CREATE TABLE `sec_role` (
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

INSERT INTO `sec_role` (`id`, `name`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('5', 'Pricing User', '1', '2', '2018-05-15 03:23:45', '', NULL);
INSERT INTO `sec_role` (`id`, `name`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('4', 'Purchase User', '1', '2', '2018-05-15 03:23:32', '', NULL);
INSERT INTO `sec_role` (`id`, `name`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('2', 'Store Admin', '1', '2', '2018-05-15 03:22:59', '', NULL);
INSERT INTO `sec_role` (`id`, `name`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('3', 'Store User', '1', '2', '2018-05-15 03:23:22', '', NULL);
INSERT INTO `sec_role` (`id`, `name`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('1', 'Super Admin', '1', '2', '2018-05-15 03:22:44', '', NULL);


#
# TABLE STRUCTURE FOR: sec_userrole
#

DROP TABLE IF EXISTS `sec_userrole`;

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('1', '9', '2', '2', '2018-05-15 03:24:36');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('2', '7', '3', '2', '2018-05-15 03:33:39');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('3', '21', '2', '2', '2018-05-27 10:39:03');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('4', '6', '4', '2', '2018-06-23 12:13:13');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('5', '6', '2', '2', '2018-06-23 12:13:26');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('7', '23', '2', '2', '2018-06-30 07:57:37');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('8', '23', '3', '2', '2018-06-30 07:57:37');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('9', '19', '2', '2', '2018-07-05 11:13:40');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('10', '3', '5', '2', '2018-07-06 06:00:28');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('17', '25', '3', '2', '2018-07-15 07:46:28');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('18', '25', '2', '2', '2018-07-15 07:50:55');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('19', '26', '3', '2', '2018-07-15 07:52:38');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('20', '24', '5', '2', '2018-07-27 10:22:43');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('21', '24', '4', '2', '2018-07-27 10:22:43');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('22', '24', '2', '2', '2018-07-27 10:22:43');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('23', '24', '3', '2', '2018-07-27 10:22:43');
INSERT INTO `sec_userrole` (`id`, `user_id`, `roleid`, `createby`, `createdate`) VALUES ('24', '27', '2', '2', '2018-07-29 03:50:15');


#
# TABLE STRUCTURE FOR: setting
#

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
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

INSERT INTO `setting` (`id`, `title`, `address`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`) VALUES ('2', 'Multi Store Management', '98 Green Road, Farmgate, Dhaka-1215.', 'bdtask@gmail.com', '0123456789', 'assets/img/icons/logo.png', 'assets/img/icons/m.png', 'english', 'LTR', '2017Â©Copyright');


#
# TABLE STRUCTURE FOR: stock_movement
#

DROP TABLE IF EXISTS `stock_movement`;

CREATE TABLE `stock_movement` (
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('4', 'p-0001', 'is-5', '7', '5', '0', '0', '2018-07-10', '0', '2018-07-10', '2', NULL, NULL, '2', '2018-07-10', NULL, '0', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('5', 'p-2', NULL, '2', '6', NULL, NULL, '2018-07-10', '2', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '0', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('6', 'p-3', NULL, '2', '6', NULL, NULL, '2018-07-15', '2', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '0', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('7', 'p-4', NULL, '2', '7', NULL, NULL, '2018-07-15', '2', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '0', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('8', 'p-5', NULL, '6', '7', NULL, NULL, '2018-07-16', '2', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '0', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('9', 'p-6', NULL, '6', '7', NULL, NULL, '2018-07-18', '2', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '0', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('10', 'p-7', NULL, '6', '9', NULL, NULL, '2018-07-29', '24', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '1', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('11', 'p-8', 'is-11', '6', '7', '0', '0', '2018-07-29', '24', '2018-07-29', '2', NULL, NULL, '24', '2018-07-29', NULL, '1', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('12', 'p-9', 'is-12', '9', '6', '0', '0', '2018-07-29', '27', '2018-07-29', '24', NULL, NULL, '2', '2018-07-31', NULL, '1', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('13', 'p-10', NULL, '3', '4', NULL, NULL, '2018-07-30', '2', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '0', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('14', 'p-11', 'is-14', '6', '5', '0', '0', '2018-08-04', '2', '2018-08-04', '2', NULL, NULL, '2', '2018-08-04', NULL, '0', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('15', 'p-12', NULL, '10', '6', NULL, NULL, '2018-08-05', '26', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '0', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('16', 'p-13', 'is-16', '2', '6', '0', '0', '2018-08-05', '2', '2018-08-05', '2', NULL, NULL, '2', '2018-08-05', NULL, '0', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('17', 'p-14', NULL, '6', '7', NULL, NULL, '2018-08-05', '2', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '0', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('18', 'p-15', 'is-18', '2', '6', '0', '0', '2018-08-05', '2', '2018-08-05', '2', NULL, NULL, '2', '2018-08-05', NULL, '0', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('19', 'p-16', 'is-19', '9', '6', '0', '0', '2018-08-05', '27', '2018-08-05', '2', NULL, NULL, '2', '2018-08-05', NULL, '0', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('20', 'p-17', 'is-20', '10', '2', '0', '0', '2018-08-05', '26', '2018-08-05', '2', NULL, NULL, '26', '2018-08-05', NULL, '1', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('21', 'p-18', 'is-21', '2', '9', '0', '0', '2018-08-05', '2', '2018-08-05', '2', NULL, NULL, '2', '2018-08-05', NULL, '0', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('22', 'p-19', 'is-22', '2', '6', '0', '0', '2018-08-05', '2', '2018-08-05', '2', NULL, NULL, '2', '2018-08-05', NULL, '1', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('23', 'p-20', 'is-23', '10', '9', '0', '0', '2018-08-05', '2', '2018-08-05', '2', NULL, NULL, '2', '2018-08-05', NULL, '1', '1', '1', '1');
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('35', 'p-30', NULL, '2', '4', NULL, NULL, '2018-08-05', '2', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '0', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('36', 'p-31', NULL, '10', '9', NULL, NULL, '2018-08-05', '2', '0000-00-00', '0', NULL, NULL, '0', '0000-00-00', NULL, '0', NULL, NULL, NULL);
INSERT INTO `stock_movement` (`movement_id`, `proposal_code`, `issue_code`, `for_store_id`, `from_store_id`, `for_warehouse`, `from_warehouse`, `proposal_datetime`, `proposal_by`, `issue_datetime`, `issue_by`, `proposal_remarks`, `issue_remarks`, `receive_by`, `receive_datetime`, `receive_remarks`, `is_approved`, `is_proposed`, `is_issued`, `is_received`) VALUES ('37', 'p-32', 'is-15', '9', '2', '0', '0', '2018-08-05', '2', '2018-08-05', '2', NULL, NULL, '2', '2018-08-05', NULL, '1', '1', '1', '1');


#
# TABLE STRUCTURE FOR: stock_movement_details
#

DROP TABLE IF EXISTS `stock_movement_details`;

CREATE TABLE `stock_movement_details` (
  `movement_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `proposal_qty` int(11) NOT NULL,
  `issue_qty` int(11) NOT NULL,
  `received_qty` int(11) NOT NULL,
  KEY `stock_movement_details_ibfk_1` (`movement_id`),
  CONSTRAINT `stock_movement_details_ibfk_1` FOREIGN KEY (`movement_id`) REFERENCES `stock_movement` (`movement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('4', '17', '4', '4', '4');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('5', '17', '5', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('6', '17', '1', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('7', '17', '5', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('8', '17', '5', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('9', '17', '2', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('10', '0', '5', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('10', '22', '10', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('11', '21', '1', '1', '1');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('11', '22', '2', '1', '2');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('12', '22', '5', '15', '15');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('13', '22', '555', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('14', '23', '4', '3', '2');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('15', '17', '5', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('16', '23', '1', '1', '1');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('17', '23', '2', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('18', '23', '3', '2', '1');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('19', '23', '1', '1', '1');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('20', '23', '3', '2', '2');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('21', '23', '5', '2', '2');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('22', '23', '1', '1', '1');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('23', '23', '2', '2', '2');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('35', '18', '3', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('36', '22', '2', '0', '0');
INSERT INTO `stock_movement_details` (`movement_id`, `product_id`, `proposal_qty`, `issue_qty`, `received_qty`) VALUES ('37', '23', '5', '2', '2');


#
# TABLE STRUCTURE FOR: stoere_overdue
#

DROP TABLE IF EXISTS `stoere_overdue`;

CREATE   VIEW `stoere_overdue` AS select `sales_parent`.`store_id` AS `store_id`,`sales_parent`.`invoice_no` AS `invoice_no`,`sales_parent`.`customer_id` AS `customer_id`,`sales_parent`.`sales_date` AS `sales_date`,`sales_parent`.`lease_id` AS `lease_id`,`sales_parent`.`installment_amnt` AS `installment_amnt`,`sales_parent`.`package_price` AS `package_price`,`sales_parent`.`advance_amnt` AS `advance_amnt`,`payment_collection`.`receive_amnt` AS `receive_amnt`,`payment_collection`.`receive_date` AS `receive_date`,`payment_collection`.`is_installment` AS `is_installment`,`lease`.`lease_duration` AS `lease_duration`,`lease`.`advance` AS `advance`,`lease`.`markup` AS `markup` from ((`sales_parent` join `payment_collection`) join `lease`) where ((`sales_parent`.`invoice_no` = `payment_collection`.`invoice_no`) and (`sales_parent`.`lease_id` = `lease`.`lease_id`));

utf8mb4_unicode_ci;

INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1001', '3', '2018-07-10', '2', '0', '0', '0', '9200', '2018-07-06', '0', '10', '0.20', '0.35');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1001', '3', '2018-07-10', '2', '0', '0', '0', '3000', '2018-07-05', '1', '10', '0.20', '0.35');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1002', '3', '2018-07-10', '2', '0', '0', '0', '4876', '2018-05-06', '0', '10', '0.20', '0.35');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('6', '1000', '2', '2018-06-10', '1', '17250', '56350', '4600', '4600', '2018-06-10', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1001', '3', '2018-07-10', '2', '0', '0', '0', '0', '2018-07-10', '0', '10', '0.20', '0.35');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1002', '3', '2018-07-10', '2', '0', '0', '0', '0', '2018-07-10', '0', '10', '0.20', '0.35');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1003', '3', '2018-07-10', '1', '8625', '28175', '2300', '2300', '2018-07-10', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1003', '3', '2018-07-10', '1', '8625', '28175', '2300', '8625', '2018-07-10', '1', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1005', '2', '2018-07-12', '1', '8625', '28175', '2300', '2300', '2018-07-12', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1007', '9', '2018-07-12', '1', '0', '0', '0', '0', '2018-07-12', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1008', '0', '2018-07-16', '4', '2587.5', '33350', '2300', '2300', '2018-07-16', '0', '12', '0.10', '0.50');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1009', '11', '2018-05-17', '1', '8625', '28175', '2300', '2300', '2018-05-17', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1010', '12', '2018-07-17', '2', '2484', '29440', '4600', '4600', '2018-07-17', '0', '10', '0.20', '0.35');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1011', '13', '2018-07-18', '1', '8625', '28175', '2300', '2300', '2018-07-18', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1012', '14', '2018-07-24', '1', '0', '0', '0', '0', '2018-07-24', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1012', '14', '2018-07-24', '1', '0', '0', '0', '2300', '2018-07-24', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1012', '14', '2018-07-24', '1', '0', '0', '0', '2300', '2018-07-24', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1013', '15', '2018-07-24', '1', '8625', '28175', '2300', '2300', '2018-07-24', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1013', '15', '2018-07-24', '1', '8625', '28175', '2300', '2000', '2018-07-24', '1', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('6', '1021', '20', '2018-05-01', '1', '4500', '14700', '1200', '1200', '2018-05-01', '0', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1013', '15', '2018-07-24', '1', '8625', '28175', '2300', '18700', '2018-07-29', '1', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1009', '11', '2018-05-17', '1', '8625', '28175', '2300', '8625', '2018-06-15', '1', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1011', '13', '2018-07-18', '1', '8625', '28175', '2300', '8000', '2018-08-01', '1', '6', '0.10', '0.25');
INSERT INTO `stoere_overdue` (`store_id`, `invoice_no`, `customer_id`, `sales_date`, `lease_id`, `installment_amnt`, `package_price`, `advance_amnt`, `receive_amnt`, `receive_date`, `is_installment`, `lease_duration`, `advance`, `markup`) VALUES ('2', '1029', '22', '2018-08-04', '9', '10800', '94400', '8000', '8000', '2018-08-04', '0', '8', '0.10', '0.20');


#
# TABLE STRUCTURE FOR: store
#

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `store` (`store_id`, `store_name`, `store_code`, `store_phone`, `store_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('2', 'bdt-01', 'Bdt', '032464', '98,Green Road Dhaka s', '2', '2018-05-08 12:59:42', NULL, NULL, '1');
INSERT INTO `store` (`store_id`, `store_name`, `store_code`, `store_phone`, `store_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('3', 'test store', '324', '234234', 'sdfsdf', '2', '2018-05-19 08:34:52', NULL, NULL, '1');
INSERT INTO `store` (`store_id`, `store_name`, `store_code`, `store_phone`, `store_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('4', 'Uttara', '453', '7657567', 'gdfsgsdfg', '2', '2018-06-04 10:42:07', NULL, NULL, '1');
INSERT INTO `store` (`store_id`, `store_name`, `store_code`, `store_phone`, `store_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('5', 'Bdtask', '324', '543534', 'sdfasdf', '2', '2018-06-06 06:41:24', NULL, NULL, '1');
INSERT INTO `store` (`store_id`, `store_name`, `store_code`, `store_phone`, `store_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('6', 'Arifwala', 'AW', '1111', 'asdf', '2', '2018-06-22 06:11:30', NULL, NULL, '1');
INSERT INTO `store` (`store_id`, `store_name`, `store_code`, `store_phone`, `store_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('7', 'Traders', 'HC', '2222', '2222', '2', '2018-06-22 06:12:34', NULL, NULL, '1');
INSERT INTO `store` (`store_id`, `store_name`, `store_code`, `store_phone`, `store_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('8', 'Shahdara', 'LHS', '0000', '00000', '2', '2018-06-22 06:12:03', NULL, NULL, '0');
INSERT INTO `store` (`store_id`, `store_name`, `store_code`, `store_phone`, `store_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('9', 'Hasilpur', 'HP', '1111', '1111', '2', '2018-07-29 03:44:23', NULL, NULL, '1');
INSERT INTO `store` (`store_id`, `store_name`, `store_code`, `store_phone`, `store_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('10', 'Chichawatni', 'cw', '', 'asadad', '2', '2018-08-02 00:00:00', NULL, NULL, '1');


#
# TABLE STRUCTURE FOR: supplier
#

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `phone`, `email`, `contact_per_name`, `c_p_contact`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('1', 'sup-1', 'Mr.jahangir', 'sdf', '32453', 'adsdfmin@example.com', '', '', '1', '2', '2018-05-12 11:32:16', '0', '0000-00-00 00:00:00');
INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `phone`, `email`, `contact_per_name`, `c_p_contact`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('2', 'sup-2', 'MR.Monir', 'sdfas', '324', 'admisn@example.com', '', '', '1', '2', '2018-05-13 10:50:41', '0', '0000-00-00 00:00:00');
INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `phone`, `email`, `contact_per_name`, `c_p_contact`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('3', 'sup-3', 'Dawlance', '1111', '1234', '', '', '', '1', '22', '2018-06-22 10:40:31', '0', '0000-00-00 00:00:00');
INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `phone`, `email`, `contact_per_name`, `c_p_contact`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('4', 'sup-4', 'Eco star', '', '1111', '', '', 'talha', '1', '2', '2018-07-27 10:15:58', '2', '2018-07-27 10:15:58');
INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `phone`, `email`, `contact_per_name`, `c_p_contact`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('5', 'sup-5', 'Sharif', 'check', '23231', 'sdfsd@gmail.com', 'Arafat', '64654', '1', '2', '2018-07-12 10:04:21', '0', '0000-00-00 00:00:00');
INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `phone`, `email`, `contact_per_name`, `c_p_contact`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('6', 'sup-6', 'Talha', '', '', '', '', '', '1', '2', '2018-07-14 10:16:52', '0', '0000-00-00 00:00:00');
INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `phone`, `email`, `contact_per_name`, `c_p_contact`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('7', 'sup-7', 'MS. Tel&Co.', 'Test Address', '76876876876', '', '', '', '0', '2', '2018-07-19 05:06:18', '0', '0000-00-00 00:00:00');
INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `phone`, `email`, `contact_per_name`, `c_p_contact`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('8', 'sup-8', 'july', '1234', '', '', '', '', '1', '2', '2018-07-27 09:41:53', '0', '0000-00-00 00:00:00');
INSERT INTO `supplier` (`supplier_id`, `supplier_code`, `supplier_name`, `address`, `phone`, `email`, `contact_per_name`, `c_p_contact`, `isactive`, `createby`, `createdate`, `updateby`, `updatedate`) VALUES ('9', 'sup-5', 'New', '', '', '', '', '', '1', '2', '2018-08-02 16:23:42', '0', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: synchronizer_setting
#

DROP TABLE IF EXISTS `synchronizer_setting`;

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `synchronizer_setting` (`id`, `hostname`, `username`, `password`, `port`, `debug`, `project_root`) VALUES ('8', '70.35.198.200', 'spreadcargo', '123123123123', '21', 'true', './public_html/');


#
# TABLE STRUCTURE FOR: test
#

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: tmp_store_stock
#

DROP TABLE IF EXISTS `tmp_store_stock`;

CREATE TABLE `tmp_store_stock` (
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

INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('2', '2018-07-10 00:00:00', '0', '0', '4', '', '', '', 'Sold');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('2', '2018-07-12 00:00:00', '17', '2', '16', '', '', '', 'Sales Return');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('2', '2018-07-31 00:00:00', '21', '0', '12', '', '', '', 'Sold');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('2', '2018-08-04 00:00:00', '23', '14', '10', '', '', '', 'purchase_receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('2', '2018-08-04 00:00:00', '24', '20', '7', '', '', '', 'purchase_receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('6', '2018-08-05 00:00:00', '23', '0', '1', '', '', '', 'Stock Issue');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('5', '2018-08-04 00:00:00', '23', '0', '3', '', '', '', 'Stock Issue');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('6', '2018-07-09 00:00:00', '17', '16', '5', '', '', '', 'purchase_receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('6', '2018-07-16 00:00:00', '19', '1', '0', '', '', '', 'purchase_receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('6', '2018-07-29 00:00:00', '21', '501', '3', '', '', '', 'Stock Receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('6', '2018-07-30 00:00:00', '22', '6', '2', '', '', '', 'purchase_receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('6', '2018-08-02 00:00:00', '23', '6', '1', '', '', '', 'purchase_receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('7', '2018-07-29 00:00:00', '21', '0', '1', '', '', '', 'Stock Issue');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('7', '2018-07-29 00:00:00', '22', '0', '1', '', '', '', 'Stock Issue');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('5', '2018-07-10 00:00:00', '17', '0', '4', '', '', '', 'Stock Issue');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('7', '2018-07-10 00:00:00', '17', '4', '0', '', '', '', 'Stock Receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('7', '2018-07-21 00:00:00', '18', '1', '0', '', '', '', 'purchase_receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('7', '2018-07-27 00:00:00', '21', '6', '2', '', '', '', 'purchase_receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('6', '2018-07-29 00:00:00', '22', '0', '15', '', '', '', 'Stock Issue');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('6', '2018-08-05 00:00:00', '23', '0', '1', '', '', '', 'Stock Issue');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('9', '2018-07-31 00:00:00', '22', '15', '0', '', '', '', 'Stock Receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('9', '2018-08-02 00:00:00', '23', '11', '4', '', '', '', 'purchase_receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('2', '2018-08-05 00:00:00', '23', '0', '2', '', '', '', 'Stock Issue');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('10', '2018-08-04 00:00:00', '21', '20', '3', '', '', '', 'purchase_receive');
INSERT INTO `tmp_store_stock` (`StoreID`, `Stock_Date`, `ProdID`, `InQty`, `OutQty`, `category_id`, `brand_id`, `model_id`, `Remarks`) VALUES ('10', '2018-08-05 00:00:00', '23', '2', '0', '', '', '', 'Stock Receive');


#
# TABLE STRUCTURE FOR: treeview_items
#

DROP TABLE IF EXISTS `treeview_items`;

CREATE TABLE `treeview_items` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `text` varchar(200) NOT NULL,
  `parent_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `about` text,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('2', 'John', 'Doe', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'admin@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/m2.png', '2018-10-01 12:18:12', '2018-09-22 17:07:00', '162.158.30.59', '1', '1', '2');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('3', 'Janie ', 'Doe', '', 'janie@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/f.png', '2018-07-27 09:40:54', '2018-07-27 10:00:00', '172.69.134.190', '1', '0', '0');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('6', 'Jane', 'Doe', '', 'jane@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/f2.png', '2017-05-20 09:46:28', '2017-05-20 09:46:32', '::1', '1', '0', '0');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('7', 'kkr', 'Kabir', 'This is Store admin', 'kkr@gmail.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/asdf.jpg', '2018-05-16 07:02:50', '2018-05-16 07:03:12', '::1', '1', '0', '1');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('8', 'Hm', 'Isahaq', 'sdfasdf', 'hmisahaq@yahoo.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/profile_img.png', '2018-06-06 11:37:41', '2018-06-06 11:47:06', '::1', '1', '1', '1');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('9', 'Test', 'user', 'store user', 'test@test.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/sdf.jpg', '2018-06-06 11:29:23', '2018-06-06 11:36:58', '::1', '1', '0', '2');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('11', 'tuhin', 'Sarkar', 'He is Super Admin', 'tuhin@gmail.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/Picture-of-person.png', NULL, NULL, NULL, '1', '1', '2');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('13', 'alamin ', 'Khan', 'dsfsadf', 'alamin@gmail.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/Picture-of-person2.png', '2018-05-09 12:27:05', '2018-05-09 12:30:58', '::1', '1', '0', '2');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('14', 'isahaq', 'm', 'sdfasdf', 'isahaq@gmail.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/sdf2.jpg', '2018-05-09 13:09:17', '2018-05-09 13:09:26', '::1', '1', '0', '2');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('15', 'a', 'b', 'sdfasdf', 'a@g.c', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/df.jpg', '2018-05-09 14:55:55', '2018-05-09 14:56:07', '::1', '1', '0', '2');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('16', 'b', 'c', 'sdf', 'b@g.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/sdf3.jpg', '2018-05-09 13:59:22', '2018-05-09 13:59:34', '::1', '1', '0', '2');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('17', 'u', 'sd', 'sdf', 'u@s.c', '202cb962ac59075b964b07152d234b70', '', '', '2018-05-09 15:05:04', '2018-05-09 15:19:47', '::1', '1', '0', '2');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('18', 'jakir', 'a', 'sdfsdf', 'jakir@gmail.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/45d12880620b7f674818da95b41075f2.png', '2018-05-10 15:39:16', '2018-05-10 15:40:03', '::1', '1', '0', '2');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('19', 'kamrul', 'Hasan', 'sdfsdf', 'kamrul@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', './assets/img/user/2b6dcc22ad0f3aec8a67a247daee9e40.jpg', '2018-07-15 13:03:05', '2018-07-15 12:50:24', '172.68.146.105', '1', '0', '6');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('20', 'ww', 'rr', 'sdfsd', 'w@gmail.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/1451456913_brodie.jpg', '2018-05-14 13:40:37', '2018-07-05 11:13:05', '::1', '1', '0', '2');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('21', 'Mahmud', 'Ahmad', 'dsfalsdkjf', 'm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', './assets/img/user/5c01eb694a7c9797acec38fc5bffc610.jpg', '2018-07-10 08:03:06', '2018-07-10 08:00:40', '172.68.144.230', '1', '0', '5');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('22', 'Talha', 'Khan', 'Branch Accountant', 'abc@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '2018-06-22 06:42:34', NULL, '172.69.134.94', '1', '1', '6');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('23', 'Muhammad', 'Nisar', '', 'xyz@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', NULL, NULL, NULL, '1', '1', '7');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('24', 'Khan', '1234', '', 'khan@alfalah.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '2018-08-05 04:16:01', '2018-07-29 06:26:57', '172.68.144.26', '1', '0', '6');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('25', 'Traders', '1234', '', 'traders@alfalah.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '2018-07-27 10:00:53', '2018-07-27 10:21:47', '172.68.146.129', '1', '0', '7');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('26', 'shm', 'Sharif', '', 'sharif@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '2018-08-06 12:11:49', '2018-08-06 12:11:38', '172.68.146.243', '1', '0', '10');
INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`, `store_id`) VALUES ('27', 'Faheem', '1234', '', 'Faheem@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '2018-08-05 09:29:01', '2018-07-29 06:29:36', '172.68.62.245', '1', '0', '9');


#
# TABLE STRUCTURE FOR: warehouse
#

DROP TABLE IF EXISTS `warehouse`;

CREATE TABLE `warehouse` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `warehouse` (`warehouse_id`, `warehouse_name`, `warehouse_code`, `warehouse_phone`, `warehouse_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('1', 'Bdtask', '324', '324234', '98,green road farmgate', '2', '2018-05-13 08:47:06', '', '0000-00-00 00:00:00', '1');
INSERT INTO `warehouse` (`warehouse_id`, `warehouse_name`, `warehouse_code`, `warehouse_phone`, `warehouse_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('2', 'test', '342', '234', 'sdfsdf', '2', '2018-05-13 11:01:09', '', '0000-00-00 00:00:00', '1');
INSERT INTO `warehouse` (`warehouse_id`, `warehouse_name`, `warehouse_code`, `warehouse_phone`, `warehouse_address`, `createby`, `createdate`, `updateby`, `updatedate`, `isactive`) VALUES ('3', 'dfsdfs', '234', '234234', 'dsfasdf', '2', '2018-05-15 14:23:01', '', '0000-00-00 00:00:00', '1');


