-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2017 at 09:25 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `compfest`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id_content` int(11) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `id_tema` int(11) DEFAULT NULL,
  `judul` varchar(125) DEFAULT NULL,
  `waktu_acara` datetime DEFAULT NULL,
  `pembicara` varchar(125) DEFAULT NULL,
  `deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id_event`, `id_tema`, `judul`, `waktu_acara`, `pembicara`, `deskripsi`) VALUES
(1, 1, 'Growth Hacking: Driving Growth Beyond Traditional Marketing', '2017-09-12 10:30:00', 'Teguh Nugraha', 'Growth hacking is a new means to grow a business rapidly, specifically a marketing technique which uses creative medias and data analysis to market products. There are a lot of benefits that can be reaped from the implementation of this technique, hence the widespread use in today’s start up scene. This seminar aims to provide insight on how to benefit from the implementation of Growth Hacking.'),
(2, 2, 'To the Cloud: Bringing Enterprise to the Next Level', '2017-09-12 13:00:00', 'Andre Jenie', 'This seminar will take up the use of Cloud Computing in enterprises and things that need to be taken into account when applying Cloud Computing in a business. Furthermore, this seminar will also explain the benefits as well as the downside of Cloud Computing implementation and how it helps to cut business costs.'),
(3, 4, 'Turning Data into Value with Enterprise Business Intelligence', '2017-09-24 09:00:00', 'Erwin Sukiato', 'This seminar will take up the use of Cloud Computing in enterprises and things that need to be taken into account when applying Cloud Computing in a business. Furthermore, this seminar will also explain the benefits as well as the downside of Cloud Computing implementation and how it helps to cut business costs.'),
(4, 3, 'Validate Your Design/Business Ideas Rapidly with Google Design Sprint', '2017-09-24 11:00:00', 'Borrys Hasian', 'In developing product designs, Indonesians oftentimes have bright ideas. But, the time it needs to develop those ideas are usually too long and ineffective. Good design means creating a product favored by consumers, but the effective allocation of time is also one of the most important factors in creating a successful digital product. Google Design Sprint answers all business inquiries within a 5 day process. Therefore, this seminar will talk about the methodology of Google Design Sprint and how to bring them into play in product design.'),
(5, 5, 'Machine Translation: Bridging The Communication Gap', '2017-09-24 13:00:00', 'Keith Stevens', 'Google Translate automatically translates enough words to fill 1 Million books every single day. These automated translations, powered by Machine Translation and smart engineering, open up new channels of communication all over the world. Further, they enable independent learning and help some people just accomplish every day tasks. Come learn about the thinking and engineering behind Google Translate.'),
(6, 1, 'Blockchain Technology: The Future of Internet Innovation', '2017-09-25 09:00:00', 'Oscar Darmawan & Vladimiro Sassone', 'Currently, investors and entrepreneurs are increasingly enthusiastic about the Blockchain technology. In addition to recording and storing money, information such as health records, mortgage certificates, welfare benefits and others could be managed by this technology. Blockchain is a digital ledger with cryptographic technology that is protected from manipulation. Blockchain has a positive impact on the world of business, financial, government, IoT, and also banks. This seminar will explain how the potential of Blockchain and its prospects for the future.'),
(7, 5, 'Natural Language Understanding at Google', '2017-09-25 11:00:00', 'Ruli Manurung', 'Natural language understanding (NLU) is a field that seeks to give computers the ability to understand the meaning and intent of natural language input from humans. NLU underpins the technology powering recent advances in conversational agents. There is a wide spectrum of different approaches to NLU, from detailed rule-based systems that make use of ontologies such as the Knowledge Graph, to efficient algorithms --recently ones that incorporate neural net technology-- that leverage large amounts of training data. This talk will give an overall introduction to some of these approaches, and how they can impact user experience in many ways.'),
(8, 3, 'Bridging Innovation Through Collaboration and Technology', '2017-09-25 13:00:00', 'Aldi Haryopratomo', 'Collaboration plays a very important role in the development process of an innovation due to its ability to encourage people to achieve their vision together, yielding satisfactory results. Nowadays, the advancement of technology is able to connect people, facilitating people to collaborate in communities. This seminar will talk about the importance of collaboration and how technology that reaches the whole community can facilitate collaboration and thus create a great impact in the life and prosperity of people of Indonesia.');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL,
  `nama` varchar(125) DEFAULT NULL,
  `status` varchar(125) DEFAULT NULL,
  `bukti_bayar` varchar(125) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL,
  `nama` varchar(125) DEFAULT NULL,
  `harga_tiket` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tema`
--

INSERT INTO `tema` (`id_tema`, `nama`, `harga_tiket`) VALUES
(1, 'Cyber Security', 100000),
(2, 'Cloud Computing', 100000),
(3, 'Bisnis', 100000),
(4, 'Data Science', 150000),
(5, 'Natural Language Processing', 150000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id_content`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`),
  ADD KEY `id_tema` (`id_tema`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`),
  ADD KEY `id_tema` (`id_tema`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`id_tema`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tema`
--
ALTER TABLE `tema`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `peserta_ibfk_1` FOREIGN KEY (`id_tema`) REFERENCES `tema` (`id_tema`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
