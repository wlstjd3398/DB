#날짜 : 2021/05/17
#이름 : 김철학
#내용 : 1. SQl 기본

#실습하기 1-1
CREATE DATABASE `TestDB`;
DROP DATABASE `TestDB;

	
#실습하기 1-2
CREATE TABLE `USER1` ( 
	`uid`	VARCHAR(10),
	`name`	VARCHAR(10),
	`hp`	CHAR(13),
	`age`	INT
);
/*개체 이름지정할때 ``씀*/

DROP TABLE `USER1`;

#실습하기 1-3
INSERT INTO `USER1` VALUES ('A101','김유신','010-1234-1111', 25);
/*25는 숫자라 ''없어어됨*/
INSERT INTO `USER1` VALUES ('A102', '김춘추', '010-1234-2222', 23);
INSERT INTO `USER1` VALUES ('A103', '장보고', '010-1234-3333', 32);

INSERT INTO `USER1` (`age`, `name`, `uid`, `hp`)
					VALUES(45, '강감찬', 'A104','010-1234-4444');
					
INSERT INTO `USER1` SET 
	`name` = '이순신',
	`age` = 51,
	`hp` = '010-1234-5555',
	`uid` = 'A105'; 
	
#실습하기 1-4
SELECT `uid`, `name`, `age`, `hp` FROM `USER1`;
SELECT `name`, `uid`, `hp` FROM `USER1`;
SELECT * FROM `USER1`;
SELECT * FROM `USER1` WHERE `uid`='A101';
SELECT * FROM `USER1` WHERE `name`='김춘추';
SELECT * FROM `USER1` WHERE `age` > 30;

#실습하기 1-5
UPDATE `USER1` SET `hp`='010-1234-1234';
/*where 없다고 경고뜨지만 무시하고 해도 실행됨*/
UPDATE `USER1` SET 
						`uid`='B101',
						`name`='홍길동';
UPDATE `USER1` SET
						`uid`='A101',
						`name`='김유신'
						where
						`age`='25';
UPDATE `USER1` SET 
						`hp`='010-1234-1111'
						where
						`name`='김유신';
UPDATE `USER1` SET 
						`uid`='A102',
						`name`='김춘추',
						`hp`= '010-1234-2222'
						WHERE `age`=23;
						
DELETE FROM `USER1` WHERE `uid`='A101';
DELETE FROM `USER1` WHERE `uid`='A102' AND `age`=25;
DELETE FROM `USER1` WHERE `age`=30;
tbl_membertbl_producttbl_member