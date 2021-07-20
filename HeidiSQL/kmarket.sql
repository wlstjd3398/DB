#날짜 : 2021/07/20
#이름 : 김진성
#내용 : kmarket 테이블 설계

CREATE TABLE `km_cate1` (
	`code1` TINYINT PRIMARY KEY,
	`title` VARCHAR(100)
);
CREATE TABLE `km_cate2` (
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`code1` TINYINT,
	`code2` TINYINT,
	`title` VARCHAR(100)
);

CREATE TABLE `km_member` (
	`type`	TINYINT,
	`uid`		VARCHAR(20) PRIMARY KEY,
	`pass`	VARCHAR(255),
	`name`	VARCHAR(20),
	`gender`	TINYINT,
	`hp`		CHAR(13),
	`email`	VARCHAR(100),
	`point`	INT DEFAULT 0,
	`grade`	TINYINT DEFAULT 0,
	`zip`		CHAR(5),
	`addr1`	VARCHAR(255),
	`addr2`	VARCHAR(255),
	`company`	VARCHAR(20),
	`ceo`		VARCHAR(20),
	`bizRegNum`	CHAR(12),
	`commRepNum`	VARCHAR(20),
	`tel`		VARCHAR(20),
	`manager`	VARCHAR(20),
	`managerHp` CHAR(13),
	`fax`		VARCHAR(20),
	`ip`		VARCHAR(100),
	`leaveDate`	DATETIME,
	`rdate`	DATETIME,
	`etc1`	INT,
	`etc2`	INT,
	`etc3`	VARCHAR(100),
	`etc4`	VARCHAR(100),
	`etc5`	VARCHAR(100)
);
CREATE TABLE `km_terms` (
	`terms`	TEXT,
	`privacy`	TEXT,
	`location`	TEXT,
	`finance`	TEXT,
	`tax`	TEXT
);
CREATE TABLE `km_point` (
	`seq`	INT AUTO_INCREMENT PRIMARY key,
	`uid`	VARCHAR(20),
	`code`	int,
	`price`	int,
	`point`	int,
	`rdate`	datetime
);

CREATE TABLE `km_product` (
	`code`	INT(10) zerofill AUTO_INCREMENT PRIMARY key,
	`cate1`	tinyint,
	`cate2`	tinyint,
	`name`	VARCHAR(100),
	`decript`	VARCHAR(100),
	`company`	VARCHAR(100),
	`seller`	VARCHAR(20),	
	`price`	int,
	`discount`	tinyint,	
	`point`	int,	
	`stock`	int,
	`sold`		int,
	`delivery`	int,
	`hit`	int,
	`score`	int,	
	`review`	int,
	`thumb1`	VARCHAR(255),
	`thumb2`	VARCHAR(255),
	`thumb3`	VARCHAR(255),
	`detail`	VARCHAR(255),
	`status`	VARCHAR(20),
	`dutyFree`	VARCHAR(20),	
	`receipt`	VARCHAR(20),
	`bizClass`	VARCHAR(20),
	`origin`	VARCHAR(20),	
	`ip`	VARCHAR(100),
	`rdate`	datetime,
	`etc1`	int,
	`etc2`	int,
	`etc3`	VARCHAR(100),
	`etc4`	VARCHAR(100),
	`etc5`	VARCHAR(100)
);
CREATE TABLE `km_product_cart` (
	`seq`	INT AUTO_INCREMENT PRIMARY key,
	`uid`	VARCHAR(20),
	`code`	int,
	`name`	VARCHAR(100),
	`option`	VARCHAR(100),
	`count`	int,
	`price`	int,
	`discount`	int,
	`point`	int,
	`delivery`	int,
	`total`	int,
	`rdate`	datetime
);
CREATE TABLE `km_product_order` (
	`seq`	INT AUTO_INCREMENT PRIMARY key,
	`uid`	VARCHAR(20),
	`code`	int,
	`name`	VARCHAR(100),
	`option`	VARCHAR(100),
	`count`	int,
	`price`	int,
	`discount`	int,
	`point`	int,
	`delivery`	int,
	`total`	int,
	`payment` TINYINT,
	`complete` TINYINT,
	`rdate`	datetime
);
CREATE TABLE `km_product_review` (
	`seq`	INT AUTO_INCREMENT PRIMARY KEY,
	`code`	INT,
	`content`	VARCHAR(255),
	`uid`	VARCHAR(20),
	`rating`	TINYINT,
	`ip`	VARCHAR(100),
	`rdate` datetime
);



