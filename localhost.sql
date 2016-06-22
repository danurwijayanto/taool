-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2016 at 11:11 PM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nms`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_interface`
--

CREATE TABLE IF NOT EXISTS `data_interface` (
  `id_interface` int(255) NOT NULL AUTO_INCREMENT,
  `interface_index` int(100) NOT NULL,
  `nama_interface` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `id_perangkat` int(255) NOT NULL,
  `id_rrd` varchar(10) NOT NULL,
  PRIMARY KEY (`id_interface`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=406 ;

--
-- Dumping data for table `data_interface`
--

INSERT INTO `data_interface` (`id_interface`, `interface_index`, `nama_interface`, `status`, `id_perangkat`, `id_rrd`) VALUES
(313, 1, 'lo', 'up', 13, ''),
(314, 2, 'eth0', 'up', 13, ''),
(315, 3, 'eth0.0', 'up', 13, ''),
(316, 4, 'eth0.1', 'up', 13, ''),
(317, 5, 'br-lan', 'up', 13, ''),
(318, 6, 'wl0', 'up', 13, ''),
(319, 1, 'ether9', 'down', 1, ''),
(320, 2, 'ether10', 'down', 1, ''),
(321, 3, 'ether11', 'down', 1, ''),
(322, 4, 'ether12', 'down', 1, ''),
(323, 5, 'ether13', 'down', 1, ''),
(324, 6, 'eth1/PUB', 'up', 1, ''),
(325, 7, 'eth2/LAN/DEKANAT', 'up', 1, ''),
(326, 8, 'eth3/NOC', 'up', 1, ''),
(327, 9, 'eth4/IFE', 'up', 1, ''),
(328, 10, 'eth5/VPS', 'up', 1, ''),
(329, 11, 'eth6/VPS', 'up', 1, ''),
(330, 12, 'eth7/DIS', 'up', 1, ''),
(331, 13, 'eth8/Geothermal', 'up', 1, ''),
(332, 14, 'ether6', 'down', 1, ''),
(333, 15, 'ether7', 'down', 1, ''),
(334, 16, 'ether8', 'down', 1, ''),
(335, 17, 'vlan920', 'up', 1, ''),
(336, 18, 'vlan85', 'up', 1, ''),
(337, 19, 'brd85', 'up', 1, ''),
(338, 20, 'brd920', 'up', 1, ''),
(339, 21, 'vlan111', 'up', 1, ''),
(340, 22, 'vlan10', 'up', 1, ''),
(341, 23, 'vlan20', 'up', 1, ''),
(342, 24, 'vlan30', 'up', 1, ''),
(343, 25, 'vlan40', 'up', 1, ''),
(344, 26, 'vlan50', 'up', 1, ''),
(345, 27, 'vlan60', 'up', 1, ''),
(346, 28, 'vlan70', 'up', 1, ''),
(347, 29, 'vlan101', 'up', 1, ''),
(348, 30, 'vlan102', 'up', 1, ''),
(349, 31, 'vlan120', 'up', 1, ''),
(350, 32, 'vlan130', 'up', 1, ''),
(351, 33, 'vlan140', 'up', 1, ''),
(352, 34, 'brd10', 'up', 1, ''),
(353, 35, 'brd50', 'up', 1, ''),
(354, 36, 'vlan21/D3', 'up', 1, ''),
(355, 37, 'vlan50/IFE', 'up', 1, ''),
(356, 41, 'vlan90', 'up', 1, ''),
(357, 42, 'brd90', 'up', 1, ''),
(358, 43, 'vlan10/DIS', 'up', 1, ''),
(359, 44, 'eoip-to-45', 'down', 1, ''),
(360, 45, 'vlan112/noc', 'up', 1, ''),
(361, 46, 'brd111', 'up', 1, ''),
(362, 47, 'vlan921/VPS1', 'up', 1, ''),
(363, 49, 'brd921', 'up', 1, ''),
(364, 80, 'pptp-fk', 'down', 1, ''),
(365, 136329, 'pptp-out1', 'down', 1, ''),
(366, 136330, 'vlan85/dknt', 'up', 1, ''),
(367, 136335, 'vlan920/IFE', 'up', 1, ''),
(368, 136336, 'vlan85/IFE', 'up', 1, ''),
(369, 136337, 'vlan920/dknt', 'up', 1, ''),
(370, 136341, 'vlan100', 'up', 1, ''),
(371, 136342, 'test', 'down', 1, ''),
(372, 136348, 'vlan190', 'down', 1, ''),
(373, 136361, 'vlan999', 'up', 1, ''),
(374, 136367, 'vlan85/DIS', 'up', 1, ''),
(375, 136369, 'vlan80', 'up', 1, ''),
(376, 136370, 'vlan80/DIS', 'up', 1, ''),
(377, 136372, 'brd80', 'up', 1, ''),
(378, 136373, 'vlan11', 'up', 1, ''),
(379, 1, 'ether10', 'up', 2, ''),
(380, 2, 'ether9-labE II', 'up', 2, ''),
(381, 3, 'ether7-ruang-pakaris', 'up', 2, ''),
(382, 4, 'ether8-pakeko', 'up', 2, ''),
(383, 5, 'ether6-ruang-pakjalal', 'up', 2, ''),
(384, 6, 'eth5-if-labE', 'up', 2, ''),
(385, 7, 'eth4-d3insel', 'up', 2, ''),
(386, 8, 'eth3-if-dosen', 'up', 2, ''),
(387, 9, 'eth2-if-sidang-lt3', 'up', 2, ''),
(388, 10, 'eth1-pub', 'up', 2, ''),
(389, 55, 'vlan50', 'up', 2, ''),
(390, 56, 'vlan21', 'up', 2, ''),
(391, 57, 'brd-d3', 'up', 2, ''),
(392, 58, 'brd_dosen', 'up', 2, ''),
(393, 59, 'vlan920', 'up', 2, ''),
(394, 60, 'vlan85', 'up', 2, ''),
(395, 63, 'bridge85', 'up', 2, ''),
(396, 64, 'bridge920', 'up', 2, ''),
(397, 1, 'ether1-gateway', 'up', 12, ''),
(398, 2, 'ether2-local', 'up', 12, ''),
(399, 3, 'ether3-config', 'up', 12, ''),
(400, 4, 'ether4-gateway', 'up', 12, ''),
(401, 5, 'ether5-slave-local', 'down', 12, ''),
(402, 6, 'vlan80', 'up', 12, ''),
(403, 7, 'vlan80/toCCTV', 'down', 12, ''),
(404, 8, 'bridge80', 'up', 12, ''),
(405, 9, 'vlan70', 'up', 12, '');

--
-- Triggers `data_interface`
--
DROP TRIGGER IF EXISTS `interface_audit`;
DELIMITER //
CREATE TRIGGER `interface_audit` BEFORE UPDATE ON `data_interface`
 FOR EACH ROW BEGIN
	IF NEW.status <> OLD.status
then
	INSERT INTO perangkat_audit
    SET 
     	id_perangkat = OLD.id_perangkat,
		id_interface = OLD.interface_index,
        status_lama = OLD.status,
		status_baru = NEW.status,
        waktu = NOW(); 

END IF;
    
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `data_ipaddress`
--

CREATE TABLE IF NOT EXISTS `data_ipaddress` (
  `id_ipaddress` int(11) NOT NULL AUTO_INCREMENT,
  `id_perangkat` int(10) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `ip_addressindex` int(10) NOT NULL,
  `cidrr` int(2) NOT NULL,
  PRIMARY KEY (`id_ipaddress`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `data_ipaddress`
--

INSERT INTO `data_ipaddress` (`id_ipaddress`, `id_perangkat`, `ip_address`, `ip_addressindex`, `cidrr`) VALUES
(96, 13, '127.0.0.1', 1, 8),
(97, 13, '192.168.7.70', 5, 24),
(98, 1, '10.10.8.1', 34, 22),
(99, 1, '172.20.2.1', 23, 30),
(100, 1, '172.20.3.1', 24, 30),
(101, 1, '172.20.4.1', 25, 30),
(102, 1, '172.20.5.1', 35, 29),
(103, 1, '172.20.6.1', 27, 30),
(104, 1, '172.20.7.1', 28, 30),
(105, 1, '172.20.8.1', 136372, 28),
(106, 1, '172.20.20.1', 49, 24),
(107, 1, '172.20.21.1', 49, 28),
(108, 1, '172.20.22.1', 49, 28),
(109, 1, '172.20.23.1', 49, 28),
(110, 1, '172.20.55.1', 35, 29),
(111, 1, '172.20.80.1', 49, 28),
(112, 1, '172.20.100.1', 13, 29),
(113, 1, '172.20.111.1', 46, 28),
(114, 1, '172.20.112.1', 46, 29),
(115, 1, '182.255.0.34', 20, 28),
(116, 1, '182.255.2.34', 19, 28),
(117, 1, '192.168.33.1', 32, 24),
(118, 1, '192.168.100.1', 34, 24),
(119, 1, '192.168.101.1', 34, 24),
(120, 1, '192.168.107.1', 34, 24),
(121, 1, '192.168.108.1', 34, 24),
(122, 1, '192.168.110.1', 30, 24),
(123, 1, '192.168.112.1', 31, 24),
(124, 1, '192.168.115.1', 31, 24),
(125, 1, '192.168.140.1', 33, 24),
(126, 1, '192.168.156.1', 36, 24),
(127, 2, '172.20.5.3', 55, 29),
(128, 2, '192.168.8.60', 6, 24),
(129, 2, '192.168.9.60', 2, 24),
(130, 2, '192.168.11.1', 58, 24),
(131, 2, '192.168.12.1', 9, 24),
(132, 2, '192.168.13.1', 5, 24),
(133, 2, '192.168.156.1', 57, 24),
(134, 12, '172.20.7.2', 9, 30),
(135, 12, '192.168.0.253', 2, 24),
(136, 12, '192.168.2.253', 2, 24),
(137, 12, '192.168.135.253', 2, 24);

-- --------------------------------------------------------

--
-- Table structure for table `data_perangkat`
--

CREATE TABLE IF NOT EXISTS `data_perangkat` (
  `id_perangkat` int(11) NOT NULL AUTO_INCREMENT,
  `nama_perangkat` varchar(100) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `community` varchar(100) NOT NULL,
  `ver_snmp` varchar(3) NOT NULL,
  `os` varchar(15) NOT NULL,
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`id_perangkat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `data_perangkat`
--

INSERT INTO `data_perangkat` (`id_perangkat`, `nama_perangkat`, `ip_address`, `lokasi`, `community`, `ver_snmp`, `os`, `status`) VALUES
(1, 'Mikrotik Dinara', '182.255.0.34', 'UP2TI', 'public', 'v1', 'mikrotik', 'Up'),
(2, 'Mikrotik IF Gedung E', '172.20.5.3', 'Lab Informatika Gedung E', 'public', 'v1', 'mikrotik', 'Down'),
(12, 'Mikrotik Rb 1200', '172.20.7.2', 'Lab Statistik', 'public', 'v1', 'mikrotik', 'Down'),
(13, 'Hotspot Lab B IF', '192.168.7.70', 'Lab B IF', 'public', 'v1', 'linux', 'Down');

--
-- Triggers `data_perangkat`
--
DROP TRIGGER IF EXISTS `perangkat_audit`;
DELIMITER //
CREATE TRIGGER `perangkat_audit` BEFORE UPDATE ON `data_perangkat`
 FOR EACH ROW BEGIN
IF (NEW.status <> OLD.status)
THEN
	INSERT INTO perangkat_audit
    SET 
     	id_perangkat = OLD.id_perangkat,
        status_lama = OLD.status,
		status_baru = NEW.status,
        waktu = NOW();
END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `list_ip`
--

CREATE TABLE IF NOT EXISTS `list_ip` (
  `ip_squid` varchar(15) NOT NULL,
  `ip_interface` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_ip`
--

INSERT INTO `list_ip` (`ip_squid`, `ip_interface`) VALUES
('10.10.8.67', '10.10.8.1'),
('192.168.112.65', '192.168.112.1'),
('192.168.9.23', '192.168.9.60');

-- --------------------------------------------------------

--
-- Table structure for table `perangkat_audit`
--

CREATE TABLE IF NOT EXISTS `perangkat_audit` (
  `id_pa` int(11) NOT NULL AUTO_INCREMENT,
  `id_perangkat` varchar(100) NOT NULL,
  `id_interface` int(3) NOT NULL,
  `status_lama` varchar(5) NOT NULL,
  `status_baru` varchar(5) NOT NULL,
  `waktu` datetime NOT NULL,
  PRIMARY KEY (`id_pa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `squid_history`
--

CREATE TABLE IF NOT EXISTS `squid_history` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `waktu` datetime NOT NULL,
  `user_ip` varchar(15) NOT NULL,
  `domain_tujuan` varchar(100) NOT NULL,
  `ip_tujuan` varchar(15) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `squid_history`
--

INSERT INTO `squid_history` (`no`, `waktu`, `user_ip`, `domain_tujuan`, `ip_tujuan`) VALUES
(1, '2007-08-21 16:49:55', '10.10.8.67', 'imdb.com/title/tt1452626/', '207.171.162.180'),
(2, '2007-08-21 16:49:55', '192.168.19.86', 'z-ecx.images-amazon.com/images/G/01/csminstrumentation/ue-full-051542d0cfa6f645f8266601739de597._V1_', '54.182.4.231'),
(3, '2007-08-21 16:49:55', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/favicon-2165806970._CB379387995_.ico', '23.218.16.114'),
(4, '2007-08-21 16:49:55', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/safari-favicon-517611381._CB303901978_.svg', '23.218.16.114'),
(5, '2007-08-21 16:49:55', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/desktop-favicon-2165806970._CB379390718_.ico', '23.218.16.114'),
(6, '2007-08-21 16:49:55', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdbads/js/beacon-1675743762._CB299577842_.js', '23.218.16.114'),
(7, '2007-08-21 16:49:56', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/css/collections/title-flat-v2-2231884909._CB296877053_.css', '23.218.16.114'),
(8, '2007-08-21 16:49:56', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/js/collections/title-1455575723._CB297637896_.js', '23.218.16.114'),
(9, '2007-08-21 16:49:57', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/js/collections/common-774728307._CB299450936_.js', '23.218.16.114'),
(10, '2007-08-21 16:49:58', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdbads/js/collections/ads-tarnhelm-3572658906._CB295891726_.js', '23.218.16.114'),
(11, '2007-08-21 16:49:58', '192.168.19.86', 'ia.media-imdb.com/images/M/MV5BMjAwNjg3MTE4Nl5BMl5BanBnXkFtZTgwOTg0NTgxODE@._UY460_CR350,0,614,460_S', '23.218.16.114'),
(12, '2007-08-21 16:49:58', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/plugins/imdb_46x22-2264473254._CB306318085_.png', '23.218.16.114'),
(13, '2007-08-21 16:49:58', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/navbar/imdbpro_logo_nb-720143162._CB306318304_.png', '23.218.16.114'),
(14, '2007-08-21 16:49:58', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/nopicture/small/film-293970583._CB379390468_.png', '23.218.16.114'),
(15, '2007-08-21 16:49:58', '192.168.19.86', 'imdb.com/images/nopicture/medium/tv.png', '207.171.162.180'),
(16, '2007-08-21 16:49:58', '192.168.19.86', 'ia.media-imdb.com/images/M/MV5BMTM2NjgyNDc4OF5BMl5BanBnXkFtZTcwNDY1MzY0Mw@@._V1_UY268_CR110,0,182,26', '23.218.16.114'),
(17, '2007-08-21 16:49:58', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/nopicture/small/unknown-1394846836._CB379391227_.png', '23.218.16.114'),
(18, '2007-08-21 16:49:58', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/plugins/imdb_star_22x21-2889147855._CB306318215_.png', '23.218.16.114'),
(19, '2007-08-21 16:49:58', '192.168.19.86', 'imdb.com/images/nopicture/medium/film.png', '207.171.162.180'),
(20, '2007-08-21 16:49:59', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/navbar/imdbpro_logo_menu-2185879182._CB306318245_.png', '23.218.16.114'),
(21, '2007-08-21 16:49:59', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/nopicture/large/film-184890147._CB379391879_.png', '23.218.16.114'),
(22, '2007-08-21 16:49:59', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/rating/rating-list/sprite-1445387679._V_.png', '23.218.16.114'),
(23, '2007-08-21 16:49:59', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/poster/movie_large-2652508870._V_.png', '23.218.16.114'),
(24, '2007-08-21 16:49:59', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/title/title_overview_sprite-2406345693._V_.png', '23.218.16.114'),
(25, '2007-08-21 16:49:59', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/fade-1299348034._V_.png', '23.218.16.114'),
(26, '2007-08-21 16:49:59', '192.168.19.86', 'ia.media-imdb.com/images/M/MV5BOTU0MjI0NjA3N15BMl5BanBnXkFtZTgwNDEyODcxODE@._SX324_CR0,0,307,230_SY2', '23.218.16.114'),
(27, '2007-08-21 16:49:59', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(28, '2007-08-21 16:49:59', '192.168.19.86', 'amazon.com/aan/2009-05-01/imdb/default?', '54.239.25.192'),
(29, '2007-08-21 16:49:59', '192.168.19.86', 'imdb.com/rg/recs-p13nsims-title/has_widget//images/b.gif', '207.171.162.180'),
(30, '2007-08-21 16:49:59', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/navbar/navbar_sprite-580289297._V_.png', '23.218.16.114'),
(31, '2007-08-21 16:50:00', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/title/titlePageSprite-4125035369._V_.png', '23.218.16.114'),
(32, '2007-08-21 16:50:00', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(33, '2007-08-21 16:50:00', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(34, '2007-08-21 16:50:00', '192.168.19.86', 'i.media-imdb.com/images/social/twitter.html?', '54.192.151.51'),
(35, '2007-08-21 16:50:00', '192.168.19.86', 's.media-imdb.com/twilight/?', '54.239.26.173'),
(36, '2007-08-21 16:50:00', '192.168.19.86', 's.media-imdb.com/twilight/?', '54.239.26.173'),
(37, '2007-08-21 16:50:00', '192.168.19.86', 'vassg142.ocsp.omniroot.com/', '23.76.204.163'),
(38, '2007-08-21 16:50:00', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(39, '2007-08-21 16:50:01', '192.168.19.86', 'platform.twitter.com/widgets/follow_button.html?', '192.229.163.25'),
(40, '2007-08-21 16:50:01', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(41, '2007-08-21 16:50:01', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(42, '2007-08-21 16:50:01', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(43, '2007-08-21 16:50:02', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(44, '2007-08-21 16:50:02', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(45, '2007-08-21 16:50:02', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(46, '2007-08-21 16:50:03', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(47, '2007-08-21 16:50:03', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(48, '2007-08-21 16:50:03', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(49, '2007-08-21 16:50:04', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(50, '2007-08-21 16:50:04', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(51, '2007-08-21 16:50:04', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(52, '2007-08-21 16:50:04', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(53, '2007-08-21 16:50:45', '192.168.19.86', 'fls-na.amazon.com/1/batch/1/OP/A1EVAM02EL8SFB:092-2265761-8439723:1SN4M72KPPHKSA5KJ9GT:www.imdb.com$', '54.239.22.240'),
(54, '2007-08-21 16:50:45', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/nopicture/32x44/name-2138558783._CB379389446_.png', 'ia.media-imdb.c'),
(55, '2007-08-21 16:50:58', '192.168.19.86', 'shopbop.sp1.convertro.com:443', '54.208.68.117'),
(56, '2007-08-21 16:50:58', '192.168.19.86', 'google.com:443', '216.58.199.196'),
(57, '2007-08-21 16:51:06', '192.168.19.86', 'facebook.com:443', '31.13.79.220'),
(58, '2007-08-21 16:51:07', '192.168.19.86', 'scontent-sit4-1.xx.fbcdn.net:443', '31.13.78.17'),
(59, '2007-08-21 16:51:07', '192.168.19.86', 'fbstatic-a.akamaihd.net:443', '23.201.102.10'),
(60, '2007-08-21 16:51:08', '192.168.19.86', 'fbcdn-profile-a.akamaihd.net:443', '124.40.53.48'),
(61, '2007-08-21 16:51:08', '192.168.19.86', 'fbstatic-a.akamaihd.net:443', '23.201.102.10'),
(62, '2007-08-21 16:51:08', '192.168.19.86', 'cdn.syndication.twimg.com:443', '104.244.42.136'),
(63, '2007-08-21 16:51:25', '192.168.19.86', 'syndication.twitter.com:443', '104.244.42.72'),
(64, '2007-08-21 16:52:10', '192.168.19.86', 'uib.ff.avast.com:443', '169.54.166.68'),
(65, '2007-08-21 16:52:13', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/navbar/imdbpro_menu_user-2082544740._CB306318138_.jpg', '23.218.16.114'),
(66, '2007-08-21 16:52:14', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/navbar/watchlist_slot3_top250-575799966._CB306318332_.jpg', '23.218.16.114'),
(67, '2007-08-21 16:52:16', '192.168.19.86', 'google.com:443', '-'),
(68, '2007-08-21 16:52:18', '192.168.19.86', 'uib.ff.avast.com:443', '169.54.166.68'),
(69, '2007-08-21 16:52:20', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/navbar/watchlist_slot2_popular-4090757197._CB306318127_.jp', '23.218.16.114'),
(70, '2007-08-21 16:52:21', '192.168.19.86', 'uib.ff.avast.com:443', '169.54.166.68'),
(71, '2007-08-21 16:52:24', '192.168.19.86', 'ia.media-imdb.com/images/G/01/imdb/images/navbar/watchlist_slot1_logged_out-1670046337._CB306318084_', '23.218.16.114'),
(72, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/culture/cultural-comment/hahaha-vs-hehehe', '103.245.222.239'),
(73, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/icon/favicon.ico', '103.245.222.239'),
(74, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/js/adsinit.min.js?', '103.245.222.239'),
(75, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/js/stats.min.js?', '103.245.222.239'),
(76, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/js/jquery.min.js?', '103.245.222.239'),
(77, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/css/core.min.css?', '103.245.222.239'),
(78, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/px.gif', '103.245.222.239'),
(79, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/spacer-mobile-728x375.png', '103.245.222.239'),
(80, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/js/core.min.js?', '103.245.222.239'),
(81, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/js/head.min.js?', '103.245.222.239'),
(82, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/spacer-mobile-320x240.png', '103.245.222.239'),
(83, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/header_graphics/blog/cultural-comment.png', '103.245.222.239'),
(84, '2007-08-21 16:52:34', '192.168.19.86', 'newyorker.com/wp-content/uploads/2008/10/081020_r17846_p646-320-240.jpg', '103.245.222.239'),
(85, '2007-08-21 16:52:35', '192.168.19.86', 'newyorker.com/wp-content/uploads/2015/04/Schulz-No-Totally-320-240.jpg', '103.245.222.239'),
(86, '2007-08-21 16:52:36', '192.168.19.86', 'assets.adobedtm.com/6372cf21ef88ee60bc2977a4898dcb5c7945a212/satelliteLib-9cb2a39d627a819b6ca42ab76f', '104.78.18.58'),
(87, '2007-08-21 16:52:37', '192.168.19.86', 'gw.symcd.com/', '23.15.155.27'),
(88, '2007-08-21 16:52:37', '192.168.19.86', 'subscribe.newyorker.com:443', '23.15.106.229'),
(89, '2007-08-21 16:52:37', '192.168.19.86', 'assets.adobedtm.com/6372cf21ef88ee60bc2977a4898dcb5c7945a212/scripts/satellite-551d624a6633330014780', '104.78.18.58'),
(90, '2007-08-21 16:52:38', '192.168.19.86', 'condenast.demdex.net/event?', '52.76.177.172'),
(91, '2007-08-21 16:52:38', '192.168.19.86', 'newyorker.com/svc/module/most-popular', '103.245.222.239'),
(92, '2007-08-21 16:52:38', '192.168.19.86', 'newyorker.com/svc/module/promotions?', '103.245.222.239'),
(93, '2007-08-21 16:52:38', '192.168.19.86', 'newyorker.com/svc/module/strongbox', '103.245.222.239'),
(94, '2007-08-21 16:52:38', '192.168.19.86', 'assets.adobedtm.com/6372cf21ef88ee60bc2977a4898dcb5c7945a212/scripts/satellite-55119a333032300017100', '104.78.18.58'),
(95, '2007-08-21 16:52:38', '192.168.19.86', 'static.parsely.com/p.js', '54.182.4.202'),
(96, '2007-08-21 16:52:38', '192.168.19.86', 'event.condenastdigital.com/images/event.gif?', '103.245.222.239'),
(97, '2007-08-21 16:52:38', '192.168.19.86', 'event.condenastdigital.com/images/event.gif?', '103.245.222.239'),
(98, '2007-08-21 16:52:38', '192.168.19.86', 'assets.adobedtm.com/6372cf21ef88ee60bc2977a4898dcb5c7945a212/scripts/satellite-563139b064746d6a96002', '104.78.18.58'),
(99, '2007-08-21 16:52:38', '192.168.19.86', 'pixel.condenastdigital.com/config/the-new-yorker.config.js', '103.245.222.239'),
(100, '2007-08-21 16:52:38', '192.168.19.86', 'srv-2016-03-01-06.config.parsely.com/config/newyorker.com', '52.35.247.237'),
(101, '2007-08-21 16:52:38', '192.168.19.86', 'pixel.condenastdigital.com/sparrow.min.js', '103.245.222.239'),
(102, '2007-08-21 16:52:39', '192.168.19.86', 'static.parsely.com/code/ptrack-v0.4.5-engaged-time.js', '54.182.4.202'),
(103, '2007-08-21 16:52:39', '192.168.19.86', 'static.parsely.com/customizations/newyorker.com/moat_no_js_v1.js', '54.182.4.202'),
(104, '2007-08-21 16:52:42', '192.168.19.86', 'api.parsely.com/v2/related?', '54.85.116.83'),
(105, '2007-08-21 16:52:43', '192.168.19.86', 'plugin.mediavoice.com/plugin.js', '104.78.99.112'),
(106, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/js/account/loading.js', '103.245.222.239'),
(107, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/cn-ecom/failsafe/2/desktop_rollover_300x200.png', '103.245.222.239'),
(108, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/header_graphics/nyr-logo.svg', '103.245.222.239'),
(109, '2007-08-21 16:52:51', '192.168.19.86', 'condenast.demdex.net/firstevent?', '52.76.177.172'),
(110, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/img/promotions/tny-goat.jpg', '103.245.222.239'),
(111, '2007-08-21 16:52:51', '192.168.112.65', 'newyorker.com/wp-content/assets/dist/img/header_graphics/drawn-rule-horiz-Nav.png', '103.245.222.239'),
(112, '2007-08-21 16:52:51', ' 	172.20.5.3', 'newyorker.com/wp-content/uploads/2016/02/StackelbergandKnoll-TheBeatles-320x240-1456529217.jpg?', '103.245.222.239'),
(113, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/uploads/2016/02/Frank-GoldwatertoTrump-320x240-1456778113.jpg?', '103.245.222.239'),
(114, '2007-08-21 16:52:51', '192.168.9.23', 'newyorker.com/wp-content/assets/img/header_graphics/index/festival-2015.jpg', '103.245.222.239'),
(115, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/NYR_Nav-sprite.png?', '103.245.222.239'),
(116, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/tny-social-share-sprite.png?', '103.245.222.239'),
(117, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/sprites/TNY_lineart_sprite.png?', '103.245.222.239'),
(118, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/uploads/2016/02/Cassidy-DonaldTrumpIsRemakingtheRepublicanParty-320x240-145', '103.245.222.239'),
(119, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/img/promotions/jigsaw.png', '103.245.222.239'),
(120, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/uploads/2008/10/081020_r17846_p646-646-375.jpg', '103.245.222.239'),
(121, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/img/promotions/caption-contest.png', '103.245.222.239'),
(122, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/img/promotions/nyrh.png', '103.245.222.239'),
(123, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/topnav/nav_eustace_icon.png?', '103.245.222.239'),
(124, '2007-08-21 16:52:51', '192.168.19.86', 'condenast.demdex.net/event?', '52.76.177.172'),
(125, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/cn-ecom/failsafe/2/desktop_footer_1020x180.png', '103.245.222.239'),
(126, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/assets/dist/img/NYR_Nav-sprite@2x.png?', '103.245.222.239'),
(127, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/uploads/2016/02/Lane-TheSurrealAchievementsofthe2016Oscars-320x240-14567704', '103.245.222.239'),
(128, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/uploads/2014/03/sarah_larson1.png', '103.245.222.239'),
(129, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/uploads/2015/04/Larson-Hehehe-Hahaha-690.jpg', '103.245.222.239'),
(130, '2007-08-21 16:52:51', '192.168.19.86', 'newyorker.com/wp-content/uploads/2015/04/Schulz-No-Totally-728-375-07135640.jpg', '103.245.222.239'),
(131, '2007-08-21 16:52:51', '192.168.19.86', 'subscribe.condenet.com/images_covers/cover_newyorker_190.jpg', '103.245.222.239'),
(132, '2007-08-21 16:52:52', '192.168.19.86', 'stats2.newyorker.com/b/ss/conde-newyorker/1/H.22.1/s08036261938828?', '66.235.139.19'),
(133, '2007-08-21 16:52:53', '192.168.19.86', 'srv-2016-03-01-06.pixel.parsely.com/plogger/?', '52.35.241.157'),
(134, '2007-08-21 16:52:53', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(135, '2007-08-21 16:52:53', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(136, '2007-08-21 16:52:53', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(137, '2007-08-21 16:52:53', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(138, '2007-08-21 16:52:53', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(139, '2007-08-21 16:52:53', '192.168.19.86', 'srv-2016-03-01-06.pixel.parsely.com/plogger/?', '52.35.241.157'),
(140, '2007-08-21 16:52:53', '192.168.19.86', 'stats2.newyorker.com/b/ss/conde-newyorker/1/H.22.1/s08036261938828?', '66.235.139.19'),
(141, '2007-08-21 16:52:55', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(142, '2007-08-21 16:52:55', '192.168.19.86', 'stats2.newyorker.com/b/ss/conde-newyorker/1/H.22.1/s02226162290371?', '66.235.139.19'),
(143, '2007-08-21 16:52:55', '192.168.19.86', 'stats2.newyorker.com/b/ss/conde-newyorker/1/H.22.1/s02226162290371?', '66.235.139.19'),
(144, '2007-08-21 16:52:56', '192.168.19.86', 'b.scorecardresearch.com/r?', '23.201.102.43'),
(145, '2007-08-21 16:52:57', '192.168.19.86', 'b.scorecardresearch.com/r2?', '23.201.102.43'),
(146, '2007-08-21 16:52:57', '192.168.19.86', 'fast.condenast.demdex.net/dest4.html?', '60.254.131.55'),
(147, '2007-08-21 16:53:15', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(148, '2007-08-21 16:53:21', '192.168.19.86', 'fsm.undip.ac.id/', 'fsm.undip.ac.id'),
(149, '2007-08-21 16:53:21', '192.168.19.86', 'fsm.undip.ac.id/favicon.ico', 'fsm.undip.ac.id'),
(150, '2007-08-21 16:53:21', '192.168.19.86', 'fsm.undip.ac.id/favicon.ico', 'fsm.undip.ac.id'),
(151, '2007-08-21 16:53:30', '192.168.19.86', 'google.com:443', '114.120.192.27'),
(152, '2007-08-21 16:53:37', '192.168.19.86', 'apis.google.com:443', '74.125.203.101'),
(153, '2007-08-21 16:53:45', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(154, '2007-08-21 16:53:49', '192.168.19.86', 'uib.ff.avast.com:443', '5.45.62.80'),
(155, '2007-08-21 16:53:50', '192.168.19.86', 'uib.ff.avast.com:443', '5.45.62.80'),
(156, '2007-08-21 16:53:50', '192.168.19.86', 'shavar.services.mozilla.com:443', '52.10.113.39'),
(157, '2007-08-21 16:54:03', '192.168.19.86', 'uib.ff.avast.com:443', '169.54.166.68'),
(158, '2007-08-21 16:54:35', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(159, '2007-08-21 16:54:46', '192.168.19.86', 'use.typekit.net:443', '192.229.163.37'),
(160, '2007-08-21 16:54:47', '192.168.19.86', 'p.typekit.net:443', '192.229.163.37'),
(161, '2007-08-21 16:55:09', '192.168.19.86', 'uib.ff.avast.com:443', '5.45.62.80'),
(162, '2007-08-21 16:56:06', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(163, '2007-08-21 16:57:34', '192.168.19.86', 'safebrowsing.google.com:443', '216.58.199.206'),
(164, '2007-08-21 16:57:37', '192.168.19.86', 'safebrowsing-cache.google.com:443', '114.120.192.238'),
(165, '2007-08-21 16:58:45', '192.168.19.86', 'capture.condenastdigital.com/track?', '54.164.17.36'),
(166, '2007-08-21 17:03:35', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(167, '2007-08-21 17:12:36', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.3.181.157'),
(168, '2007-08-21 17:25:25', '192.168.19.86', 'syndication.twitter.com:443', '104.244.42.72'),
(169, '2007-08-21 17:26:14', '192.168.19.86', 'uib.ff.avast.com:443', '77.234.44.70'),
(170, '2007-08-21 17:26:14', '192.168.19.86', 'uib.ff.avast.com:443', '77.234.44.70'),
(171, '2007-08-21 17:26:55', '192.168.19.86', 'syndication.twitter.com:443', '104.244.42.136'),
(172, '2007-08-21 17:29:22', '192.168.19.86', 'safebrowsing.google.com:443', '74.125.200.190'),
(173, '2007-08-21 17:29:23', '192.168.19.86', 'safebrowsing-cache.google.com:443', '114.121.192.59'),
(174, '2007-08-21 17:30:00', '192.168.19.86', 'capture.condenastdigital.com/track?', '52.72.129.171');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `role` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`, `role`) VALUES
(1, 'Danur', 'danurwijayanto@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1),
(6, 'Baguss', 'baguss@yahoo.com', '47bce5c74f589f4867dbd57e9ca9f808', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
