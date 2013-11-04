CREATE TABLE `<DATABASE_NAME>`.`users` (
  `Id` VARCHAR(45) NOT NULL,
  `UserName` VARCHAR(45) NULL,
  `PasswordHash` VARCHAR(100) NULL,
  `SecurityStamp` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `<DATABASE_NAME>`.`userclaims` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `UserId` VARCHAR(45) NULL,
  `ClaimType` VARCHAR(45) NULL,
  `ClaimValue` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`UserId`)
    REFERENCES `<DATABASE_NAME>`.`users` (`Id`));

CREATE TABLE `<DATABASE_NAME>`.`userlogins` (
  `UserId` VARCHAR(45) NOT NULL,
  `ProviderKey` VARCHAR(100) NULL,
  `LoginProvider` VARCHAR(100) NULL,
  FOREIGN KEY (`UserId`)
    REFERENCES `<DATABASE_NAME>`.`users` (`Id`));

CREATE TABLE `<DATABASE_NAME>`.`roles` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`));

CREATE TABLE `<DATABASE_NAME>`.`userroles` (
  `UserId` VARCHAR(45) NOT NULL,
  `RoleId` INT NOT NULL,
  PRIMARY KEY (`UserId`, `RoleId`),
  FOREIGN KEY (`UserId`)
    REFERENCES `<DATABASE_NAME>`.`users` (`Id`),
  FOREIGN KEY (`RoleId`)
    REFERENCES `<DATABASE_NAME>`.`roles` (`Id`));
