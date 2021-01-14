-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 14 jan. 2021 à 14:38
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `crmsdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Evarist', 'admin', 784769523, 'evaristeshabani@gmail.com', '0115db6c180fee0819762be82c6b5b54', '2020-12-04 07:32:40');

-- --------------------------------------------------------

--
-- Structure de la table `tblapplyjob`
--

CREATE TABLE `tblapplyjob` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) DEFAULT NULL,
  `JobId` int(10) DEFAULT NULL,
  `Resume` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Message` mediumtext NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `ResponseDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblapplyjob`
--

INSERT INTO `tblapplyjob` (`ID`, `UserId`, `JobId`, `Resume`, `ApplyDate`, `Message`, `Remark`, `Status`, `ResponseDate`) VALUES
(1, 1, 3, 'c8655d07599e03ce75ad25ed078d6b741567663469.pdf', '2019-09-05 06:04:29', 'Comes with original documents', '', 'Sorted', '2019-09-14 08:50:46'),
(2, 1, 4, 'c8655d07599e03ce75ad25ed078d6b741567663734.pdf', '2019-09-08 06:08:54', 'hgfhfhfh', '', 'Rejected', '2019-09-09 07:25:58'),
(3, 2, 4, 'c8655d07599e03ce75ad25ed078d6b741567668198.pdf', '2019-09-08 07:23:18', 'Come with your original documents', '', 'Sorted', '2019-09-14 08:50:52'),
(4, 2, 5, 'c8655d07599e03ce75ad25ed078d6b741567668243.pdf', '2019-09-05 07:24:03', 'ghiuiui', '', 'Sorted', '2019-09-14 08:50:56'),
(5, 1, 3, 'd41d8cd98f00b204e9800998ecf8427e1567746238.pdf', '2019-09-06 05:03:58', '', '', NULL, '0000-00-00 00:00:00'),
(6, 1, 6, 'd41d8cd98f00b204e9800998ecf8427e1568013929.pdf', '2019-09-09 07:25:29', 'This is sample text for testing.', '', 'Rejected', '2019-10-07 17:06:09'),
(7, 1, 12, 'd41d8cd98f00b204e9800998ecf8427e1568371755.pdf', '2019-09-13 10:49:15', '', '', NULL, '0000-00-00 00:00:00'),
(8, 5, 13, 'd41d8cd98f00b204e9800998ecf8427e1570475698.doc', '2019-10-07 19:14:58', '', '', NULL, '0000-00-00 00:00:00'),
(9, 6, 13, 'd41d8cd98f00b204e9800998ecf8427e1570640146.doc', '2019-10-09 16:55:46', '', '', NULL, '0000-00-00 00:00:00'),
(26, 10, 28, 'd41d8cd98f00b204e9800998ecf8427e1610480920.pdf', '2021-01-12 19:48:40', 'jkakajajk', '', 'Rejected', '2021-01-12 19:57:47'),
(27, 8, 28, 'd41d8cd98f00b204e9800998ecf8427e1610481699.pdf', '2021-01-12 20:01:39', 'very good miss we will begin tomorrow', '', 'Sorted', '2021-01-12 20:03:09');

-- --------------------------------------------------------

--
-- Structure de la table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Development - IT', 'Development -Information Technology.', '2018-09-03 06:32:34', '2020-06-05 11:53:56', 1),
(3, 'HR', 'Human resoucre', '2018-09-03 06:33:33', '0000-00-00 00:00:00', 1),
(4, 'Operations', 'Operations', '2018-09-03 06:34:27', '0000-00-00 00:00:00', 1),
(5, 'Finance', 'Finance', '2020-06-05 11:26:40', '0000-00-00 00:00:00', 0),
(6, 'Admin', 'Adiminstrator', '2020-09-02 18:18:44', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `ID` int(10) NOT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `ContactPerson` varchar(100) DEFAULT NULL,
  `CompanyUrl` varchar(200) DEFAULT NULL,
  `CompanyAddress` mediumtext DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `CompanyEmail` varchar(200) DEFAULT NULL,
  `CompanyLogo` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `CompanyRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblcompany`
--

INSERT INTO `tblcompany` (`ID`, `CompanyName`, `ContactPerson`, `CompanyUrl`, `CompanyAddress`, `MobileNumber`, `CompanyEmail`, `CompanyLogo`, `Password`, `CompanyRegdate`) VALUES
(7, 'Optimum Company', 'Shabani Paul', 'optimum@gmail.com', 'kindo/Goma ville', 818283238, 'paulshabani@gmail.com', '41247dbb1d1f9eea032e4adabad87efb1606249921.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2020-11-24 20:32:02'),
(10, 'Quick Color solution', 'Yannick john', 'Quicksolution345@gmail.com', 'Goma / Butembo', 971234568, 'Yannick@gmail.com', '40026f66fef3c73c291b66620f3b3d6b1610486114.png', '81dc9bdb52d04dc20036dbd8313ed055', '2021-01-12 21:15:14'),
(11, 'Gatway Technology ', 'Afred Shabani', 'Gatway12', 'Goma / Butembo', 972345676, 'Afred@gmail.com', '65784b728c0baff5e8d3905654f198cf1610617987.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2021-01-14 09:53:07');

-- --------------------------------------------------------

--
-- Structure de la table `tbleducation`
--

CREATE TABLE `tbleducation` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `SecondaryBoard` varchar(100) DEFAULT NULL,
  `SecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SecondaryBoardper` varchar(120) DEFAULT NULL,
  `SecondaryBoardcgpa` varchar(120) DEFAULT NULL,
  `SSecondaryBoard` varchar(120) DEFAULT NULL,
  `SSecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SSecondaryBoardper` varchar(120) DEFAULT NULL,
  `SSecondaryBoardcgpa` varchar(120) DEFAULT NULL,
  `GraUni` varchar(120) DEFAULT NULL,
  `GraUniyop` varchar(120) DEFAULT NULL,
  `GraUnidper` varchar(120) DEFAULT NULL,
  `GraUnicgpa` varchar(120) DEFAULT NULL,
  `PGUni` varchar(120) DEFAULT NULL,
  `PGUniyop` varchar(120) DEFAULT NULL,
  `PGUniper` varchar(120) DEFAULT NULL,
  `PGUnicgpa` varchar(120) DEFAULT NULL,
  `ExtraCurriculars` varchar(120) DEFAULT NULL,
  `OtherAchivement` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbleducation`
--

INSERT INTO `tbleducation` (`ID`, `UserID`, `SecondaryBoard`, `SecondaryBoardyop`, `SecondaryBoardper`, `SecondaryBoardcgpa`, `SSecondaryBoard`, `SSecondaryBoardyop`, `SSecondaryBoardper`, `SSecondaryBoardcgpa`, `GraUni`, `GraUniyop`, `GraUnidper`, `GraUnicgpa`, `PGUni`, `PGUniyop`, `PGUniper`, `PGUnicgpa`, `ExtraCurriculars`, `OtherAchivement`) VALUES
(3, 1, 'CBSE', '2010', '80', '8', 'CBSE', '2012', '76', '7.6', 'B.TEch', '2016', '75', '7.5', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(4, 5, 'CBSE', '2010', '80', '8', 'CBSE', '2012', '76', '7.6', 'B.TEch', '2016', '75', '7.5', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(5, 6, 'CBSE', '2010', '80', '8', 'CBSE', '2012', '76', '7.6', 'B.TEch', '2016', '75', '7.5', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(7, 7, 'Mwangaza', '2011', '66', '6,6', 'Dekindu', '2017', '54', '5,4', 'ULK', '2020', '73', '7,3', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(8, 8, 'Mwangaza', '2002', '70', '7', 'Dekindu', '2008', '77', '7,7', 'ULK', '2015', '73', '7,3', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(9, 11, 'Kilembwe', '2000', '60', '6', 'ENANO', '2010', '70', '7', 'UNIKIND', '2013', '73', '7,3', 'UNIKIND', '2015', '66', '6,6', 'UNIKIND', 'UNIKIND');

-- --------------------------------------------------------

--
-- Structure de la table `tblemployers`
--

CREATE TABLE `tblemployers` (
  `id` int(11) NOT NULL,
  `ConcernPerson` varchar(150) DEFAULT NULL,
  `EmpEmail` varchar(250) DEFAULT NULL,
  `EmpPassword` varchar(250) DEFAULT NULL,
  `CompnayName` varchar(255) DEFAULT NULL,
  `CompanyTagline` mediumtext DEFAULT NULL,
  `CompnayDescription` mediumtext DEFAULT NULL,
  `CompanyUrl` varchar(255) DEFAULT NULL,
  `CompnayLogo` varchar(200) DEFAULT NULL,
  `noOfEmployee` char(10) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `typeBusinessEntity` varchar(255) DEFAULT NULL,
  `lcation` varchar(255) DEFAULT NULL,
  `establishedIn` char(200) DEFAULT NULL,
  `RegDtae` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblemployers`
--

INSERT INTO `tblemployers` (`id`, `ConcernPerson`, `EmpEmail`, `EmpPassword`, `CompnayName`, `CompanyTagline`, `CompnayDescription`, `CompanyUrl`, `CompnayLogo`, `noOfEmployee`, `industry`, `typeBusinessEntity`, `lcation`, `establishedIn`, `RegDtae`, `LastUpdationDate`, `Is_Active`) VALUES
(1, 'Anuj kumar', 'phpgurukulofficial@gmail.com', '$2y$12$Y4pEX6/8NraaNKAAQ9TW3ObU9YEG1W8ygyrjyT.YyHqRGyb8B7TYK', 'PHPGurukul', 'Don\'t be afraid of source code', '<span style=\"color: rgb(29, 33, 41); font-family: Georgia, serif; font-size: 17px; white-space: pre-wrap;\">PHP GURUKUL is a vision to provide free and easy education to everyone over the web.\r\n\r\nWe have an aim to educate and provide you the power to make website anything. Anytime. We donâ€™t teach, we educate.\r\n\r\nWe provide Tutorials for many Programming languages on PHP GURUKUL.\r\n\r\nWe started this site with clear mission that we want to deliver complete details knowledge of Programming to our audience. We are sharing this knowledge in all areas that you can see in our site.\r\n\r\nItâ€™s gives the power to synthesis anything anywhere you want to. Its the ultimate tool to solve any problem. And we help you excel in that by working with you.\r\n\r\nThe basic essence of life is to learn, explore and synthesis. We provide you with the tools to make your dreams come true.\r\n\r\nOur website is totally for free and available 24/7 .\r\nyou can connect with at â€“ info(at)phpgurukul(dot)com</span>', 'https://phpgurukul.com/', '6ffdd42a2c60069b5e21ea2ec21ba319.png', '5', 'Education', 'LLP', 'New Delhi, India', '2015', '2020-06-01 18:30:00', '2020-09-02 15:58:12', 1),
(2, 'John Doe', 'johndoe@test.com', '$2y$12$nXkgst8pnbalhqLftgocnuy8737IoNc2SC3ZTs7mDOavyX6bunZaS', 'Apple', 'Think beyond imagination', 'Lorem ipsum dolor sit amet, te ullum persecuti nam, ne vim lorem virtute. Summo abhorreant eos ei. Mel epicurei adversarium in, quodsi inermis gubergren sit ea. Sale aeque decore te quo, erant placerat concludaturque sit ex. Omnis malis assum cu vim. Vis cu nominati praesent dignissim, quo solum ludus regione ei. Ut mel denique lucilius.\r\n\r\nEi sit noster delectus, id qui inani detracto hendrerit, sed in nulla vidisse. His diceret feugait maluisset ut, pri id aperiri placerat insolens. Ad inermis vivendo maluisset vis, ius ei simul partem constituto. Ei affert euismod aliquando his, duo fabulas perpetua voluptatibus ut. Et vim vocibus docendi, eam cibo iuvaret evertitur ex, no adhuc malorum explicari ius. Pro augue suavitate tincidunt ex, pro in legere dicunt denique.', 'https://www.apple.com/in/', '80997ccfaf84ad6b5969bc0ee4c3a59b.jpg', NULL, NULL, NULL, NULL, NULL, '2020-05-31 18:30:00', '2020-06-08 06:57:00', 1),
(3, 'Anuj Kumar', 'tcs@test.com', '$2y$12$BIu47aSN0S16.Jar1A2oKuOFy6pV4t8WJD3XC1h0ZXEQy4msRJbci', 'TCS', 'Information Technology', 'Tata Consultancy Services', 'http://tcs.com', 'd657a1ed79a3a39a0cff0628959bee52.png', '10000', 'IT', 'Pvt Ltd', 'New Delhi India', '2000', '2020-09-01 18:30:00', '2020-09-03 02:18:18', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblexperience`
--

CREATE TABLE `tblexperience` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `EmployerName` varchar(200) DEFAULT NULL,
  `EmployementType` varchar(200) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `Ctc` decimal(10,0) DEFAULT NULL,
  `FromDate` varchar(200) DEFAULT NULL,
  `ToDate` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tblexperience`
--

INSERT INTO `tblexperience` (`ID`, `UserID`, `EmployerName`, `EmployementType`, `Designation`, `Ctc`, `FromDate`, `ToDate`, `Skills`, `CreationDate`) VALUES
(1, 1, 'ABC PVT LTD', 'Full Time', 'Software Developer', '50000', '2012-06-05', '2014-09-07', 'PHP,PDO', '2020-06-03 11:12:01'),
(2, 1, 'PAL pvt ltd', 'Full Time', 'Software Developer', '60000', '2014-09-08', '2018-06-09', 'PHP,PDO', '2020-06-03 11:14:41'),
(3, 1, 'FALT pvt ltd', 'Full Time', 'Software Developer', '75000', '2019-09-08', '', 'PHP, PDO', '2020-06-03 11:17:54'),
(4, 1, 'HMT Pvt ltd', 'fulltime', 'Software Developer', '75000', '2020-01-09', '', 'PHP, PDO, HTML, Excel', '2020-06-03 12:12:40'),
(5, 3, 'ABC', 'Fulltimw', 'Software Developer', '25000', '2019-07-02', '2020-02-29', '', '2020-09-02 18:15:05'),
(6, 3, 'XYZ', 'Fulltime', 'Software Developer', '40000', '2020-03-01', '2020-09-02', '', '2020-09-02 18:15:43');

-- --------------------------------------------------------

--
-- Structure de la table `tbljobs`
--

CREATE TABLE `tbljobs` (
  `jobId` int(11) NOT NULL,
  `employerId` int(11) NOT NULL,
  `jobCategory` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `jobType` varchar(255) DEFAULT NULL,
  `salaryPackage` char(200) DEFAULT NULL,
  `skillsRequired` varchar(255) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `jobLocation` varchar(255) DEFAULT NULL,
  `jobDescription` mediumtext DEFAULT NULL,
  `JobExpdate` date DEFAULT NULL,
  `postinDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `isActive` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbljobs`
--

INSERT INTO `tbljobs` (`jobId`, `employerId`, `jobCategory`, `jobTitle`, `jobType`, `salaryPackage`, `skillsRequired`, `experience`, `jobLocation`, `jobDescription`, `JobExpdate`, `postinDate`, `updationDate`, `isActive`) VALUES
(2, 1, 'Development - IT', 'PHP Developer', 'Full Time', '4000-10000', 'PHP, MYSQl, HTML, CI', '1-2', 'New York, California', 'Desired Candidate Profile\r\n-<div>Expertise in Core PHP and MVC Frameworks like Codeigniter and Laravel&nbsp;</div><div>-CMS Experience (WordPress, Magento, Joomla) is preferred. \r\n-Experience with SOAP, REST or JSON is preferred&nbsp;</div><div>-Experience with Git and Ubuntu is preferred.</div>', '2020-06-19', '2018-09-29 07:01:21', '2020-06-03 14:37:38', 1),
(3, 1, 'HR', 'HR Executive', 'Contract', '1000-5000', 'Executive Training, Induction, Employee Relations', '1-2', 'Hyderabad', 'Plan,develop&amp; implement strategy for employee life cycle\r\nPerformance Management.&nbsp;<div>Learning &amp; development for New Joiner\r\nSuccession planning.&nbsp;</div><div>Employee Engagement.&nbsp;</div><div>Implementing HR Performance Matrices across different process\r\nBuilding the Employer Brand</div>', '2020-07-05', '2018-09-29 07:17:54', '2020-06-03 14:38:28', 1),
(4, 1, 'Development - IT', 'Java Developer', 'Full Time', '5000-10000', 'Core Java, SQL, HTML', '2-4', 'New Delhi, Banglore', '<span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">In depth knowledge and application of Java, J2EE, JSP, Servlets, JDBC, Spring Framework, Struts framework, EJB and JavaScript</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Proficient understanding of web mark-up, including HTML5 and CSS3</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Experience in developing AJAX interfaces with AJAX libraries and frameworks (e.g. JQuery, AngularJS, etc.)</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Understanding of web services technologies such as REST, SOAP, HTTP, JSON</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Thorough understanding of usage of the fundamental concepts like Exception Handling, Static block/variables/classes, OOPS concepts, Collections, Multi-Threading, http sessions, session handling, Servlets/JSP life cycle, JDBC, actions, events, implicit objects, custom tags, context</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Exposure to an industry-standard database (Oracle or Sybase) on a UNIX platform with awareness of database design and SQL scripting knowledge and performance tuning</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Awareness of application servers /webservers (Weblogic , JBoss and iPlanet)</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Work experience in testing frameworks like Junit, TestNG</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Work experience on the transactional applications for low latency, high availability uses is a plus</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Ability to work in a fast-paced and agile development environment and to learn new frameworks/stacks</span><br style=\"padding: 0px; margin: 0px; font-family: Roboto, sans-serif; color: rgb(102, 102, 102); text-align: justify;\"><span style=\"color: rgb(102, 102, 102); font-family: Roboto, sans-serif; text-align: justify;\">Swings/.Net/C# knowledge is a plus</span>', '2020-08-09', '2018-09-29 13:03:37', '2020-06-03 14:38:57', 1),
(7, 3, 'Development - IT', 'Software Application Developer', 'Full Time', '80000-100000', 'PHP, MySQL, HTML, Bootstrap', '3-7', 'Noida', 'Software Application Developer', '2020-09-30', '2020-09-02 18:08:39', '2020-09-02 18:09:17', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tbljobseekers`
--

CREATE TABLE `tbljobseekers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(150) DEFAULT NULL,
  `ContactNumber` bigint(15) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `Resume` varchar(150) DEFAULT NULL,
  `AboutMe` mediumtext DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `Skills` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsActive` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbljobseekers`
--

INSERT INTO `tbljobseekers` (`id`, `FullName`, `EmailId`, `ContactNumber`, `Password`, `Resume`, `AboutMe`, `ProfilePic`, `Skills`, `RegDate`, `LastUpdationDate`, `IsActive`) VALUES
(1, 'Test', 'test@gmail.com', 1234567890, '$2y$12$3TLhf0ZbaRVduNapypRm1e7Ej848kgO.oJrQMwSpnvNZ/CWp4i0fe', '5c1894c1c2cddf44fb0fb17d136da6ac1585219175.pdf', '“I graduated with my degree in Economics two months ago. I chose that field of study because I’ve always been interested in finance and money, and a couple of family members told me it leads to great career options, too.”', 'e76de47f621d84adbab3266e3239baee1591629612.png', 'PHP, HTML, PDO', '2020-03-26 10:39:35', '2020-08-19 01:18:28', 1),
(2, 'Sarita', 'sarita@gmail.com', 9878979879, '$2y$12$A.hc1lnvQEx/yJmqdAtFveJDy/4YrmXErdh0rAs8YfZXGFAMQdu/i', '7b46decdf5055deead5bda75bca512521591076613.pdf', NULL, NULL, 'PHP, CodeIgniter', '2020-06-02 05:43:33', '2020-09-02 17:24:04', 1),
(3, 'Amit kumar', 'amit@gmail.com', 1234567809, '$2y$12$aheE1CSIbEVme0ARE2uIIec87h3oaYFpxPcjFWX2wErgD6LZK0Xh.', '40bf149da9a78c763a3a67998190a9431599070214.pdf', '5 Year Exp in Software Development', 'bd2c05722d8766fe480f3ae726111bec1599070279.jpg', 'php, mysql, HTML', '2020-09-02 18:10:14', '2020-09-02 19:05:30', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `ID` int(10) NOT NULL,
  `AppID` int(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT current_timestamp(),
  `IsRead` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblmessage`
--

INSERT INTO `tblmessage` (`ID`, `AppID`, `Message`, `Status`, `ResponseDate`, `IsRead`) VALUES
(1, 8, ' This is sample text for testing.', 'Rejected', '2019-10-07 17:06:09', '1'),
(2, 10, ' Your application is sort listed.', 'Sorted', '2019-10-09 17:04:22', '1'),
(4, 11, ' Good', 'Sorted', '2020-12-03 12:44:48', '1'),
(5, 12, ' Sorry dear we have another candidate for this job.', 'Rejected', '2020-12-03 15:51:52', '1'),
(6, 14, ' congratulation mister Evarist, you have successes for our job ', 'Sorted', '2020-12-05 14:18:55', '1'),
(7, 15, ' sorry Esther , be carefully and patient we will pick up for another job', 'Rejected', '2020-12-05 14:22:29', '1'),
(8, 13, ' congratulation for your job ', 'Sorted', '2020-12-05 14:23:21', '1'),
(9, 16, ' very good', 'Sorted', '2020-12-05 16:17:26', '1'),
(10, 17, ' Good cv', 'Sorted', '2020-12-06 16:31:30', '1'),
(11, 18, ' sdjhhsdjjks', 'Sorted', '2020-12-07 15:58:41', NULL),
(13, 19, ' asjkkasikas', 'Rejected', '2020-12-10 15:48:40', '1'),
(15, 20, ' Very Good', 'Sorted', '2020-12-10 17:20:49', '1'),
(16, 21, ' Good', 'Sorted', '2020-12-11 21:48:03', '1'),
(17, 22, ' Not good', 'Rejected', '2020-12-11 21:56:59', NULL),
(18, 23, ' very good', 'Sorted', '2020-12-12 14:35:11', NULL),
(19, 24, ' very nice', 'Sorted', '2020-12-12 15:21:22', '1'),
(20, 26, ' jkakajajk', 'Rejected', '2021-01-12 19:57:47', '1'),
(21, 27, ' very good miss we will begin tomorrow', 'Sorted', '2021-01-12 20:03:09', '1'),
(22, 27, ' very good miss we will begin tomorrow', 'Sorted', '2021-01-12 20:04:21', '1');

-- --------------------------------------------------------

--
-- Structure de la table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(13) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '                We are pleased to introduce ourselves as Spiderfocus, a professional placement services organization. We are a prominent Recruitment Firm offering out of the box Campus recruitment solutions to Institutes and colleges. With a vision to explore and harness the talents of young leaders, we have come up with a concept of Campus recruitment and promotion of institutes and colleges looking to place their fresh candidates.<div><br></div>', NULL, NULL, '2019-09-12 07:30:56'),
(2, 'contactus', 'Contact Us', '                                Katindo, N-12<div>Goma City</div>', 'evaristeshabani4@gmail.com', 250784769523, '2020-12-10 18:33:08');

-- --------------------------------------------------------

--
-- Structure de la table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` longtext DEFAULT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<div class=\"iw-heading  style1 vc_custom_1511523196571 border-color-theme\" style=\"outline: none; box-sizing: border-box; margin-top: 0px; margin-right: auto; margin-left: auto; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;; font-size: 13px; width: 670px; margin-bottom: 35px !important;\"><div class=\"iwh-description\" style=\"outline: none; box-sizing: border-box; color: rgb(51, 51, 51); font-size: 16px; line-height: 28px; font-weight: 600;\">Our job portal creates an opportunity for both job seekers and organizations to embrace an easy employment process. Users can register for free on this job portal and they can receive different job posting and updates that is related to their career search or their specific field.</div></div><div class=\"iw-heading  style1 vc_custom_1511523484678 border-color-theme\" style=\"outline: none; box-sizing: border-box; margin-top: 0px; margin-right: auto; margin-left: auto; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;; font-size: 13px; width: 670px; margin-bottom: 30px !important;\"><div class=\"iwh-description\" style=\"outline: none; box-sizing: border-box; color: rgb(51, 51, 51); font-size: 16px; line-height: 28px;\">As an organization, you can make use of our job portal to post different job openings as well as use them for searching for the most deserving candidates for vacancies. This helps to save time and help streamline the right candidate for a particular job.<br style=\"outline: none; box-sizing: border-box;\">Who can use our online job portal?<br style=\"outline: none; box-sizing: border-box;\">Our job portal can be used by both organization to post job openings and job seekers to find the job of their choice. Our job portal creates a platform for people seeking for job opportunities as well as corporations seeking best candidates for job openings, to come together.<br style=\"outline: none; box-sizing: border-box;\">At www.job-here.com, we are one of the best job sites and we also have provisions that make it possible for them to collect the required knowledge and background of each company or candidate. All the jobs are categorically organized in groups related to each field and industry. Job portals, also known as Career portals have aided numerous job seekers get suitable work and given a boost to their career growth.<br style=\"outline: none; box-sizing: border-box;\">So do not hesitate to explore your career opportunities with our job portal and give your career the elevation that you have always been waiting for.</div></div>', '2020-06-05 12:18:06', 0, '2020-06-05 11:00:55'),
(2, 'contactus', 'Contact Us', 'D-204, Hole Town South West,Delhi-110096,India', 'info@gmail.com', 1234567890, '2020-09-02 18:19:49');

-- --------------------------------------------------------

--
-- Structure de la table `tblsugetion`
--

CREATE TABLE `tblsugetion` (
  `id` int(11) NOT NULL,
  `messege_suggetion` mediumtext NOT NULL,
  `Names` varchar(255) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `dateSug` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tblsugetion`
--

INSERT INTO `tblsugetion` (`id`, `messege_suggetion`, `Names`, `User_Name`, `dateSug`, `IsRead`) VALUES
(5, 'asjjasasjsj', 'Esther', 'esther2@gmail.com', '2020-12-25 19:54:16', '1'),
(6, 'asdsdsdsdsd', 'Astrud', 'astrud@gmail.com', '2020-12-25 20:16:48', NULL),
(7, 'akkaakaal;', 'Paul', 'paul@gmail.com', '2020-12-25 20:19:23', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `StudentID` varchar(120) DEFAULT NULL,
  `Gender` varchar(120) NOT NULL,
  `Address` mediumtext NOT NULL,
  `Age` int(5) NOT NULL,
  `DOB` varchar(120) NOT NULL,
  `Image` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `UserRegdate` timestamp NULL DEFAULT current_timestamp(),
  `vkey` varchar(45) NOT NULL,
  `Verified` tinyint(1) NOT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `StudentID`, `Gender`, `Address`, `Age`, `DOB`, `Image`, `Password`, `UserRegdate`, `vkey`, `Verified`, `Is_Active`) VALUES
(8, 'Astrud Meli Muganza', 'astrud@gmail.com', 814133072, 'astrud22', 'Female', 'Kindu', 43, '1978-06-21', 'ca175575fa155066fd69bbd736be0d931606250623.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2020-11-24 20:42:17', '', 0, 0),
(10, 'Esther shabani', 'esther2@gmail.com', 972322098, 'Esther21', 'Female', ' Kindu', 17, '', 'ce3a4b6ba0572a9d871fdafe25fc76171607178254.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2020-12-03 16:23:47', '', 0, NULL),
(11, 'Lukozi Paul', 'paul@gmail.com', 813737684, '201720123', 'Male', ' Kindu', 35, '2020-12-03', '70389f12314e217bd5b15e9f342abef51607184742.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2020-12-05 16:11:13', '', 0, NULL),
(12, 'Thomas Shabani', 'thomas@gmail.com', 813755232, '123456', 'Male', ' ', 0, '', '', '81dc9bdb52d04dc20036dbd8313ed055', '2020-12-25 05:13:58', '87f9f6012acd778cd42f946b51157534', 0, NULL),
(19, 'Shabani Paul', 'shabani@gmail.com', 982345675, 'Shabani21', 'Male', ' ', 0, '', '', '81dc9bdb52d04dc20036dbd8313ed055', '2021-01-14 09:50:03', '20440f19619f0983c8b1caec2bb3f831', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblvacancy`
--

CREATE TABLE `tblvacancy` (
  `ID` int(10) NOT NULL,
  `CompanyID` int(10) DEFAULT NULL,
  `JobTitle` varchar(200) DEFAULT NULL,
  `MonthlySalary` varchar(120) DEFAULT NULL,
  `JobDescriptions` mediumtext DEFAULT NULL,
  `NoofOpenings` varchar(50) DEFAULT NULL,
  `JobLocation` varchar(120) DEFAULT NULL,
  `ApplyDate` varchar(120) DEFAULT NULL,
  `LastDate` varchar(120) DEFAULT NULL,
  `JobpostingDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblvacancy`
--

INSERT INTO `tblvacancy` (`ID`, `CompanyID`, `JobTitle`, `MonthlySalary`, `JobDescriptions`, `NoofOpenings`, `JobLocation`, `ApplyDate`, `LastDate`, `JobpostingDate`) VALUES
(17, 7, 'networking ', '$40-60 k', 'zxcvbnmxhjsdcvbbhjnjkkkjkbvzxcvbnmc vnm\r\nzxcvbnm,xcvbnm,cvbnm,xcvbnmsdfghjkfgh', '1', '4 Katindo Goma', '14-09-2019', '27-10-2019', '2020-11-24 12:35:04'),
(24, 8, 'Data meaning', '50-70', 'NDSNDSDNDSSSJHDSHJDSHDHSD', '2', 'Rubavu', '12-12-2020', '28-12-2020', '2020-12-12 03:55:07'),
(25, 8, 'MicroComputer', '$50-70', 'JHJKASKJAKLAL;LSAL;AAS', '3', 'Goma/ kyeshero', '10-01-2021', '20-01-2019', '2021-01-10 01:45:25'),
(26, 8, 'Intelligent Artificiel', '50-70', 'akkkwqwewghghdfhhfvdvvvv', '1', 'Goma/ katindo', '10-01-2021', '19-01-2021', '2021-01-10 01:51:20'),
(27, 8, 'Elecrticity', '100-250', 'ashakjajksjksjkjksjkss', '3', 'Rubavu', '10-01-2021', '21-01-2021', '2021-01-10 01:54:18'),
(28, 9, 'networking2', '50-70', 'hasjjsdhdfhjfjfjklsklasklksaskshjsjhhjsjhasas', '3', 'Goma/ katindo', '12-01-2021', '22-01-2020', '2021-01-12 11:46:06'),
(29, 10, 'Human computer interaction', '50-70', 'jajkasjksjsjsjsklskldkfksffjfjsjasas', '3', 'Goma', '12-12-2020', '22-11-2021', '2021-01-12 13:16:23'),
(30, 10, 'Technician Support', '70-80', 'ghwhwjhwuqqwui', '1', 'Goma ', '14-01-2021', '24-01-2021', '2021-01-14 12:50:19');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Index pour la table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tbleducation`
--
ALTER TABLE `tbleducation`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblemployers`
--
ALTER TABLE `tblemployers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblexperience`
--
ALTER TABLE `tblexperience`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Index pour la table `tbljobs`
--
ALTER TABLE `tbljobs`
  ADD PRIMARY KEY (`jobId`);

--
-- Index pour la table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblsugetion`
--
ALTER TABLE `tblsugetion`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tblvacancy`
--
ALTER TABLE `tblvacancy`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `tbleducation`
--
ALTER TABLE `tbleducation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tblemployers`
--
ALTER TABLE `tblemployers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tblexperience`
--
ALTER TABLE `tblexperience`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `tbljobs`
--
ALTER TABLE `tbljobs`
  MODIFY `jobId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tbljobseekers`
--
ALTER TABLE `tbljobseekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `tblsugetion`
--
ALTER TABLE `tblsugetion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `tblvacancy`
--
ALTER TABLE `tblvacancy`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
