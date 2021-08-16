CREATE TABLE `sessions` (
  `SessionId` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `SessionToken` varchar(50) NOT NULL,
  `StartDate` datetime NOT NULL,
  PRIMARY KEY (`SessionId`),
  UNIQUE KEY `SessionId_UNIQUE` (`SessionId`),
  UNIQUE KEY `SessionUser_UNIQUE` (`UserName`),
  CONSTRAINT `SessionKey` FOREIGN KEY (`UserName`) REFERENCES `users` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2;
