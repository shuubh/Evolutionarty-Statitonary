-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 07:13 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Paper Products', 'paper-products'),
(2, 'File Store', 'file-store'),
(3, 'Technology & Machine', 'technology-machine'),
(4, 'Ink & Toners', 'Ink-toners');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>What&#39;s inside matters.</p>\r\n\r\n<p>Without proper cooling, top tierperformance never reaches its fullpotential.</p>\r\n\r\n<p>Nine lighting zones accentuate theaggressive lines and smooth blackfinish of this unique galvanized steelcase.</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 489.98, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '2018-05-12', 1),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multi-task with ease thanks to Intel&reg; i5 processor&nbsp;<br />\r\n<br />\r\n- Prepare for battle with NVIDIA GeForce GTX graphics card&nbsp;<br />\r\n<br />\r\n- VR ready for the next-generation of immersive gaming and entertainment<br />\r\n<br />\r\n- Tool-less upgrade helps you personalise your system to your own demands&nbsp;<br />\r\n<br />\r\nPart of our Gaming range, which features the most powerful PCs available today, the Lenovo&nbsp;<strong>Legion Y520 Gaming PC</strong>&nbsp;has superior graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 899.99, 'lenovo-legion-y520-gaming-pc.jpg', '2018-05-10', 13),
(30, 1, 'S041315 Epson Inkjet 255gsm 20 Sheets', '<p>Converting your digital photographs from images on a screen to real, physical items that you can hold can be a difficult process. With the Epson Premium Glossy Photo Paper, you can achieve high quality results without any sort of difficulty. This glossy paper absorbs your ink quickly to leave you with an image that isn&#39;t subject to any form of blot or bleed, keeping the quality of your images intact. The glossy finish is perfect for the same quality that you can expect from professional developers.</p>\r\n', 's041315-epson-inkjet-255gsm-20-sheets', 43.54, 's041315-epson-inkjet-255gsm-20-sheets.webp', '0000-00-00', 0),
(31, 1, 'Q6593A HP Matt Inkjet Paper A4 200 Sheets', '<p>The HP Professional Matte Inkjet Paper is designed to bring out the best of your documents and enhance the colour and crispness of inkjet printing. It&#39;s great for short print runs for creating promotional flyers or other literature. Print on both sides without worry - the coating is double-sided and the high opacity paper prevents ink from showing through.</p>\r\n', 'q6593a-hp-matt-inkjet-paper-a4-200-sheets', 22.09, 'q6593a-hp-matt-inkjet-paper-a4-200-sheets.webp', '0000-00-00', 0),
(32, 1, 'L7160 Avery Laser Labels 21 per Sheet - 100 Sheets', '<p>With these easy to use Ultragrip labels, you can address envelopes in no time at all. Avery&#39;s patented, QuickPEEL system, simply divides the labels along the perforation lines to expose the edges, peel and stick to your envelope. Perfect for envelopes, they are fully compatible with your laser printer and guarantee a jam free print for instant, professional labelling. These eco-friendly labels can be fully recycled and are made using environmentally sound materials. This pack contains 100 sheets with 21 labels per sheet (2100 labels in total).</p>\r\n', 'l7160-avery-laser-labels-21-per-sheet-100-sheets', 36.25, 'l7160-avery-laser-labels-21-per-sheet-100-sheets.webp', '0000-00-00', 0),
(33, 1, 'J8165 Avery Inkjet Labels 8 per Sheet - 100 Sheets', '<p>For use with inkjet printers, these Avery parcel labels feature QuickDry technology for smudge free printing. Each white label measures 99.1 x 67.7mm. This pack contains 100 A4 sheets, with 8 labels per sheet (800 labels in total).</p>\r\n', 'j8165-avery-inkjet-labels-8-per-sheet-100-sheets', 40.25, 'j8165-avery-inkjet-labels-8-per-sheet-100-sheets.webp', '0000-00-00', 0),
(34, 1, 'L7163 Avery Laser Labels 14 per Sheet - 40 Sheets', '<p>With these easy to use Ultragrip labels, you can address envelopes in no time at all. Avery&#39;s patented, QuickPEEL system, simply divides the labels along the perforation lines to expose the edges, peel and stick to your envelope. Perfect for envelopes, they are fully compatible with your laser printer and guarantee a jam free print for instant, professional labelling. These eco-friendly labels can be fully recycled and are made using environmentally sound materials. This pack contains 40 sheets with 14 labels per sheet (560 labels in total).</p>\r\n', 'l7163-avery-laser-labels-14-per-sheet-40-sheets', 23.2, 'l7163-avery-laser-labels-14-per-sheet-40-sheets.webp', '0000-00-00', 0),
(35, 1, 'DL Conqueror Envelopes Brilliant White Laid 120gsm Boxed 500\'s', '<p>For an envelope with a superior level of quality and professionalism, you need to use the Conqueror Brilliant White Laid Envelope. Conqueror is dedicated to bringing you the very best products, with optical whiteness and laid finish to add exceptional quality. Perfect for business use, the paper features a high-quality surface that allows you to write or print on the envelope without difficulty.</p>\r\n', 'dl-conqueror-envelopes-brilliant-white-laid-120gsm-boxed-500-s', 63.45, 'dl-conqueror-envelopes-brilliant-white-laid-120gsm-boxed-500-s.webp', '0000-00-00', 0),
(36, 1, 'C4 Envelope 115gsm Manilla Self-Seal Pack of 250 KF3461', '<p>Ideal for everyday use, these Q-Connect pocket envelopes are made from quality, heavyweight 115gsm paper and feature an easy to use, secure self-seal flap. Suitable for sending A4 documents, these envelopes are made from 85% recycled manilla. This pack contains 250 manilla envelopes.</p>\r\n', 'c4-envelope-115gsm-manilla-self-seal-pack-of-250-kf3461', 16.89, 'c4-envelope-115gsm-manilla-self-seal-pack-of-250-kf3461.webp', '0000-00-00', 0),
(37, 1, 'DL White P&S Envelopes 110gsm 110 x 220mm Pk 20', '<p>DL White Envelopes Peel &amp; Seal 110gsm Size: (DL) 220mmx110mm (4.25x8.6inch)</p>\r\n', 'dl-white-p-s-envelopes-110gsm-110-x-220mm-pk-20', 1.56, 'dl-white-p-s-envelopes-110gsm-110-x-220mm-pk-20.webp', '0000-00-00', 0),
(38, 1, 'C5 White Window Envelopes 90gsm 500\'s', '<p>Ideal for everyday use, these Q-Connect envelopes are made from quality 90gsm white paper and feature an easy to use, secure self-seal closure, and convenient address window measuring 90 x 45mm. The C5 envelopes are suitable for an A4 sheet folded once or an unfolded A5 sheet. This pack contains 500 white envelopes.</p>\r\n', 'c5-white-window-envelopes-90gsm-500-s', 18.56, 'c5-white-window-envelopes-90gsm-500-s.webp', '0000-00-00', 0),
(39, 1, 'Padded Envelope White 180x260mm MLW D/1 Pk 100', '<p>These lightweight Mail Lite postal bags feature an AirCap bubble lining for high performance protection for delicate and fragile items in transit. The mailers also feature a quality Kraft outer and strong self seal closure. These size D/1 bags measure 180 x 260mm. This pack contains 100 white postal bags.</p>\r\n', 'padded-envelope-white-180x260mm-mlw-d-1-pk-100', 16.25, 'padded-envelope-white-180x260mm-mlw-d-1-pk-100.webp', '0000-00-00', 0),
(40, 1, 'Tyvek Envelope 406x305mm White 51mm Gusset Pk 20 758124 P20', '<p>These Tyvek envelopes are made from 100% recyclable, high density polythene fibres (HDPE), which is tear and water resistant for extra security in transit. These envelopes have an expanding 51mm gusset and extra strong hot melt peel and seal closure. These lightweight, flexible envelopes measure 406 x 305mm. This pack contains 20 white envelopes.</p>\r\n', 'tyvek-envelope-406x305mm-white-51mm-gusset-pk-20-758124-p20', 59.17, 'tyvek-envelope-406x305mm-white-51mm-gusset-pk-20-758124-p20.webp', '0000-00-00', 0),
(41, 1, 'Tyvek Gusset Envelope B4 Pocket White Pk 100', '<p>These Tyvek envelopes are made from 100% recyclable, high density polythene fibres (HDPE), which is tear and water resistant for extra security in transit. These envelopes have an expanding 38mm gusset and extra strong hot melt peel and seal closure. These lightweight, flexible B4 envelopes measure 353 x 250mm. This pack contains 100 white envelopes.</p>\r\n', 'tyvek-gusset-envelope-b4-pocket-white-pk-100', 170.25, 'tyvek-gusset-envelope-b4-pocket-white-pk-100.webp', '0000-00-00', 0),
(42, 1, 'Padded Envelope White 150x210mm MLW C/0 Pk 100', '<p>These lightweight Mail Lite postal bags feature an AirCap bubble lining for high performance protection for delicate and fragile items in transit. The mailers also feature a quality Kraft outer and strong self seal closure. These size C/0 bags measure 150 x 210mm. This pack contains 100 white postal bags.</p>\r\n', 'padded-envelope-white-150x210mm-mlw-c-0-pk-100', 12.57, 'padded-envelope-white-150x210mm-mlw-c-0-pk-100.webp', '0000-00-00', 0),
(43, 1, 'Cloakroom and Raffle 1-1000 Tickets Pk6', '<p>These Cloakroom and Raffle Tickets are made from 100% recycled paper and are numbered 1 to 1000. Each ticket has an additional 8-character security code for correctly matching tickets. The tickets are perforated for easy removal from the book and come in 6 assorted colours (white, blue, pink, green and buff). This pack contains 6 books.</p>\r\n', 'cloakroom-and-raffle-1-1000-tickets-pk6', 17.56, 'cloakroom-and-raffle-1-1000-tickets-pk6.webp', '0000-00-00', 0),
(44, 1, 'Collins Ideal Book A4 Double Cash 192 Pages 6424', '<p>This A4 Double Cash Book from Collins Ideal is a high quality case bound notebook ideal for accounting or general use. The 192 pages are high quality 80gsm paper with double cash rulings, while the casebound binding secures pages into the spine, reducing the danger of losing precious and important notes. The book is fully cased in durable geltex which not only protects the book itself but also provides a hard cover, ideal for note-taking while on the go.</p>\r\n', 'collins-ideal-book-a4-double-cash-192-pages-6424', 9.91, 'collins-ideal-book-a4-double-cash-192-pages-6424.webp', '0000-00-00', 0),
(45, 1, 'Cathedral Analysis Book 192 pages 150/12.1', '<p>Ideal for manual book keeping, this analysis book by Collins Cathedral features 96 pages of azure ledger paper perfect for keeping track of your accounts. Whether used for office or home business, the 12 cash columns per page together with column and line numbering make it easy for you to keep records of incoming and outgoing money. The red leather grain cover is extremely durable and hard-wearing and is supplied with product information and a ruling guide.</p>\r\n', 'cathedral-analysis-book-192-pages-150-12-1', 31.02, 'cathedral-analysis-book-192-pages-150-12-1.webp', '0000-00-00', 0),
(46, 2, 'Transfer Files Grey/White Bankers Box Pack 10', '<p>This Bankers Box transfer file features time saving Fastfold automatic assembly and a locking tab lid to help keep contents secure. Compatible with Bankers Box system storage boxes and filing units, the transfer file has a large 120mm spine width and can hold both A4 and foolscap documents. This pack contains 10 grey and white transfer files measuring W120 x D360 x H255mm (internal dimensions).</p>\r\n', 'transfer-files-grey-white-bankers-box-pack-10', 20.62, 'transfer-files-grey-white-bankers-box-pack-10.webp', '0000-00-00', 0),
(47, 2, 'Archive Storage Box 335x400x250mm Boxed 10', '<p>This durable Q-Connect storage box comes with a lift off lid and cut out handles for easy transportation. Ideal for long term storage and archiving, this pack contains 10 brown boxes measuring W400 x D335 x H250mm.</p>\r\n', 'archive-storage-box-335x400x250mm-boxed-10', 24.49, 'archive-storage-box-335x400x250mm-boxed-10.webp', '0000-00-00', 0),
(48, 2, 'Magazine File White', '<p>Quick and simple organisation of files, magazines or literature around your home or office is made easy with this Q-Connect Magazine File. Made from 100% recycled materials, this magazine file is functional, as well as environmentally friendly. Labelling space makes identification of the file&#39;s contents at a glance quick and simple, keeping your office organised and ordered for a more efficient working day. This pack contains 10 magazine files measuring W100 x D230 x H300mm.</p>\r\n', 'magazine-file-white', 14.04, 'magazine-file-white.webp', '0000-00-00', 0),
(49, 2, 'Archive Storage Boxes Premium Presto Classic Blue', '<p>Bankers Box Presto Storage Box. Strong portable stackable storage box with reinforced tear-resistant hand holes deep lift off lids and featuring the PRESTO instant assembly mechanism - just push the corners together and its ready to use. Colour: Blue.</p>\r\n', 'archive-storage-boxes-premium-presto-classic-blue', 58.58, 'archive-storage-boxes-premium-presto-classic-blue.webp', '0000-00-00', 0),
(50, 3, 'Fellowes Shredder Oil 35250', '<p>Applying oil to your shredder helps to lubricate the blades and optimise the function of your machine. By improving functionality of your shredder you increase the life of the unit and thereby decrease replacement costs and energy consumption concerns associated with a shredder performing at less than optimum levels. This Fellowes Shredder Oil has been specifically designed for use with Fellowes shredders to improve operations and preserve the integrity of your machine. Use this oil regularly to to keep the cutting mechanism clean and free from paper dust.</p>\r\n', 'fellowes-shredder-oil-35250', 9.91, 'fellowes-shredder-oil-35250.webp', '0000-00-00', 0),
(51, 3, 'Casio Mini-Print Calculator 12-digit', '<p>The Casio HR-8RCE is a mini printing calculator with a print speed of 2 lines per second. The calculator features a 12 digit LCD display, 2 rate euro conversion, profit calculation with cost, sell and margin, and tax calculation. Ideal for retail and book-keeping applications, the calculator is compatible with 58mm paper printing rolls and measures W102 x D82 x H239mm. The calculator is powered by 4 x AA batteries.</p>\r\n', 'casio-mini-print-calculator-12-digit', 31.56, 'casio-mini-print-calculator-12-digit.webp', '2021-02-15', 1),
(52, 3, 'Calculator Ink Roller IR40 Black SPR40', '<p>Designed to fit a range of printing calculators and cash registers, this Register Ink Roller will provide crisp black output for receipts, accounts and more in your business. It is easy to install and comes individually wrapped to preserve the quality of the ink. It is designed for Sharp EL-1601 and EL-1615 calculators, General 2118 machines and a range of Casio equipment.</p>\r\n', 'calculator-ink-roller-ir40-black-spr40', 4.12, 'calculator-ink-roller-ir40-black-spr40.webp', '0000-00-00', 0),
(53, 3, 'Casio HR-150RCE Printing Calculator 12-digit', '<p>The Casio HR-150RCE is a desktop, 2 colour printing calculator with a print speed of 2 lines per second. The calculator features a 12 digit LCD display, 3 rate euro conversion, profit calculation with cost, sell and margin, and tax calculation. Ideal for retail and book-keeping applications, the calculator is compatible with 58mm paper printing rolls and measures W165 x D58 x H242mm. The calculator is powered by 4 x AA batteries.</p>\r\n', 'casio-hr-150rce-printing-calculator-12-digit', 54.23, 'casio-hr-150rce-printing-calculator-12-digit.webp', '0000-00-00', 0),
(54, 4, 'LC1000BK Brother Inkjet Cartridge Black', '<p>With a reputation for high quality, reliable components, you can trust in Brother LC1000 ink cartridges for top quality, high resolution results. Brother printer machines work with separate ink cartridges meaning you only have to replace the empty cartridge, producing cost savings. Providing high quality results with rich black, smudge-resistant text, this standard yield inkjet cartridge produces up to 500 A4 pages at 5% coverage.</p>\r\n', 'lc1000bk-brother-inkjet-cartridge-black', 24.23, 'lc1000bk-brother-inkjet-cartridge-black.webp', '0000-00-00', 0),
(55, 4, 'T096640 Epson Inkjet Cartridge Light Mag', '<p>Making sure that you find an ink that will provide you with great quality results can be difficult, but the Epson T0966 Light Magenta Inkjet Cartridge guarantees fantastic prints. Epson became one of the biggest printer brands in the world by producing high quality products that did exactly what they are meant to. This cartridge is no exception to that, providing you with crisp and clear printing that doesn&#39;t take forever to be done.</p>\r\n', 't096640-epson-inkjet-cartridge-light-mag', 13.24, 't096640-epson-inkjet-cartridge-light-mag.webp', '0000-00-00', 0),
(56, 4, 'T1572 Epson Inkjet Cartridge Refill Ink Cyan', '<p>For an ink that will go above and beyond regular quality printing, transcending to a whole new level of clarity, you need to use this Epson cartridge. This cartridge provides sharp and well defined lines, with ink that is designed not to bleed or smudge. Whether you are looking to print text, charts or images, you can be sure that this cartridge will give your document an eye-catching finish that will impress.</p>\r\n', 't1572-epson-inkjet-cartridge-refill-ink-cyan', 28.25, 't1572-epson-inkjet-cartridge-refill-ink-cyan.webp', '0000-00-00', 0),
(57, 4, 'T1574 Epson Inkjet Cartridge Refill Ink Yellow', '<p>For an ink that will go above and beyond regular quality printing, transcending to a whole new level of clarity, you need to use this Epson cartridge. This cartridge provides sharp and well defined lines, with ink that is designed not to bleed or smudge. Whether you are looking to print text, charts or images, you can be sure that this cartridge will give your document an eye-catching finish that will impress.</p>\r\n', 't1574-epson-inkjet-cartridge-refill-ink-yellow', 30.23, 't1574-epson-inkjet-cartridge-refill-ink-yellow.webp', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Code', 'Projects', '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
