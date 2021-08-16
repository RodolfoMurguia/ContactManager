CREATE TABLE `users` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Password` varchar(50) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `LastModifiedDate` datetime NOT NULL,
  `Deleted` bit(1) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`,`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

