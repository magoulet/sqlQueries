-- All countries

CREATE TABLE IF NOT EXISTS `travelers` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `firstname` varchar(80) NOT NULL,
    `lastname` varchar(80) NOT NULL,
    `birthdate` DATE NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

-- https://www.html-code-generator.com/mysql/country-name-table

INSERT IGNORE INTO `travelers` (`id`, `firstname`, `lastname`, `birthdate`) VALUES
(1, 'Marc-Andre', 'Goulet', '1983-03-15'),
(2, 'Takako', 'Goulet', '1983-12-12'),
(3, 'Mika', 'Goulet', '2014-06-23'),
(4, 'Luca', 'Goulet', '2015-09-19'),
(5, 'Naoto', 'Goulet', '2018-01-27');
