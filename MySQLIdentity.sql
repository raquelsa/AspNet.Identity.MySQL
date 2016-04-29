CREATE TABLE `<DATABASENAME>`.`Users` (
  `Id` VARCHAR(45) NOT NULL,
  `UserName` VARCHAR(45) NULL,
  `PasswordHash` VARCHAR(100) NULL,
  `SecurityStamp` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `<DATABASENAME>`.`Roles` (
  `Id` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`));

CREATE TABLE `<DATABASENAME>`.`UserClaims` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `UserId` VARCHAR(45) NULL,
  `ClaimType` VARCHAR(100) NULL,
  `ClaimValue` VARCHAR(100) NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`UserId`)
    REFERENCES `<DATABASENAME>`.`Users` (`Id`) on delete cascade);

CREATE TABLE `<DATABASENAME>`.`Userlogins` (
  `UserId` VARCHAR(45) NOT NULL,
  `ProviderKey` VARCHAR(100) NULL,
  `LoginProvider` VARCHAR(100) NULL,
  FOREIGN KEY (`UserId`)
    REFERENCES `<DATABASENAME>`.`Users` (`Id`) on delete cascade);

CREATE TABLE `<DATABASENAME>`.`UserRoles` (
  `UserId` VARCHAR(45) NOT NULL,
  `RoleId` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`UserId`, `RoleId`),
  FOREIGN KEY (`UserId`)
    REFERENCES `<DATABASENAME>`.`Users` (`Id`) 
		on delete cascade
		on update cascade,
  FOREIGN KEY (`RoleId`)
    REFERENCES `<DATABASENAME>`.`roles` (`Id`)
		on delete cascade
		on update cascade);
