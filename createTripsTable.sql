CREATE TABLE IF NOT EXISTS `trips` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `departure_date` DATE NOT NULL,
  `return_date` DATE NOT NULL,
  `location` INT REFERENCES countries(`id`),
  `traveler` INT REFERENCES travelers(`id`),
  `note` VARCHAR(64),
  `artifact` VARCHAR(128),
  `us_record` BOOLEAN,
  PRIMARY KEY (`id`)
);


INSERT INTO `trips`(`departure_date`,`return_date`,`location`,`traveler`,`us_record`,`note`) VALUES
('2007-02-22', '2007-03-30',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'New Jersey'
),
('2007-10-27', '2007-10-29',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'New Jersey'
),
('2007-11-29', '2007-12-07',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'New Jersey'
),
('2008-01-25', '2008-02-03',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'New Jersey'
),
('2008-03-10', '2008-03-14',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'New Jersey'
),
('2008-03-28', '2008-04-08',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'New Jersey'
),
('2008-04-25', '2008-05-02',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'New Jersey'
),
('2008-11-30', '2008-12-16',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Dallas, New Jersey'
),
('2008-09-28', '2008-10-09',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Dallas'
),
('2007-06-14', '2007-07-01',
  (SELECT `id` FROM `countries` WHERE `name` = 'United Kingdom'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  'Burgess Hill'
),
('2008-08-12', '2008-08-25',
  (SELECT `id` FROM `countries` WHERE `name` = 'United Kingdom'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  'Burgess Hill'
),
('2008-09-17', '2008-09-27',
  (SELECT `id` FROM `countries` WHERE `name` = 'United Kingdom'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  'Burgess Hill'
),
('2008-06-09', '2008-07-24',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2008-12-18', '2008-12-31',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-01-01', '2009-02-18',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-02-18', '2009-03-11',
  (SELECT `id` FROM `countries` WHERE `name` = 'United Kingdom'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-03-11', '2009-04-07',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-04-22', '2009-04-28',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Dallas'
),
('2009-04-30', '2009-05-15',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'New Jersey'
),
('2009-06-16', '2009-06-26',
  (SELECT `id` FROM `countries` WHERE `name` = 'Singapore'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-06-26', '2009-07-12',
  (SELECT `id` FROM `countries` WHERE `name` = 'Thailand'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-07-12', '2009-07-25',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-08-04', '2009-08-07',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Houston'
),
('2009-08-09', '2009-08-24',
  (SELECT `id` FROM `countries` WHERE `name` = 'Sweden'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-08-24', '2009-09-03',
  (SELECT `id` FROM `countries` WHERE `name` = 'Norway'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-10-14', '2009-11-06',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-11-06', '2009-11-15',
  (SELECT `id` FROM `countries` WHERE `name` = 'Philippines'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-11-15', '2009-11-26',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2009-12-14', '2009-12-18',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Phoenix'
),
('2010-01-22', '2010-02-20',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2010-02-20', '2010-02-27',
  (SELECT `id` FROM `countries` WHERE `name` = 'Northern Mariana Islands'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2010-03-04', '2010-03-13',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'New Jersey'
),
('2010-04-05', '2010-04-20',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Minneapolis'
),
('2010-04-20', '2010-05-15',
  (SELECT `id` FROM `countries` WHERE `name` = 'Germany'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  'Frankfurt'
),
('2010-05-15', '2010-06-08',
  (SELECT `id` FROM `countries` WHERE `name` = 'France'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2010-06-15', '2010-06-23',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Memphis'
),
('2010-07-06', '2010-07-13',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Dallas'
),
('2010-07-23', '2010-08-07',
  (SELECT `id` FROM `countries` WHERE `name` = 'Malaysia'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2010-08-07', '2010-08-24',
  (SELECT `id` FROM `countries` WHERE `name` = 'Singapore'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2010-08-27', '2010-09-20',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2010-11-22', '2010-11-27',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Miami'
),
('2011-01-08', '2011-01-31',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2011-01-31', '2011-02-07',
  (SELECT `id` FROM `countries` WHERE `name` = 'Malaysia'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2011-02-07', '2011-02-11',
  (SELECT `id` FROM `countries` WHERE `name` = 'China'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  'Shanghai'
),
('2011-02-11', '2011-03-06',
  (SELECT `id` FROM `countries` WHERE `name` = 'Thailand'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2011-03-06', '2011-03-16',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2011-03-16', '2011-03-27',
  (SELECT `id` FROM `countries` WHERE `name` = 'Germany'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2011-03-27', '2011-04-19',
  (SELECT `id` FROM `countries` WHERE `name` = 'Australia'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  'Melbourne'
),
('2011-04-19', '2011-06-02',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2011-06-18', '2011-07-13',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2011-07-13', '2011-07-26',
  (SELECT `id` FROM `countries` WHERE `name` = 'France'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  'Paris'
),
('2011-07-27', '2011-10-13',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2011-10-13', '2011-10-18',
  (SELECT `id` FROM `countries` WHERE `name` = 'Guam'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2011-10-18', '2011-12-31',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2012-01-01', '2012-01-12',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2012-01-23', '2012-03-26',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2012-03-26', '2012-03-30',
  (SELECT `id` FROM `countries` WHERE `name` = 'China'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  'Chengdu'
),
('2012-03-30', '2012-07-11',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'via United States 7/11'
),
('2012-08-11', '2012-09-22',
  (SELECT `id` FROM `countries` WHERE `name` = 'Bahrain'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2012-09-22', '2012-09-24',
  (SELECT `id` FROM `countries` WHERE `name` = 'United Arab Emirates'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2012-09-24', '2012-10-04',
  (SELECT `id` FROM `countries` WHERE `name` = 'Bahrain'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2012-10-04', '2012-10-07',
  (SELECT `id` FROM `countries` WHERE `name` = 'Jordan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2012-10-07', '2012-11-09',
  (SELECT `id` FROM `countries` WHERE `name` = 'Bahrain'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2012-11-09', '2012-11-12',
  (SELECT `id` FROM `countries` WHERE `name` = 'Egypt'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2012-11-12', '2012-12-16',
  (SELECT `id` FROM `countries` WHERE `name` = 'Bahrain'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2013-02-25', '2013-03-14',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Houston'
),
('2013-04-06', '2013-04-29',
  (SELECT `id` FROM `countries` WHERE `name` = 'United Arab Emirates'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2013-07-10', '2013-08-23',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2013-09-26', '2013-09-30',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Charlotte'
),
('2013-11-10', '2013-11-29',
  (SELECT `id` FROM `countries` WHERE `name` = 'United Arab Emirates'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2014-04-05', '2014-04-06',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'1',
  'Plattsburgh'
),
('2014-11-28', '2014-12-12',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2015-02-04', '2015-02-12',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'via United States 2/4 and 2/11'
),
('2015-03-08', '2015-05-31',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2015-06-07', '2015-12-31',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2016-01-01', '2016-03-10',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2016-03-10', '2016-03-11',
  (SELECT `id` FROM `countries` WHERE `name` = 'Korea'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2016-03-11', '2016-07-07',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2016-07-07', '2016-07-08',
  (SELECT `id` FROM `countries` WHERE `name` = 'Korea'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2016-07-08', '2016-10-02',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2016-10-02', '2016-10-06',
  (SELECT `id` FROM `countries` WHERE `name` = 'Hong Kong'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2016-10-06', '2016-11-01',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2016-11-01', '2016-11-02',
  (SELECT `id` FROM `countries` WHERE `name` = 'Korea'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2016-11-02', '2016-12-21',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2016-12-29', '2016-12-31',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2017-01-01', '2017-03-20',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2017-03-20', '2017-03-23',
  (SELECT `id` FROM `countries` WHERE `name` = 'Korea'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2017-03-23', '2017-04-22',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2017-04-22', '2017-04-30',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Honolulu'
),
('2017-04-30', '2017-05-14',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Via United States on 5/14'
),
('2017-05-20', '2017-10-08',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Via United States on 5/19'
),
('2017-10-08', '2017-10-10',
  (SELECT `id` FROM `countries` WHERE `name` = 'Malaysia'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2017-10-10', '2017-12-31',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2018-01-01', '2018-03-29',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2018-12-03', '2018-12-23',
  (SELECT `id` FROM `countries` WHERE `name` = 'Singapore'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2019-01-02', '2019-01-16',
  (SELECT `id` FROM `countries` WHERE `name` = 'Singapore'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),'0',
  ''
),
('2019-02-16', '2019-02-16',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'TN Visa border crossing in Champlain'
),
('2019-03-12', '2019-03-12',
  (SELECT `id` FROM `countries` WHERE `name` = 'United States'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Border Crossing alone (non-residency)'
),
('2019-04-07', '2019-04-08',
  (SELECT `id` FROM `countries` WHERE `name` = 'Canada'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  ''
),
('2019-04-19', '2019-04-20',
  (SELECT `id` FROM `countries` WHERE `name` = 'Canada'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  ''
),
('2019-05-28', '2019-06-01',
  (SELECT `id` FROM `countries` WHERE `name` = 'Canada'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'Border Crossing with family'
),
('2020-01-19', '2020-01-24',
  (SELECT `id` FROM `countries` WHERE `name` = 'Japan'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  ''
),
('2020-02-26', '2020-02-28',
  (SELECT `id` FROM `countries` WHERE `name` = 'Canada'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  ''
),
('2020-10-23', '2020-10-23',
  (SELECT `id` FROM `countries` WHERE `name` = 'Canada'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'TN Visa border crossing in Blaine, WA'
),
('2020-12-23', '2020-12-23',
  (SELECT `id` FROM `countries` WHERE `name` = 'Canada'),
  (SELECT `id` FROM `travelers` WHERE `firstname` = 'Marc-Andre'),1,
  'H4 Visa border crossing in Blaine, WA'
);
