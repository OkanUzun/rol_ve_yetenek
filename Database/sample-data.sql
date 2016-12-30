INSERT INTO T_DEPARTMENT(PK,DEPARTMENT_NAME) VALUES(100,'İNSAN KAYNAKLARI DEPARTMANI');
INSERT INTO T_DEPARTMENT(PK,DEPARTMENT_NAME) VALUES(105,'BİLİŞİM TEKNOLOJİLERİ DEPARTMANI');
INSERT INTO T_DEPARTMENT(PK,DEPARTMENT_NAME) VALUES(110,'MUHASEBE DEPARTMANI');

INSERT INTO T_UNIT(PK,UNIT_NAME,DEPARTMENT_FK) VALUES(1000,'YAZILIM BİRİMİ',100);
INSERT INTO T_UNIT(PK,UNIT_NAME,DEPARTMENT_FK) VALUES(1050,'NETWORK BİRİMİ',100);
INSERT INTO T_UNIT(PK,UNIT_NAME,DEPARTMENT_FK) VALUES(1100,'İŞE ALMA BİRİMİ',105);
INSERT INTO T_UNIT(PK,UNIT_NAME,DEPARTMENT_FK) VALUES(1150,'PERFORMANS DEĞERLENDİRME BİRİMİ',105);
INSERT INTO T_UNIT(PK,UNIT_NAME,DEPARTMENT_FK) VALUES(1200,'GELİR-GİDER BİRİMİ',110);
INSERT INTO T_UNIT(PK,UNIT_NAME,DEPARTMENT_FK) VALUES(1250,'BÜTÇE RAPORLAMA BİRİMİ',110);
INSERT INTO T_UNIT(PK,UNIT_NAME,DEPARTMENT_FK) VALUES(1300,'İŞ ZEKASI BİRİMİ',105);

INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(10000,'GENEL MÜDÜR');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(10500,'MÜDÜR');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(11000,'YÖNETİCİ');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(11500,'YAZILIMCI');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(16000,'MUHASEBECİ');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(12000,'YAZILIM UZMANI');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(12500,'ANALİST');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(13000,'ANALİZ UZMANI');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(13500,'BÜTÇECİ');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(14000,'VERİ TABANI UZMANI');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(14500,'SİSTEM YÖNETİCİSİ');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(15000,'TASARIMCI');
INSERT INTO T_ROLE(PK,ROLE_NAME) VALUES(15500,'NETWORK UZMANI');

INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(1,'JAVA');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(2,'JAVASCRIPT');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(3,'PHP');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(4,'HTML');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(5,'CSS');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(6,'AJAX');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(7,'C#');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(8,'C++');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(9,'C');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(10,'ASP.NET');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(11,'.NET');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(12,'PYTHON');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(13,'RUBY');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(14,'XML');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(15,'OBJECTIVE-C');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(16,'ANDROID');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(17,'IOS');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(18,'NODE.JS');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(19,'ANGULAR.JS');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(20,'ORACLE');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(21,'SQL');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(22,'MYSQL');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(23,'PL/SQL');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(24,'MS EXCEL');
INSERT INTO T_ABILITY(PK,ABILITY_NAME) VALUES(25,'MS WORD');

INSERT INTO T_LOUNGE(PK,LOUNGE_NAME) VALUES(1,'SALON 1');
INSERT INTO T_LOUNGE(PK,LOUNGE_NAME) VALUES(2,'SALON 2');
INSERT INTO T_LOUNGE(PK,LOUNGE_NAME) VALUES(3,'SALON 3');
INSERT INTO T_LOUNGE(PK,LOUNGE_NAME) VALUES(4,'SALON 4');
INSERT INTO T_LOUNGE(PK,LOUNGE_NAME) VALUES(5,'SALON 5');

INSERT INTO T_STATE(PK,STATE_NAME,STATE_ORDER,ALLOW_TO_CHANGE_DETAILS,ALLOW_TO_START,ALLOW_TO_ACTIVITE,ALLOW_TO_CANCEL,ALLOW_TO_TERMINATE,ALLOW_TO_CHANGE_USER_OR_ABLYT) VALUES(1,'AKTİFLEŞTİRİLDİ','1','1','1','0','1','0','1');
INSERT INTO T_STATE(PK,STATE_NAME,STATE_ORDER,ALLOW_TO_CHANGE_DETAILS,ALLOW_TO_START,ALLOW_TO_ACTIVITE,ALLOW_TO_CANCEL,ALLOW_TO_TERMINATE,ALLOW_TO_CHANGE_USER_OR_ABLYT) VALUES(2,'BAŞLADI',2,'0','0','0','0','1','0');
INSERT INTO T_STATE(PK,STATE_NAME,STATE_ORDER,ALLOW_TO_CHANGE_DETAILS,ALLOW_TO_START,ALLOW_TO_ACTIVITE,ALLOW_TO_CANCEL,ALLOW_TO_TERMINATE,ALLOW_TO_CHANGE_USER_OR_ABLYT) VALUES(3,'SONA ERDİ',3,'0','0','0','0','0','0');
INSERT INTO T_STATE(PK,STATE_NAME,STATE_ORDER,ALLOW_TO_CHANGE_DETAILS,ALLOW_TO_START,ALLOW_TO_ACTIVITE,ALLOW_TO_CANCEL,ALLOW_TO_TERMINATE,ALLOW_TO_CHANGE_USER_OR_ABLYT) VALUES(4,'İPTAL EDİLDİ',4,'0','0','1','0','0','0');

INSERT INTO T_ABILITY_LEVEL(PK,LEVEL_NAME,LEVEL_ORDER) VALUES(1,'Çok İyi',1);
INSERT INTO T_ABILITY_LEVEL(PK,LEVEL_NAME,LEVEL_ORDER) VALUES(2,'İyi',2);
INSERT INTO T_ABILITY_LEVEL(PK,LEVEL_NAME,LEVEL_ORDER) VALUES(3,'Orta',3);
INSERT INTO T_ABILITY_LEVEL(PK,LEVEL_NAME,LEVEL_ORDER) VALUES(4,'Kötü',4);
INSERT INTO T_ABILITY_LEVEL(PK,LEVEL_NAME,LEVEL_ORDER) VALUES(5,'Çok Kötü',5);
