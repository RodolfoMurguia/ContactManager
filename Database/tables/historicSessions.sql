CREATE TABLE `historicalsessions` (
  `SessionId` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  PRIMARY KEY (`SessionId`),
  KEY `HistoricSessionKey_idx` (`UserName`),
  CONSTRAINT `HistoricSessionKey` FOREIGN KEY (`UserName`) REFERENCES `users` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COMMENT='	';
