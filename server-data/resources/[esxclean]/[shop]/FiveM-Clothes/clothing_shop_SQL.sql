USE `essentialmode`;

CREATE TABLE `user_clothes` (
  `identifier` varchar(255) NOT NULL,
  `skin` varchar(255) NOT NULL DEFAULT 'mp_m_freemode_01',
  `face` varchar(255) NOT NULL DEFAULT '0',
  `face_texture` varchar(255) NOT NULL DEFAULT '0',
  `hair` varchar(255) NOT NULL DEFAULT '11',
  `hair_texture` varchar(255) NOT NULL DEFAULT '4',
  `shirt` varchar(255) NOT NULL DEFAULT '0',
  `shirt_texture` varchar(255) NOT NULL DEFAULT '0',
  `pants` varchar(255) NOT NULL DEFAULT '8',
  `pants_texture` varchar(255) NOT NULL DEFAULT '0',
  `shoes` varchar(255) NOT NULL DEFAULT '1',
  `shoes_texture` varchar(255) NOT NULL DEFAULT '0',
  `vest` varchar(255) NOT NULL DEFAULT '0',
  `vest_texture` varchar(255) NOT NULL DEFAULT '0',
  `bag` varchar(255) NOT NULL DEFAULT '40',
  `bag_texture` varchar(255) NOT NULL DEFAULT '0',
  `hat` varchar(255) NOT NULL DEFAULT '1',
  `hat_texture` varchar(255) NOT NULL DEFAULT '1',
  `mask` varchar(255) NOT NULL DEFAULT '0',
  `mask_texture` varchar(255) NOT NULL DEFAULT '0',
  `glasses` varchar(255) NOT NULL DEFAULT '6',
  `glasses_texture` varchar(255) NOT NULL DEFAULT '0',
  `gloves` varchar(255) NOT NULL DEFAULT '2',
  `gloves_texture` varchar(255) NOT NULL DEFAULT '0',
  `jacket` varchar(255) NOT NULL DEFAULT '7',
  `jacket_texture` varchar(255) NOT NULL DEFAULT '2',
  `ears` varchar(255) NOT NULL DEFAULT '1',
  `ears_texture` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`identifier`) 
) 

INSERT INTO `user_clothes` (`identifier`, `skin`, `face`, `face_texture`, `hair`, `hair_texture`, `shirt`, `shirt_texture`, `pants`, `pants_texture`, `shoes`, `shoes_texture`, `vest`, `vest_texture`, `bag`, `bag_texture`, `hat`, `hat_texture`, `mask`, `mask_texture`, `glasses`, `glasses_texture`, `gloves`, `gloves_texture`, `jacket`, `jacket_texture`, `ears`, `ears_texture`) VALUES
	('steam:110000107111111', 'mp_m_freemode_01', '0', '0', '11', '4', '0', '0', '8', '0', '1', '0', '0', '0', '40', '0', '1', '0', '0', '0', '6', '0', '2', '0', '7', '2', '1', '0');
