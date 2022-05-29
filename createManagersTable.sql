CREATE TABLE IF NOT EXISTS `managers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,  
  `manager_firstname` VARCHAR(64),
  `manager_lastname` VARCHAR(64),
  `email` VARCHAR(64),
  `linkedin` VARCHAR(256),
  `notes` TEXT,
   PRIMARY KEY (`id`)
);

INSERT INTO `managers`(manager_firstname,manager_lastname,linkedin) VALUES
('Ramzi','Gharbi','https://www.linkedin.com/in/ramzigharbi/'),
('Yves-Pierre','Cazali','https://www.linkedin.com/in/yves-pierre-cazali-24389a10/'),
('Quentin','O''Mahony','https://www.linkedin.com/in/quentin-o-mahony-9bbbb5/'),
('Jim','Moss','https://www.linkedin.com/in/jim-moss-55b81210/'),
('Dennis','Hannaway','https://www.linkedin.com/in/dennis-hannaway-8756b591/'),
('Westley','Schrack','https://www.linkedin.com/in/westley-schrack-4861b0231/');
