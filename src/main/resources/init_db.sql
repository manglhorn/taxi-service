CREATE SCHEMA IF NOT EXISTS `taxi` DEFAULT CHARACTER SET utf8;
USE `taxi`;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for drivers
-- ----------------------------
CREATE TABLE `drivers` (
                                 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                                 `name` varchar(255) NOT NULL,
                                 `license_number` varchar(255) NOT NULL,
                                 `is_deleted` bit(1) NOT NULL DEFAULT b'0',
                                 `login` varchar(255) NOT NULL,
                                 `password` varchar(255) NOT NULL,
                                  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
CREATE TABLE `manufacturers` (
                                 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                                 `name` varchar(255) NOT NULL,
                                 `country` varchar(255) NOT NULL,
                                 `is_deleted` bit(1) NOT NULL DEFAULT b'0',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- ----------------------------
-- Table structure for cars
-- ----------------------------
CREATE TABLE `cars` (
                                  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                                  `model` varchar(255) NOT NULL,
                                  `manufacturer_id` bigint(20) unsigned NOT NULL,
                                  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
                                  PRIMARY KEY (`id`) USING BTREE,
                                  KEY `FK_manufacturer_id` (`manufacturer_id`) USING BTREE,
                                  CONSTRAINT `FK_manufacturer_id` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


-- ----------------------------
-- Table structure for cars_drivers
-- ----------------------------
CREATE TABLE `cars_drivers` (
                                  `car_id` bigint(20) unsigned NOT NULL,
                                  `driver_id` bigint(20) unsigned NOT NULL,
                                  PRIMARY KEY (`car_id`,`driver_id`) USING BTREE,
                                  KEY `driver_id` (`driver_id`) USING BTREE,
                                  KEY `car_id` (`car_id`) USING BTREE,
                                  CONSTRAINT `car_id` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
                                  CONSTRAINT `driver_id` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;


SET FOREIGN_KEY_CHECKS = 1;
