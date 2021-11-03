-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2021 a las 01:46:10
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login_db`
--
CREATE DATABASE IF NOT EXISTS `login_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login_db`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `career` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `education`
--

INSERT INTO `education` (`id`, `id_persona`, `career`, `end`, `img`, `school`, `score`, `start`, `title`) VALUES
(1, 1, 'Ingeniería', '2028', 'https://www.ort.edu.ar/img/LogoOrtArgWeb2017.jpg', 'UTN', '0', '2019', 'Sistemas Computacionales'),
(2, 1, 'Tecnólogo', '2018', 'https://media-exp1.licdn.com/dms/image/C560BAQEUHhax7RCj0A/company-logo_100_100/0/1584819716706?e=1637798400&v=beta&t=4UkXYz39PCtn4PqDYbwXZNWPSC3MgoHckfDfqQLBlHc', 'Centro de Enseñanza Técnica Industrial', '82', '2014', 'Desarrollo de Software'),
(3, 1, 'Técnico', '2014', 'https://media-exp1.licdn.com/dms/image/C4E0BAQFhOoraRhsOSQ/company-logo_100_100/0/1590421269154?e=1637798400&v=beta&t=gyinTA0GPG1xIBDPj01L33mQHcdOdyMOdpoRHY640Pc', 'Escuela Secundaria Técnica 14', '0', '2012', 'Electronica, comunicacion y sistemas de control');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_verification_token`
--

DROP TABLE IF EXISTS `email_verification_token`;
CREATE TABLE IF NOT EXISTS `email_verification_token` (
  `token_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expiry_dt` datetime NOT NULL,
  `token` varchar(255) NOT NULL,
  `token_status` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `UK_idu2ippaks8bn6vcsq62khvdu` (`token`),
  KEY `FKqmvt3qcly3hbvde97srchdo3x` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `email_verification_token`
--

INSERT INTO `email_verification_token` (`token_id`, `created_at`, `updated_at`, `expiry_dt`, `token`, `token_status`, `user_id`) VALUES
(2, '2021-11-01 16:40:18', '2021-11-01 16:44:34', '2021-11-01 17:40:18', '11b466fe-d816-46ce-8a88-dc1a9c8b3bf2', 'STATUS_CONFIRMED', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experience`
--

DROP TABLE IF EXISTS `experience`;
CREATE TABLE IF NOT EXISTS `experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `time_elapsed` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `experience`
--

INSERT INTO `experience` (`id`, `id_persona`, `place`, `company`, `end`, `img`, `mode`, `position`, `start`, `time_elapsed`) VALUES
(1, 1, 'Buenos Aires, Argentina', 'CONICET', 'actualidad', 'https://es.wikipedia.org/wiki/Consejo_Nacional_de_Investigaciones_Cient%C3%ADficas_y_T%C3%A9cnicas_(Argentina)#/media/Archivo:Conicet_Logo_con_letras.png', 'Free Lance', 'Backend Developer', 'mar 2019', '2 años y 6 meses'),
(2, 1, '1200 Park Ave emeryville, ca, USA', 'Pixar', 'actualidad', 'https://media-exp1.licdn.com/dms/image/C4E0BAQFhOoraRhsOSQ/company-logo_100_100/0/1590421269154?e=1637798400&v=beta&t=gyinTA0GPG1xIBDPj01L33mQHcdOdyMOdpoRHY640Pc', 'Jornada parcial', 'Backend Developer', 'mar 2019', '2 años y 6 meses'),
(3, 1, '1200 Park Ave emeryville, ca, USA', 'Mercado Libre', 'actualidad', 'https://media-exp1.licdn.com/dms/image/C4E0BAQFhOoraRhsOSQ/company-logo_100_100/0/1590421269154?e=1637798400&v=beta&t=gyinTA0GPG1xIBDPj01L33mQHcdOdyMOdpoRHY640Pc', 'Jornada parcial', 'Backend Developer', 'mar 2019', '2 años y 6 meses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(31),
(31),
(31),
(31),
(31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_token`
--

DROP TABLE IF EXISTS `password_reset_token`;
CREATE TABLE IF NOT EXISTS `password_reset_token` (
  `token_id` bigint(20) NOT NULL,
  `expiry_dt` datetime NOT NULL,
  `token_name` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `UK_p4ksw3dweftlkig5mtd3onr9a` (`token_name`),
  KEY `FK5lwtbncug84d4ero33v3cfxvl` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_me` varchar(255) DEFAULT NULL,
  `back_image` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `ubication` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `about_me`, `back_image`, `date_of_birth`, `full_name`, `image`, `mail`, `position`, `ubication`) VALUES
(1, 'Matemático, físico e informático argentino considerado por muchos como el padre de la computación en la Argentina.', 'https://png.pngtree.com/thumb_back/fw800/background/20190223/ourmid/pngtree-black-shading-red-shard-geometry-banner-background-shadingred-debrisred-glowgeometry-image_80184.jpg', '15/03/1980', 'Manuel Sadosky', 'https://i2.wp.com/imagenes.milenio.com/E-yJnq9EhkZhWaU7T_2utkyTymQ=/958x596/smart/https://www.milenio.com/uploads/media/2018/10/05/steve-jobs-perdio-vida-consecuencia_0_199_1193_742.jpg?w=640&ssl=1', 'manuel@gmail.com', 'informático', 'Buenos Aires (Argentina) ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
CREATE TABLE IF NOT EXISTS `proyectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `año_fin` varchar(255) DEFAULT NULL,
  `año_inicio` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `id_persona` int(11) NOT NULL,
  `mes_fin` varchar(255) DEFAULT NULL,
  `mes_inicio` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refresh_token`
--

DROP TABLE IF EXISTS `refresh_token`;
CREATE TABLE IF NOT EXISTS `refresh_token` (
  `token_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expiry_dt` datetime NOT NULL,
  `refresh_count` bigint(20) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `user_device_id` bigint(20) NOT NULL,
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `UK_8ogx3ejsbfbf2xsgl4758otrm` (`user_device_id`),
  UNIQUE KEY `UK_r4k4edos30bx9neoq81mdvwph` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `refresh_token`
--

INSERT INTO `refresh_token` (`token_id`, `created_at`, `updated_at`, `expiry_dt`, `refresh_count`, `token`, `user_device_id`) VALUES
(29, '2021-11-01 18:06:38', '2021-11-01 18:06:38', '2021-12-01 18:06:38', 0, '42643a9d-2645-484a-b786-fbe1ccb7e440', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `UK_epk9im9l9q67xmwi4hbed25do` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(2, 'ROLE_ADMIN'),
(1, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_active` bit(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `is_email_verified` bit(1) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`user_id`, `created_at`, `updated_at`, `is_active`, `email`, `first_name`, `is_email_verified`, `last_name`, `password`, `username`) VALUES
(1, '2021-11-01 16:40:17', '2021-11-01 16:44:34', b'1', 'usrinti@gmail.com', NULL, b'1', NULL, '$2a$10$77PgNuDYY/UfVGYx3NZOGeGpVddgnZ1A55ZeqPtsPbElc4a1CVH.C', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_authority`
--

DROP TABLE IF EXISTS `user_authority`;
CREATE TABLE IF NOT EXISTS `user_authority` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKash3fy9hdayq3o73fir11n3th` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_authority`
--

INSERT INTO `user_authority` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_device`
--

DROP TABLE IF EXISTS `user_device`;
CREATE TABLE IF NOT EXISTS `user_device` (
  `user_device_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `device_type` varchar(255) DEFAULT NULL,
  `is_refresh_active` bit(1) DEFAULT NULL,
  `notification_token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_device_id`),
  KEY `FKd2lb0k09c4nnfpvku8r61g92n` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user_device`
--

INSERT INTO `user_device` (`user_device_id`, `created_at`, `updated_at`, `device_id`, `device_type`, `is_refresh_active`, `notification_token`, `user_id`) VALUES
(30, '2021-11-01 18:06:38', '2021-11-01 18:06:38', '17867868768', 'DEVICE_TYPE_ANDROID', b'1', '67657575eececc34', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `email_verification_token`
--
ALTER TABLE `email_verification_token`
  ADD CONSTRAINT `FKqmvt3qcly3hbvde97srchdo3x` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Filtros para la tabla `password_reset_token`
--
ALTER TABLE `password_reset_token`
  ADD CONSTRAINT `FK5lwtbncug84d4ero33v3cfxvl` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Filtros para la tabla `refresh_token`
--
ALTER TABLE `refresh_token`
  ADD CONSTRAINT `FKr92opronarwe7pn1c41621grv` FOREIGN KEY (`user_device_id`) REFERENCES `user_device` (`user_device_id`);

--
-- Filtros para la tabla `user_authority`
--
ALTER TABLE `user_authority`
  ADD CONSTRAINT `FKash3fy9hdayq3o73fir11n3th` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `FKpqlsjpkybgos9w2svcri7j8xy` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Filtros para la tabla `user_device`
--
ALTER TABLE `user_device`
  ADD CONSTRAINT `FKd2lb0k09c4nnfpvku8r61g92n` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
