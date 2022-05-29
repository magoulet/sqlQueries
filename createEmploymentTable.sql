CREATE TABLE IF NOT EXISTS `positions` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `start_date` DATE NOT NULL,
  `end_date` DATE,
  `job_title` VARCHAR(64),
  `company` VARCHAR(64),
  `location` VARCHAR(64),
  `manager_firstname` VARCHAR(64),
  `job_description` TEXT,
  `notes` TEXT,
  PRIMARY KEY (`id`)
);




INSERT INTO `positions`(`start_date`,`end_date`,`job_title`,`company`,`location`,`manager_firstname`) VALUES
('2006-11-20', '2013-12-16', 'Systems Software Specialist','CAE', 'Montreal, Canada','Ramzi'),
('2013-12-16', '2015-04-01', 'Group Leader','CAE','Montreal, Canada','Yves-Pierre'),
('2015-04-01', '2018-04-02', 'Manager, Technical Services','CAE','Tokyo, Japan','Quentin'),
('2018-04-02', '2019-03-01', 'Project Manager','CAE','Montreal, Canada','Jim'),
('2019-03-18', '2021-03-01', 'Simulation Manager','Mitsubishi Aircraft','Moses Lake, WA, USA','Dennis'),
('2021-04-12', NULL        , 'Technical Program Manager','Amazon','Seattle, WA, USA','Westley');

