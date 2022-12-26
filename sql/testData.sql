CREATE TABLE `sampledb`.`user`(
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `address` VARCHAR(255) NULL,
    `phone` VARCHAR(50) NULL,
    `create_date` DATETIME NOT NULL,
    `update_date` DATETIME NOT NULL,
    `delete_date` DATETIME NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `sampledb`.`user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(255) NULL,
  `phone` VARCHAR(50) NULL,
  `update_date` DATETIME NOT NULL,
  `create_date` DATETIME NOT NULL,
  `delete_date` DATETIME NULL,
PRIMARY KEY (`id`));

INSERT INTO `sampledb`.`user`(
    `name`,`address`,`phone`,`create_date`,`update_date`
) VALUES (
    'test','東京都サンプル区1-1','080-0000-0000','2022-12-21 15:00:00','2022-12-21 15:00:00'
);

CREATE TABLE `sampledb`.`userinfo` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `address` VARCHAR(255) NULL,
  `phone` VARCHAR(50) NULL,
  `create_date` DATETIME NOT NULL,
  `update_date` DATETIME NULL,
  `delete_date` DATETIME NULL,
PRIMARY KEY (`id`));

INSERT INTO `sampledb`.`userinfo`(
    `name`,`address`,`phone`,`create_date`
) VALUES (
    'test1','東京都サンプル区1-1','080-0000-0000','2022-12-26 15:00:00'
),(
    'test2','東京都サンプル区1-1','080-0000-0000','2022-12-26 15:00:00'
),(
    'test3','東京都サンプル区1-1','080-0000-0000','2022-12-26 15:00:00'
),(
    'test4','東京都サンプル区1-1','080-0000-0000','2022-12-26 15:00:00'
),(
    'test5','東京都サンプル区1-1','080-0000-0000','2022-12-26 15:00:00'
),(
    'test6','東京都サンプル区1-1','080-0000-0000','2022-12-26 15:00:00'
),(
    'test7','東京都サンプル区1-1','080-0000-0000','2022-12-26 15:00:00'
),(
    'test8','東京都サンプル区1-1','080-0000-0000','2022-12-26 15:00:00'
),(
    'test9','東京都サンプル区1-1','080-0000-0000','2022-12-26 15:00:00'
),(
    'test10','東京都サンプル区1-1','080-0000-0000','2022-12-26 15:00:00'
);