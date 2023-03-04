
CREATE TABLE `sampledb`.`users`(
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `birthday` Integer(11) NOT NULL,
    `tel` VARCHAR(13) NOT NULL,
    `postal_code` Integer(7) NOT NULL,
    `address1` VARCHAR(50) NOT NULL,
    `address2` VARCHAR(50) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `role` TINYINT(1) NOT NULL DEFAULT 0,
    `password` VARCHAR(16) NOT NULL,
    `create_date` DATETIME NOT NULL,
    `update_date` DATETIME NULL,
    `delete_date` DATETIME NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;

CREATE TABLE `sampledb`.`contacts` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `guest_name` VARCHAR(50) NOT NULL,
  `guest_email` VARCHAR(100) NOT NULL,
  `title` VARCHAR(50) NULL,
  `description` VARCHAR(255) NULL,
  `user_id` BIGINT NOT NULL,
  `create_date` DATETIME NOT NULL,
  `update_date` DATETIME NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(user_id) REFERENCES users(id)
) DEFAULT CHARSET=utf8;

CREATE TABLE `sampledb`.`news` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50) NOT NULL,
  `desciption` VARCHAR(255) NULL,
  `create_date` DATETIME NOT NULL,
  `update_date` DATETIME NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `sampledb`.`categories` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `create_date` DATETIME NOT NULL,
  `update_date` DATETIME NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `sampledb`.`gifts` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `sale_rate` Integer(2) NULL,
  `desciption` VARCHAR(255) NULL,
  `create_date` DATETIME NOT NULL,
  `update_date` DATETIME NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `sampledb`.`items` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `desciption` VARCHAR(255) NULL,
  `gift_id` BIGINT NULL,
  `category_id` BIGINT NULL,
  `create_date` DATETIME NOT NULL,
  `update_date` DATETIME NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(gift_id) REFERENCES gifts(id),
  FOREIGN KEY(category_id) REFERENCES categories(id)
);

CREATE TABLE `sampledb`.`item_infos` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `amount` Integer NOT NULL,
  `price` Integer NOT NULL,
  `user_id` BIGINT NULL,
  `item_id` BIGINT NULL,
  `create_date` DATETIME NOT NULL,
  `update_date` DATETIME NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY(user_id) REFERENCES users(id),
  FOREIGN KEY(item_id) REFERENCES items(id)
);

CREATE TABLE `sampledb`.`item_images`(
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `uri` VARCHAR(255),
    `item_id` BIGINT NULL,
    `create_date` DATETIME NOT NULL,
    `update_date` DATETIME NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY(item_id) REFERENCES items(id)
);

INSERT INTO `sampledb`.`users`(
    `name`,`birthday`,`tel`,`postal_code`,`address1`,`address2`,`email`,`password`,`create_date`
) VALUES (
    'Test太郎',
    19700101,
    '080-0000-0000',
    1200001,
    '東京都サンプル区1-1',
    '東京たわー最上階',
    'test@test.com',
    'password',
    '2022-12-21 15:00:00'
);

