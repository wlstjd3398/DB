DROP TABLE `Employee`;

CREATE TABLE `Employee` ( 
	`uid`	VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10),
	`gender` INT,
	`hp`	CHAR(13),
	`email` VARCHAR(20),
	`pos` VARCHAR(20),
	`dep`	INT,
	`rdate` DATE
);
