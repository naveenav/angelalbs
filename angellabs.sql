SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE  TABLE IF NOT EXISTS `user` (
  `userId` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  `email` VARCHAR(45) NULL ,
  `photo` VARCHAR(45) NULL ,
  `isActive` BIT NULL ,
  PRIMARY KEY (`userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `collegemaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `collegemaster` ;

CREATE  TABLE IF NOT EXISTS `collegemaster` (
  `collegeId` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`collegeId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `countrymaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `countrymaster` ;

CREATE  TABLE IF NOT EXISTS `countrymaster` (
  `countryId` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`countryId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `citymaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `citymaster` ;

CREATE  TABLE IF NOT EXISTS `citymaster` (
  `cityId` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`cityId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `statemaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `statemaster` ;

CREATE  TABLE IF NOT EXISTS `statemaster` (
  `stateId` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`stateId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `location_Master`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `location_Master` ;

CREATE  TABLE IF NOT EXISTS `location_Master` (
  `locId` INT NOT NULL ,
  `countrymaster_countryId` INT NULL ,
  `citymaster_cityId` INT NULL ,
  `statemaster_stateId` INT NULL ,
  PRIMARY KEY (`locId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `rolemaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rolemaster` ;

CREATE  TABLE IF NOT EXISTS `rolemaster` (
  `roleId` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`roleId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `useradditionalinfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `useradditionalinfo` ;

CREATE  TABLE IF NOT EXISTS `useradditionalinfo` (
  `miniresume` VARCHAR(45) NULL ,
  `user_userId` INT NOT NULL ,
  `summary` VARCHAR(250) NULL ,
  `achievment` VARCHAR(250) NULL ,
  `lookingFor` VARCHAR(250) NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_college_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_college_link` ;

CREATE  TABLE IF NOT EXISTS `user_college_link` (
  `collegemaster_collegeId` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_location_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_location_link` ;

CREATE  TABLE IF NOT EXISTS `user_location_link` (
  `location_Master_locId` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `userrolesmaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `userrolesmaster` ;

CREATE  TABLE IF NOT EXISTS `userrolesmaster` (
  `roleId` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`roleId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_role_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_role_link` ;

CREATE  TABLE IF NOT EXISTS `user_role_link` (
  `userrolesmaster_roleId` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`userrolesmaster_roleId`, `user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `entrepreneur`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `entrepreneur` ;

CREATE  TABLE IF NOT EXISTS `entrepreneur` (
  `id` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `companyTypemaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `companyTypemaster` ;

CREATE  TABLE IF NOT EXISTS `companyTypemaster` (
  `id` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `companysize`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `companysize` ;

CREATE  TABLE IF NOT EXISTS `companysize` (
  `id` INT NOT NULL ,
  `size` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `company` ;

CREATE  TABLE IF NOT EXISTS `company` (
  `Id` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  `logo` BLOB NULL ,
  `wbsite` VARCHAR(45) NULL ,
  `entrepreneur_id` INT NOT NULL ,
  `highconceptPitch` VARCHAR(250) NULL ,
  `companyTypemaster_id` INT NOT NULL ,
  `companysize_id` INT NOT NULL ,
  PRIMARY KEY (`Id`, `entrepreneur_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_company_role_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_company_role_link` ;

CREATE  TABLE IF NOT EXISTS `user_company_role_link` (
  `companyInfo_Id` INT NOT NULL ,
  `rolemaster_roleId` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`companyInfo_Id`, `rolemaster_roleId`, `user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `skillsmaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `skillsmaster` ;

CREATE  TABLE IF NOT EXISTS `skillsmaster` (
  `id` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `servicesmaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `servicesmaster` ;

CREATE  TABLE IF NOT EXISTS `servicesmaster` (
  `id` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `marketmaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `marketmaster` ;

CREATE  TABLE IF NOT EXISTS `marketmaster` (
  `id` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_skill_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_skill_link` ;

CREATE  TABLE IF NOT EXISTS `user_skill_link` (
  `skillsmaster_id` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`skillsmaster_id`, `user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_service_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_service_link` ;

CREATE  TABLE IF NOT EXISTS `user_service_link` (
  `servicesmaster_id` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`servicesmaster_id`, `user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_market_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_market_link` ;

CREATE  TABLE IF NOT EXISTS `user_market_link` (
  `isBlocked` BIT NULL ,
  `marketmaster_id` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`marketmaster_id`, `user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `referencemaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `referencemaster` ;

CREATE  TABLE IF NOT EXISTS `referencemaster` (
  `id` INT NOT NULL ,
  `companyname` VARCHAR(45) NULL ,
  `email` VARCHAR(45) NULL ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_reference_master_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_reference_master_link` ;

CREATE  TABLE IF NOT EXISTS `user_reference_master_link` (
  `referencemaster_id` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`referencemaster_id`, `user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `investerstatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `investerstatus` ;

CREATE  TABLE IF NOT EXISTS `investerstatus` (
  `statusCode` INT NOT NULL DEFAULT 0 ,
  `statusDescription` VARCHAR(45) NULL ,
  PRIMARY KEY (`statusCode`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `invester`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `invester` ;

CREATE  TABLE IF NOT EXISTS `invester` (
  `id` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  `investerstatus_statusCode` INT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `invester_location_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `invester_location_link` ;

CREATE  TABLE IF NOT EXISTS `invester_location_link` (
  `investerinfo_id` INT NOT NULL ,
  `location_country_state_city_link_locId` INT NOT NULL ,
  PRIMARY KEY (`investerinfo_id`, `location_country_state_city_link_locId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `invester_market_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `invester_market_link` ;

CREATE  TABLE IF NOT EXISTS `invester_market_link` (
  `invester_id` INT NOT NULL ,
  `marketmaster_id` INT NOT NULL ,
  PRIMARY KEY (`marketmaster_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `invester_roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `invester_roles` ;

CREATE  TABLE IF NOT EXISTS `invester_roles` (
  `isAngel` BIT NULL ,
  `isVC` BIT NULL ,
  `isSEEDFUND` BIT NULL ,
  `invester_id` INT NOT NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `invester_coinvester_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `invester_coinvester_link` ;

CREATE  TABLE IF NOT EXISTS `invester_coinvester_link` (
  `invester_id` INT NOT NULL ,
  `invester_id1` INT NOT NULL ,
  PRIMARY KEY (`invester_id`, `invester_id1`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company_location_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `company_location_link` ;

CREATE  TABLE IF NOT EXISTS `company_location_link` (
  `company_Id` INT NOT NULL ,
  `location_country_state_city_link_locId` INT NOT NULL ,
  PRIMARY KEY (`company_Id`, `location_country_state_city_link_locId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company_markets_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `company_markets_link` ;

CREATE  TABLE IF NOT EXISTS `company_markets_link` (
  `company_Id` INT NOT NULL ,
  `marketmaster_id` INT NOT NULL ,
  PRIMARY KEY (`marketmaster_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fundrisingInfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fundrisingInfo` ;

CREATE  TABLE IF NOT EXISTS `fundrisingInfo` (
  `id` INT NOT NULL ,
  `amount` VARCHAR(45) NULL ,
  `isEquity` BIT NULL ,
  `previousfund` INT NULL ,
  `company_Id` INT NOT NULL ,
  `otherDealterrms` VARCHAR(45) NULL ,
  `story` VARCHAR(45) NULL ,
  `tech` VARCHAR(45) NULL ,
  `additionalInfo` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `convertableDebt`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `convertableDebt` ;

CREATE  TABLE IF NOT EXISTS `convertableDebt` (
  `isCap` BIT NULL ,
  `discount` INT NULL ,
  `capAmount` INT NULL ,
  `fundrisingInfo_id` INT NOT NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company_incubator_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `company_incubator_link` ;

CREATE  TABLE IF NOT EXISTS `company_incubator_link` (
  `company_Id` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`company_Id`, `user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `companyadditionalinfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `companyadditionalinfo` ;

CREATE  TABLE IF NOT EXISTS `companyadditionalinfo` (
  `recievInvestmentsOnline` BIT NULL ,
  `closeRoundOnline` BIT NULL ,
  `isRecruite` BIT NULL ,
  `company_Id` INT NOT NULL ,
  `videoLinkurl` VARCHAR(45) NULL ,
  `productDesc` VARCHAR(45) NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `compnay_customer_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `compnay_customer_link` ;

CREATE  TABLE IF NOT EXISTS `compnay_customer_link` (
  `companyId` INT NULL ,
  `costumerId` INT NULL ,
  `isCompany` BIT NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company_links`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `company_links` ;

CREATE  TABLE IF NOT EXISTS `company_links` (
  `linkId` INT NULL ,
  `company_Id` INT NOT NULL ,
  PRIMARY KEY (`company_Id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `companyNeeds`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `companyNeeds` ;

CREATE  TABLE IF NOT EXISTS `companyNeeds` (
  `companyId` INT NULL ,
  `name` VARCHAR(45) NULL ,
  `company_Id` INT NOT NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `screenShots`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `screenShots` ;

CREATE  TABLE IF NOT EXISTS `screenShots` (
  `image` BLOB NOT NULL ,
  `company_Id` INT NOT NULL ,
  PRIMARY KEY (`image`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company_references_links`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `company_references_links` ;

CREATE  TABLE IF NOT EXISTS `company_references_links` (
  `isReferrer` BIT NULL ,
  `company_Id` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fundingtarnsaction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fundingtarnsaction` ;

CREATE  TABLE IF NOT EXISTS `fundingtarnsaction` (
  `id` INT NOT NULL ,
  `startTime` DATE NULL ,
  `endTime` DATE NULL ,
  `risingAmount` INT NULL ,
  `previousfunding` INT NULL ,
  `fundrisingInfo_id` INT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `traction`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `traction` ;

CREATE  TABLE IF NOT EXISTS `traction` (
  `launchDate` DATE NULL ,
  `customers` VARCHAR(45) NULL ,
  `distribution` VARCHAR(45) NULL ,
  `companyId` INT NULL ,
  `company_Id` INT NOT NULL ,
  `tractionId` INT NOT NULL ,
  PRIMARY KEY (`tractionId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `companyactiveUsers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `companyactiveUsers` ;

CREATE  TABLE IF NOT EXISTS `companyactiveUsers` (
  `tilldate` INT NULL ,
  `activeusers` INT NULL ,
  `growth` INT NULL ,
  `traction_tractionId` INT NOT NULL ,
  `yeare/month(y/n)` CHAR NULL )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tractionmetricType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tractionmetricType` ;

CREATE  TABLE IF NOT EXISTS `tractionmetricType` (
  `metricType_Id` INT NOT NULL ,
  `metricType` VARCHAR(45) NULL ,
  PRIMARY KEY (`metricType_Id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tractionmetricinfo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tractionmetricinfo` ;

CREATE  TABLE IF NOT EXISTS `tractionmetricinfo` (
  `tilldate` DATE NULL ,
  `amount` FLOAT NULL ,
  `growth` INT NULL ,
  `year/month(y/n)` BIT NULL ,
  `totalamount(y/m)` BIT NULL ,
  `tractionmetricType_metricType_Id` INT NOT NULL ,
  `traction_tractionId` INT NOT NULL ,
  PRIMARY KEY (`tractionmetricType_metricType_Id`, `traction_tractionId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tractionGraph`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tractionGraph` ;

CREATE  TABLE IF NOT EXISTS `tractionGraph` (
  `image` BLOB NOT NULL ,
  `traction_tractionId` INT NOT NULL ,
  PRIMARY KEY (`image`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `deckanddemo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `deckanddemo` ;

CREATE  TABLE IF NOT EXISTS `deckanddemo` (
  `deckurl` VARCHAR(250) NOT NULL ,
  `demourl` VARCHAR(45) NULL ,
  `username` VARCHAR(45) NULL ,
  `password` VARCHAR(45) NULL ,
  `companyInfo_Id` INT NOT NULL ,
  PRIMARY KEY (`deckurl`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `followingdetailsmaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `followingdetailsmaster` ;

CREATE  TABLE IF NOT EXISTS `followingdetailsmaster` (
  `id` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  `user_userId1` INT NOT NULL ,
  PRIMARY KEY (`id`, `user_userId`, `user_userId1`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `messagedetailsmaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `messagedetailsmaster` ;

CREATE  TABLE IF NOT EXISTS `messagedetailsmaster` (
  `id` INT NOT NULL ,
  `messagedesc` VARCHAR(250) NULL ,
  `subject` VARCHAR(50) NULL ,
  `user_userId` INT NOT NULL ,
  `user_userId1` INT NOT NULL ,
  PRIMARY KEY (`id`, `user_userId`, `user_userId1`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `entrepreuneur_company_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `entrepreuneur_company_link` ;

CREATE  TABLE IF NOT EXISTS `entrepreuneur_company_link` (
  `company_Id` INT NOT NULL ,
  `entrepreneur_id` INT NOT NULL ,
  PRIMARY KEY (`company_Id`, `entrepreneur_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `notification_Type_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `notification_Type_link` ;

CREATE  TABLE IF NOT EXISTS `notification_Type_link` (
  `notification_TypeId` INT NOT NULL ,
  `notificationType` VARCHAR(45) NULL ,
  PRIMARY KEY (`notification_TypeId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `comments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `comments` ;

CREATE  TABLE IF NOT EXISTS `comments` (
  `commentId` INT NOT NULL ,
  `description` VARCHAR(45) NULL ,
  `user_userId` INT NOT NULL ,
  `user_userId1` INT NOT NULL ,
  `notification_Type_link_notification_TypeId` INT NOT NULL ,
  PRIMARY KEY (`commentId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `follow_like`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `follow_like` ;

CREATE  TABLE IF NOT EXISTS `follow_like` (
  `followId` INT NOT NULL ,
  `notification_Type_link_notification_TypeId` INT NOT NULL ,
  `user_userId` INT NOT NULL ,
  `user_userId1` INT NOT NULL ,
  PRIMARY KEY (`followId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `websitlinkmaster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `websitlinkmaster` ;

CREATE  TABLE IF NOT EXISTS `websitlinkmaster` (
  `website` VARCHAR(45) NULL ,
  `blog` VARCHAR(45) NULL ,
  `aboutme` VARCHAR(45) NULL ,
  `linkedIn` VARCHAR(45) NULL ,
  `twitter` VARCHAR(45) NULL ,
  `github` VARCHAR(45) NULL ,
  `dribble` VARCHAR(45) NULL ,
  `behance` VARCHAR(45) NULL ,
  `facebook` VARCHAR(45) NULL ,
  `user_userId` INT NOT NULL ,
  PRIMARY KEY (`user_userId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `company_invester_round_link`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `company_invester_round_link` ;

CREATE  TABLE IF NOT EXISTS `company_invester_round_link` (
  `id` INT NOT NULL ,
  `investerId` INT NOT NULL ,
  `isCompany` BIT NULL ,
  `amount` INT NULL ,
  `fundingtarnsaction_id` INT NOT NULL ,
  PRIMARY KEY (`id`, `fundingtarnsaction_id`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
