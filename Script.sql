

CREATE TABLE `range` (
  `idrange` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `storage` int(11) DEFAULT NULL,
  `battery` int(11) DEFAULT NULL,
  `camera` int(11) DEFAULT NULL,
  PRIMARY KEY (`idrange`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

select * from db.range where idrange = 1;

insert into `range` ('idrange','price','ram','storage','battery','camera') values (2,0,0,0,0,0);

UPDATE db.range SET price = '2' WHERE idrange = 1;

select * from phone;
select phone_name from phone;

SELECT * FROM phone
ORDER BY price DESC
LIMIT 5;

SELECT * FROM phone
ORDER BY battery DESC
LIMIT 5;

SELECT * FROM phone
+-+ORDER BY storage DESC
LIMIT 5;

           
create table phone(
phoneid int NOT NULL PRIMARY KEY,
phone_name varchar(225),
price varchar(45),
ram varchar(11),
storage int(45),
battery varchar(45),
camera varchar(45)
);

drop table phone;

/*
-- Query: SELECT * FROM db.phone
LIMIT 0, 1000

-- Date: 2020-08-15 13:07
*/
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (1,'realmrealme C3','189,900Ks','3G RAM','32','Li-Po 5000 mAh','12 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (2,'Redmi 9','199000Ks','4G RAM','64','Li-Po 5020 mAh','13 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (3,'Huawei Y6p','179000Ks','4G RAM','64','Li-Po 5000 mAh','13 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (4,'Realme C11','149,900Ks','2G RAM','32','Li-Po 5000 mAh','13 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (5,'OPPO_A11k','149,900 Ks','2G RAM','32','Li-Po 4230 mAh','13 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (6,'Pouvoir 4','159,900 Ks','3G RAM','32','Li-Po 6000 mAh','13 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (7,'Samsung A11','199,000 Ks','2G RAM','32','Li-Po 4000 mAh','13 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (8,'Redmi 9A','119,900 Ks','2G RAM','32','Li-Po 5000 mAh','13 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (9,'Realme 6i','269,900 Ks','4G RAM','128 ','Li-Po 5000 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (10,'Redmi Note 9 ','239000Ks','4G RAM','128 ','Li-Po 5020 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (11,'Redmi 10X 4G','235000Ks','6G RAM','128 ','Li-Po 5020 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (12,'Redmi Note 8 Pro','262,000 Ks','6G RAM','128 ','Li-Po 4500 mAh','64 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (13,'Redmi Note 8','233,000 Ks','6G RAM','128 ','Li-Po 4000 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (14,'Huawei Y7p','229000Ks','4G RAM','64','Li-Po 4000 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (15,'Huawei Y8p','299000Ks','6G RAM','128 ','Li-Po 4000 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (16,'realme 5i','209,900 Ks','4G RAM','64','Li-Po 5000 mAh','12 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (17,'Samsung A21s ','269,000 Ks','3G RAM','32','Li-Po 5000 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (18,'Realme XT','459,900 Ks','8G RAM','128 ','Li-Po 4000 mAh','64 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (19,'realme 6','369,900Ks','8G RAM','128 ','Li-Po 4300 mAh','64 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (20,'realme 6 Pro','459,900 Ks','8G RAM','128 ','Li-Po 4300 mAh','64 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (21,'Redmi Note 9 Pro','359000Ks','6G RAM','128 ','Li-Po 5020 mAh','64 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (22,'Mi Note 10 Lite','499000Ks','8G RAM','128 ','Li-Po 5260 mAh','64 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (23,'Redmi 10X Pro 5G','497,000Ks','8G RAM','256 ','Li-Po 4520 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (24,'Redmi 10X 5G','345000Ks','6G RAM','128 ','Li-Po 4520 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (25,'Huawei nova 7i','369,900Ks','8G RAM','128 ','Li-Po 4200 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (26,'Samsung A21 ','329,000 Ks','6G RAM','64','Li-Po 4000 mAh','16 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (27,'Samsung A31','399,000 Ks ','6G RAM','128 ','Li-Po 5000 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (28,'OPPO A92','379,900 Ks','8G RAM','128 ','Li-Po 5000 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (29,'VIVO S1 Pro','399,800 Ks ','8G RAM','128 ','Li-Po 4500 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (30,'Redmi K30 Pro 5G','549000Ks','8G RAM','128 ','Li-Po 4700 mAh','64 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (31,'POCO F2pro','829000Ks','8G RAM','256 ','Li-Po 4700 mAh','64 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (32,'Mi 10 Pro 5G','935,000 Ks ','8G RAM','256 ','Li-Po 4780 mAh','108 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (33,'Samsung A51 ','549,000 Ks','8G RAM','128 ','Li-Po 4000 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (34,'Samsung A71 ','669,000 Ks','8G RAM','128 ','Li-Ion 4500 mAh','64 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (35,'VIVO V19','579,800 Ks','8G RAM','128 ','Li-Ion 4500 mAh','48 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (36,'OPPO Reno3 Pro','599,900 Ks ','8G RAM','256 ','Li-Po 4025 mAh','64 MP');
INSERT INTO `phone` (`phoneid`,`phone_name`,`price`,`ram`,`storage`,`battery`,`camera`) VALUES (37,'Mi CC9 Pro','535,000 Ks','6G RAM','128 ','Li-Po 5260 mAh','108 MP');
