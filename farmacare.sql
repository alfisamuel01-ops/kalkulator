-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 02 Sep 2022 pada 10.40
-- Versi server: 10.5.16-MariaDB-cll-lve
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u5846718_demofarmacare`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `acc_coa`
--

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
  `customer_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `IsDepreciation` tinyint(1) NOT NULL,
  `DepreciationRate` decimal(18,2) NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `acc_coa`
--

INSERT INTO `acc_coa` (`HeadCode`, `HeadName`, `PHeadName`, `HeadLevel`, `IsActive`, `IsTransaction`, `IsGL`, `HeadType`, `IsBudget`, `customer_id`, `manufacturer_id`, `IsDepreciation`, `DepreciationRate`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
('50202', 'Account Payable', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, 0, '0.00', 'admin', '2015-10-15 19:50:43', '', '2019-08-10 11:01:12'),
('10203', 'Account Receivable', 'Current Asset', 2, 1, 0, 0, 'A', 0, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', 'admin', '2013-09-18 15:29:35'),
('1', 'Assets', 'COA', 0, 1, 0, 0, 'A', 0, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', '', '2019-08-10 11:01:12'),
('10201', 'Cash & Cash Equivalent', 'Current Asset', 2, 1, 0, 1, 'A', 0, NULL, NULL, 0, '0.00', '1', '2019-06-12 11:47:24', 'admin', '2015-10-15 15:57:55'),
('1020102', 'Cash At Bank', 'Cash & Cash Equivalent', 3, 1, 0, 1, 'A', 0, NULL, NULL, 0, '0.00', '1', '2019-03-18 06:08:18', 'admin', '2015-10-15 15:32:42'),
('1020101', 'Cash In Hand', 'Cash & Cash Equivalent', 3, 1, 1, 0, 'A', 0, NULL, NULL, 0, '0.00', '1', '2019-01-26 07:38:48', 'admin', '2016-05-23 12:05:43'),
('102', 'Current Asset', 'Assets', 1, 1, 0, 0, 'A', 0, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', 'admin', '2018-07-07 11:23:00'),
('502', 'Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, NULL, NULL, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('1020301', 'Customer Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, NULL, NULL, 0, '0.00', '1', '2019-01-24 12:10:05', 'admin', '2018-07-07 12:31:42'),
('50204', 'Employee Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, 0, '0.00', '1', '2019-04-08 10:36:32', '', '2019-08-10 11:01:12'),
('404', 'Employee Salary', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, 0, '0.00', '1', '2019-05-23 05:46:14', '', '2019-08-10 11:01:12'),
('2', 'Equity', 'COA', 0, 1, 0, 0, 'L', 0, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', '', '2019-08-10 11:01:12'),
('4', 'Expence', 'COA', 0, 1, 1, 0, 'E', 0, NULL, NULL, 0, '0.00', '1', '2019-06-18 11:40:41', '', '2019-08-10 11:01:12'),
('405', 'Fixed Assets Cost', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, 0, '0.00', '1', '2019-05-29 05:32:01', '', '2019-08-10 11:01:12'),
('3', 'Income', 'COA', 0, 1, 0, 0, 'I', 0, NULL, NULL, 0, '0.00', '1', '2019-05-20 05:32:59', '', '2019-08-10 11:01:12'),
('10107', 'Inventory', 'Non Current Assets', 1, 1, 0, 0, 'A', 0, NULL, NULL, 0, '0.00', '2', '2018-07-07 15:21:58', '', '2019-08-10 11:01:12'),
('5', 'Liabilities', 'COA', 0, 1, 0, 0, 'L', 0, NULL, NULL, 0, '0.00', 'admin', '2013-07-04 12:32:07', 'admin', '2015-10-15 19:46:54'),
('1020302', 'Loan Receivable', 'Account Receivable', 3, 1, 0, 1, 'A', 0, NULL, NULL, 0, '0.00', '1', '2019-01-26 07:37:20', '', '2019-08-10 11:01:12'),
('101', 'Non Current Assets', 'Assets', 1, 1, 0, 0, 'A', 0, NULL, NULL, 0, '0.00', '', '2019-08-10 11:01:12', 'admin', '2015-10-15 15:29:11'),
('501', 'Non Current Liabilities', 'Liabilities', 1, 1, 0, 0, 'L', 0, NULL, NULL, 0, '0.00', 'anwarul', '2014-08-30 13:18:20', 'admin', '2015-10-15 19:49:21'),
('402', 'Product Purchase', 'Expence', 1, 1, 1, 0, 'E', 0, NULL, NULL, 0, '0.00', '1', '2019-05-20 07:46:59', '', '2019-08-10 11:01:12'),
('304', 'Product Sale', 'Income', 1, 1, 1, 0, 'I', 0, NULL, NULL, 0, '0.00', '1', '2019-06-16 12:15:40', '', '2019-08-10 11:01:12'),
('305', 'Service Income', 'Income', 1, 1, 1, 0, 'I', 0, NULL, NULL, 0, '0.00', '1', '2019-05-22 13:36:02', '', '2019-08-10 11:01:12'),
('301', 'Store Income', 'Income', 1, 1, 0, 0, 'I', 0, NULL, NULL, 0, '0.00', '2', '2018-07-07 13:40:37', 'admin', '2015-09-17 17:00:02'),
('50205', 'Supplier Ledger', 'Current Liabilities', 2, 1, 0, 1, 'L', 0, NULL, NULL, 0, '0.00', '1', '2019-10-06 06:18:49', '', '2019-08-10 11:01:12'),
('10203000001', 'Walking Customer-1', 'Customer Receivable', 4, 1, 1, 0, 'A', 0, 1, NULL, 0, '0.00', '1', '2019-11-12 07:06:55', '', '2019-08-10 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `acc_transaction`
--

CREATE TABLE `acc_transaction` (
  `ID` int(11) NOT NULL,
  `VNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Vtype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VDate` date DEFAULT NULL,
  `COAID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Narration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Debit` decimal(18,2) DEFAULT NULL,
  `Credit` decimal(18,2) DEFAULT NULL,
  `IsPosted` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `IsAppove` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `asset_purchase`
--

CREATE TABLE `asset_purchase` (
  `id` int(11) NOT NULL,
  `p_date` date NOT NULL,
  `supplier_id` varchar(30) NOT NULL,
  `grand_total` float NOT NULL,
  `payment_type` tinyint(4) DEFAULT NULL,
  `bank_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sign_in` varchar(30) NOT NULL,
  `sign_out` varchar(30) NOT NULL,
  `staytime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_add`
--

CREATE TABLE `bank_add` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(50) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `ac_name` varchar(250) DEFAULT NULL,
  `ac_number` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `signature_pic` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `company_information`
--

CREATE TABLE `company_information` (
  `company_id` varchar(50) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `website` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `company_information`
--

INSERT INTO `company_information` (`company_id`, `company_name`, `email`, `address`, `mobile`, `website`, `status`) VALUES
('NOILG8EGCRXXBWUEUQBM', 'bdtask Shop', 'bdtask@gmail.com', 'B-25, Mannan Plaza, 4th Floor, Khilkhet\r\nDhaka-1229, Bangladesh ', '1922296392', 'http://www.bdtask.com', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `currency_tbl`
--

CREATE TABLE `currency_tbl` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `currency_tbl`
--

INSERT INTO `currency_tbl` (`id`, `currency_name`, `icon`) VALUES
(1, 'Taka', 'à§³'),
(2, 'Dollar', '$');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_information`
--

CREATE TABLE `customer_information` (
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) NOT NULL,
  `address2` text DEFAULT NULL,
  `customer_mobile` varchar(100) NOT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL COMMENT '1=paid,2=credit',
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_by` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customer_information`
--

INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_address`, `address2`, `customer_mobile`, `customer_email`, `email_address`, `contact`, `phone`, `fax`, `city`, `state`, `zip`, `country`, `status`, `create_date`, `create_by`) VALUES
(1, 'Walking Customer', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-07-22 16:17:45', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daily_closing`
--

CREATE TABLE `daily_closing` (
  `closing_id` varchar(255) NOT NULL,
  `last_day_closing` float NOT NULL,
  `cash_in` float NOT NULL,
  `cash_out` float NOT NULL,
  `date` varchar(50) NOT NULL,
  `amount` float NOT NULL,
  `adjustment` float NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_history`
--

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `rate_type` int(11) NOT NULL,
  `hrate` float NOT NULL,
  `email` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `image` text DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_salary_payment`
--

CREATE TABLE `employee_salary_payment` (
  `emp_sal_pay_id` int(11) NOT NULL,
  `generate_id` int(11) NOT NULL,
  `employee_id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `total_salary` decimal(18,2) NOT NULL DEFAULT 0.00,
  `total_working_minutes` varchar(50) CHARACTER SET latin1 NOT NULL,
  `working_period` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `payment_due` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `payment_date` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `paid_by` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `salary_month` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_salary_setup`
--

CREATE TABLE `employee_salary_setup` (
  `e_s_s_id` int(11) UNSIGNED NOT NULL,
  `employee_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `sal_type` varchar(30) NOT NULL,
  `salary_type_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `create_date` date DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `update_id` varchar(30) CHARACTER SET latin1 NOT NULL,
  `gross_salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(100) NOT NULL,
  `voucher_no` varchar(50) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `expense_item`
--

CREATE TABLE `expense_item` (
  `id` int(11) NOT NULL,
  `expense_item_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fixed_assets`
--

CREATE TABLE `fixed_assets` (
  `id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `insert_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `invoice` bigint(20) DEFAULT NULL,
  `total_discount` decimal(10,2) DEFAULT 0.00 COMMENT 'total invoice discount',
  `invoice_discount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) DEFAULT 0.00,
  `prevous_due` decimal(10,2) NOT NULL DEFAULT 0.00,
  `sales_by` varchar(30) DEFAULT NULL,
  `invoice_details` varchar(200) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `payment_type` int(11) NOT NULL DEFAULT 1,
  `bank_id` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_details_id` varchar(30) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `batch_id` varchar(30) NOT NULL,
  `cartoon` float DEFAULT NULL,
  `quantity` float NOT NULL,
  `rate` decimal(12,2) DEFAULT NULL,
  `manufacturer_rate` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `discount` decimal(12,0) DEFAULT NULL,
  `tax` decimal(10,2) DEFAULT NULL,
  `paid_amount` decimal(12,0) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `language`
--

CREATE TABLE `language` (
  `id` int(11) UNSIGNED NOT NULL,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL,
  `bahasa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `bahasa`) VALUES
(1, 'user_profile', 'User Profile', 'Profil pengguna'),
(2, 'setting', 'Web Setting', 'Pengaturan Web'),
(3, 'language', 'Language', 'Bahasa'),
(4, 'manage_users', 'Manage Users', 'Kelola Pengguna'),
(5, 'add_user', 'Add User', 'Tambahkan pengguna'),
(6, 'manage_company', 'Manage Company', 'Kelola Perusahaan'),
(7, 'web_settings', 'Software Settings', 'Pengaturan Perangkat Lunak'),
(8, 'manage_accounts', 'Manage Accounts', 'Mengelola akun'),
(9, 'create_accounts', 'Create Accounts', 'Buat Akun'),
(10, 'manage_bank', 'Manage Bank', 'Kelola Bank'),
(11, 'add_new_bank', 'Add New Bank', 'Tambahkan Bank Baru'),
(12, 'settings', 'Settings', 'Pengaturan'),
(13, 'closing_report', 'Closing Report', 'Laporan Penutupan'),
(14, 'closing', 'Closing', 'Penutupan'),
(15, 'cheque_manager', 'Cheque Manager', 'Periksa Manajer'),
(16, 'accounts_summary', 'Accounts Summary', 'Ringkasan Akun'),
(17, 'expense', 'Expense', 'Biaya'),
(18, 'income', 'Income', 'Pendapatan'),
(19, 'accounts', 'Accounts', 'Akun'),
(20, 'stock_report', 'Stock Report', 'Laporan Stok'),
(21, 'stock', 'Stock', 'Persediaan'),
(22, 'pos_invoice', 'POS Invoice', 'Faktur POS'),
(23, 'manage_invoice', 'Manage Invoice ', 'Kelola Faktur'),
(24, 'new_invoice', 'New Invoice', 'Faktur Baru'),
(25, 'invoice', 'Invoice', 'Faktur'),
(26, 'manage_purchase', 'Manage Purchase', 'Kelola Pembelian'),
(27, 'add_purchase', 'Add Purchase', 'Tambahkan Pembelian'),
(28, 'purchase', 'Purchase', 'Pembelian'),
(29, 'paid_customer', 'Paid Customer', 'Pelanggan Berbayar'),
(30, 'manage_customer', 'Manage Customer', 'Kelola Pelanggan'),
(31, 'add_customer', 'Add Customer', 'Tambahkan Pelanggan'),
(32, 'customer', 'Customer', 'Pelanggan'),
(33, 'manufacturer_payment_actual', 'Manufacturer Payment Actual', 'Manufacturer Payment Actual'),
(34, 'manufacturer_sales_summary', 'Manufacturer  Sales Summary', 'Ringkasan Penjualan Produsen'),
(35, 'manufacturer_sales_details', 'Manufacturer Sales Details', 'Rincian Penjualan Produsen'),
(36, 'manufacturer_ledger', 'Manufacturer Ledger', 'Buku Besar Produsen'),
(37, 'manage_manufacturer', 'Manage Manufacturer', 'Kelola Produsen'),
(38, 'add_manufacturer', 'Add Manufacturer', 'Tambahkan Produsen'),
(39, 'manufacturer', 'Manufacturer', 'Pabrikan'),
(40, 'product_statement', 'Medicine Statement', 'Pernyataan Obat'),
(41, 'manage_product', 'Manage Medicine', 'Kelola Obat'),
(42, 'add_product', 'Add Medicine', 'Tambahkan Obat'),
(43, 'product', 'Medicine', 'Obat'),
(44, 'manage_category', 'Manage Category', 'Kelola Kategori'),
(45, 'add_category', 'Add Category', 'Tambahkan kategori'),
(46, 'category', 'Category', 'Kategori'),
(47, 'sales_report_product_wise', 'Sales Report (Medicine Wise)', 'Laporan penjualan'),
(48, 'purchase_report', 'Purchase Report', 'Laporan Pembelian'),
(49, 'sales_report', 'Sales Report', 'Laporan penjualan'),
(50, 'todays_report', 'Todays Report', 'Laporan Hari Ini'),
(51, 'report', 'Report', 'Laporan'),
(52, 'dashboard', 'Dashboard', 'Dashboard'),
(53, 'online', 'Online', 'Aktif'),
(54, 'logout', 'Logout', 'Keluar'),
(56, 'total_purchase', 'Total Purchase', 'Total Pembelian'),
(57, 'total_amount', 'Total Amount', 'Jumlah total'),
(58, 'manufacturer_name', 'Manufacturer  Name', 'Nama pabrik'),
(59, 'invoice_no', 'Invoice No', 'Nomor faktur'),
(60, 'purchase_date', 'Purchase Date', 'Tanggal Pembelian'),
(61, 'todays_purchase_report', 'Todays Purchase Report', 'Laporan Pembelian Hari Ini'),
(62, 'total_sales', 'Total Sales', 'Total Penjualan'),
(63, 'customer_name', 'Customer Name', 'Nama Pelanggan'),
(64, 'sales_date', 'Sales Date', 'Tanggal Penjualan'),
(65, 'todays_sales_report', 'Todays Sales Report', 'Laporan Penjualan Hari Ini'),
(66, 'home', 'Home', 'Beranda'),
(67, 'todays_sales_and_purchase_report', 'Todays sales and purchase report', 'Laporan penjualan dan pembelian hari ini'),
(68, 'total_ammount', 'Total Amount', 'Jumlah total'),
(69, 'rate', 'Sale Price', 'Harga penjualan'),
(70, 'product_model', 'Medicine Type', 'Jenis Obat'),
(71, 'product_name', 'Medicine Name', 'Nama Obat'),
(72, 'search', 'Search', 'Cari'),
(73, 'end_date', 'End Date', 'Tanggal Akhir'),
(74, 'start_date', 'Start Date', 'Mulai tanggal'),
(75, 'total_purchase_report', 'Total Purchase Report', 'Laporan Pembelian Total'),
(76, 'total_sales_report', 'Total Sales Report', 'Laporan Penjualan Total'),
(77, 'total_seles', 'Total Sales', 'Total Penjualan'),
(78, 'all_stock_report', 'All Stock Report', 'Semua Laporan Stok'),
(79, 'search_by_product', 'Search By Medicine', 'Cari Berdasarkan Obat'),
(80, 'date', 'Date', 'Tanggal'),
(81, 'print', 'Print', 'Mencetak'),
(82, 'stock_date', 'Stock Date', 'Tanggal Saham'),
(83, 'print_date', 'Print Date', 'Tanggal cetak'),
(84, 'sales', 'Sales', 'Penjualan'),
(85, 'price', 'Price', 'Harga'),
(86, 'sl', 'SL.', 'SL.'),
(87, 'add_new_category', 'Add new category', 'Tambahkan kategori baru'),
(88, 'category_name', 'Category Name', 'Nama Kategori'),
(89, 'save', 'Save', 'Menyimpan'),
(90, 'delete', 'Delete', 'Menghapus'),
(91, 'update', 'Update', 'Memperbarui'),
(92, 'action', 'Action', 'Tindakan'),
(93, 'manage_your_category', 'Manage your category ', 'Kelola kategori Anda'),
(94, 'category_edit', 'Category Edit', 'Edit Kategori'),
(95, 'status', 'Status', 'Status'),
(96, 'active', 'Active', 'Aktif'),
(97, 'inactive', 'Inactive', 'Tidak aktif'),
(98, 'save_changes', 'Save Changes', 'Simpan perubahan'),
(99, 'save_and_add_another', 'Save And Add Another', 'Simpan dan Tambahkan Lainnya'),
(100, 'model', 'Medicine Type', 'Jenis Obat'),
(101, 'manufacturer_price', 'Manufacturer Price', 'Harga Pabrikan'),
(102, 'sell_price', 'Sell Price', 'Harga jual'),
(103, 'image', 'Image', 'Gambar'),
(104, 'select_one', 'Select One', 'Pilih satu'),
(105, 'details', 'Details', 'Detail'),
(106, 'new_product', 'New Medicine', 'Pengobatan Baru'),
(107, 'add_new_product', 'Add new medicine', 'Tambahkan obat baru'),
(108, 'barcode', 'Barcode', 'Barcode'),
(109, 'qr_code', 'Qr-Code', 'Kode QR'),
(110, 'product_details', 'Medicine Details', 'Rincian Obat'),
(111, 'manage_your_product', 'Manage your medicine', 'Kelola obat Anda'),
(112, 'product_edit', 'Medicine Edit', 'Kedokteran Edit'),
(113, 'edit_your_product', 'Edit your medicine', 'Edit obat Anda'),
(114, 'cancel', 'Cancel', 'Membatalkan'),
(115, 'incl_vat', 'Incl. Vat', 'Termasuk. Tong'),
(116, 'money', 'Dollar', 'Dolar'),
(117, 'grand_total', 'Grand Total', 'Hasil akhir'),
(118, 'quantity', 'Quantity', 'Kuantitas'),
(119, 'product_report', 'Medicine Report', 'Laporan Obat'),
(120, 'product_sales_and_purchase_report', 'Medicine sales and purchase report', 'Laporan penjualan dan pembelian obat'),
(121, 'previous_stock', 'Previous Stock', 'Saham Sebelumnya'),
(122, 'out', 'Out', 'Di luar'),
(123, 'in', 'In', 'Di'),
(124, 'to', 'To', 'Untuk'),
(125, 'previous_balance', 'Previous Balance', 'Saldo sebelumnya'),
(126, 'customer_address', 'Customer Address', 'Alamat pelanggan'),
(127, 'customer_mobile', 'Customer Mobile', 'Seluler Pelanggan'),
(128, 'customer_email', 'Customer Email', 'Surel pelanggan'),
(129, 'add_new_customer', 'Add new customer', 'Tambahkan pelanggan baru'),
(130, 'balance', 'Balance', 'Keseimbangan'),
(131, 'mobile', 'Mobile', 'Seluler'),
(132, 'address', 'Address', 'Alamat'),
(133, 'manage_your_customer', 'Manage your customer', 'Kelola pelanggan Anda'),
(134, 'customer_edit', 'Customer Edit', 'Edit Pelanggan'),
(135, 'paid_customer_list', 'Paid Customer List', 'Daftar Pelanggan Berbayar'),
(136, 'ammount', 'Amount', 'Jumlah'),
(137, 'customer_ledger', 'Customer Ledger', 'Buku Besar Pelanggan'),
(138, 'manage_customer_ledger', 'Manage Customer Ledger', 'Kelola Buku Besar Pelanggan'),
(139, 'customer_information', 'Customer Information', 'Informasi pengguna'),
(140, 'debit_ammount', 'Debit Amount', 'Jumlah Debit'),
(141, 'credit_ammount', 'Credit Amount', 'Jumlah kredit'),
(142, 'balance_ammount', 'Balance Amount', 'Jumlah Saldo'),
(143, 'receipt_no', 'Receipt NO', 'Receipt NO'),
(144, 'description', 'Description', 'Deskripsi'),
(145, 'debit', 'Debit', 'Debet'),
(146, 'credit', 'Credit', 'Kredit'),
(147, 'item_information', 'Item Information', 'Informasi barang'),
(148, 'total', 'Total', 'Total'),
(149, 'please_select_manufacturer', 'Please Select Manufacturer', 'Silakan Pilih Produsen'),
(150, 'submit', 'Submit', 'Kirimkan'),
(151, 'submit_and_add_another', 'Submit And Add Another One', 'Kirim dan Tambahkan Satu Lagi'),
(152, 'add_new_item', 'Add New Item', 'Tambahkan Item Baru'),
(153, 'manage_your_purchase', 'Manage your purchase', 'Kelola pembelian Anda'),
(154, 'purchase_edit', 'Purchase Edit', 'Beli Edit'),
(155, 'purchase_ledger', 'Purchase Ledger', 'Beli Buku Besar'),
(156, 'invoice_information', 'Invoice Information', 'Informasi Faktur'),
(157, 'paid_ammount', 'Paid Amount', 'Jumlah pembayaran'),
(158, 'discount', 'Discount / Pcs.', 'Diskon / Pcs.'),
(159, 'save_and_paid', 'Save And Paid', 'Simpan dan Bayar'),
(160, 'payee_name', 'Payee Name', 'Nama Penerima Pembayaran'),
(161, 'manage_your_invoice', 'Manage your invoice', 'Kelola faktur Anda'),
(162, 'invoice_edit', 'Invoice Edit', 'Edit Faktur'),
(163, 'new_pos_invoice', 'New POS invoice', 'Faktur POS baru'),
(164, 'add_new_pos_invoice', 'Add new pos invoice', 'Tambahkan faktur pos baru'),
(165, 'product_id', 'Medicine ID', 'ID Obat'),
(166, 'paid_amount', 'Paid Amount', 'Jumlah pembayaran'),
(167, 'authorised_by', 'Authorised By', 'Diotorisasi Oleh'),
(168, 'checked_by', 'Checked By', 'Diperiksa oleh'),
(169, 'received_by', 'Received By', 'Diterima oleh'),
(170, 'prepared_by', 'Prepared By', 'Disiapkan oleh'),
(171, 'memo_no', 'Memo No', 'Memo No'),
(172, 'website', 'Website', 'Situs web'),
(173, 'email', 'Email', 'Email'),
(174, 'invoice_details', 'Invoice Details', 'Detail Faktur'),
(175, 'reset', 'Reset', 'Reset'),
(176, 'payment_account', 'Payment Account', 'Akun pembayaran'),
(177, 'bank_name', 'Bank Name', 'Nama Bank'),
(178, 'cheque_or_pay_order_no', 'Cheque/Pay Order No', 'Cek / Bayar Nomor Pesanan'),
(179, 'payment_type', 'Payment Type', 'Tipe pembayaran'),
(180, 'payment_from', 'Payment From', 'Pembayaran Dari'),
(181, 'payment_date', 'Payment Date', 'Tanggal pembayaran'),
(182, 'add_income', 'Add Income', 'Tambah Pendapatan'),
(183, 'cash', 'Cash', 'Tunai'),
(184, 'cheque', 'Cheque', 'Memeriksa'),
(185, 'pay_order', 'Pay Order', 'Bayar Pesanan'),
(186, 'payment_to', 'Payment To', 'Pembayaran untuk'),
(187, 'total_expense_ammount', 'Total Expense Amount', 'Jumlah Pengeluaran'),
(188, 'transections', 'Transactions', 'Transaksi'),
(189, 'accounts_name', 'Accounts Name', 'Nama Akun'),
(190, 'outflow_report', 'Expense Report', 'Laporan pengeluaran'),
(191, 'inflow_report', 'Income Report', 'Laporan Pendapatan'),
(192, 'all', 'All', 'Semua'),
(193, 'account', 'Account', 'Akun'),
(194, 'from', 'From', 'Dari'),
(195, 'account_summary_report', 'Account Summary Report', 'Laporan Ringkasan Akun'),
(196, 'search_by_date', 'Search By Date', 'Cari Berdasarkan Tanggal'),
(197, 'cheque_no', 'Cheque No', 'Periksa Tidak'),
(198, 'name', 'Name', 'Nama'),
(199, 'closing_account', 'Closing Account', 'Menutup Akun'),
(200, 'close_your_account', 'Close your account', 'Tutup akun Anda'),
(201, 'last_day_closing', 'Last Day Closing', 'Penutupan Hari Terakhir'),
(202, 'cash_in', 'Cash In', 'Kas'),
(203, 'cash_out', 'Cash Out', 'Kas keluar'),
(204, 'cash_in_hand', 'Cash In Hand', 'Uang tunai di tangan'),
(205, 'add_new_bank', 'Add New Bank', 'Tambahkan Bank Baru'),
(206, 'day_closing', 'Day Closing', 'Penutupan Hari'),
(207, 'account_closing_report', 'Account Closing Report', 'Laporan Penutupan Akun'),
(208, 'last_day_ammount', 'Last Day Amount', 'Jumlah Hari Terakhir'),
(209, 'adjustment', 'Adjustment', 'Pengaturan'),
(210, 'pay_type', 'Pay Type', 'Jenis Pembayaran'),
(211, 'customer_or_manufacturer', 'Customer,Manufacturer Or Others', 'Pelanggan, Produsen, atau Lainnya'),
(212, 'transection_id', 'Transactions ID', 'Transactions ID'),
(213, 'accounts_summary_report', 'Accounts Summary Report', 'Laporan Ringkasan Akun'),
(214, 'bank_list', 'Bank List', 'Daftar Bank'),
(215, 'bank_edit', 'Bank Edit', 'Bank Edit'),
(216, 'debit_plus', 'Debit (+)', 'Debet'),
(217, 'credit_minus', 'Credit (-)', 'Kredit'),
(218, 'account_name', 'Account Name', 'Nama akun'),
(219, 'account_type', 'Account Type', 'Jenis akun'),
(220, 'account_real_name', 'Account Real Name', 'Nama Asli Akun'),
(221, 'manage_account', 'Manage Account', 'Kelola Akun'),
(222, 'company_name', 'Company Name', 'Nama Perusahaan'),
(223, 'edit_your_company_information', 'Edit your company information', 'Edit informasi perusahaan Anda'),
(224, 'company_edit', 'Company Edit', 'Perusahaan Edit'),
(225, 'admin', 'Admin', 'Admin'),
(226, 'user', 'User', 'Pengguna'),
(227, 'password', 'Password', 'Kata sandi'),
(228, 'last_name', 'Last Name', 'Nama keluarga'),
(229, 'first_name', 'First Name', 'Nama depan'),
(230, 'add_new_user_information', 'Add new user information', 'Tambahkan informasi pengguna baru'),
(231, 'user_type', 'User Type', 'Tipe Pengguna'),
(232, 'user_edit', 'User Edit', 'Edit Pengguna'),
(233, 'rtr', 'RTR', 'RTR'),
(234, 'ltr', 'LTR', 'LTR'),
(235, 'ltr_or_rtr', 'LTR/RTR', 'LTR / RTR'),
(236, 'footer_text', 'Footer Text', 'Catatan kaki'),
(237, 'favicon', 'Favicon', 'Favicon'),
(238, 'logo', 'Logo', 'Logo'),
(239, 'update_setting', 'Update Setting', 'Perbarui Pengaturan'),
(240, 'update_your_web_setting', 'Update your Web setting', 'Perbarui setelan Web Anda'),
(241, 'login', 'Login', 'Gabung'),
(242, 'your_strong_password', 'Your strong password', 'Kata sandi kuat Anda'),
(243, 'your_unique_email', 'Your unique email', 'Email unik Anda'),
(244, 'please_enter_your_login_information', 'Please enter your login information.', 'Masukkan informasi login Anda.'),
(245, 'update_profile', 'Update Profile', 'Memperbaharui profil'),
(246, 'your_profile', 'Your Profile', 'Profil kamu'),
(247, 're_type_password', 'Re-Type Password', 'Ketik Ulang Kata Sandi'),
(248, 'new_password', 'New Password', 'Kata sandi baru'),
(249, 'old_password', 'Old Password', 'Password lama'),
(250, 'new_information', 'New Information', 'Informasi baru'),
(251, 'old_information', 'Old Information', 'Informasi Lama'),
(252, 'change_your_information', 'Change your information', 'Ubah informasi Anda'),
(253, 'change_your_profile', 'Change your profile', 'Ubah profil Anda'),
(254, 'profile', 'Profile', 'Profil'),
(255, 'wrong_username_or_password', 'Wrong User Name Or Password !', 'Username atau password salah !'),
(256, 'successfully_updated', 'Successfully Updated.', 'Berhasil diperbarui.'),
(257, 'blank_field_does_not_accept', 'Blank Field Does Not Accept !', 'Bidang Kosong Tidak Menerima!'),
(258, 'successfully_changed_password', 'Successfully changed password.', 'Berhasil mengubah kata sandi.'),
(259, 'you_are_not_authorised_person', 'You are not authorised person !', 'Kamu bukan orang yang berwenang!'),
(260, 'password_and_repassword_does_not_match', 'Passwor and re-password does not match !', 'Kata sandi dan sandi ulang tidak cocok!'),
(261, 'new_password_at_least_six_character', 'New Password At Least 6 Character.', 'Kata Sandi Baru Minimal 6 Karakter.'),
(262, 'you_put_wrong_email_address', 'You put wrong email address !', 'Anda memasukkan alamat email yang salah!'),
(263, 'cheque_ammount_asjusted', 'Cheque amount adjusted.', 'Periksa jumlah yang disesuaikan.'),
(264, 'successfully_payment_paid', 'Successfully Payment Paid.', 'Pembayaran Berhasil Dibayar.'),
(265, 'successfully_added', 'Successfully Added.', 'Berhasil ditambahkan.'),
(266, 'successfully_updated_2_closing_ammount_not_changeale', 'Successfully Updated -2. Note: Closing Amount Not Changeable.', 'Berhasil Diperbarui -2. Catatan: Jumlah Penutupan Tidak Berubah. '),
(267, 'successfully_payment_received', 'Successfully Payment Received.', 'Pembayaran Berhasil Diterima.'),
(268, 'already_inserted', 'Already Inserted !', 'Sudah Disisipkan!'),
(269, 'successfully_delete', 'Successfully Delete.', 'Berhasil Hapus.'),
(270, 'successfully_created', 'Successfully Created.', 'Berhasil Dibuat.'),
(271, 'logo_not_uploaded', 'Logo not uploaded !', 'Logo tidak diunggah!'),
(272, 'favicon_not_uploaded', 'Favicon not uploaded !', 'Favicon belum diupload!'),
(273, 'manufacturer_mobile', 'Manufacturer  Mobile', 'Produsen Seluler'),
(274, 'manufacturer_address', 'Manufacturer  Address', 'Alamat Produsen'),
(275, 'manufacturer_details', 'Manufacturer Details', 'Detail Produsen'),
(276, 'add_new_manufacturer', 'Add New Manufacturer', 'Tambahkan Produsen Baru'),
(277, 'manage_suppiler', 'Manage Manufacturer', 'Kelola Produsen'),
(278, 'manage_your_manufacturer', 'Manage your Manufacturer', 'Kelola Produsen Anda'),
(279, 'manage_manufacturer_ledger', 'Manage Manufacturer', 'Kelola Produsen'),
(280, 'invoice_id', 'Invoice ID', 'ID faktur'),
(281, 'deposite_id', 'Deposit ID', 'ID Deposit'),
(282, 'manufacturer_actual_ledger', 'Manufacturer Actual Ledger', 'Manufacturer Actual Ledger'),
(283, 'manufacturer_information', 'Manufacturer Information', 'Informasi Produsen'),
(284, 'event', 'Event', 'Peristiwa'),
(285, 'add_new_income', 'Add New Income', 'Tambahkan Pendapatan Baru'),
(286, 'add_expese', 'Add Expense', 'Tambah Biaya'),
(287, 'add_new_expense', 'Add New Expense', 'Tambahkan Pengeluaran Baru'),
(288, 'total_income_ammount', 'Total Income Amount', 'Jumlah Pendapatan Total'),
(289, 'create_new_invoice', 'Create New Invoice', 'Buat Faktur Baru'),
(290, 'create_pos_invoice', 'Create POS Invoice', 'Buat Faktur POS'),
(291, 'total_profit', 'Total Profit', 'Total keuntungan'),
(292, 'monthly_progress_report', 'Monthly Progress Report', 'Laporan Bulanan'),
(293, 'total_invoice', 'Total Invoice', 'Total Faktur'),
(294, 'account_summary', 'Account Summary', 'Ringkasan Akun'),
(295, 'total_manufacturer', 'Total manufacturer', 'Total Produsen'),
(296, 'total_product', 'Total Medicine', 'Total Medicine'),
(297, 'total_customer', 'Total Customer', 'Total Pelanggan'),
(298, 'manufacturer_edit', 'Manufacturer Edit', 'Produsen Edit'),
(299, 'add_new_invoice', 'Add New Invoice', 'Tambahkan Faktur Baru'),
(300, 'add_new_purchase', 'Add new purchase', 'Tambahkan pembelian baru'),
(301, 'currency', 'Currency', 'Mata uang'),
(302, 'currency_position', 'Currency Position', 'Posisi Mata Uang'),
(303, 'left', 'Left', 'Kiri'),
(304, 'right', 'Right', 'Kanan'),
(305, 'add_tax', 'Add Tax', 'Tambahkan Pajak'),
(306, 'manage_tax', 'Manage Tax', 'Kelola Pajak'),
(307, 'add_new_tax', 'Add new tax', 'Tambahkan pajak baru'),
(308, 'enter_tax', 'Enter Tax', 'Masukkan Pajak'),
(309, 'already_exists', 'Already Exists !', 'Sudah ada !'),
(310, 'successfully_inserted', 'Successfully Inserted.', 'Berhasil Dimasukkan.'),
(311, 'tax', 'Tax', 'Pajak'),
(312, 'tax_edit', 'Tax Edit', 'Edit Pajak'),
(313, 'product_not_added', 'Medicine not added !', 'Obat tidak ditambahkan!'),
(314, 'total_tax', 'Total Tax', 'Pajak Total'),
(315, 'manage_your_manufacturer_details', 'Manage your Manufacturer', 'Kelola Produsen Anda'),
(316, 'invoice_description', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum has been the industry'),
(317, 'thank_you_for_choosing_us', 'Thank you very much for choosing us', 'Terima kasih banyak telah memilih kami'),
(318, 'billing_date', 'Billing Date', 'Tanggal tagihan'),
(319, 'billing_to', 'Billing To', 'Billing To'),
(320, 'billing_from', 'Billing From', 'Billing From'),
(321, 'you_cant_delete_this_product', 'Sorry !!  You can not delete this medicine.This medicine already used in calculation system!', 'Maaf !! Anda tidak bisa menghapus obat ini. Obat ini sudah digunakan dalam sistem kalkulasi! '),
(322, 'old_customer', 'Old Customer', 'Pelanggan Lama'),
(323, 'new_customer', 'New Customer', 'Pelanggan baru'),
(324, 'new_manufacturer', 'New Manufacturer', 'Produsen Baru'),
(325, 'old_manufacturer', 'Old Manufacturer', 'Produsen Lama'),
(326, 'credit_customer', 'Credit Customer', 'Kredit Pelanggan'),
(327, 'account_already_exists', 'This Account Already Exists !', 'Akun ini sudah ada !'),
(328, 'edit_income', 'Edit Income', 'Edit Pendapatan'),
(329, 'you_are_not_access_this_part', 'You are not authorised person !', 'Kamu bukan orang yang berwenang!'),
(330, 'account_edit', 'Account Edit', 'Edit Akun'),
(331, 'due', 'Due', 'Jatuh Tempo'),
(332, 'expense_edit', 'Expense Edit', 'Biaya Edit'),
(333, 'please_select_customer', 'Please select customer !', 'Pilih pelanggan!'),
(334, 'profit_report', 'Profit Report (Invoice Wise)', 'Laporan Laba'),
(335, 'total_profit_report', 'Total profit report', ' Laporan laba total'),
(336, 'please_enter_valid_captcha', 'Please enter valid captcha.', 'Harap masukkan captcha yang valid.'),
(337, 'category_not_selected', 'Category not selected.', 'Kategori tidak dipilih.'),
(338, 'manufacturer_not_selected', 'Manufacturer not selected.', 'Produsen tidak dipilih.'),
(339, 'please_select_product', 'Please select medicine', 'Silakan pilih obat'),
(340, 'product_model_already_exist', 'Medicine model already exist !', 'Model obat sudah ada!'),
(341, 'invoice_logo', 'Invoice Logo', 'Logo Faktur'),
(342, 'available_quantity', 'Available Quantity', 'Kuantitas Tersedia'),
(343, 'you_can_not_buy_greater_than_available_quantity', 'You can not select grater than availale quantity !', 'Anda tidak dapat memilih parutan daripada jumlah yang tersedia!'),
(344, 'customer_details', 'Customer details', 'Detil pelanggan'),
(345, 'manage_customer_details', 'Manage customer details.', 'Kelola detail pelanggan.'),
(346, 'box_size', 'Box size', 'Ukuran kotak'),
(347, 'expire_date', 'Expiry  date', 'Tanggal kadaluarsa'),
(348, 'product_location', 'Medicine  Shelf', 'Rak Obat'),
(349, 'generic_name', 'Generic name', 'Nama generik'),
(350, 'payment_method', 'Payment Method', 'Cara Pembayaran'),
(351, 'card_no', 'Card no', 'Kartu no'),
(352, 'medicine', 'Medicine', 'Obat'),
(353, 'medicine_search', 'Medicine Search', 'Pencarian Obat'),
(354, 'what_you_search', 'Enter what you search', 'Masukkan apa yang Anda cari'),
(355, 'company', 'Company', 'Perusahaan'),
(356, 'customer_search', 'Customer search', 'Pencarian pelanggan'),
(357, 'invoice_search', 'Invoice search', 'Pencarian faktur'),
(358, 'purchase_search', 'Purchase search', 'Pencarian pembelian'),
(359, 'daily_closing_report', 'Daily closing report.', 'Laporan penutupan harian.'),
(360, 'closing_search_report', 'Closing Search Report', 'Menutup Laporan Pencarian'),
(361, 'category_list', 'Category List', 'Daftar Kategori'),
(362, 'company_list', 'Company List', 'Daftar Perusahaan'),
(363, 'customers_list', 'Customer List', 'Daftar pelanggan'),
(364, 'credit_customer_list', 'Credit Customer List', 'Daftar Pelanggan Kredit'),
(365, 'previous_balance_adjustment', 'Previous Balance Adjustment', 'Penyesuaian Saldo Sebelumnya'),
(366, 'invoice_list', 'Invoice List', 'Daftar Faktur'),
(367, 'add_pos_invoice', 'Add POS Invoice', 'Tambahkan Faktur POS'),
(368, 'add_invoice', 'Add Invoice', 'Tambahkan Faktur'),
(369, 'product_list', 'Medicine List', 'Daftar Obat'),
(370, 'purchases_list', 'Purchase List', 'Daftar Pembelian'),
(371, 'purchase_list', 'Purchase List', 'Daftar Pembelian'),
(372, 'stock_list', 'Stock List', 'Daftar Saham'),
(373, 'all_report', 'All Report', 'Semua Laporan'),
(374, 'daily_sales_report', 'Daily sales Report', 'Laporan Penjualan Harian'),
(375, 'product_wise_sales_report', 'Medicine Wise Sales Report', 'Laporan Penjualan yang Bijaksana Obat'),
(376, 'bank_update', 'Bank Update', 'Pembaruan Bank'),
(377, 'account_list', 'Account List', 'Daftar Akun'),
(378, 'manufacturer_list', 'Manufacturer  List', 'Daftar Produsen'),
(379, 'manufacturer_search_item', 'Manufacturer  Search Item', 'Item Penelusuran Produsen'),
(380, 'user_list', 'User List', 'Daftar pengguna'),
(381, 'user_search_item', 'User Search Item', 'Item Pencarian Pengguna'),
(382, 'change_password', 'Change Password', 'Ganti kata sandi'),
(383, 'admin_login_area', 'Admin Login Area', 'Admin Login Area'),
(384, 'accounts_inflow_form', 'Account Inflow Form', 'Formulir Arus Masuk Akun'),
(385, 'accounts_outflow_form', 'Accounts Outflow Form', 'Formulir Arus Keluar Akun'),
(386, 'accounts_tax_form', 'Accounts Tax Form', 'Formulir Pajak Akun'),
(387, 'accounts_manage_tax', 'Accounts Manage Tax', 'Kelola Akun Pajak'),
(388, 'accounts_tax_edit', 'Accounts Tax Edit', 'Edit Pajak Akun'),
(389, 'accounts_summary_data', 'Accounts Summary Data', 'Data Ringkasan Akun'),
(390, 'accounts_details_data', 'Accounts Details Data', 'Data Detail Akun'),
(391, 'datewise_summary_data', 'Datewise Summary Data', 'Data Ringkasan Data'),
(392, 'accounts_cheque_manager', 'Account Cheque Manager', 'Manajer Pemeriksaan Akun'),
(393, 'accounts_edit_data', 'Accounts Edit Data', 'Data Edit Akun'),
(394, 'print_barcode', 'Print Barcode', 'Cetak Barcode'),
(395, 'print_qrcode', 'Print Qrcode', 'Cetak QRCode'),
(396, 'add_new_account', 'Add New Account', 'Tambahkan Akun Baru'),
(397, 'table_edit', 'Table Edit', 'Edit Tabel'),
(398, 'secret_key', 'Secret Key', 'Kunci rahasia'),
(399, 'site_key', 'Site Key', 'Kunci Situs'),
(400, 'captcha', 'Captcha', 'Captcha'),
(401, 'please_add_walking_customer_for_default_customer', 'Please add walking customer for default customer. ', 'Harap tambahkan pelanggan berjalan untuk pelanggan default. '),
(402, 'barcode_qrcode_scan_here', 'Barcode Or QRcode scan here', 'Pindai kode batang atau kode QR di sini'),
(403, 'manage_your_credit_customer', 'Manage your credit customer', 'Kelola pelanggan kredit Anda'),
(404, 'unit', 'Unit', 'Satuan'),
(405, 'total_discount', 'Total Discount', 'Diskon Total'),
(406, 'meter_m', 'Meter (M)', 'Meter'),
(407, 'piece_pc', 'Piece (Pc)', 'PCS'),
(408, 'kilogram_kg', 'Kilogram (Kg)', 'Kilogram'),
(409, 'import_product_csv', 'Import Medicine (CSV)', 'Impor Obat (CSV)'),
(410, 'close', 'Close', 'Tutup'),
(411, 'csv_file_informaion', 'File Information (CSV)', 'Informasi File'),
(412, 'download_example_file', 'Download Example File', 'Unduh Contoh File '),
(413, 'upload_csv_file', 'Upload CSV File', 'Unggah File CSV'),
(414, 'manufacturer_id', 'Manufacturer ID', 'ID Produsen'),
(415, 'category_id', 'Category ID', 'ID Kategori'),
(416, 'are_you_sure_to_delete', 'Are you sure,want to delete ?', 'Apakah Anda yakin ingin menghapus?'),
(417, 'stock_report_manufacturer_wise', 'Stock Report (Manufacturer Wise)', 'Laporan Stok'),
(418, 'stock_report_product_wise', 'Stock Report (Medicine Wise)', 'Laporan Stok'),
(419, 'select_manufacturer', 'Select Manufacturer', 'Pilih Produsen'),
(420, 'select_product', 'Select Medicine ', 'Pilih Obat'),
(421, 'phone', 'Phone', 'Telepon'),
(422, 'in_quantity', 'In Quantity', 'Dalam Kuantitas'),
(423, 'out_quantity', 'Sold QTY', 'Terjual QTY'),
(424, 'in_taka', 'In Taka', 'Di Taka'),
(425, 'out_taka', 'Out Taka', 'Keluar Taka'),
(426, 'data_synchronizer', 'Data Synchronizer', 'Sinkronisasi Data'),
(427, 'synchronize', 'Synchronize', 'Sinkronisasi'),
(428, 'backup_restore', 'Backup And Restore', 'Cadangkan dan Pulihkan'),
(429, 'synchronizer_setting', 'Synchronizer Setting', 'Pengaturan Sinkronisasi'),
(430, 'backup_and_restore', 'Backup And Restore', 'Cadangkan dan Pulihkan'),
(431, 'hostname', 'Host Name', 'Nama Host'),
(432, 'username', 'User Name', 'Nama pengguna'),
(433, 'ftp_port', 'FTP Port', 'Port FTP'),
(434, 'ftp_debug', 'FTP Debug', 'FTP Debug'),
(435, 'project_root', 'Project Root', 'Project Root'),
(436, 'internet_connection', 'Internet connection', 'Koneksi internet'),
(437, 'ok', 'Ok', 'Baik'),
(438, 'not_available', 'Not available', 'Tidak tersedia'),
(439, 'outgoing_file', 'Outgoing File', 'File Keluar'),
(440, 'available', 'Available', 'Tersedia'),
(441, 'incoming_file', 'Incoming file', 'File masuk'),
(442, 'data_upload_to_server', 'Data upload to server', 'Unggah data ke server'),
(443, 'download_data_from_server', 'Download data from server', 'Unduh data dari server'),
(444, 'data_import_to_database', 'Data import to database', 'Impor data ke database'),
(445, 'please_wait', 'Please Wait', 'Mohon tunggu'),
(446, 'ooops_something_went_wrong', 'Ooops something went wrong', 'Ups, ada yang tidak beres'),
(447, 'file_information', 'File Information', 'Informasi File'),
(448, 'size', 'Size', 'Ukuran'),
(449, 'backup_date', 'Backup date', 'Tanggal cadangan'),
(450, 'backup_now', 'Backup Now', 'Cadangkan Sekarang'),
(451, 'are_you_sure', 'Are you sure ?', 'Apakah kamu yakin?'),
(452, 'download', 'Downlaod', 'Downlaod'),
(453, 'database_backup', 'Database Backup', 'Pencadangan Database'),
(454, 'backup_successfully', 'Backup Successfully', 'Cadangan Berhasil'),
(455, 'please_try_again', 'Please Try Again', 'Silakan Coba Lagi'),
(456, 'restore_successfully', 'Restore successfully', 'Berhasil pulih'),
(457, 'download_successfully', 'Download Successfully', 'Unduh Berhasil'),
(458, 'delete_successfully', 'Delete Successfully', 'Hapus Berhasil'),
(459, 'ftp_setting', 'FTP Setting', 'Pengaturan FTP'),
(460, 'save_successfully', 'Save successfully', 'Berhasil disimpan'),
(461, 'upload_successfully', 'Upload successfully.', 'Unggah berhasil.'),
(462, 'unable_to_upload_file_please_check_configuration', 'unable to upload file please check configuration.', 'tidak dapat mengunggah file, harap periksa konfigurasi.'),
(463, 'please_configure_synchronizer_settings', 'Please Configure Synchronizer Settings ', 'Harap Konfigurasikan Pengaturan Sinkronisasi'),
(464, 'unable_to_download_file_please_check_configuration', 'Unable To Download File,Please Check Configuration.', 'Tidak Dapat Mengunduh File, Harap Periksa Konfigurasi.'),
(465, 'data_import_first', 'Data Import First', 'Impor Data Dulu'),
(466, 'data_import_successfully', 'Data Import Successfully', 'Impor Data Berhasil'),
(467, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data please check config or sql file.', 'Tidak dapat mengimpor data, harap periksa file config atau sql.'),
(468, 'restore_now', 'Restore Now', 'Pulihkan Sekarang'),
(469, 'out_of_stock', 'Out Of Stock', 'Stok Habis'),
(470, 'others', 'Others', 'Lainnya'),
(471, 'shelf', 'Shelf', 'Rak'),
(472, 'discount_type', 'Discount Type ', 'Jenis Diskon'),
(473, 'discount_percentage', 'Discount', 'Diskon'),
(474, 'fixed_dis', 'Fixed Dis', 'Fixed Dis'),
(475, 'full_paid', 'Full Paid', 'Bayar Penuh'),
(476, 'available_qnty', 'Ava.Qty', 'Ava.Qty'),
(477, 'stock_ctn', 'Stock/Qnt', 'Stok / Qnt'),
(478, 'sale_price', 'Sale Price', 'Harga penjualan'),
(479, 'manufacturer_rate', 'Manufacturer  Price', 'Harga Pabrikan'),
(480, 'please_upload_image_type', 'Sorry!!! Please Upload jpg,jpeg,png,gif typeimage', 'Maaf!!! Silakan Unggah gambar jenis jpg, jpeg, png, gif '),
(481, 'ml', 'Milli liter(ml)', 'Mili liter'),
(482, 'mg', 'Milli Gram(mg)', 'Milli Gram'),
(483, 'you_can_not_buy_greater_than_available_qnty', 'You can not sale more than available quantity ! please purchase this Product', 'Anda tidak dapat menjual lebih dari jumlah yang tersedia! tolong beli Produk ini '),
(484, 'due_amount', 'Due Amount', 'Jumlah yang Harus Dibayar'),
(485, 'return_invoice', 'Return Invoice', 'Return Invoice'),
(486, 'sold_qty', 'Sold Qty', 'Terjual Qty'),
(487, 'ret_quantity', 'Return QTY', 'Kembalikan QTY'),
(488, 'deduction', 'Deduction', 'Deduksi'),
(489, 'return', 'Return', 'Retur'),
(490, 'note', 'Return Reasone', 'Return Reasone'),
(491, 'usablilties', 'Return Usability', 'Kembalikan Kegunaan'),
(492, 'adjs_with_stck', 'Adjust With Stock', 'Sesuaikan Dengan Stok'),
(493, 'return_to_manufacturer', 'Return To Manufacturer', 'Kembali ke Produsen'),
(494, 'wastage', 'Wastage', 'Pemborosan'),
(495, 'to_deduction', 'Total Deduction', 'Potongan Total'),
(496, 'nt_return', 'Net Return', 'Pengembalian Bersih'),
(497, 'return_id', 'Return Id', 'Return Id'),
(498, 'return_details', 'Return Details', 'Detail Pengembalian'),
(499, 'add_return', 'Add Return', 'Tambahkan Pengembalian'),
(500, 'return_list', 'Return List', 'Daftar Kembali'),
(501, 'stock_return_list', 'Stock Return List', 'Daftar Pengembalian Saham'),
(502, 'wastage_return_list', 'Wastage Return List', 'Daftar Pengembalian Sampah'),
(503, 'check_return', 'Check Return', 'Periksa Kembali'),
(504, 'quantity_must_be_fillup', 'Return Quantity Must be Fill Up', 'Kuantitas Pengembalian Harus Diisi'),
(505, 'expeire_date', 'Expiry  date', 'Tanggal kadaluarsa'),
(506, 'batch_id', 'Batch ID', 'ID Batch'),
(507, 'manufacturer_return_list', 'Manufacturer  Return List', 'Daftar Pengembalian Produsen'),
(508, 'c_r_slist', 'Customer Return List ', 'Daftar Pengembalian Pelanggan'),
(509, 'manufacturer_return', 'Manufacturer  Return ', 'Pengembalian Produsen'),
(510, 'wastage_list', 'Wastage List', 'Daftar Sampah'),
(511, 'in_qnty', 'In Quantity', 'Dalam Kuantitas'),
(512, 'out_qnty', 'Sold QTY', 'QTY Terjual'),
(513, 'stock_sale', 'Stock Sell Price', 'Harga Jual Saham'),
(514, 'add_product_csv', 'Import Medicine (CSV)', 'Impor Obat'),
(515, 'purchase_id', 'Purchase ID', 'ID Pembelian'),
(516, 'add_payment', 'Add Payment', 'Tambahkan Pembayaran'),
(517, 'add_new_payment', 'Add new Payment', 'Tambahkan Pembayaran baru'),
(518, 'transaction', 'Transaction', 'Transaksi'),
(519, 'manage_transaction', 'Manage Transaction', 'Kelola Transaksi'),
(520, 'choose_transaction', 'Choose Transaction', 'Pilih Transaksi'),
(521, 'receipt', 'Receipt', 'Resi'),
(522, 'payment', 'Payment', 'Pembayaran'),
(523, 'transaction_categry', 'Transaction Category', 'Kategori Transaksi'),
(524, 'transaction_mood', 'Transaction Mood', 'Transaction Mood'),
(525, 'payment_amount', 'Payment Amount', 'Jumlah pembayaran'),
(526, 'receipt_amount', 'Receipt Amount', 'Jumlah Tanda Terima'),
(527, 'daily_summary', 'Daily Summary', 'Ringkasan Harian'),
(528, 'daily_cash_flow', 'Daily  Cashflow', 'Arus Kas Harian'),
(529, 'custom_report', 'Custom Report', 'Laporan Kustom'),
(530, 'root_account', 'Root Account', 'Akun Root'),
(531, 'office', 'Office', 'Kantor'),
(532, 'loan', 'Loan', 'Pinjaman'),
(533, 'successfully_saved', 'Successfully Saved', 'Berhasil Disimpan'),
(534, 'bank', 'Bank', 'Bank'),
(535, 'bank_transaction', 'Bank Transaction', 'Transaksi bank'),
(536, 'office_loan', 'Office Loan', 'Pinjaman Kantor'),
(537, 'add_person', 'Add Person', 'Tambahkan Orang'),
(538, 'manage_loan', 'Manage Person', 'Kelola Orang'),
(539, 'add_loan', 'Add Loan', 'Tambahkan Pinjaman'),
(540, 'ac_name', 'Account Name', 'Nama akun'),
(541, 'ac_no', 'Account No', 'No rekening'),
(542, 'branch', 'Branch', 'Cabang'),
(543, 'signature_pic', 'Signature ', 'Tanda tangan'),
(544, 'withdraw_deposite_id', 'Withdraw Deposit ID', 'Tarik ID Setoran'),
(545, 'select_report', 'Select Report', 'Pilih Laporan'),
(546, 'per_qty', 'Purchase Qty', 'Beli Qty'),
(547, 'stock_report_batch_wise', 'Stock Report(Batch Wise)', 'Laporan Saham'),
(548, 'box', 'Box', 'Kotak '),
(549, 'gram', 'Gram', 'Gram'),
(550, 'profit_report_manufacturer_wise', 'Profit/Loss Report(Manufacturer)', 'Laporan Untung / Rugi'),
(551, 'calculate', 'Calculate', 'Hitung'),
(552, 'profit_report_product_wise', 'Profit/Loss  Report Product Wise', 'Laporan Untung / Rugi Produk Bijak'),
(553, 'view_report', 'View Report', 'Melihat laporan'),
(554, 'report_for', 'Report For', 'Laporan untuk'),
(555, 'total_sale_qty', 'Total Sale QTY', 'Total Penjualan QTY'),
(556, 'total_purchase_pric', 'Total purchase Price', 'Harga Pembelian Total'),
(557, 'total_sale', 'Total Sale', 'Penjualan Total'),
(558, 'net_profit', 'Net Profit', 'Laba bersih'),
(559, 'loss', 'Loss', 'Kerugian'),
(560, 'product_type', 'Medicine Type', 'Jenis Obat'),
(561, 'add_type', 'Add Medicine Type', 'Tambahkan Jenis Obat'),
(562, 'add_new_type', 'Add New Medicine  Type', 'Tambahkan Jenis Obat Baru'),
(563, 'type', 'Type', 'Tipe'),
(564, 'type_name', 'Type Name', 'Ketik nama'),
(565, 'manage_type', 'Manage Medicine Type', 'Kelola Jenis Obat'),
(566, 'type_id', 'Type Id', 'Type Id'),
(567, 'type_edit', 'Edit Type', 'Edit Jenis'),
(568, 'profitloss', 'profit/Loss', 'rugi laba'),
(569, 'manufacturer_wise', 'Manufacturer Wise', 'Produsen Bijaksana'),
(570, 'product_wise', 'Medicine Wise', 'Medicine Wise'),
(571, 'medicine_info', 'Medicine Information', 'Informasi Kedokteran'),
(572, 'choose_another_invno', 'Choose Another Invoice No !!', 'Pilih Nomor Faktur Lain !!'),
(573, 'return_manufacturers', 'Return Manufacturers', 'Produsen Pengembalian'),
(574, 'return_manufacturer', 'Return Manufacturers', 'Produsen Pengembalian'),
(575, 'please_input_correct_invoice_no', 'Please Input Correct Invoice No', 'Harap Masukkan Nomor Faktur yang Benar'),
(576, 'stock_purchase_price', 'Stock Purchase Price', 'Harga Pembelian Saham'),
(577, 'manufacturer_returns', 'Manufacturer  Return ', 'Pengembalian Produsen'),
(578, 'invoice_discount', 'Invoice Discount', 'Diskon Faktur'),
(579, 'qty', 'Qty', 'Qty'),
(580, 'discounts', 'Discount', 'Diskon'),
(581, 'sub_total', 'Sub Total', 'Sub Total'),
(582, 'paid', 'Paid', 'Berbayar'),
(583, 'change', 'Change', 'Perubahan'),
(584, 'purchase_price', 'Purchase Price', 'Harga pembelian'),
(585, 'expiry', 'Expiry', 'Kedaluwarsa'),
(586, 'batch', 'Batch', 'Batch'),
(587, 'role_permission', 'Role Permission', 'Izin Peran'),
(588, 'user_assign_role', 'Assign  User Role', 'Tetapkan Peran Pengguna'),
(589, 'permission', 'Permission', 'Izin'),
(590, 'personal_loan', 'Personal Loan', 'Pinjaman Pribadi'),
(591, 'role_name', 'Role Name', 'Nama peran'),
(592, 'create', 'Create', 'Membuat'),
(593, 'read', 'Read', 'Baca'),
(594, 'add_role', 'Add Role', 'Tambahkan Peran'),
(595, 'You do not have permission to access. Please contact with administrator.', 'You do not have permission to access. Please contact with administrator.', 'Anda tidak memiliki izin untuk mengakses. Silakan kontak dengan administrator. '),
(596, 'role_permission_added_successfully', 'Role Permission Added successfully.', 'Izin Peran berhasil ditambahkan.'),
(597, 'role_list', 'Role List', 'Daftar Peran'),
(598, 'role_permission_updated_successfully', 'Role Permission Updated Successfully.', 'Izin Peran Berhasil Diperbarui.'),
(599, 'add_phrase', 'Add Phrase', 'Tambahkan Frasa'),
(600, 'language_home', 'Language Home', 'Beranda Bahasa'),
(601, 'phrase_edit', 'Phrase Edit', 'Edit Frasa'),
(602, 'no_role_selected', 'No Role Selected', 'Tidak Ada Peran yang Dipilih'),
(603, 'category_added_successfully', 'Category added successfully', 'Kategori berhasil ditambahkan'),
(604, 'category_already_exist', 'Category already exist', 'Kategori sudah ada'),
(605, 'select_manufacturer', 'Select Manufacturer', 'Pilih Produsen'),
(607, 'select_tax', 'Select Tax', 'Pilih Pajak'),
(608, 'must_input_numbers', 'Must input numbers', 'Harus memasukkan angka'),
(609, 'please_check_your_price', 'Please Check Your Price', 'Silakan Periksa Harga Anda'),
(610, 'your_profit_is', 'Your Profit is', 'Keuntungan Anda adalah'),
(611, 'failed', 'Failed', 'Gagal'),
(612, 'you_have_reached_the_limit_of_adding', 'You have reached the limit of adding', 'Anda telah mencapai batas penambahan'),
(613, 'inputs', 'inputs', 'masukan'),
(614, 'expiry_date_should_be_greater_than_puchase_date', 'Expiry Date should be greater than Puchase Date', 'Tanggal Kedaluwarsa harus lebih besar dari Tanggal Puchase'),
(615, 'expiry_date_should_be_greater_than_puchase_date', 'Expiry Date should be greater than Puchase Date', 'Tanggal Kedaluwarsa harus lebih besar dari Tanggal Puchase'),
(616, 'product_name', 'Medicine Name', 'Nama Obat'),
(617, 'total_quantity', 'Total Quantity', 'Jumlah total'),
(618, 'rates', 'Rate', 'Menilai'),
(619, 'total_amount', 'Total Amount', 'Jumlah total'),
(621, 'receipt_detail', 'Receipt Detail', 'Detail Tanda Terima'),
(622, 'amount', 'Amount', 'Jumlah'),
(623, 'save_and_add_another_one', 'Save and add another one', 'Simpan dan tambahkan satu sama lain'),
(624, 'checque_number', 'Checque Number', 'Nomor Checque'),
(625, 'edit_receipt', 'Edit Receipt', 'Edit Tanda Terima'),
(626, 'receipt_list', 'Receipt List', 'Daftar Tanda Terima'),
(627, 'search_by_customer_name', 'Search By Customer Name', 'Cari Berdasarkan Nama Pelanggan'),
(628, 'actions', 'Actions', 'Tindakan'),
(629, 'no_data_found', 'No Data Found', 'Tidak ada data ditemukan'),
(630, 'edit', 'Edit', 'Edit'),
(631, 'product_not_found', 'Medicine  not found', 'Obat tidak ditemukan'),
(632, 'request_failed_please_check_your_code_and_try_again', 'Request Failed, Please check your code and try again', 'Permintaan Gagal, Harap periksa kode Anda dan coba lagi'),
(633, 'You_can_not_return_more_than_sold_quantity', 'You Can Not Return More than Sold quantity', 'Anda Tidak Dapat Mengembalikan Lebih dari jumlah Terjual'),
(634, 'you_can_not_return_less_than_1', 'You Can Not Return Less than 1', 'Anda Tidak Dapat Mengembalikan Kurang dari 1'),
(635, 'transection_details', 'Transection Details', 'Detail Transeksi'),
(636, 'transection_details_datewise', 'Transection  Details Datewise', 'Data Detail Transeksi'),
(637, 'transection_id', 'Transactions ID', 'Transactions ID'),
(638, 'select_option', 'Select Option', 'Pilih opsi'),
(639, 'loan_list', 'Loan List', 'Daftar pinjaman'),
(640, 'todays_details', 'Todays Details', 'Detail Hari Ini'),
(641, 'transaction_details', 'Transaction Details', 'Detil transaksi'),
(642, 'person_id', 'Person ID', 'ID Orang'),
(643, 'total_transection', 'Total Transection', 'Total Transeksi'),
(644, 'transaction_id', 'Transaction ID', 'ID transaksi'),
(645, 'transection_report', 'Transection Report', 'Laporan Transeksi'),
(646, 'add_transection', 'Add Transection', 'Tambahkan Transeksi'),
(647, 'manage_transection', 'Manage Transection', 'Kelola Transeksi'),
(648, 'select_id', 'Select ID', 'Pilih ID'),
(649, 'choose_transection', 'Choose Transection', 'Pilih Transeksi'),
(650, 'update_transection', 'Update Transection', 'Perbarui Transeksi'),
(651, 'manufacturer_all', 'Manufacturer All', 'Pabrikan Semua'),
(652, 'select_all', 'Select All', 'Pilih Semua'),
(653, 'all', 'All', 'Semua'),
(654, 'max_rate', 'Max Rate', 'Tingkat Maks'),
(655, 'min_rate', 'Min Rate', 'Tingkat Min'),
(656, 'average_rate', 'Average Rate', 'Harga rata-rata'),
(657, 'date_expired_please_choose_another.', 'Date Expired!! Please Choose another', 'Tanggal Kedaluwarsa !! Silakan Pilih yang lain '),
(658, 'your_medicine_is_date_expiry_Please_choose_another', 'Your Medicine is Date Expiry !! Please Choose another', 'Obat Anda Tanggal Kedaluwarsa !! Silakan Pilih yang lain '),
(659, 'meno', 'MEMO', 'MEMO'),
(660, 'out_of_stock_and_date_expired_medicine', 'Out of Stock and Date Expired Medicine', 'Obat Habis dan Tanggal Kadaluarsa'),
(661, 'edit_profile', 'Edit Profile', 'Sunting profil'),
(662, 'deposit_detail', 'Deposit detail', 'Detail deposit'),
(663, 'new_deposit', 'New Deposit', 'Deposit Baru'),
(664, 'edit_deposit', 'Edit Deposit', 'Edit Deposit'),
(665, 'select_customer', 'Select Customer', 'Pilih Pelanggan'),
(666, 'draw', 'Draw', 'Seri'),
(667, 'deposit', 'Deposit', 'Menyetorkan'),
(668, 'select_type', 'Select Type', 'Pilih tipe'),
(669, 'transaction_type', 'Transaction Type', 'Tipe transaksi'),
(670, 'cash', 'Cash', 'Tunai'),
(671, 'select_bank', 'Select Bank', 'Pilih Bank'),
(672, 'drawing', 'Drawing', 'Gambar'),
(673, 'expenses', 'Expenses', 'Beban'),
(674, 'banking', 'Banking', 'Perbankan'),
(675, 'daily_closing', 'Daily Closing', 'Penutupan Harian'),
(676, 'title', 'Title', 'Judul'),
(677, 'error_get_data_from_ajax', 'Error get data from ajax', 'Kesalahan mendapatkan data dari ajax'),
(678, 'toggle_navigation', 'Toggle Navigation', 'Toggle Navigation'),
(679, 'this_product_not_found', 'This Medicine  Not Found !', 'Obat Ini Tidak Ditemukan!'),
(680, 'search_by_date_from', 'Search By Date: From', 'Cari Berdasarkan Tanggal: Dari'),
(681, 'manufacturer_sales_report', 'Manufacturer Sales Report', 'Laporan Penjualan Produsen'),
(682, 'transection', 'Transection', 'Penampang lintang'),
(683, 'transection_mood', 'Transection Mood', 'Suasana Transeksi'),
(684, 'transection_categry', 'Transection Categry', 'Kategori Transeksi'),
(685, 'export_csv', 'Export CSV', 'Ekspor CSV'),
(686, 'select manufacturer', 'Select Manufacturer', 'Select Manufacturer '),
(687, 'customer_return', 'Customer Return', 'Pengembalian Pelanggan'),
(688, 'return_form', 'Return Form', 'Formulir Pengembalian'),
(689, 'data_not_found', 'Data Not Found', 'Data Tidak Ditemukan'),
(690, 'export_csv', 'Export CSV', 'Ekspor CSV'),
(691, 'manage_person', 'Manage Person', 'Kelola Orang'),
(692, 'backup', 'Back Up', 'Back Up'),
(693, 'total_balance', 'Total Balance', 'Saldo Total'),
(694, 'product_id_model_manufacturer_id_can_not_null', 'Medicine Id & Medicine Type & Manufacturer Id Can not be Blank', 'Id Obat & Jenis Obat & Id Produsen Tidak Bisa Kosong'),
(695, 'product_name_can_not_be_null', 'Medicine  Name can Not be Blank', 'Nama Obat Tidak Bisa Kosong'),
(696, 'product_model_can_not_be_null', 'Medicine  Model Can Not be Blank', 'Model Obat Tidak Bisa Kosong'),
(697, 'sms', 'SMS', 'SMS'),
(698, 'sms_configure', 'Sms Configuration', 'Konfigurasi Sms'),
(699, 'url', 'Url', 'Url'),
(700, 'sender_id', 'Sender ID', 'ID pengirim'),
(701, 'api_key', 'Api Key', 'Kunci API'),
(702, 'barcode_or_qrcode', 'Barcode Or QRcode ', 'Barcode atau QRcode'),
(703, 'currency_name', 'Currency Name', 'Nama Mata Uang'),
(704, 'add_currency', 'Add Currency', 'Tambahkan Mata Uang'),
(705, 'currency_icon', 'Currency Icon', 'Ikon Mata Uang'),
(706, 'currency_list', 'Currency List', 'Daftar Mata Uang'),
(707, 'import', 'Import', 'Impor'),
(708, 'c_o_a', 'Chart Of Account', 'Akun'),
(709, 'supplier_payment', 'Supplier Payment', 'Pembayaran Pemasok'),
(710, 'customer_receive', 'Customer Receive', 'Pelanggan Menerima'),
(711, 'debit_voucher', 'Debit Voucher', 'Voucher Debit'),
(712, 'credit_voucher', 'Credit voucher', 'Voucher kredit'),
(713, 'voucher_approval', 'Voucher Approval', 'Persetujuan Voucher'),
(714, 'contra_voucher', 'Contra Voucher', 'Contra Voucher'),
(715, 'journal_voucher', 'Journal Voucher', 'Voucher Jurnal'),
(716, 'voucher_report', 'Voucher Report', 'Laporan Voucher'),
(717, 'cash_book', 'Cash Book', 'Buku Tunai'),
(718, 'inventory_ledger', 'Inventory Ledger', 'Buku Besar Inventaris'),
(719, 'bank_book', 'Bank Book', 'Buku bank'),
(720, 'general_ledger', 'General Ledger', 'Jurnal umum'),
(721, 'trial_balance', 'Trial Balance', 'Neraca saldo'),
(722, 'profit_loss_report', 'Profit Loss Report', 'Laporan Rugi Laba'),
(723, 'cash_flow', 'Cash Flow', 'Arus kas'),
(724, 'coa_print', 'COA Print', 'Cetak COA'),
(725, 'manufacturer_payment', 'Manufacturer Payment', 'Pembayaran Produsen'),
(726, 'add_more', 'Add More', 'Tambahkan Lebih Banyak'),
(727, 'code', 'Code', 'Kode'),
(728, 'remark', 'Transaction Details', 'Detil transaksi'),
(729, 'voucher_no', 'Voucher NO', 'Voucher TIDAK'),
(730, 'accounts_tree_view', 'Accounts Tree view', 'Tampilan Pohon Akun'),
(731, 'find', 'Find', 'Temukan'),
(732, 'voucher_type', 'Voucher Type', 'Jenis Voucher'),
(733, 'particulars', 'Particulars', 'Detail'),
(734, 'cash_flow_statement', 'Cash Flow Statement', 'Laporan arus kas'),
(735, 'amount_in_dollar', 'Amount In Dollar', 'Jumlah Dalam Dolar'),
(736, 'opening_cash_and_equivalent', 'Opening Cash and Equivalent', 'Membuka Uang Tunai dan Setara'),
(737, 'with_details', 'With Details', 'Dengan rincian'),
(738, 'transaction_head', 'Transaction Head', 'Kepala Transaksi'),
(739, 'gl_head', 'General Ledger Head', 'Kepala Buku Besar'),
(740, 'no_report', 'No Report', 'Tidak Ada Laporan'),
(741, 'pre_balance', 'Pre Balance', 'Pra Saldo'),
(742, 'current_balance', 'Current Balance', 'Saldo saat ini'),
(743, 'from_date', 'From Date', 'Dari tanggal'),
(744, 'to_date', 'To Date', 'Sampai Tanggal'),
(745, 'profit_loss', 'Profit Loss Statement', 'Laporan Laba Rugi'),
(746, 'add_expense_item', 'Add Expense Item', 'Tambahkan Item Biaya'),
(747, 'manage_expense_item', 'Manage Expense Item', 'Kelola Item Pengeluaran'),
(748, 'add_expense', 'Add Expense', 'Tambah Biaya'),
(749, 'manage_expense', 'Manage Expense', 'Kelola Pengeluaran'),
(750, 'expense_statement', 'Expense Statement', 'Pernyataan Biaya'),
(751, 'expense_type', 'Expense Type', 'Jenis Pengeluaran'),
(752, 'expense_item_name', 'Expense Item Name', 'Nama Item Biaya'),
(753, 'opening_balance', 'Opening Balance', 'Saldo awal'),
(754, 'tax_settings', 'Tax Settings', 'Pengaturan Pajak'),
(755, 'add_incometax', 'Add Income Tax', 'Tambahkan Pajak Pendapatan'),
(756, 'manage_income_tax', 'Manage Income tax', 'Kelola pajak penghasilan'),
(757, 'tax_report', 'Tax Report', 'Laporan Pajak'),
(758, 'invoice_wise_tax_report', 'Invoice Wise Tax Report', 'Invoice Wise Tax Report'),
(759, 'number_of_tax', 'Number of Tax', 'Jumlah Pajak'),
(760, 'default_value', 'Default Value', 'Nilai Default'),
(761, 'reg_no', 'Registration No', 'No Registrasi'),
(762, 'tax_name', 'Tax Name', 'Nama Pajak'),
(763, 'service_id', 'Service Id', 'Id Layanan'),
(764, 'service', 'Service', 'Layanan'),
(765, 'add_service', 'Add Service', 'Tambahkan Layanan'),
(766, 'manage_service', 'Manage Service', 'Kelola Layanan'),
(767, 'service_invoice', 'Service Invoice', 'Faktur Layanan'),
(768, 'manage_service_invoice', 'Manage Service Invoice', 'Kelola Faktur Layanan'),
(769, 'service_name', 'Service Name', 'Nama layanan'),
(770, 'charge', 'Charge', 'Biaya'),
(771, 'add', 'Add', 'Menambahkan'),
(772, 'previous', 'Previous', 'Sebelumnya'),
(773, 'net_total', 'Net Total', 'Total Bersih'),
(774, 'hanging_over', 'Estimated Time Of Departure', 'Perkiraan Waktu Keberangkatan'),
(775, 'service_discount', 'Service Discount', 'Diskon Layanan'),
(776, 'hrm', 'HRM', 'HRM'),
(777, 'add_designation', 'Add Designation', 'Tambahkan Penunjukan'),
(778, 'manage_designation', 'Manage Designation', 'Kelola Penunjukan'),
(779, 'add_employee', 'Add Employee', 'Tambah Karyawan'),
(780, 'manage_employee', 'Manage Employee', 'Kelola Karyawan'),
(781, 'attendance', 'Attendance', 'Kehadiran'),
(782, 'add_attendance', 'Add Attendance', 'Tambah Kehadiran'),
(783, 'manage_attendance', 'Manage Attendance', 'Kelola Kehadiran'),
(784, 'attendance_report', 'Attendance Report', 'Laporan kehadiran'),
(785, 'payroll', 'Payroll', 'Daftar gaji'),
(786, 'add_benefits', 'Add Benefits', 'Tambah Manfaat'),
(787, 'manage_benefits', 'Manage Benefits', 'Kelola Manfaat'),
(788, 'add_salary_setup', 'Add Salary Setup', 'Tambahkan Pengaturan Gaji'),
(789, 'manage_salary_setup', 'Manage Salary Setup', 'Kelola Pengaturan Gaji'),
(790, 'salary_generate', 'Salary Generate', 'Gaji Hasilkan'),
(791, 'manage_salary_generate', 'Manage Salary Generate', 'Kelola Gaji Hasilkan'),
(792, 'salary_payment', 'Salary Payment', 'Pembayaran Gaji'),
(793, 'designation', 'Designation', 'Penunjukan'),
(794, 'rate_type', 'Rate Type', 'Jenis Tarif'),
(795, 'hour_rate_or_salary', 'Hourly Rate/Salary', 'Tarif / Gaji Per Jam'),
(796, 'blood_group', 'Blood Group', 'Golongan darah'),
(797, 'address_line_1', 'Address Line 1', 'Baris Alamat 1'),
(798, 'address_line_2', 'Address Line 2', 'Alamat Baris 2'),
(799, 'picture', 'Picture', 'Gambar'),
(800, 'country', 'Country', 'Negara'),
(801, 'city', 'City', 'Kota'),
(802, 'zip', 'Zip code', 'Kode Pos'),
(803, 'single_checkin', 'Single Check In', 'Single Check In'),
(804, 'bulk_checkin', 'Bulk Check In', 'Check In Massal'),
(805, 'checkin', 'Check In', 'Mendaftar'),
(806, 'employee_name', 'Employee Name', 'Nama karyawan'),
(807, 'check_in', 'Check In', 'Mendaftar'),
(808, 'checkout', 'Check Out', 'Periksa'),
(809, 'confirm_clock', 'Confirm Clock', 'Konfirmasi Jam'),
(810, 'stay', 'Stay', 'Tinggal'),
(811, 'download_sample_file', 'Download Sample File', 'Unduh File Contoh');
INSERT INTO `language` (`id`, `phrase`, `english`, `bahasa`) VALUES
(812, 'employee', 'Employee', 'Karyawan'),
(813, 'sign_in', 'Check In', 'Mendaftar'),
(814, 'sign_out', 'Check  Out', 'Periksa'),
(815, 'staytime', 'Stay Time', 'Tetap Waktu'),
(816, 'benefits_list', 'Benefit List', 'Daftar Manfaat'),
(817, 'benefits', 'Benefits', 'Manfaat'),
(818, 'benefit_type', 'Benefit Type', 'Jenis Manfaat'),
(819, 'salary_benefits', 'Salary Benefits', 'Manfaat Gaji'),
(820, 'salary_benefits_type', 'Salary Benefits Type', 'Jenis Manfaat Gaji'),
(821, 'hourly', 'Hourly', 'Per jam'),
(822, 'salary', 'Salary', 'Gaji'),
(823, 'timezone', 'Time Zone', 'Zona waktu'),
(824, 'request', 'Request', 'Permintaan'),
(825, 'datewise_report', 'Date Wise Report', 'Date Wise Report'),
(826, 'work_hour', 'Work Hours', 'Jam kerja'),
(827, 'employee_wise_report', 'Employee Wise Report', 'Laporan Bijaksana Karyawan'),
(828, 'date_in_time_report', 'In Time Report', 'In Time Report'),
(829, 'successfully_checkout', 'Successfully Checked Out', 'Berhasil Diperiksa'),
(830, 'setup_tax', 'Setup Tax', 'Setup Tax'),
(831, 'start_amount', 'Start Amount', 'Jumlah Awal'),
(832, 'end_amount', 'End Amount', 'Jumlah Akhir'),
(833, 'tax_rate', 'Tax Rate', 'Persentase pajak'),
(834, 'setup', 'Setup', 'Mendirikan'),
(835, 'income_tax_updateform', 'Income Tax Update Form', 'Formulir Pembaruan Pajak Pendapatan'),
(836, 'salary_type', 'Salary Type', 'Jenis Gaji'),
(837, 'addition', 'Addition', 'Tambahan'),
(838, 'gross_salary', 'Gross Salary', 'Gaji kotor'),
(839, 'set', 'Set', 'Set'),
(840, 'salary_month', 'Salary Month', 'Bulan Gaji'),
(841, 'generate', 'Generate ', 'Hasilkan'),
(842, 'total_salary', 'Total Salary', 'Gaji Total'),
(843, 'total_working_minutes', 'Total Working Hours', 'Total Jam Kerja'),
(844, 'working_period', 'Total Working Days', 'Total Hari Kerja'),
(845, 'paid_by', 'Paid By', 'Dibayar oleh'),
(846, 'pay_now', 'Pay Now ?', 'Bayar sekarang ?'),
(847, 'confirm', 'Confirm', 'Konfirmasi'),
(848, 'generate_by', 'Generate By', 'Hasilkan Oleh'),
(849, 'gui_pos', 'GUI POS', 'GUI POS'),
(850, 'add_fixed_assets', 'Add Fixed Assets', 'Tambah Aset Tetap'),
(851, 'fixed_assets_list', 'Fixed Asset List', 'Daftar Aset Tetap'),
(852, 'fixed_assets_purchase', 'Purchase Fixed Assets', 'Beli Aset Tetap'),
(853, 'fixed_assets_purchase_manage', 'Fixed Assets Purchase List', 'Daftar Pembelian Aset Tetap'),
(854, 'fixed_assets', 'Fixed Assets', 'Aset Tetap'),
(855, 'item_code', 'Item code', 'Kode barang'),
(856, 'item_name', 'Item Name', 'Nama barang'),
(857, 'opening_assets', 'Assets Qty', 'Jumlah Aset'),
(858, 'edit_fixed_asset', 'Edit Fixed Assets', 'Edit Aset Tetap'),
(859, 'save_change', 'Save Change', 'Simpan perubahan'),
(860, 'in_word', 'In Word', 'Dalam Kata'),
(861, 'purchase_pad_print', 'Purchase Pad Print', 'Beli Cetak Pad'),
(862, 'fixed_assets_purchase_details', 'Fixed Assets Purchase Details', 'Rincian Pembelian Aset Tetap'),
(863, 'manage_language', 'Manage Language', 'Kelola Bahasa'),
(864, 'person_edit', 'Person Edit', 'Sunting Orang'),
(865, 'person_ledger', 'Person Ledger', 'Buku Besar Orang'),
(866, 'medicine_name', 'Medicine Name', 'Nama Obat'),
(867, 'unit_list', 'Unit List', 'Daftar Unit'),
(868, 'add_unit', 'Add Unit', 'Tambahkan Unit'),
(869, 'edit_unit', 'Edit Unit', 'Edit Unit'),
(870, 'unit_name', 'Unit Name', 'Nama unit'),
(871, 'unit_not_selected', 'Unit did not Selected', 'Unit tidak Dipilih'),
(872, 'supplier', 'Supplier', 'Pemasok'),
(873, 'add_supplier', 'Add Supplier', 'Tambahkan Pemasok'),
(874, 'manage_supplier', 'Manage Supplier', 'Kelola Pemasok'),
(875, 'supplier_ledger', 'Supplier Ledger', 'Buku Besar Pemasok'),
(876, 'supplier_sales_details', 'Supplier Sales Details', 'Detail Penjualan Pemasok'),
(877, 'purchase_detail', 'Purchase details', 'Rincian pembelian'),
(878, 'purchase_information', 'Purchase Information', 'Informasi pembelian'),
(879, 'account_head', 'Account Head', 'Kepala Akun'),
(880, 'transaction_date', 'Transaction Date', 'Tanggal transaksi'),
(881, 'approved', 'Approve', 'Menyetujui'),
(882, 'date_wise_report', 'Date Wise Report', 'Date Wise Report'),
(883, 'time_wise_report', 'Time Wise Report', 'Time Wise Report'),
(884, 'report_date', 'Report Date', 'Tanggal Laporan'),
(885, 's_time', 'Start Time', 'Waktu mulai'),
(886, 'e_time', 'End Time', 'Akhir waktu'),
(887, 'basic', 'Basic', 'Dasar'),
(888, 'supplier_name', 'Supplier Name', 'Nama pemasok'),
(889, 'supplier_mobile', 'Supplier Mobile', 'Seluler Pemasok'),
(890, 'supplier_address', 'Supplier Address', 'Alamat Pemasok'),
(891, 'supplier_details', 'Supplier Details', 'Detail Pemasok'),
(892, 'select_supplier', 'Select Supplier', 'Pilih Pemasok'),
(893, 'accounts_report', 'Accounts Report', 'Laporan Akun'),
(894, 'account_code', 'Account Code', 'Kode akun'),
(895, 'human_resource_management', 'Human Resource ', 'Sumber daya manusia '),
(896, 'menu_name', 'Menu Name', 'Nama Menu'),
(897, 'head_of_account', 'Account Head', 'Kepala Akun'),
(898, 'successfully_approved', 'Successfully Approved', 'Berhasil Disetujui'),
(899, 'supplier_edit', 'Supplier Edit', 'Pemasok Edit'),
(900, 'supplier_id', 'Supplier ID', 'ID Pemasok'),
(901, 'strength', 'Strength', 'Kekuatan'),
(902, 'out_of_date', 'Out Of Date', 'Kadaluarsa'),
(903, 'dis', 'Dis', 'Dis'),
(904, 'date_expired_please_choose_another', 'Date Expire Please Choose another', 'Tanggal Kedaluwarsa Silakan Pilih yang lain'),
(905, 'expired', 'Expired', 'Kedaluwarsa'),
(906, 'cash_adjustment', 'Cash Adjustment', 'Penyesuaian Uang Tunai'),
(907, 'adjustment_type', 'Adjustment Type', 'Jenis Penyesuaian'),
(908, 'cash_payment', 'Cash Payment', 'Pembayaran tunai'),
(909, 'bank_payment', 'Bank Payment', 'Pembayaran Bank'),
(910, 'yes', 'Yes', 'Iya'),
(911, 'no', 'No', 'Tidak'),
(912, 'credit_account_head', 'Credit Account Head', 'Kepala Akun Kredit'),
(913, 'general_ledger_of', 'General Ledger Of', 'Buku Besar Dari'),
(914, 'debit_account_head', 'Debit Account Head', 'Kepala Akun Debit'),
(915, 'update_successfully', 'Successfully Updated', 'Berhasil diperbarui'),
(916, 'statement_of_comprehensive_income', 'Statement of Comprehensive Income', 'Laporan Pendapatan Komprehensif'),
(917, 'deduct', 'Deduct', 'Mengurangi'),
(918, 'payslip', 'Payslip', 'Payslip'),
(919, 'salary_slip', 'Salary Slip', 'Slip gaji'),
(920, 'salary_date', 'Salary Date', 'Tanggal Gaji'),
(921, 'earnings', 'Earnings', 'Pendapatan'),
(922, 'basic_salary', 'Basic Salary', 'Gaji pokok'),
(923, 'total_addition', 'Total Addition', 'Penambahan Total'),
(924, 'total_deduction', 'Total Deduction', 'Potongan Total'),
(925, 'net_salary', 'Net Salary', 'Gaji bersih'),
(926, 'ref_number', 'Reference No', 'Nomor referensi'),
(927, 'employee_signature', 'Employee Signature', 'Tanda tangan karyawan'),
(928, 'authorized_signature', 'Authorized Signature', 'Tanda tangan resmi'),
(929, 'chairman', 'Chairman', 'Ketua'),
(930, 'bank_ledger', 'Bank Ledger', 'Buku Besar Bank'),
(931, 'api_secret', 'Api Secret', 'Api Rahasia'),
(932, 'service_csv_upload', 'Service Csv Upload', 'Layanan Csv Upload'),
(933, 'shipping_cost', 'Shipping Cost', 'Biaya pengiriman'),
(934, 'customer_advance', 'Customer Advance', 'Customer Advance'),
(935, 'customer_csv_upload', 'Customer CSV Upload', 'Unggahan CSV Pelanggan'),
(936, 'contact', 'Contact', 'Kontak'),
(937, 'fax', 'Fax', 'Fax'),
(938, 'state', 'State', 'Negara'),
(939, 'address1', 'Address1', 'Alamat 1'),
(940, 'address2', 'Address2', 'Alamat 2'),
(941, 'manufacturer_advance', 'Manufacturer Advance', 'Produsen Maju'),
(942, 'csv_upload_manufacturer', 'CSV Upload Manufacturer', 'Produsen Unggahan CSV'),
(943, 'restore', 'Restore ', 'Pulihkan'),
(944, 'advance_type', 'Advance Type', 'Jenis Lanjut'),
(945, 'receive', 'Receive', 'Menerima'),
(946, 'note_name', 'Notes', 'Catatan'),
(947, 'pcs', 'PCS', 'PCS'),
(948, 'do_you_want_to_print', 'Do You Want To Print ?', 'Apakah Anda Ingin Mencetak?'),
(949, 'the_salary_of', NULL, NULL),
(950, 'already_generated', 'Already Generated', 'Sudah Dibuat'),
(951, 'successfully_generated', 'Successfully Generated', 'Berhasil Dibuat'),
(952, 'service_edit', 'Service Edit', 'Layanan Edit'),
(953, 'signature', 'Signature', 'Tanda tangan'),
(954, 'manage', 'Manage', 'Mengelola'),
(955, 'income_expense_statement', 'Income Expense Statement', 'Laporan Beban Penghasilan'),
(956, 'cash_received', 'Cash Received', 'Uang diterima'),
(957, 'bank_received', 'Bank Received', 'Bank Diterima'),
(958, 'total_due', 'Total Due', 'Total Hutang'),
(959, 'total_service', 'Total Service', 'Layanan Total'),
(960, 'type_not_selected', 'Type did not Selected', 'Jenis tidak Dipilih');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manufacturer_information`
--

CREATE TABLE `manufacturer_information` (
  `manufacturer_id` bigint(20) NOT NULL,
  `manufacturer_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `emailnumber` varchar(200) DEFAULT NULL,
  `email_address` varchar(200) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'Invoice', '', '', 'invoice', 1),
(2, 'Customer', '', '', 'customer', 1),
(3, 'Medicine', '', '', 'medicine', 1),
(4, 'Manufacturer', '', '', 'manufacturer', 1),
(5, 'Purchase', '', '', 'purchase', 1),
(6, 'Stock', '', '', 'stock', 1),
(7, 'Return', '', '', 'return', 1),
(8, 'Report', '', '', 'report', 1),
(9, 'Accounts', '', '', 'accounts', 1),
(10, 'Bank', '', '', 'bank', 1),
(11, 'Tax', '', '', 'tax', 1),
(12, 'Human Resource', '', '', 'human_resource_info', 1),
(13, 'Supplier', '', '', 'supplier', 1),
(14, 'Service', '', '', 'service', 1),
(15, 'Search', '', '', 'search', 1),
(16, 'Settings', '', '', 'settings', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `payroll_tax_setup`
--

CREATE TABLE `payroll_tax_setup` (
  `tax_setup_id` int(11) UNSIGNED NOT NULL,
  `start_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `end_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_loan`
--

CREATE TABLE `personal_loan` (
  `per_loan_id` int(11) NOT NULL,
  `transaction_id` varchar(30) NOT NULL,
  `person_id` varchar(30) NOT NULL,
  `debit` varchar(20) NOT NULL,
  `credit` float NOT NULL,
  `date` varchar(30) NOT NULL,
  `details` varchar(100) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `person_information`
--

CREATE TABLE `person_information` (
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(50) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `person_ledger`
--

CREATE TABLE `person_ledger` (
  `transaction_id` varchar(50) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=no paid,2=paid',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesonal_loan_information`
--

CREATE TABLE `pesonal_loan_information` (
  `id` int(11) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `person_name` varchar(50) NOT NULL,
  `person_phone` varchar(30) NOT NULL,
  `person_address` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_information`
--

CREATE TABLE `product_information` (
  `id` int(11) NOT NULL,
  `product_id` varchar(30) NOT NULL,
  `category_id` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `generic_name` varchar(250) NOT NULL,
  `strength` varchar(250) NOT NULL,
  `box_size` varchar(30) NOT NULL,
  `product_location` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `product_model` varchar(50) DEFAULT NULL,
  `manufacturer_id` bigint(20) NOT NULL,
  `manufacturer_price` decimal(10,2) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `product_details` varchar(250) DEFAULT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_purchase`
--

CREATE TABLE `product_purchase` (
  `chalan_no` varchar(100) NOT NULL,
  `manufacturer_id` varchar(100) NOT NULL,
  `grand_total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(10,2) DEFAULT 0.00,
  `purchase_date` varchar(50) NOT NULL,
  `purchase_details` text NOT NULL,
  `status` int(2) NOT NULL,
  `id` int(11) NOT NULL,
  `purchase_id` varchar(30) NOT NULL,
  `bank_id` varchar(30) DEFAULT NULL,
  `payment_type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_purchase_details`
--

CREATE TABLE `product_purchase_details` (
  `purchase_detail_id` varchar(100) NOT NULL,
  `purchase_id` varchar(100) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `quantity` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) DEFAULT 0.00,
  `batch_id` varchar(25) NOT NULL,
  `expeire_date` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_return`
--

CREATE TABLE `product_return` (
  `id` int(11) NOT NULL,
  `return_id` varchar(30) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `purchase_id` varchar(30) DEFAULT NULL,
  `date_purchase` varchar(20) NOT NULL,
  `date_return` varchar(30) NOT NULL,
  `byy_qty` decimal(12,2) NOT NULL DEFAULT 0.00,
  `ret_qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customer_id` varchar(20) NOT NULL,
  `manufacturer_id` varchar(30) NOT NULL,
  `product_rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `deduction` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_deduct` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_ret_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `net_total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `reason` text NOT NULL,
  `usablity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_service`
--

CREATE TABLE `product_service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `type_id` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `salary_sheet_generate`
--

CREATE TABLE `salary_sheet_generate` (
  `ssg_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `gdate` varchar(30) DEFAULT NULL,
  `start_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `end_date` varchar(30) CHARACTER SET latin1 NOT NULL,
  `generate_by` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `salary_type`
--

CREATE TABLE `salary_type` (
  `salary_type_id` int(11) NOT NULL,
  `sal_name` varchar(100) NOT NULL,
  `salary_type` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sec_role`
--

CREATE TABLE `sec_role` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sec_userrole`
--

CREATE TABLE `sec_userrole` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `roleid` int(11) NOT NULL,
  `createby` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_invoice`
--

CREATE TABLE `service_invoice` (
  `id` int(11) NOT NULL,
  `voucher_no` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_discount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `invoice_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `due_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `previous` decimal(10,2) NOT NULL DEFAULT 0.00,
  `details` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_invoice_details`
--

CREATE TABLE `service_invoice_details` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_inv_id` varchar(30) NOT NULL,
  `qty` decimal(10,2) NOT NULL DEFAULT 0.00,
  `charge` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sms_settings`
--

CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL,
  `api_key` varchar(100) DEFAULT NULL,
  `api_secret` varchar(100) DEFAULT NULL,
  `from` varchar(100) DEFAULT NULL,
  `isinvoice` int(11) NOT NULL DEFAULT 0,
  `ispurchase` int(11) DEFAULT 0,
  `isservice` int(11) NOT NULL DEFAULT 0,
  `isreceive` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sms_settings`
--

INSERT INTO `sms_settings` (`id`, `api_key`, `api_secret`, `from`, `isinvoice`, `ispurchase`, `isservice`, `isreceive`) VALUES
(1, '60d6748a', 'NrW61s2AfTbgYkNk', 'isahaq', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_fixed_asset`
--

CREATE TABLE `stock_fixed_asset` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `qty` float NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_module`
--

CREATE TABLE `sub_module` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `directory` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_module`
--

INSERT INTO `sub_module` (`id`, `mid`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 1, 'New Invoice', '', '', 'new_invoice', 1),
(2, 1, 'Manage Invoice', '', '', 'manage_invoice', 1),
(3, 1, 'POS INVOICE', '', '', 'pos_invoice', 1),
(4, 1, 'GUI POS', '', '', 'gui_pos', 1),
(5, 9, 'Chart Of Account', '', '', 'show_tree', 1),
(6, 9, 'Manufacturer Payment', '', '', 'manufacturer_payment', 1),
(7, 9, 'Supplier Payment', '', '', 'supplier_payment', 1),
(8, 9, 'Customer Receive', '', '', 'customer_receive', 1),
(9, 9, 'Debit Voucher', '', '', 'debit_voucher', 1),
(10, 9, 'Credit Voucher', '', '', 'credit_voucher', 1),
(11, 9, 'Contra Voucher', '', '', 'contra_voucher', 1),
(12, 9, 'Journal Voucher', '', '', 'journal_voucher', 1),
(13, 9, 'Voucher Approval', '', '', 'aprove_v', 1),
(14, 9, 'Report', '', '', 'ac_report', 1),
(15, 9, 'Cash Book', '', '', 'cash_book', 1),
(16, 9, 'Bank Book', '', '', 'bank_book', 1),
(17, 9, 'General Ledger', '', '', 'general_ledger', 1),
(18, 9, 'Inventory Ledger', '', '', 'Inventory_ledger', 1),
(19, 9, 'Cash Flow', '', '', 'cash_flow_report', 1),
(20, 9, 'Profit Loss Statement', '', '', 'profit_loss_report', 1),
(21, 9, 'Trial Balance', '', '', 'trial_balance', 1),
(22, 3, 'Category', '', '', 'add_category', 1),
(23, 3, 'Medicine Type', '', '', 'medicine_type', 1),
(24, 3, 'Add Medicine', '', '', 'add_medicine', 1),
(25, 3, 'Import Medicine(CSV)', '', '', 'import_medicine_csv', 1),
(26, 3, 'Manage Medicine', '', '', 'manage_medicine', 1),
(27, 2, 'Add Customer', '', '', 'add_customer', 1),
(28, 2, 'Manage Customer', '', '', 'manage_customer', 1),
(29, 2, 'Credit Customer', '', '', 'credit_customer', 1),
(30, 2, 'Paid Customer', '', '', 'paid_customer', 1),
(31, 4, 'Add Manufacturer', '', '', 'add_manufacturer', 1),
(32, 4, 'Manage Manufacturer', '', '', 'manage_manufacturer', 1),
(33, 4, 'Manufacturer Ledger', '', '', 'manufacturer_ledger', 1),
(34, 4, 'Manufacturer Sales Details', '', '', 'manufacturer_sales_details', 1),
(35, 5, 'Add Purchase', '', '', 'add_purchase', 1),
(36, 5, 'Manage Purchase', '', '', 'manage_purchase', 1),
(37, 12, 'Add Designation', '', '', 'add_designation', 1),
(38, 12, 'Manage Designation', '', '', 'manage_designation', 1),
(39, 12, 'Add Employee', '', '', 'add_employee', 1),
(40, 12, 'Manage Employee', '', '', 'manage_employee', 1),
(41, 12, 'Add Attendance', '', '', 'add_attendance', 1),
(42, 12, 'Manage Attendance', '', '', 'manage_attendance', 1),
(43, 12, 'Attendance Report', '', '', 'attendance_report', 1),
(44, 12, 'Add Benefits', '', '', 'add_benefits', 1),
(45, 12, 'Manage Benefits', '', '', 'manage_benefits', 1),
(46, 12, 'Add Salary Setup', '', '', 'add_salary_setup', 1),
(47, 12, 'Manage Salary Setup', '', '', 'manage_salary_setup', 1),
(48, 12, 'Salary Generate', '', '', 'salary_generate', 1),
(49, 12, 'Manage Salary Generate', '', '', 'manage_salary_generate', 1),
(50, 12, 'Salary Payment', '', '', 'salary_payment', 1),
(51, 12, 'Add Expense Item', '', '', 'add_expense_item', 1),
(52, 12, 'Manage Expense Item', '', '', 'manage_expense_item', 1),
(53, 12, 'Add Expense', '', '', 'add_expense', 1),
(54, 12, 'Manage Expense', '', '', 'manage_expense', 1),
(55, 12, 'Add Fixed Assets', '', '', 'add_fixed_assets', 1),
(56, 12, 'Fixed Asset List', '', '', 'fixed_assets_list', 1),
(57, 12, 'Purchase Fixed Assets', '', '', 'fixed_assets_purchase', 1),
(58, 12, 'Fixed Asset Purchase List', '', '', 'fixed_assets_purchase_manage', 1),
(59, 16, 'Manage Company', '', '', 'manage_company', 1),
(60, 7, 'Return', '', '', 'return', 1),
(61, 7, 'Stock Return List', '', '', 'stock_return_list', 1),
(62, 7, 'Manufacturer Return List', '', '', 'manufacturer_return_list', 1),
(63, 7, 'Wastage Return List', '', '', 'wastage_return_list', 1),
(64, 15, 'Medicine', '', '', 'medicine_search', 1),
(65, 15, 'Customer', '', '', 'customer_search', 1),
(66, 15, 'Invoice', '', '', 'invoice_search', 1),
(67, 15, 'Purchase', '', '', 'purcahse_search', 1),
(68, 14, 'Add Service', '', '', 'create_service', 1),
(69, 14, 'Manage Service', '', '', 'manage_service', 1),
(70, 14, 'Service Invoice', '', '', 'service_invoice', 1),
(71, 14, 'Manage Service Invoice', '', '', 'manage_service_invoice', 1),
(72, 11, 'Tax Settings', '', '', 'tax_settings', 1),
(73, 11, 'Add Income Tax', '', '', 'add_incometax', 1),
(74, 11, 'Manage Income Tax', '', '', 'manage_income_tax', 1),
(75, 11, 'Tax Report', '', '', 'tax_report', 1),
(76, 11, 'Invoice Wise Tax Report', '', '', 'invoice_wise_tax_report', 1),
(77, 6, 'Stock Report', '', '', 'stock_report', 1),
(80, 6, 'Stock Report(Batch Wise)', '', '', 'stock_report_batch_wise', 1),
(81, 8, 'Today\'s Report', '', '', 'todays_report', 1),
(82, 8, 'Sales Report', '', '', 'sales_report', 1),
(83, 8, 'Purchase Report', '', '', 'purchase_report', 1),
(84, 8, 'Sales Report(Medicine Wise)', '', '', 'sales_report_medicine_wise', 1),
(85, 8, 'Profit/Loss', '', '', 'profit_loss', 1),
(86, 10, 'Add New Bank', '', '', 'add_new_bank', 1),
(87, 10, 'Bank Transaction', '', '', 'bank_transaction', 1),
(88, 10, 'Manage Bank', '', '', 'manage_bank', 1),
(89, 12, 'Add Person(Personal Loan)', '', '', 'office_add_person', 1),
(90, 12, 'Manage Person(Personal Loan)', '', '', 'office_manage_loan', 1),
(91, 12, 'Add Person(Office Loan)', '', '', 'personal_add_person', 1),
(92, 12, 'Add Loan(Office Loan)', '', '', 'personal_add_loan', 1),
(93, 12, 'Add Payment(Office Loan)', '', '', 'personal_add_payment', 1),
(94, 12, 'Manage Loan(Office Loan)', '', '', 'personal_manage_loan', 1),
(95, 16, 'Add User', '', '', 'add_user', 1),
(96, 16, 'Manage Users', '', '', 'manage_users', 1),
(97, 16, 'Lanaguage', '', '', 'language', 1),
(98, 16, 'Currency', '', '', 'currency', 1),
(99, 16, 'Web Setting', '', '', 'soft_setting', 1),
(100, 16, 'Add Role', '', '', 'add_role', 1),
(101, 16, 'Role List', '', '', 'role_list', 1),
(102, 16, 'Assign User Role', '', '', 'user_assign_role', 1),
(103, 16, 'Permission', '', '', 'permission', 1),
(104, 16, 'SMS', '', '', 'configure_sms', 1),
(105, 3, 'Add Unit', '', '', 'add_unit', 1),
(106, 3, 'Unit List', '', '', 'unit_list', 1),
(107, 13, 'Add Supplier', '', '', 'add_supplier', 1),
(108, 13, 'Manage Supplier', '', '', 'manage_supplier', 1),
(109, 13, 'Supplier Ledger', '', '', 'supplier_ledger', 1),
(110, 9, 'COA Print', '', '', 'coa_print', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier_information`
--

CREATE TABLE `supplier_information` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier_ledger`
--

CREATE TABLE `supplier_ledger` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `supplier_id` varchar(100) NOT NULL,
  `chalan_no` varchar(100) DEFAULT NULL,
  `deposit_no` varchar(50) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `description` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `cheque_no` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `d_c` varchar(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `synchronizer_setting`
--

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tax_collection`
--

CREATE TABLE `tax_collection` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` varchar(30) NOT NULL,
  `relation_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tax_information`
--

CREATE TABLE `tax_information` (
  `tax_id` varchar(15) NOT NULL,
  `tax` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tax_settings`
--

CREATE TABLE `tax_settings` (
  `id` int(11) NOT NULL,
  `default_value` float NOT NULL,
  `tax_name` varchar(250) NOT NULL,
  `nt` int(11) NOT NULL,
  `reg_no` varchar(100) DEFAULT NULL,
  `is_show` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` int(2) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `user_id`, `last_name`, `first_name`, `company_name`, `address`, `phone`, `gender`, `date_of_birth`, `logo`, `status`) VALUES
(1, '2', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'http://localhost/saleserp_v9.8/assets/dist/img/profile_picture/profile.jpg', 1),
(2, '1', 'User', 'Admin', NULL, NULL, NULL, NULL, NULL, 'https://goldlionstore.com/demo/farmacare/assets/dist/img/profile_picture/profile.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(2) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `status` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `username`, `password`, `user_type`, `security_code`, `status`) VALUES
(1, '2', 'admin@example.com', '41d99b369894eb1ec3f461135132d8bb', 1, NULL, 1),
(2, '1', 'admin@admin.com', '4023fd6260a66a8b7f77d5a15657d21a', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_setting`
--

CREATE TABLE `web_setting` (
  `setting_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `invoice_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(200) DEFAULT NULL,
  `currency_position` varchar(10) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `rtr` varchar(255) DEFAULT NULL,
  `captcha` int(11) DEFAULT 1 COMMENT '0=active,1=inactive',
  `site_key` varchar(250) DEFAULT NULL,
  `secret_key` varchar(250) DEFAULT NULL,
  `discount_type` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `web_setting`
--

INSERT INTO `web_setting` (`setting_id`, `logo`, `invoice_logo`, `favicon`, `currency`, `timezone`, `currency_position`, `footer_text`, `language`, `rtr`, `captcha`, `site_key`, `secret_key`, `discount_type`) VALUES
(1, 'http://softest8.bdtask.com/pharmacysasmodel/./my-assets/image/logo/5df28e7f70df1725d5763d7a925e9915.png', 'http://softest8.bdtask.com/pharmacysasmodel/my-assets/image/logo/ef9ff92adbea3b2d1afe4cfa8b02c04c.png', 'http://softest8.bdtask.com/pharmacysasmodel/my-assets/image/logo/ba8f3211bb73f7bcc05f7a3b5b91aef6.png', '$', 'Asia/Jakarta', '0', 'CopyrightÂ© 2020 bdtask. All rights reserved.', 'bahasa', '0', 1, '', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `acc_coa`
--
ALTER TABLE `acc_coa`
  ADD PRIMARY KEY (`HeadName`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `HeadCode` (`HeadCode`);

--
-- Indeks untuk tabel `acc_transaction`
--
ALTER TABLE `acc_transaction`
  ADD UNIQUE KEY `ID` (`ID`),
  ADD KEY `COAID` (`COAID`);

--
-- Indeks untuk tabel `asset_purchase`
--
ALTER TABLE `asset_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`);

--
-- Indeks untuk tabel `bank_add`
--
ALTER TABLE `bank_add`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `company_information`
--
ALTER TABLE `company_information`
  ADD PRIMARY KEY (`company_id`);

--
-- Indeks untuk tabel `currency_tbl`
--
ALTER TABLE `currency_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer_information`
--
ALTER TABLE `customer_information`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `daily_closing`
--
ALTER TABLE `daily_closing`
  ADD PRIMARY KEY (`closing_id`);

--
-- Indeks untuk tabel `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  ADD PRIMARY KEY (`emp_sal_pay_id`);

--
-- Indeks untuk tabel `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  ADD PRIMARY KEY (`e_s_s_id`);

--
-- Indeks untuk tabel `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `expense_item`
--
ALTER TABLE `expense_item`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fixed_assets`
--
ALTER TABLE `fixed_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `invoice` (`invoice`);

--
-- Indeks untuk tabel `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indeks untuk tabel `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `manufacturer_information`
--
ALTER TABLE `manufacturer_information`
  ADD PRIMARY KEY (`manufacturer_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indeks untuk tabel `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  ADD PRIMARY KEY (`tax_setup_id`);

--
-- Indeks untuk tabel `personal_loan`
--
ALTER TABLE `personal_loan`
  ADD PRIMARY KEY (`per_loan_id`);

--
-- Indeks untuk tabel `person_information`
--
ALTER TABLE `person_information`
  ADD PRIMARY KEY (`person_id`);

--
-- Indeks untuk tabel `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `product_information`
--
ALTER TABLE `product_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indeks untuk tabel `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `bank_id` (`bank_id`);

--
-- Indeks untuk tabel `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_id` (`purchase_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indeks untuk tabel `product_return`
--
ALTER TABLE `product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_service`
--
ALTER TABLE `product_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indeks untuk tabel `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_module_id` (`fk_module_id`),
  ADD KEY `fk_user_id` (`role_id`);

--
-- Indeks untuk tabel `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  ADD PRIMARY KEY (`ssg_id`);

--
-- Indeks untuk tabel `salary_type`
--
ALTER TABLE `salary_type`
  ADD PRIMARY KEY (`salary_type_id`);

--
-- Indeks untuk tabel `sec_role`
--
ALTER TABLE `sec_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sec_userrole`
--
ALTER TABLE `sec_userrole`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indeks untuk tabel `service_invoice`
--
ALTER TABLE `service_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `service_inv_id` (`service_inv_id`);

--
-- Indeks untuk tabel `sms_settings`
--
ALTER TABLE `sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stock_fixed_asset`
--
ALTER TABLE `stock_fixed_asset`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_module`
--
ALTER TABLE `sub_module`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier_information`
--
ALTER TABLE `supplier_information`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tax_collection`
--
ALTER TABLE `tax_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tax_information`
--
ALTER TABLE `tax_information`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indeks untuk tabel `tax_settings`
--
ALTER TABLE `tax_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `web_setting`
--
ALTER TABLE `web_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `acc_transaction`
--
ALTER TABLE `acc_transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `asset_purchase`
--
ALTER TABLE `asset_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bank_add`
--
ALTER TABLE `bank_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `currency_tbl`
--
ALTER TABLE `currency_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `customer_information`
--
ALTER TABLE `customer_information`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_salary_payment`
--
ALTER TABLE `employee_salary_payment`
  MODIFY `emp_sal_pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `employee_salary_setup`
--
ALTER TABLE `employee_salary_setup`
  MODIFY `e_s_s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `expense_item`
--
ALTER TABLE `expense_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fixed_assets`
--
ALTER TABLE `fixed_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;

--
-- AUTO_INCREMENT untuk tabel `manufacturer_information`
--
ALTER TABLE `manufacturer_information`
  MODIFY `manufacturer_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `payroll_tax_setup`
--
ALTER TABLE `payroll_tax_setup`
  MODIFY `tax_setup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_loan`
--
ALTER TABLE `personal_loan`
  MODIFY `per_loan_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesonal_loan_information`
--
ALTER TABLE `pesonal_loan_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_category`
--
ALTER TABLE `product_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_information`
--
ALTER TABLE `product_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_purchase_details`
--
ALTER TABLE `product_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_return`
--
ALTER TABLE `product_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_service`
--
ALTER TABLE `product_service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `salary_sheet_generate`
--
ALTER TABLE `salary_sheet_generate`
  MODIFY `ssg_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `salary_type`
--
ALTER TABLE `salary_type`
  MODIFY `salary_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sec_role`
--
ALTER TABLE `sec_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sec_userrole`
--
ALTER TABLE `sec_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `service_invoice`
--
ALTER TABLE `service_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `service_invoice_details`
--
ALTER TABLE `service_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sms_settings`
--
ALTER TABLE `sms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `stock_fixed_asset`
--
ALTER TABLE `stock_fixed_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sub_module`
--
ALTER TABLE `sub_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `supplier_information`
--
ALTER TABLE `supplier_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tax_collection`
--
ALTER TABLE `tax_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tax_settings`
--
ALTER TABLE `tax_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `web_setting`
--
ALTER TABLE `web_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
