/*!40101 SET NAMES utf8 */;
/*!40101 SET SQL_MODE=''*/;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


CREATE DATABASE IF NOT EXISTS `Stock_Events` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Stock_Events`;


CREATE TABLE IF NOT EXISTS `tickers` (
 `Ticker_ID` INT NOT NULL AUTO_INCREMENT,
 `Ticker` VARCHAR(5) NOT NULL,
 `Ticker_Name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`Ticker_ID`));

CREATE TABLE IF NOT EXISTS `events` (
 `Event_Table_ID` INT NOT NULL AUTO_INCREMENT,
 `Event_ID` VARCHAR(20) NOT NULL,
 `Timestamp` VARCHAR(60) NOT NULL,
 `Ticker_ID` INT NOT NULL,
  PRIMARY KEY (`Event_ID`),
  UNIQUE (`Event_Table_ID`),
  FOREIGN KEY (`Ticker_ID`) REFERENCES tickers(Ticker_ID));

CREATE TABLE IF NOT EXISTS `day` (
 `Day_ID` INT NOT NULL AUTO_INCREMENT,
 `Event_ID` VARCHAR(20) NOT NULL,
 `Day_Date` VARCHAR(255) NOT NULL,
 `Day_Open` DOUBLE(10, 2) NOT NULL,
 `Day_Close` DOUBLE(10, 2) NOT NULL,
 `Day_High` DOUBLE(10, 2) NOT NULL,
 `Day_Low` DOUBLE(10, 2) NOT NULL,
 `Day_Movement` DOUBLE(10, 2) NOT NULL,
 `Day_Direction` DOUBLE(10, 2) NOT NULL,
 `Day_State` VARCHAR(20) NOT NULL,
 `Day_PLowerWick` DOUBLE(10, 2) NOT NULL,
 `Day_PBody` DOUBLE(10, 2) NOT NULL,
 `Day_PUpperWick` DOUBLE(10, 2) NOT NULL,
  PRIMARY KEY (`Day_ID`),
  FOREIGN KEY (`Event_ID`) REFERENCES events(Event_ID));

INSERT INTO `tickers`(Ticker, Ticker_Name) VALUES ("MSFT", "Microsoft");
INSERT INTO `tickers`(Ticker, Ticker_Name) VALUES ("AAPL", "Apple");
INSERT INTO `tickers`(Ticker, Ticker_Name) VALUES ("NVDA", "NVidia");
INSERT INTO `tickers`(Ticker, Ticker_Name) VALUES ("TSLA", "Tesla");
INSERT INTO `tickers`(Ticker, Ticker_Name) VALUES ("META", "Meta");
INSERT INTO `tickers`(Ticker, Ticker_Name) VALUES ("AMZN", "Amazon");
INSERT INTO `tickers`(Ticker, Ticker_Name) VALUES ("GOOG", "Google");



