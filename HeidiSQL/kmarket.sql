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
	`descript`	VARCHAR(100),
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

INSERT INTO `km_cate1` VALUES (1, '브랜드패션');
INSERT INTO `km_cate1` VALUES (2, '패션의류·잡화·뷰티');
INSERT INTO `km_cate1` VALUES (3, '유아동');
INSERT INTO `km_cate1` VALUES (4, '식품·생필품');
INSERT INTO `km_cate1` VALUES (5, '홈데코·문구·취미·반려');
INSERT INTO `km_cate1` VALUES (6, '컴퓨터·디지털·가전');
INSERT INTO `km_cate1` VALUES (7, '스포츠·건강·렌탈');
INSERT INTO `km_cate1` VALUES (8, '자동차·공구');
INSERT INTO `km_cate1` VALUES (9, '여행·도서·티켓·e쿠폰');

INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (1, 1, '브랜드 여성의류');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (1, 2, '브랜드 남성의류');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (1, 3, '브랜드 진/캐쥬얼');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (1, 4, '브랜드 신발/가방');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (1, 5, '브랜드 쥬얼리/시계');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (1, 6, '브랜드 아웃도어');

INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (2, 1, '여성의류');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (2, 2, '남성의류');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (2, 3, '언더웨어');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (2, 4, '신발');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (2, 5, '가방/잡화');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (2, 6, '화장품/향수');

INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (3, 1, '출산/육아');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (3, 2, '장난감/완구');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (3, 3, '유아동 의류');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (3, 4, '유아동 신발/잡화');

INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (4, 1, '신선식품');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (4, 2, '가공식품');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (4, 3, '건강식품');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (4, 4, '커피/음료');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (4, 5, '생필품');

INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (5, 1, '가구/DIY');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (5, 2, '침구/커튼');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (5, 3, '조명/인테리어');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (5, 4, '생활용품');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (5, 5, '주방용품');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (5, 6, '문구/사무용품');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (5, 7, '악기/취미');

INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (6, 1, '노트북/PC');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (6, 2, '모니터/프린터');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (6, 3, 'PC주변기기');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (6, 4, '모바일/태블릿');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (6, 5, '카메라');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (6, 6, '게임');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (6, 7, '영상가전');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (6, 8, '주방가전');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (6, 9, '계절가전');

INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (7, 1, '스포츠의류/운동화');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (7, 2, '휘트니스/수영');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (7, 3, '구기/라켓');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (7, 4, '골프');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (7, 5, '자전거/보드/기타');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (7, 6, '캠핑/낚시');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (7, 7, '등산/아웃도어');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (7, 8, '건강/의료용품');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (7, 9, '렌탈서비스');

INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (8, 1, '자동차용품');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (8, 2, '공구/안전/산업용품');

INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (9, 1, '여행/항공권');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (9, 2, '도서/음반/e교육');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (9, 3, '공연티켓');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (9, 4, 'e쿠폰');
INSERT INTO `km_cate2` (`code1`, `code2`, `title`) VALUES (9, 5, '상품권');

SELECT * FROM `km_cate2` WHERE `code`=6 ORDER BY `seq`;

#product 데이터 철학샘한테 받고 km_cate1 km_cate2 조인해야함
SELECT c2.code1, c2.code2, c1.title AS tit1, c2.title AS tit2
FROM `km_cate1` AS c1
JOIN `km_cate2` AS c2
ON c1.code1 = c2.code1
ORDER BY c2.code1, c2.code2;

#히트상품
SELECT * FROM `km_product`
ORDER by `hit` DESC
LIMIT 8;

