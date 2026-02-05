CREATE TABLE IF NOT EXISTS `cameras` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `state` int(11) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `cameras_vision` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `camera_id` int(11) NOT NULL,
    `coords` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `FK_cameras_vision_cameras` (`camera_id`),
    CONSTRAINT `FK_cameras_vision_cameras` FOREIGN KEY (`camera_id`) REFERENCES `cameras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `dealers` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `nickname` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `dealers_solds` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `dealer_id` int(11) NOT NULL,
    `items` TEXT NOT NULL,
    PRIMARY KEY (`id`),
    KEY `FK_dealers_solds_dealers` (`dealer_id`),
    CONSTRAINT `FK_dealers_solds_dealers` FOREIGN KEY (`dealer_id`) REFERENCES `dealers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `orders` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `dealer_id` int(11) NOT NULL,
    `state` int(11) NOT NULL DEFAULT 0,
    `items` TEXT NOT NULL,
    `buyer_cid` varchar(255) NOT NULL,
    `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (`id`),
    KEY `FK_orders_dealers` (`dealer_id`),
    CONSTRAINT `FK_orders_dealers` FOREIGN KEY (`dealer_id`) REFERENCES `dealers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `members` (
    `cid` varchar(255) NOT NULL,
    `reputation` int(11) NOT NULL DEFAULT 0,
    `is_blacklisted` int(11) NOT NULL DEFAULT,
    `is_dealer` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`cid`)
) ENGINE=InnoDB;