#날짜 : 2021/06/07
#이름 : 김철학
#내용 : 게시판 테이블 생성하기

#약관테이블
CREATE TABLE `JBOARD_TERMS` (
	`terms` TEXT,
	`privacy` TEXT
);

#회원테이블
CREATE TABLE `JBOARD_MEMBER` (
	`uid` VARCHAR(20) PRIMARY KEY,
	`pass` VARCHAR(255),
	`name` VARCHAR(20),
	`nick` VARCHAR(20) UNIQUE,
	`email` VARCHAR(20) UNIQUE,
	`hp` CHAR(13) UNIQUE,
	`grade` TINYINT DEFAULT 2,
	`zip` CHAR(5) DEFAULT NULL,
	`addr1` VARCHAR(255) DEFAULT NULL,
	`addr2` VARCHAR(255) DEFAULT NULL,
	`regip` VARCHAR(100),
	`rdate` DATETIME
);

#게시판테이블
CREATE TABLE `JBOARD_ARTICLE` (
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`parent` INT DEFAULT 0,
	`comment` INT DEFAULT 0,
	`cate` VARCHAR(10) DEFAULT 'free',
	`title` VARCHAR(255) DEFAULT NULL,
	`content` TEXT,
	`file` TINYINT DEFAULT 0, 
	`hit` INT DEFAULT 0,
	`uid` VARCHAR(20),
	`regip` VARCHAR(100),
	`rdate` DATETIME
);

# 파일 테이블
CREATE TABLE `JBOARD_FILE` (
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`parent` INT,
	`oriName` VARCHAR(255),
	`newName` VARCHAR(255),
	`download` INT DEFAULT 0,
	`rdate` datetime
);




# list.jsp UID조인해서 NICK나타내기
SELECT a.*, b.`nick` FROM `JBOARD_ARTICLE` AS a 
JOIN `JBOARD_MEMBER` AS b 
ON a.uid = b.uid 
ORDER BY `seq` DESC
LIMIT 10;

# 게시판 갯수늘리기
INSERT INTO `JBOARD_ARTICLE` (`title`, `content`, `uid`, `regip`, `rdate`)
SELECT `title`, `content`, `uid`, `regip`, `rdate` FROM `JBOARD_ARTICLE`;

# 게시물 갯수 세기
SELECT COUNT(*) FROM `JBOARD_ARTICLE`;




# 게시판 view.jsp
SELECT * FROM `JBOARD_ARTICLE` WHERE `seq`=?;

# view에 hit 조회수
UPDATE `JBOARD_ARTICLE` SET `hit` = `hit` + 1 WHERE `seq` = '224';

# join
SELECT * FROM `JBOARD_ARTICLE` AS a
LEFT JOIN `JBOARD_FILE` AS b
ON a.seq = b.parent
WHERE a.`seq`='4085';

# max
SELECT MAX(`seq`) FROM `JBOARD_ARTICLE`;


# 댓글
SELECT * FROM `JBOARD_ARTICLE` WHERE `parent`=? ORDER BY `seq` ASC;

SELECT a.*, b.nick FROM `JBOARD_ARTICLE` AS a
JOIN `JBOARD_MEMBER` AS b
on a.uid = b.uid
WHERE `parent`='4087'
ORDER BY a.`seq` ASC;

#농작물이야기  게시판글 5개, 커뮤니티 게시판글3개
(SELECT * FROM `JBOARD_ARTICLE` WHERE `cate` ='grow' AND `parent`=0 ORDER BY `seq` DESC LIMIT 5)
UNION
(SELECT * FROM `JBOARD_ARTICLE` WHERE `cate` ='school' AND `parent`=0 ORDER BY `seq` DESC LIMIT 5)
UNION
(SELECT * FROM `JBOARD_ARTICLE` WHERE `cate` ='story' AND `parent`=0 ORDER BY `seq` DESC LIMIT 5)
UNION
(SELECT * FROM `JBOARD_ARTICLE` WHERE `cate` ='notice' AND `parent`=0 ORDER BY `seq` DESC LIMIT 3)
UNION
(SELECT * FROM `JBOARD_ARTICLE` WHERE `cate` ='qna' AND `parent`=0 ORDER BY `seq` DESC LIMIT 3)
UNION
(SELECT * FROM `JBOARD_ARTICLE` WHERE `cate` ='faq' AND `parent`=0 ORDER BY `seq` DESC LIMIT 3);

SELECT * FROM `MEMBER`;


# aws안거치고 local로만 출력
INSERT INTO `JBOARD_ARTICLE` SET 
												 `title`=?,
												 `content`=?,
												 `file`=?,
												 `uid`=?,
												 `regip`=?,
												 `rdate`=NOW();
	
INSERT INTO `JBOARD_ARTICLE` SET 
												 `parent`=?,
												 `content`=?,
												 `uid`=?,
												 `regip`=?,
												 `rdate`=NOW();
	
INSERT INTO `JBOARD_FILE` SET 
												 `parent`=?,
												 `oriName`=?,
												 `newName`=?,
												 `rdate`=NOW();