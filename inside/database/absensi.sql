-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 07:34 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `absensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE IF NOT EXISTS `tb_guru` (
  `id_guru` int(50) NOT NULL AUTO_INCREMENT,
  `nama_guru` varchar(70) NOT NULL,
  `ket_guru` varchar(50) NOT NULL,
  PRIMARY KEY (`id_guru`),
  KEY `id_guru` (`id_guru`),
  KEY `nama_guru` (`nama_guru`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nama_guru`, `ket_guru`) VALUES
(1, 'Melanoke Pramanik', 'Rekayasa Perangkat Lunak'),
(2, 'Sukman Hadi Pratama', 'Rekayasa Perangkat Lunak'),
(9, 'Renawan Gunawan', 'Multimedia'),
(10, 'Manusia 1', 'Multimedia'),
(11, 'Manusia 2', 'Multimedia'),
(12, 'Manusia 3', 'Multimedia'),
(13, 'Manusia 4', 'Telekomunikasi dan Jaringan'),
(16, 'Manusia 4', 'Tari'),
(17, 'Manusia 5', 'Tari');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE IF NOT EXISTS `tb_jurusan` (
  `id_jurusan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(50) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE IF NOT EXISTS `tb_kelas` (
  `id_kelas` int(50) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) NOT NULL,
  `gedung` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `gedung`) VALUES
(2, 'Moh. Yamin', 'A-1'),
(3, 'Achmad Soebardjoe', 'A-2'),
(4, 'Ki Hajar Dewantara', 'A-3'),
(6, 'Pattimura', 'A-4'),
(7, 'Soekarno', 'A-5'),
(8, 'Moh. Hatta', 'A-6'),
(9, 'Soeharto', 'A-7\r\n'),
(10, 'Hatta Rajasa', 'A-8'),
(11, 'Manusia', 'A-9'),
(12, 'Tako I Chiu', 'A-10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE IF NOT EXISTS `tb_siswa` (
  `id_siswa` int(50) NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(70) NOT NULL,
  `nama_ortu` varchar(70) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `ket_siswa` varchar(15) NOT NULL,
  `alpha` int(11) NOT NULL,
  `ijin` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `masuk` int(11) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nama_siswa`, `nama_ortu`, `alamat`, `no_telp`, `ket_siswa`, `alpha`, `ijin`, `sakit`, `masuk`) VALUES
(1, 'Risang D', 'Slamet Rosidi', 'JL. Tunggul Ametung Gang 6', '082234831469', 'Masuk', 23, 2, 1, 20),
(2, 'Nafis Harwin Dhaifullah', 'Harwin Dhaifullah', 'Taman Baru', '088877333444', 'Masuk', 1, 1, 1, 10),
(4, 'adara cipta', 'marsudi', 'jl hos cokroaminto', '081223567456', 'Masuk', 10, 1, 0, 0),
(5, 'ismaul hasanah', 'mauliyah', 'jl dadapan no 36', '082123456786', 'Masuk', 13, 2, 0, 0),
(6, 'inggit suciarty', 'cahyono', 'ketapang banyuwangi', '083453676222', 'Masuk', 12, 0, 0, 0),
(7, 'hamdan syafii', 'nasrudin', 'desa parijatah wetan', '089657432132', 'Alpha', 14, 0, 0, 0),
(8, 'Puji Astuti', 'nuraini', 'Kebaman Srono', '098765676565', 'Ijin', 14, 0, 0, 0),
(9, 'lusyana ilma', 'sri hadayati', 'desan paspan Banyuwangi', '087878654544', 'Sakit', 12, 0, 0, 0),
(10, 'nana nurhasanah', 'nanik indriyani', 'desa watu gong', '098765678765', 'Masuk', 17, 0, 0, 0),
(11, 'kusmiyati', 'kurdiyanto', 'kalipahit', '087777654234', 'Masuk', 19, 0, 0, 0),
(12, 'khusnul hotimah', 'supardi', 'desa concrong', '087677564455', 'Masuk', 15, 0, 0, 0),
(13, 'norma anisa', 'nur khoir', 'desa boyolangu banyuwangi', '082233676543', 'Masuk', 19, 0, 0, 0),
(14, 'dyah indani', 'kholifah', 'jl karangasem no 302', '087766676563', 'Ijin', 16, 0, 0, 0),
(15, 'Moch yasri', 'yasin', 'perum griya indah blok.d25', '087876655456', 'Sakit', 15, 0, 0, 0),
(16, 'budianto', 'nanang wijayanto', 'jl wijaya kusuma no 53', '082334567654', 'Alpha', 15, 0, 0, 0),
(17, 'nurmaa aisya', 'andii', 'perum vila gajah mada blok d26', '087877656543', 'Masuk', 9, 0, 0, 0),
(18, 'rusmiyanti', 'yudi aryono', 'desa bakungan', '098765764467', 'Masuk', 7, 0, 0, 0),
(19, 'lucky ardiyanto', 'yayak indayanti', 'desa kebaman', '0987578564456', 'Masuk', 9, 0, 0, 0),
(20, 'maira arsina', 'mainaa nisya', 'perumahan bukit mas blok II.20', '087857545677', 'Masuk', 10, 0, 0, 0),
(21, 'bayu nurkholis', 'baidii', 'perum vgm blok d.13', '087857654654', 'Masuk', 11, 0, 0, 0),
(22, 'mila amira', 'mayaningsih', 'desa grogol', '081234567654', 'Masuk', 21, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa_rpl`
--

CREATE TABLE IF NOT EXISTS `tb_siswa_rpl` (
  `id_siswa` int(50) NOT NULL AUTO_INCREMENT,
  `nama_siswa` varchar(70) NOT NULL,
  `nama_ortu` varchar(70) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `ket_siswa` varchar(15) NOT NULL,
  `alpha` int(11) NOT NULL,
  `ijin` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `masuk` int(11) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_siswa_rpl`
--

INSERT INTO `tb_siswa_rpl` (`id_siswa`, `nama_siswa`, `nama_ortu`, `alamat`, `no_telp`, `ket_siswa`, `alpha`, `ijin`, `sakit`, `masuk`) VALUES
(1, 'risang', 'tidak tahu', 'jl ikan mati no 12', '0888888888', 'Masuk', 11, 11, 11, 11),
(2, 'daniswara', 'tidak mau tahu', 'jl beton berat no 11', '088888888', 'sakit', 11, 11, 11, 11),
(3, 'manusia', 'hitam kelam', 'jl sakit semua no 12', '09999999999', 'masuk', 11, 11, 11, 11),
(4, 'pitekan tropus homotikus', 'pitekan tropus palelokektikus', 'jl nangka berduri no 13', '01111111111', 'masuk', 11, 11, 11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(80) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`nama_user`,`username`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `username`, `password`) VALUES
('1c90bb97-e61e-11e8-babe-88d7f6700848', 'Risang Daniswara', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
