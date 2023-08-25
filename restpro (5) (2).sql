-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 14 Ağu 2023, 18:06:33
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `restpro`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `aid` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `status` bit(1) NOT NULL,
  `surname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`aid`, `description`, `email`, `name`, `password`, `status`, `surname`) VALUES
(1, 'admin desc', 'isa@mail.com', 'İsa', '12345', b'1', 'Hatipoğlu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Bilgisayar'),
(2, 'TV'),
(3, 'Laptop'),
(4, 'Monitör'),
(5, 'Telefon'),
(6, 'Kulaklık');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `photo`
--

CREATE TABLE `photo` (
  `id` bigint(20) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `photo`
--

INSERT INTO `photo` (`id`, `url`, `product_id`) VALUES
(9, 'https://fastly.picsum.photos/id/8/5000/3333.jpg?hmac=OeG5ufhPYQBd6Rx1TAldAuF92lhCzAhKQKttGfawWuA', 5),
(10, 'https://fastly.picsum.photos/id/8/5000/3333.jpg?hmac=OeG5ufhPYQBd6Rx1TAldAuF92lhCzAhKQKttGfawWuA', 5),
(11, 'https://fastly.picsum.photos/id/8/5000/3333.jpg?hmac=OeG5ufhPYQBd6Rx1TAldAuF92lhCzAhKQKttGfawWuA', 6),
(12, 'https://fastly.picsum.photos/id/8/5000/3333.jpg?hmac=OeG5ufhPYQBd6Rx1TAldAuF92lhCzAhKQKttGfawWuA', 6),
(13, 'https://fastly.picsum.photos/id/8/5000/3333.jpg?hmac=OeG5ufhPYQBd6Rx1TAldAuF92lhCzAhKQKttGfawWuA', 7),
(14, 'https://fastly.picsum.photos/id/8/5000/3333.jpg?hmac=OeG5ufhPYQBd6Rx1TAldAuF92lhCzAhKQKttGfawWuA', 7),
(15, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 8),
(16, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 8),
(17, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 9),
(18, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 9),
(19, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 10),
(20, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 10),
(21, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 11),
(22, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 11),
(23, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 12),
(24, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 12),
(30, 'https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc', 2),
(31, 'https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc', 3),
(32, 'https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc', 4),
(33, 'https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc', 5),
(34, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 13),
(35, 'https://fastly.picsum.photos/id/1/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 13),
(36, 'https://fastly.picsum.photos/id/2/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 13),
(37, 'https://fastly.picsum.photos/id/3/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 13),
(38, 'https://fastly.picsum.photos/id/4/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 13),
(39, 'https://fastly.picsum.photos/id/2/5000/3333.jpg?hmac=_KDkqQVttXw_nM-RyJfLImIbafFrqLsuGO5YuHqD-qQ', 14),
(40, 'https://fastly.picsum.photos/id/2/5000/3333.jpg?hmac=_KDkqQVttXw_nM-RyJfLImIbafFrqLsuGO5YuHqD-qQ', 14),
(51, 'https://productimages.hepsiburada.net/s/376/550/110000393677092.jpg/format:webp', 17),
(53, 'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97291131/fee_786_587_png/APPLE-iPhone-14-128GB-Ak%C4%B1ll%C4%B1-Telefon-Mavi-MPVN3TU-A', 17),
(54, 'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_97291121/fee_786_587_png/APPLE-iPhone-14-128GB-Ak%C4%B1ll%C4%B1-Telefon-Mavi-MPVN3TU-A', 17),
(68, 'https://cdn.dsmcdn.com/mnresize/120/180/ty692/product/media/images/20230117/17/260456228/250485459/3/3_org_zoom.jpg', 49),
(69, 'https://cdn.dsmcdn.com/mnresize/120/180/ty692/product/media/images/20230117/17/260456228/250485459/4/4_org_zoom.jpg', 49),
(70, 'https://cdn.dsmcdn.com/mnresize/1200/1800/ty692/product/media/images/20230117/17/260456228/250485459/3/3_org_zoom.jpg', 50),
(71, 'https://cdn.dsmcdn.com/mnresize/1200/1800/ty692/product/media/images/20230117/17/260456228/250485459/4/4_org_zoom.jpg', 50),
(76, 'https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc', 2),
(77, 'https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc', 2),
(78, 'https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc', 2),
(79, 'https://fastly.picsum.photos/id/8/5000/3333.jpg?hmac=OeG5ufhPYQBd6Rx1TAldAuF92lhCzAhKQKttGfawWuA', 2),
(80, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 1),
(81, 'https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc', 1),
(82, 'https://fastly.picsum.photos/id/2/5000/3333.jpg?hmac=_KDkqQVttXw_nM-RyJfLImIbafFrqLsuGO5YuHqD-qQ', 1),
(83, 'https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc', 1),
(84, 'https://productimages.hepsiburada.net/s/356/550/110000369565815.jpg/format:webp', 53),
(85, 'https://productimages.hepsiburada.net/s/356/550/110000365195846.jpg/format:webp', 53),
(86, 'https://productimages.hepsiburada.net/s/356/550/110000369565816.jpg/format:webp', 53),
(87, 'https://productimages.hepsiburada.net/s/356/550/110000365195697.jpg/format:webp', 53),
(88, 'https://productimages.hepsiburada.net/s/49/550/10986385899570.jpg/format:webp', 60),
(89, 'https://productimages.hepsiburada.net/s/49/550/10986385932338.jpg/format:webp', 60),
(90, 'https://productimages.hepsiburada.net/s/49/550/10986385965106.jpg/format:webp', 60),
(91, 'https://productimages.hepsiburada.net/s/49/550/10986385997874.jpg/format:webp', 60),
(92, 'https://productimages.hepsiburada.net/s/49/550/10986386030642.jpg/format:webp', 60),
(93, 'https://productimages.hepsiburada.net/s/49/550/10986385899570.jpg/format:webp', 61),
(94, 'https://productimages.hepsiburada.net/s/49/550/10986385932338.jpg/format:webp', 61),
(95, 'https://productimages.hepsiburada.net/s/49/550/10986385965106.jpg/format:webp', 61),
(96, 'https://productimages.hepsiburada.net/s/49/550/10986385997874.jpg/format:webp', 61),
(97, 'https://productimages.hepsiburada.net/s/49/550/10986386030642.jpg/format:webp', 61),
(98, 'https://productimages.hepsiburada.net/s/49/550/10986385899570.jpg/format:webp', 62),
(99, 'https://productimages.hepsiburada.net/s/49/550/10986385932338.jpg/format:webp', 62),
(100, 'https://productimages.hepsiburada.net/s/49/550/10986385965106.jpg/format:webp', 62),
(101, 'https://productimages.hepsiburada.net/s/49/550/10986385997874.jpg/format:webp', 62),
(102, 'https://productimages.hepsiburada.net/s/49/550/10986386030642.jpg/format:webp', 62),
(103, 'https://productimages.hepsiburada.net/s/49/550/10986385899570.jpg/format:webp', 63),
(104, 'https://productimages.hepsiburada.net/s/49/550/10986385932338.jpg/format:webp', 63),
(105, 'https://productimages.hepsiburada.net/s/49/550/10986385965106.jpg/format:webp', 63),
(106, 'https://productimages.hepsiburada.net/s/49/550/10986385997874.jpg/format:webp', 63),
(107, 'https://productimages.hepsiburada.net/s/49/550/10986386030642.jpg/format:webp', 63),
(108, 'https://productimages.hepsiburada.net/s/239/550/110000223385970.jpg/format:webp', 64),
(109, 'https://productimages.hepsiburada.net/s/239/550/110000223382941.jpg/format:webp', 64),
(110, 'https://productimages.hepsiburada.net/s/239/550/110000223382923.jpg/format:webp', 64),
(111, 'https://productimages.hepsiburada.net/s/239/550/110000223382942.jpg/format:webp', 64),
(112, 'https://productimages.hepsiburada.net/s/239/550/110000223384996.jpg/format:webp', 64),
(113, 'https://productimages.hepsiburada.net/s/239/550/110000223385970.jpg/format:webp', 65),
(114, 'https://productimages.hepsiburada.net/s/239/550/110000223382941.jpg/format:webp', 65),
(115, 'https://productimages.hepsiburada.net/s/239/550/110000223382923.jpg/format:webp', 65),
(116, 'https://productimages.hepsiburada.net/s/239/550/110000223382942.jpg/format:webp', 65),
(117, 'https://productimages.hepsiburada.net/s/239/550/110000223384996.jpg/format:webp', 65),
(118, 'https://productimages.hepsiburada.net/s/436/550/110000469110265.jpg/format:webp', 66),
(119, 'https://productimages.hepsiburada.net/s/436/550/110000469117961.jpg/format:webp', 66),
(120, 'https://productimages.hepsiburada.net/s/436/550/110000469110266.jpg/format:webp', 66),
(121, 'https://productimages.hepsiburada.net/s/436/550/110000469210012.jpg/format:webp', 66),
(122, 'https://productimages.hepsiburada.net/s/436/550/110000469118018.jpg/format:webp', 66),
(123, 'https://productimages.hepsiburada.net/s/436/550/110000469110265.jpg/format:webp', 67),
(124, 'https://productimages.hepsiburada.net/s/436/550/110000469117961.jpg/format:webp', 67),
(125, 'https://productimages.hepsiburada.net/s/436/550/110000469110266.jpg/format:webp', 67),
(126, 'https://productimages.hepsiburada.net/s/436/550/110000469210012.jpg/format:webp', 67),
(127, 'https://productimages.hepsiburada.net/s/436/550/110000469118018.jpg/format:webp', 67),
(128, 'https://productimages.hepsiburada.net/s/436/550/110000469118024.jpg/format:webp', 68),
(129, 'https://productimages.hepsiburada.net/s/436/550/110000469210018.jpg/format:webp', 68),
(130, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 68),
(131, 'https://productimages.hepsiburada.net/s/436/550/110000469110212.jpg/format:webp', 68),
(132, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 68),
(133, 'https://productimages.hepsiburada.net/s/436/550/110000469118024.jpg/format:webp', 69),
(134, 'https://productimages.hepsiburada.net/s/436/550/110000469210018.jpg/format:webp', 69),
(135, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 69),
(136, 'https://productimages.hepsiburada.net/s/436/550/110000469110212.jpg/format:webp', 69),
(137, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 69),
(138, 'https://productimages.hepsiburada.net/s/436/550/110000469118024.jpg/format:webp', 70),
(139, 'https://productimages.hepsiburada.net/s/436/550/110000469210018.jpg/format:webp', 70),
(140, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 70),
(141, 'https://productimages.hepsiburada.net/s/436/550/110000469110212.jpg/format:webp', 70),
(142, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 70),
(143, 'https://productimages.hepsiburada.net/s/436/550/110000469118024.jpg/format:webp', 71),
(144, 'https://productimages.hepsiburada.net/s/436/550/110000469210018.jpg/format:webp', 71),
(145, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 71),
(146, 'https://productimages.hepsiburada.net/s/436/550/110000469110212.jpg/format:webp', 71),
(147, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 71),
(148, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 72),
(149, 'https://productimages.hepsiburada.net/s/436/550/110000469210018.jpg/format:webp', 72),
(150, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 72),
(151, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 72),
(152, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 72),
(153, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 73),
(154, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 73),
(155, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 73),
(156, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 73),
(157, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 73),
(158, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 74),
(159, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 74),
(160, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 74),
(161, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 74),
(162, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 74),
(163, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 75),
(164, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 75),
(165, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 75),
(166, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 75),
(167, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 75),
(168, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 76),
(169, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 76),
(170, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 76),
(171, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 76),
(172, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 76),
(173, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 77),
(174, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 77),
(175, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 77),
(176, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 77),
(177, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 77),
(178, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 78),
(179, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 78),
(180, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 78),
(181, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 78),
(182, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 78),
(183, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 79),
(184, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 79),
(185, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 79),
(186, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 79),
(187, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 79),
(188, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 80),
(189, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 80),
(190, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 80),
(191, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 80),
(192, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 80),
(193, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 81),
(194, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 81),
(195, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 81),
(196, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 81),
(197, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 81),
(198, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 82),
(199, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 82),
(200, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 82),
(201, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 82),
(202, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 82),
(203, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 83),
(204, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 83),
(205, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 83),
(206, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 83),
(207, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 83),
(208, 'https://productimages.hepsiburada.net/s/122/550/110000072180121.jpg/format:webp', 84),
(209, 'https://productimages.hepsiburada.net/s/122/550/110000072179539.jpg/format:webp', 84),
(210, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 84),
(211, 'https://productimages.hepsiburada.net/s/436/550/110000469210017.jpg/format:webp', 84),
(212, 'https://productimages.hepsiburada.net/s/436/550/110000469210016.jpg/format:webp', 84),
(213, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 85),
(214, 'https://productimages.hepsiburada.net/s/59/550/110000000644891.jpg/format:webp', 85),
(215, 'https://productimages.hepsiburada.net/s/125/550/110000074766225.jpg/format:webp', 85),
(216, 'https://productimages.hepsiburada.net/s/125/550/110000074766226.jpg/format:webp', 85),
(217, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 85),
(218, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 86),
(219, 'https://productimages.hepsiburada.net/s/59/550/110000000644891.jpg/format:webp', 86),
(220, 'https://productimages.hepsiburada.net/s/125/550/110000074766225.jpg/format:webp', 86),
(221, 'https://productimages.hepsiburada.net/s/125/550/110000074766226.jpg/format:webp', 86),
(222, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 86),
(223, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 87),
(224, 'https://productimages.hepsiburada.net/s/59/550/110000000644891.jpg/format:webp', 87),
(225, 'https://productimages.hepsiburada.net/s/125/550/110000074766225.jpg/format:webp', 87),
(226, 'https://productimages.hepsiburada.net/s/125/550/110000074766226.jpg/format:webp', 87),
(227, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 87),
(228, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 88),
(229, 'https://productimages.hepsiburada.net/s/59/550/110000000644891.jpg/format:webp', 88),
(230, 'https://productimages.hepsiburada.net/s/125/550/110000074766225.jpg/format:webp', 88),
(231, 'https://productimages.hepsiburada.net/s/125/550/110000074766226.jpg/format:webp', 88),
(232, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 88),
(233, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 89),
(234, 'https://productimages.hepsiburada.net/s/59/550/110000000644891.jpg/format:webp', 89),
(235, 'https://productimages.hepsiburada.net/s/125/550/110000074766225.jpg/format:webp', 89),
(236, 'https://productimages.hepsiburada.net/s/125/550/110000074766226.jpg/format:webp', 89),
(237, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 89),
(238, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 90),
(239, 'https://productimages.hepsiburada.net/s/59/550/110000000644891.jpg/format:webp', 90),
(240, 'https://productimages.hepsiburada.net/s/125/550/110000074766225.jpg/format:webp', 90),
(241, 'https://productimages.hepsiburada.net/s/125/550/110000074766226.jpg/format:webp', 90),
(242, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 90),
(243, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 91),
(244, 'https://productimages.hepsiburada.net/s/59/550/110000000644891.jpg/format:webp', 91),
(245, 'https://productimages.hepsiburada.net/s/125/550/110000074766225.jpg/format:webp', 91),
(246, 'https://productimages.hepsiburada.net/s/125/550/110000074766226.jpg/format:webp', 91),
(247, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 91),
(248, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 92),
(249, 'https://productimages.hepsiburada.net/s/59/550/110000000644891.jpg/format:webp', 92),
(250, 'https://productimages.hepsiburada.net/s/125/550/110000074766225.jpg/format:webp', 92),
(251, 'https://productimages.hepsiburada.net/s/125/550/110000074766226.jpg/format:webp', 92),
(252, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 92),
(253, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 93),
(254, 'https://productimages.hepsiburada.net/s/59/550/110000000644891.jpg/format:webp', 93),
(255, 'https://productimages.hepsiburada.net/s/125/550/110000074766225.jpg/format:webp', 93),
(256, 'https://productimages.hepsiburada.net/s/125/550/110000074766226.jpg/format:webp', 93),
(257, 'https://productimages.hepsiburada.net/s/81/550/110000023492827.jpg/format:webp', 93),
(258, 'https://productimages.hepsiburada.net/s/158/550/110000114861216.jpg/format:webp', 94),
(259, 'https://productimages.hepsiburada.net/s/158/550/110000114861217.jpg/format:webp', 94),
(260, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 94),
(261, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 94),
(262, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 94),
(263, 'https://productimages.hepsiburada.net/s/158/550/110000114861216.jpg/format:webp', 95),
(264, 'https://productimages.hepsiburada.net/s/158/550/110000114861217.jpg/format:webp', 95),
(265, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 95),
(266, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 95),
(267, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 95),
(268, 'https://productimages.hepsiburada.net/s/158/550/110000114861216.jpg/format:webp', 96),
(269, 'https://productimages.hepsiburada.net/s/158/550/110000114861217.jpg/format:webp', 96),
(270, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 96),
(271, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 96),
(272, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 96),
(273, 'https://productimages.hepsiburada.net/s/158/550/110000114861216.jpg/format:webp', 97),
(274, 'https://productimages.hepsiburada.net/s/158/550/110000114861217.jpg/format:webp', 97),
(275, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 97),
(276, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 97),
(277, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 97),
(278, 'https://productimages.hepsiburada.net/s/158/550/110000114861216.jpg/format:webp', 98),
(279, 'https://productimages.hepsiburada.net/s/158/550/110000114861217.jpg/format:webp', 98),
(280, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 98),
(281, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 98),
(282, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 98),
(283, 'https://productimages.hepsiburada.net/s/158/550/110000114861216.jpg/format:webp', 99),
(284, 'https://productimages.hepsiburada.net/s/158/550/110000114861217.jpg/format:webp', 99),
(285, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 99),
(286, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 99),
(287, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 99),
(288, 'https://productimages.hepsiburada.net/s/158/550/110000114861216.jpg/format:webp', 100),
(289, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 100),
(290, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 100),
(291, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 100),
(292, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 100),
(293, 'https://productimages.hepsiburada.net/s/158/550/110000114861216.jpg/format:webp', 101),
(294, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 101),
(295, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 101),
(296, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 101),
(297, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 101),
(298, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 102),
(299, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 102),
(300, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 102),
(301, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 102),
(302, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 102),
(303, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 103),
(304, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 103),
(305, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 103),
(306, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 103),
(307, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 103),
(308, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 104),
(309, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 104),
(310, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 104),
(311, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 104),
(312, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 104),
(313, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 105),
(314, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 105),
(315, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 105),
(316, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 105),
(317, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 105),
(318, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 106),
(319, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 106),
(320, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 106),
(321, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 106),
(322, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 106),
(323, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 107),
(324, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 107),
(325, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 107),
(326, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 107),
(327, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 107),
(328, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 108),
(329, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 108),
(330, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 108),
(331, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 108),
(332, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 108),
(333, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 109),
(334, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 109),
(335, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 109),
(336, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 109),
(337, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 109),
(338, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 110),
(339, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 110),
(340, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 110),
(341, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 110),
(342, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 110),
(343, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 111),
(344, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 111),
(345, 'https://productimages.hepsiburada.net/s/158/550/110000114861218.jpg/format:webp', 111),
(346, 'https://productimages.hepsiburada.net/s/170/550/110000132693165.jpg/format:webp', 111),
(347, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 111),
(348, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 112),
(349, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 112),
(350, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 112),
(351, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 112),
(352, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 112),
(353, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 113),
(354, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 113),
(355, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 113),
(356, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 113),
(357, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 113),
(358, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 114),
(359, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 114),
(360, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 114),
(361, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 114),
(362, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 114),
(363, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 115),
(364, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 115),
(365, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 115),
(366, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 115),
(367, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 115),
(368, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 116),
(369, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 116),
(370, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 116),
(371, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 116),
(372, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 116),
(373, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 117),
(374, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 117),
(375, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 117),
(376, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 117),
(377, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 117),
(378, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 118),
(379, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 118),
(380, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 118),
(381, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 118),
(382, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 118),
(383, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 119),
(384, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 119),
(385, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 119),
(386, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 119),
(387, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 119),
(388, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 120),
(389, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 120),
(390, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 120),
(391, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 120),
(392, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 120),
(393, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 121),
(394, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 121),
(395, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 121),
(396, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 121),
(397, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 121),
(398, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 122),
(399, 'https://productimages.hepsiburada.net/s/178/550/110000141556248.jpg/format:webp', 122),
(400, 'https://productimages.hepsiburada.net/s/178/550/110000141933055.jpg/format:webp', 122),
(401, 'https://productimages.hepsiburada.net/s/223/550/110000202676395.jpg/format:webp', 122),
(402, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 122);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `brand_name`, `description`, `price`, `stock`, `thumbnail`, `title`, `category_id`) VALUES
(1, 'Samsung', 'Apple MacBook Air', 1200, 15, 'https://productimages.hepsiburada.net/s/388/550/110000408221183.jpg/format:webp', 'Samsung Galaxy S22', 5),
(2, 'Apple', 'Acer Aspire 3 A315-24P ', 1000, 10, 'https://productimages.hepsiburada.net/s/446/550/110000480375661.jpg/format:webp', 'APPLE MacBook Pro M2 8GB', 1),
(3, 'Apple', 'Apple MacBook Air', 1000, 10, 'https://productimages.hepsiburada.net/s/429/550/110000460593876.jpg/format:webp', 'APPLE MacBook Pro M2 8GB', 1),
(4, 'Apple', 'Acer Aspire 3 A315-24P ', 1000, 10, 'https://productimages.hepsiburada.net/s/308/550/110000300562095.jpg/format:webp', 'APPLE MacBook Pro M2 8GB', 1),
(5, 'Apple', 'Apple MacBook Air', 1000, 10, 'https://fastly.picsum.photos/id/8/5000/3333.jpg?hmac=OeG5ufhPYQBd6Rx1TAldAuF92lhCzAhKQKttGfawWuA', 'APPLE MacBook Pro M2 8GB', 1),
(6, 'Apple', 'Apple MacBook Air', 1000, 10, 'https://productimages.hepsiburada.net/s/381/550/110000399232674.jpg/format:webp', 'APPLE MacBook Pro M2 8GB', 1),
(7, 'Apple', 'Apple MacBook Air', 1000, 10, 'https://productimages.hepsiburada.net/s/394/550/110000419077515.jpg/format:webp', 'APPLE MacBook Pro M2 8GB', 3),
(8, 'Apple', 'Windows 11 15.6” FHD ', 1000, 10, 'https://productimages.hepsiburada.net/s/90/550/110000033298664.jpg/format:webp', 'APPLE MacBook Pro M2 8GB', 3),
(9, 'Apple', 'Windows 11 15.6” FHD ', 1000, 10, 'https://productimages.hepsiburada.net/s/422/550/110000452238181.jpg/format:webp', 'APPLE MacBook Pro M2 16GB', 3),
(10, 'Apple', 'Akıllı telefon', 1000, 10, 'https://productimages.hepsiburada.net/s/356/550/110000369707280.jpg/format:webp', 'APPLE MacBook Pro M2 16GB', 3),
(11, 'Apple', 'Windows 11 15.6” FHD ', 1000, 10, 'https://productimages.hepsiburada.net/s/49/550/10983950254130.jpg/format:webp', 'APPLE MacBook Pro M2 16GB', 3),
(12, 'Apple', 'Akıllı telefon', 1000, 10, 'https://fastly.picsum.photos/id/0/5000/3333.jpg?hmac=_j6ghY5fCfSD6tvtcV74zXivkJSPIfR9B8w34XeQmvU', 'APPLE MacBook Pro M2 16GB', 3),
(13, 'Apple', 'Akıllı telefon', 1000, 10, 'https://productimages.hepsiburada.net/s/394/550/110000419077517.jpg/format:webp', 'APPLE MacBook Pro M2 16GB', 3),
(14, 'Apple', 'Akıllı telefon', 1000, 10, 'https://fastly.picsum.photos/id/2/5000/3333.jpg?hmac=_KDkqQVttXw_nM-RyJfLImIbafFrqLsuGO5YuHqD-qQ', 'APPLE MacBook Pro M2 16GB', 3),
(17, 'Apple', 'Akıllı telefon', 1500, 20, 'https://productimages.hepsiburada.net/s/376/550/110000393677091.jpg/format:webp', 'iPhone 13 Pro', 5),
(49, 'Xioami', 'Akıllı telefon', 1000, 10, 'https://cdn.dsmcdn.com/mnresize/120/180/ty691/product/media/images/20230117/17/260456228/250485459/1/1_org_zoom.jpg', 'Xioami Note11 Pro', 5),
(50, 'Xioami', 'Akıllı telefon', 1000, 10, 'https://cdn.dsmcdn.com/mnresize/1200/1800/ty691/product/media/images/20230117/17/260456228/250485459/1/1_org_zoom.jpg', 'Xioami Note11 Pro', 5),
(53, 'Samsung', 'Akıllı telefon', 1000, 10, 'https://productimages.hepsiburada.net/s/356/550/110000365195847.jpg/format:webp', 'Samsung Galaxy', 5),
(60, 'Apple', 'Akıllı telefon', 1000, 10, 'https://productimages.hepsiburada.net/s/49/550/10986385866802.jpg/format:webp', 'iPhone 11 128 GB', 5),
(61, 'Apple', 'Akıllı telefon', 1000, 10, 'https://productimages.hepsiburada.net/s/49/550/10986385866802.jpg/format:webp', 'iPhone 11 128 GB', 5),
(62, 'Apple', 'Akıllı telefon', 1000, 10, 'https://productimages.hepsiburada.net/s/49/550/10986386030642.jpg/format:webp', 'iPhone 11 128 GB', 5),
(63, 'Apple', 'Akıllı telefon', 1000, 10, 'https://productimages.hepsiburada.net/s/49/550/10986385997874.jpg/format:webp', 'iPhone 12 256 GB', 5),
(64, 'POCO', 'Akıllı telefon', 1000, 10, 'https://productimages.hepsiburada.net/s/239/550/110000223315227.jpg/format:webp', 'Poco C40 64 GB ', 5),
(65, 'POCO', 'Akıllı telefon', 1000, 10, 'https://productimages.hepsiburada.net/s/239/550/110000223382942.jpg/format:webp', 'Poco C40 128 GB', 5),
(66, 'Samsung', 'Samsung Galaxy Flip 5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/436/550/110000469117961.jpg/format:webp', 'Samsung Galaxy Z ', 5),
(67, 'Samsung', 'Samsung Galaxy Flip 5 256 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/436/550/110000469118018.jpg/format:webp', 'Samsung Galaxy Z ', 5),
(68, 'Samsung', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/436/550/110000469117967.jpg/format:webp', 'Samsung Galaxy Z', 5),
(69, 'Samsung', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/436/550/110000469325006.jpg/format:webp', 'Samsung Galaxy Z', 5),
(70, 'Samsung', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/436/550/110000469117965.jpg/format:webp', 'Samsung Galaxy Z ', 5),
(71, 'Samsung', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/122/550/110000072180120.jpg/format:webp', 'Samsung Galaxy Z ', 5),
(72, 'Samsung', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/122/550/110000072180120.jpg/format:webp', 'Samsung Galaxy S20 ', 5),
(73, 'Samsung', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/122/550/110000072179540.jpg/format:webp', 'Samsung Galaxy S20 ', 5),
(74, 'Samsung', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/122/550/110000072179540.jpg/format:webp', 'Samsung Galaxy S20 ', 5),
(75, 'HONOR', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/358/550/110000371749212.jpg/format:webp', 'Honor X9a 128 GB 8 ', 5),
(76, 'HONOR', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/358/550/110000371749213.jpg/format:webp', 'Honor X9a 256 GB 8 ', 5),
(77, 'Reeder', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/202/550/110000175851325.jpg/format:webp', 'Reeder P13 Blue Max', 5),
(78, 'Reeder', 'Samsung Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/202/550/110000175853176.jpg/format:webp', 'Reeder P14 Blue Max', 5),
(79, 'Apple', 'Apple Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/376/550/110000393677727.jpg/format:webp', 'iPhone 14 128 GB', 5),
(80, 'Apple', 'Apple Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/376/550/110000393677709.jpg/format:webp', 'iPhone 14 128 GB', 5),
(81, 'Apple', 'Apple Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/376/550/110000393677700.jpg/format:webp', 'iPhone 14 128 GB', 5),
(82, 'Apple', 'Apple Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/376/550/110000393677082.jpg/format:webp', 'iPhone 14 128 GB', 5),
(83, 'Apple', 'Apple Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/376/550/110000393677732.jpg/format:webp', 'iPhone 14 128 GB', 5),
(84, 'Apple', 'Apple Galaxy Fold5 512 GB Sepette 3000 TL indirimli !', 1000, 10, 'https://productimages.hepsiburada.net/s/376/550/110000393677093.jpg/format:webp', 'iPhone 14 128 GB', 5),
(85, 'Turbox', 'Turbox Tx45 Intel Core i7 860 8GB Ram 256GB SSD 4GB', 1000, 10, 'https://productimages.hepsiburada.net/s/125/550/110000074766224.jpg/format:webp', 'Turbox Tx45 Intel ', 1),
(86, 'Turbox', 'Turbox Tx45 Intel Core i7 860 8GB Ram 256GB SSD 4GB', 1000, 10, 'https://productimages.hepsiburada.net/s/381/550/110000400166650.jpg/format:webp', 'Turbox Tx45 Intel ', 1),
(87, 'Turbox', 'Turbox Tx45 Intel Core i7 860 8GB Ram 256GB SSD 4GB', 1000, 10, 'https://productimages.hepsiburada.net/s/369/550/110000386569318.jpg/format:webp', 'Turbox Tx45 Intel ', 1),
(88, 'Turbox', 'Turbox Tx45 Intel Core i7 860 8GB Ram 256GB SSD 4GB', 1000, 10, 'https://productimages.hepsiburada.net/s/369/550/110000386569321.jpg/format:webp', 'Turbox Tx45 Intel ', 1),
(89, 'Metsa', 'Turbox Tx45 Intel Core i7 860 8GB Ram 256GB SSD 4GB', 1000, 10, 'https://productimages.hepsiburada.net/s/356/550/110000369838082.jpg/format:webp', 'RTX27 Ryzen 5 5500 ', 1),
(90, 'Metsa', 'Turbox Tx45 Intel Core i7 860 8GB Ram 256GB SSD 4GB', 1000, 10, 'https://productimages.hepsiburada.net/s/356/550/110000369838083.jpg/format:webp', 'RTX27 Ryzen 5 5500 ', 1),
(91, 'Metsa', 'Turbox Tx45 Intel Core i7 860 8GB Ram 256GB SSD 4GB', 1000, 10, 'https://productimages.hepsiburada.net/s/343/550/110000350628521.jpg/format:webp', 'RTX27 Ryzen 5 5500 ', 1),
(92, 'Lenovo', 'Turbox Tx45 Intel Core i7 860 8GB Ram 256GB SSD 4GB', 1000, 10, 'https://productimages.hepsiburada.net/s/299/550/110000288949810.jpg/format:webp', 'Lenovo IdeaCentre 3 ', 1),
(93, 'Lenovo', 'Turbox Tx45 Intel Core i7 860 8GB Ram 256GB SSD 4GB', 1000, 10, 'https://productimages.hepsiburada.net/s/399/550/110000424957329.jpg/format:webp', 'Lenovo IdeaCentre 3 ', 1),
(94, 'Samsung', 'Full Hd Gaming Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/158/550/110000114861214.jpg/format:webp', 'Samsung Odyssey G3 24', 4),
(95, 'Gamepower', 'HD Curved LED Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/394/550/110000419250579.jpg/format:webp', 'Gamepower Intense X20 27', 4),
(96, 'Gamepower', 'HD Curved LED Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/311/550/110000303894160.jpg/format:webp', 'Gamepower Intense X20 27', 4),
(97, 'Gamepower', 'HD Curved LED Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/440/550/110000473816734.jpg/format:webp', 'Gamepower Intense X20 27', 4),
(98, 'Gamepower', 'HD Curved LED Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/436/550/110000468923751.jpg/format:webp', 'Gamepower Intense X20 27', 4),
(99, 'Everest', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/417/550/110000446955256.jpg/format:webp', 'Everest M-635 24', 4),
(100, 'Everest', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/380/550/110000398941220.jpg/format:webp', 'Everest M-635 24', 4),
(101, 'MSI', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/39/550/10642874040370.jpg/format:webp', 'Everest M-635 24', 4),
(102, 'MSI', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/169/550/110000132248637.jpg/format:webp', 'Everest M-635 24', 4),
(103, 'MSI', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/131/550/110000081927950.jpg/format:webp', 'Everest M-635 24', 4),
(104, 'AOC', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/40/550/10653565812786.jpg/format:webp', 'Full HD Curved Monitör', 4),
(105, 'AOC', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/358/550/110000371480551.jpg/format:webp', 'Full HD Curved Monitör', 4),
(106, 'AOC', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/341/550/110000348390632.jpg/format:webp', 'Full HD Curved Monitör', 4),
(107, 'AOC', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/80/550/110000021825851.jpg/format:webp', 'Full HD Curved Monitör', 4),
(108, 'AOC', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/178/550/110000142693303.jpg/format:webp', 'Full HD Curved Monitör', 4),
(109, 'AOC', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/64/550/110000006120949.jpg/format:webp', 'Full HD Curved Monitör', 4),
(110, 'AOC', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/132/550/110000083504207.jpg/format:webp', 'Full HD Curved Monitör', 4),
(111, 'AOC', 'Flat PC Led Monitör', 1000, 10, 'https://productimages.hepsiburada.net/s/206/550/110000182067959.jpg/format:webp', 'Full HD Curved Monitör', 4),
(112, 'Onvo', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/178/550/110000141933056.jpg/format:webp', 'Onvo OV43250 43', 2),
(113, 'Onvo', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/142/550/110000095130347.jpg/format:webp', 'Onvo OV43250 43', 2),
(114, 'Onvo', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/47/550/10911363268658.jpg/format:webp', 'Onvo OV43250 43', 2),
(115, 'Onvo', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/128/550/110000079060029.jpg/format:webp', 'Onvo OV43250 43', 2),
(116, 'Onvo', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/414/550/110000443930666.jpg/format:webp', 'Onvo OV43250 43', 2),
(117, 'Onvo', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/303/550/110000294907870.jpg/format:webp', 'Onvo OV43250 43', 2),
(118, 'Toshiba', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/310/550/110000302651924.jpg/format:webp', 'Onvo OV43250 43', 2),
(119, 'Toshiba', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/398/550/110000423038910.jpg/format:webp', 'Onvo OV43250 43', 2),
(120, 'Toshiba', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/136/550/110000088119022.jpg/format:webp', 'Onvo OV43250 43', 2),
(121, 'Toshiba', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/384/550/110000403728375.jpg/format:webp', 'Onvo OV43250 43', 2),
(122, 'Toshiba', 'Uydu Alıcılı Full HD Android Smart', 1000, 10, 'https://productimages.hepsiburada.net/s/407/550/110000435060882.jpg/format:webp', 'Onvo OV43250 43', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `uid` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `status` bit(1) NOT NULL,
  `surname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`uid`, `description`, `email`, `name`, `password`, `status`, `surname`) VALUES
(1, 'user desc', 'ali@mail.com', 'Ali', '12345', b'1', 'Bilmem');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `UK_c0r9atamxvbhjjvy5j8da1kam` (`email`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK8hs00tlacip0319kutudailre` (`product_id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `photo`
--
ALTER TABLE `photo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `uid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `FK8hs00tlacip0319kutudailre` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Tablo kısıtlamaları `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
