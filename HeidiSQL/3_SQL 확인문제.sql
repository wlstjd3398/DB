#날짜 : 2021/05/17
#이름 : 김철학
#내용 : 3. SQL 확인문제

CREATE TABLE `tbl_member` (
`memberID`	varchar(8) PRIMARY KEY,
`memberName`	varchar(5) NOT null,
`memberAddress` varchar(20) 
);

INSERT INTO `tbl_member` VALUES ('jang','장보고','완도군');
INSERT INTO `tbl_member` VALUES ('kang', '강감찬', '서울시');
INSERT INTO `tbl_member`(`memberID`, `memberName`) VALUES ('kim', '김유신');
INSERT INTO `tbl_member` VALUES ('lee', '이순신', '서울시');

CREATE TABLE `tbl_product`(
`productName` VARCHAR(4) PRIMARY KEY,
`cost`	INT NOT null,
`makeDate`	DATE ,
`company`	VARCHAR(5),
`amout`	INT NOT null
);

INSERT INTO `tbl_product` VALUES ('냉장고', 800,'2021-05-17', 'LG', 1);
INSERT INTO `tbl_product` VALUES ('노트북', 1500,'2021-05-17', '삼성', 5);
INSERT INTO `tbl_product` VALUES ('컴퓨터', 1000,'2021-05-17', 'LG', 10);

SELECT * FROM `tbl_member` WHERE `memberAddress`='서울시';

