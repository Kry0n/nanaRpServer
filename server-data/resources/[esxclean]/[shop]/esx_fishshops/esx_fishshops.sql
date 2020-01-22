USE `essentialmode`;

CREATE TABLE `fishshops`(
	`store` varchar(30) NOT NULL,
	`item` varchar(30) NOT NULL,
	`price` INT(11) DEFAULT NULL
);

INSERT INTO `fishshops` (store, item, price) VALUES
	('TwentyFourSeven','fishingrod',1500),
	('TwentyFourSeven','bait',1500)
;