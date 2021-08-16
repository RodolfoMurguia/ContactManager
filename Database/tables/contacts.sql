CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ContactName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) NOT NULL,
  `CreatedDate` varchar(45) NOT NULL,
  `LastModifiedDate` varchar(45) DEFAULT NULL,
  `Deleted` varchar(45) CHARACTER SET latin2 COLLATE latin2_bin NOT NULL,
  PRIMARY KEY (`id`,`ContactName`,`Phone`,`Email`,`UserName`),
  KEY `userkey_idx` (`UserName`),
  CONSTRAINT `userkey` FOREIGN KEY (`UserName`) REFERENCES `users` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;