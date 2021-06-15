
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `account` varchar(30) DEFAULT '' COMMENT '账户',
  `password` varchar(60) DEFAULT '' COMMENT '密码',
  `username` varchar(20) DEFAULT '' COMMENT '姓名',
  `id_card` varchar(18) DEFAULT NULL COMMENT '身份证',
  `birth_day` varchar(10) DEFAULT NULL COMMENT '生日',
  `questions1` varchar(100) DEFAULT NULL COMMENT '问题1',
  `answers1` varchar(100) DEFAULT NULL COMMENT '回答1',
  `questions2` varchar(100) DEFAULT NULL COMMENT '问题2',
  `answers2` varchar(100) DEFAULT NULL COMMENT '回答2',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `mobile_phone` varchar(20) DEFAULT NULL COMMENT '移动电话',
  `mail` varchar(40) DEFAULT NULL COMMENT '游戏',
  `login_date` timestamp NULL DEFAULT NULL COMMENT '登录日期',
  `login_ip` varchar(30) DEFAULT NULL COMMENT '登录ip',
  `status` tinyint(3) DEFAULT '1' COMMENT '1:已启用 2:已禁用',
  `isdel` tinyint(3) DEFAULT '1' COMMENT '删除状态 1:未删除 2:已删除',
  `belock` tinyint(3) unsigned DEFAULT '1' COMMENT '锁定状态 1:正常 2:锁定中',
  `online` tinyint(3) unsigned DEFAULT '1' COMMENT '是否在线 1:不在线 2:在线',
  `pas_err_num` smallint(6) unsigned DEFAULT '0' COMMENT '密码错误次数',
  `cert` varchar(60) DEFAULT '' COMMENT '证书',
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `utime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='账户表';

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'admin003', '8ae873a9bde6c87cb3086ebbea124af015d14aac', '张三', '', '1988/01/01', '提问1', '回答1', '提问2', '回答2', '18888888888', '18888888888', 'fan3750060@163.com', null, null, '1', '1', '1', '1', '0', '', '2019-12-03 15:56:46', '2019-12-04 15:53:45');
INSERT INTO `account` VALUES ('3', 'admin008', '42cfbe1737bc40c6f2b27bd88b0185e0d71b9369', 'admin', '650101-1455111', '1991/11/11', '111', '111', '111', '111', '11111111111', '11111111111', '111@111.111', '2019-12-04 23:16:11', '113.45.73.83', '1', '1', '1', '1', '0', '748', '2019-12-03 20:45:01', '2019-12-04 23:16:11');
INSERT INTO `account` VALUES ('4', 'admin009', '96ebfcfc1195c4ed026bc204ff4f3f2fe3cf0c06', '王二', '650101-1455111', '1991/11/11', '问题1', '回答1', '问题2', '回答2', '18888888888', '13333333333', 'fan3750060@163.com', '2019-12-05 01:16:34', '113.45.73.83', '1', '1', '1', '1', '1', '606', '2019-12-03 23:14:21', '2019-12-05 01:16:34');
INSERT INTO `account` VALUES ('5', 'admin002', '05a79f06cf3f67f726dae68d18a2290f6c9a50c9', '', '', '1988/01/01', '', '', '提问2', '回答2', '', '18888888888', '', null, null, '1', '1', '1', '1', '0', '', '2019-12-04 18:00:36', null);
INSERT INTO `account` VALUES ('6', 'admin100', 'c9cba3bad2e09dec1b167294526bc45b2fbe102b', '张三', '650101-1455111', '1991/11/11', '1', '1', '1', '1', '1', '1', '1', null, null, '1', '1', '1', '1', '0', '', '2019-12-04 23:15:05', '2019-12-04 23:15:39');
INSERT INTO `account` VALUES ('7', 'admin101', '858167d78f3e575bf4ddcde3d43f3e3d55275b66', '张三', '650101-1455111', '1991/11/11', '1', '1', '1', '1', '1', '1', '1', null, null, '1', '1', '1', '1', '0', '', '2019-12-04 23:23:00', '2019-12-04 23:23:32');

-- ----------------------------
-- Table structure for human
-- ----------------------------
DROP TABLE IF EXISTS `human`;
CREATE TABLE `human` (
  `HumanID` int(11) NOT NULL AUTO_INCREMENT COMMENT '英雄id',
  `account_id` varchar(10) NOT NULL DEFAULT '' COMMENT '账户id',
  `human_name` varchar(14) NOT NULL,
  `isdel` int(11) DEFAULT '1' COMMENT '删除状态 1:未删除 2:已删除',
  `IsSelect` int(11) DEFAULT NULL,
  `CreateDate` int(11) DEFAULT NULL,
  `LoginDate` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `job` int(11) DEFAULT NULL,
  `hair` int(11) DEFAULT NULL,
  `Dir` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `ReLevel` int(11) DEFAULT '0',
  `Map` varchar(30) DEFAULT NULL,
  `X` int(11) DEFAULT NULL,
  `Y` int(11) DEFAULT NULL,
  `HomeMap` varchar(30) DEFAULT NULL,
  `HomeX` int(11) DEFAULT NULL,
  `HomeY` int(11) DEFAULT NULL,
  `AttackMode` int(11) DEFAULT NULL,
  `StoragePassword` varchar(7) DEFAULT NULL,
  `CreditPoint` int(11) DEFAULT NULL,
  `Gold` int(11) DEFAULT NULL,
  `GameGold` int(11) DEFAULT NULL,
  `GamePoint` int(11) DEFAULT NULL,
  `GameDiamond` int(11) DEFAULT NULL,
  `GameGird` int(11) DEFAULT NULL,
  `GameGoldEx` int(11) DEFAULT NULL,
  `GameGlory` int(11) DEFAULT NULL,
  `PKPoint` int(11) DEFAULT NULL,
  `PayMentPoint` int(11) DEFAULT NULL,
  `MemberType` int(11) DEFAULT NULL,
  `MemberLevel` int(11) DEFAULT NULL,
  `IsMaster` int(11) DEFAULT NULL,
  `MasterName` varchar(14) DEFAULT NULL,
  `MasterCount` int(11) DEFAULT NULL,
  `MarryCount` int(11) DEFAULT NULL,
  `DearName` varchar(14) DEFAULT NULL,
  `IncHP` int(11) DEFAULT NULL,
  `IncMP` int(11) DEFAULT NULL,
  `IncHP2` int(11) DEFAULT NULL,
  `FightZoneDieCount` int(11) DEFAULT NULL,
  `BodyLuck` double DEFAULT NULL,
  `Contribution` int(11) DEFAULT NULL,
  `HungerStatus` int(11) DEFAULT NULL,
  `KickCount` int(11) DEFAULT NULL,
  `IsLockLogin` int(11) DEFAULT NULL,
  `IsAllowGroup` int(11) DEFAULT NULL,
  `IsAllowGroupRecall` int(11) DEFAULT NULL,
  `GroupRecallTime` int(11) DEFAULT NULL,
  `IsAllowGuildReCall` int(11) DEFAULT NULL,
  `IsDisableTrading` int(11) DEFAULT NULL,
  `IsDisableInviteHorseRiding` int(11) DEFAULT NULL,
  `IsGameGoldTrading` int(11) DEFAULT NULL,
  `IsNewServer` int(11) DEFAULT NULL,
  `IsFilterGlobalDropItemMsg` int(11) DEFAULT NULL,
  `IsFilterGlobalCenterMsg` int(11) DEFAULT NULL,
  `IsFilterGolbalSendMsg` int(11) DEFAULT NULL,
  `IsFixedHero` int(11) DEFAULT NULL,
  `IsStorageHero` int(11) DEFAULT NULL,
  `IsStorageDeputyHero` int(11) DEFAULT NULL,
  `HeroName` varchar(14) DEFAULT NULL,
  `DeputyHeroName` varchar(14) DEFAULT NULL,
  `DeputyHeroJob` int(11) DEFAULT NULL,
  `Nation` int(11) DEFAULT NULL,
  `NationCredit` int(11) DEFAULT NULL,
  `RevivalTime` int(11) DEFAULT NULL,
  `InfinityStorageExtCount` int(11) DEFAULT NULL,
  `IsSaveKillMonExpRate` int(11) DEFAULT NULL,
  `KillMonExpRate` int(11) DEFAULT NULL,
  `KillMonExpRateTime` int(11) DEFAULT NULL,
  `IsSavePowerRate` int(11) DEFAULT NULL,
  `PowerRate` int(11) DEFAULT NULL,
  `PowerRateTime` int(11) DEFAULT NULL,
  `IsSaveKillMonBurstRate` int(11) DEFAULT NULL,
  `KillMonBurstRate` int(11) DEFAULT NULL,
  `KillMonBurstRateTime` int(11) DEFAULT NULL,
  `FBCreateTime` int(11) DEFAULT NULL,
  `JewelryBoxStatus` int(11) DEFAULT NULL,
  `IsShowFashion` int(11) DEFAULT NULL,
  `IsShowGodBless` int(11) DEFAULT NULL,
  `ActiveFengHao` int(11) DEFAULT NULL,
  `IsOpenStorage1` int(11) DEFAULT NULL,
  `IsOpenStorage2` int(11) DEFAULT NULL,
  `IsOpenStorage3` int(11) DEFAULT NULL,
  `HighLevelKillMonFixExpTimeLeft` int(11) DEFAULT NULL,
  `MobileNumber` varchar(20) DEFAULT NULL,
  `IsMobileBind` int(11) DEFAULT NULL,
  `MobileVerifyCode` varchar(8) DEFAULT NULL,
  `MobileSendTick` int(11) DEFAULT NULL,
  `MobileResendCount` int(11) DEFAULT NULL,
  `ClearDayVarTime` int(11) DEFAULT '0',
  `wuxing` tinyint(4) unsigned DEFAULT '0' COMMENT '五行',
  PRIMARY KEY (`HumanID`),
  UNIQUE KEY `uk_HumanName` (`human_name`),
  KEY `idx_Account` (`account_id`) USING BTREE,
  KEY `idx_HumanName` (`human_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of human
-- ----------------------------
INSERT INTO `human` VALUES ('1', '4', '哈哈哈', '1', null, null, null, '0', '0', '5', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0');
INSERT INTO `human` VALUES ('2', '4', '发发发', '1', null, null, null, '0', '1', '5', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '0');
INSERT INTO `human` VALUES ('3', '3', '法师法师', '1', null, null, null, '0', '0', '1', null, '1', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', '1');

-- ----------------------------
-- Table structure for humanabil
-- ----------------------------
DROP TABLE IF EXISTS `humanabil`;
CREATE TABLE `humanabil` (
  `HumanID` int(11) NOT NULL,
  `AC1` int(11) DEFAULT '0',
  `AC2` int(11) DEFAULT '0',
  `MAC1` int(11) DEFAULT '0',
  `MAC2` int(11) DEFAULT '0',
  `DC1` int(11) DEFAULT '0',
  `DC2` int(11) DEFAULT '0',
  `MC1` int(11) DEFAULT '0',
  `MC2` int(11) DEFAULT '0',
  `SC1` int(11) DEFAULT '0',
  `SC2` int(11) DEFAULT NULL,
  `HP` int(11) DEFAULT '0',
  `MaxHP` int(11) DEFAULT '0',
  `MP` int(11) DEFAULT '0',
  `MaxMP` int(11) DEFAULT '0',
  `Exp` int(11) DEFAULT '0',
  `MaxExp` int(11) DEFAULT '0',
  `Weight` int(11) DEFAULT '0',
  `MaxWeight` int(11) DEFAULT '0',
  `WearWeight` int(11) DEFAULT '0',
  `MaxWearWeight` int(11) DEFAULT '0',
  `HandWeight` int(11) DEFAULT '0',
  `MaxHandWeight` int(11) DEFAULT '0',
  `AdjustAbilPoint` int(11) DEFAULT '0',
  `AdjustAbilDC` int(11) DEFAULT '0',
  `AdjustAbilMC` int(11) DEFAULT '0',
  `AdjustAbilSC` int(11) DEFAULT '0',
  `AdjustAbilAC` int(11) DEFAULT '0',
  `AdjustAbilMAC` int(11) DEFAULT '0',
  `AdjustAbilHP` int(11) DEFAULT '0',
  `AdjustAbilMP` int(11) DEFAULT '0',
  `AdjustAbilHit` int(11) DEFAULT '0',
  `AdjustAbilSpeed` int(11) DEFAULT '0',
  `AdjustAbilMaxRate` int(11) DEFAULT '0',
  PRIMARY KEY (`HumanID`),
  CONSTRAINT `fk_HumanID` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanabil
-- ----------------------------

-- ----------------------------
-- Table structure for humanabilng
-- ----------------------------
DROP TABLE IF EXISTS `humanabilng`;
CREATE TABLE `humanabilng` (
  `HumanID` int(11) NOT NULL,
  `IsTrainingNG` int(11) DEFAULT NULL,
  `IsTrainingXF` int(11) DEFAULT NULL,
  `AbilNGLevel` int(11) DEFAULT NULL,
  `AbilNGValue` int(11) DEFAULT NULL,
  `AbilNGMaxValue` int(11) DEFAULT NULL,
  `AbilNGExp` int(11) DEFAULT NULL,
  `AbilNGMaxExp` int(11) DEFAULT NULL,
  `ContinuousMagicOrder1` int(11) DEFAULT NULL,
  `ContinuousMagicOrder2` int(11) DEFAULT NULL,
  `ContinuousMagicOrder3` int(11) DEFAULT NULL,
  `IsOpenLastContinuous` int(11) DEFAULT NULL,
  `LastContinuousMagicOrder` int(11) DEFAULT NULL,
  `Meridians1Level` int(11) DEFAULT NULL,
  `Meridians1BlastHitRate1` int(11) DEFAULT NULL,
  `Meridians1Acupoints1` int(11) DEFAULT NULL,
  `Meridians1Acupoints2` int(11) DEFAULT NULL,
  `Meridians1Acupoints3` int(11) DEFAULT NULL,
  `Meridians1Acupoints4` int(11) DEFAULT NULL,
  `Meridians1Acupoints5` int(11) DEFAULT NULL,
  `Meridians2Level` int(11) DEFAULT NULL,
  `Meridians2BlastHitRate` int(11) DEFAULT NULL,
  `Meridians2Acupoints1` int(11) DEFAULT NULL,
  `Meridians2Acupoints2` int(11) DEFAULT NULL,
  `Meridians2Acupoints3` int(11) DEFAULT NULL,
  `Meridians2Acupoints4` int(11) DEFAULT NULL,
  `Meridians2Acupoints5` int(11) DEFAULT NULL,
  `Meridians3Level` int(11) DEFAULT NULL,
  `Meridians3BlastHitRate` int(11) DEFAULT NULL,
  `Meridians3Acupoints1` int(11) DEFAULT NULL,
  `Meridians3Acupoints2` int(11) DEFAULT NULL,
  `Meridians3Acupoints3` int(11) DEFAULT NULL,
  `Meridians3Acupoints4` int(11) DEFAULT NULL,
  `Meridians3Acupoints5` int(11) DEFAULT NULL,
  `Meridians4Level` int(11) DEFAULT NULL,
  `Meridians4BlastHitRate` int(11) DEFAULT NULL,
  `Meridians4Acupoints1` int(11) DEFAULT NULL,
  `Meridians4Acupoints2` int(11) DEFAULT NULL,
  `Meridians4Acupoints3` int(11) DEFAULT NULL,
  `Meridians4Acupoints4` int(11) DEFAULT NULL,
  `Meridians4Acupoints5` int(11) DEFAULT NULL,
  `Meridians5Level` int(11) DEFAULT NULL,
  `Meridians5BlastHitRate` int(11) DEFAULT NULL,
  `Meridians5Acupoints1` int(11) DEFAULT NULL,
  `Meridians5Acupoints2` int(11) DEFAULT NULL,
  `Meridians5Acupoints3` int(11) DEFAULT NULL,
  `Meridians5Acupoints4` int(11) DEFAULT NULL,
  `Meridians5Acupoints5` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`),
  CONSTRAINT `humanabilng_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanabilng
-- ----------------------------

-- ----------------------------
-- Table structure for humanabilnpcadd
-- ----------------------------
DROP TABLE IF EXISTS `humanabilnpcadd`;
CREATE TABLE `humanabilnpcadd` (
  `HumanID` int(11) NOT NULL,
  `Index` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`Index`),
  CONSTRAINT `humanabilnpcadd_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanabilnpcadd
-- ----------------------------

-- ----------------------------
-- Table structure for humanabilwine
-- ----------------------------
DROP TABLE IF EXISTS `humanabilwine`;
CREATE TABLE `humanabilwine` (
  `HumanID` int(11) NOT NULL,
  `IsDrinkedWine` int(11) DEFAULT NULL,
  `IsDrinkWineDrunk` int(11) DEFAULT NULL,
  `DrinkWineQuality` int(11) DEFAULT NULL,
  `DrinkWineAlcohol` int(11) DEFAULT NULL,
  `AbilAlcohol` int(11) DEFAULT NULL,
  `AbilMaxAlcohol` int(11) DEFAULT NULL,
  `AbilDrinkValue` int(11) DEFAULT NULL,
  `AbilMedicineLevel` int(11) DEFAULT NULL,
  `AbilMedicineValue` int(11) DEFAULT NULL,
  `AbilMaxMedicineValue` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`),
  CONSTRAINT `humanabilwine_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanabilwine
-- ----------------------------

-- ----------------------------
-- Table structure for humangamepetdata
-- ----------------------------
DROP TABLE IF EXISTS `humangamepetdata`;
CREATE TABLE `humangamepetdata` (
  `HumanID` int(11) NOT NULL,
  `Index` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `HP` int(11) DEFAULT NULL,
  `MP` int(11) DEFAULT NULL,
  `Exp` int(11) DEFAULT NULL,
  `Magic1` int(11) DEFAULT NULL,
  `Magic2` int(11) DEFAULT NULL,
  `Magic3` int(11) DEFAULT NULL,
  `Magic4` int(11) DEFAULT NULL,
  `Magic5` int(11) DEFAULT NULL,
  `Magic6` int(11) DEFAULT NULL,
  `Magic7` int(11) DEFAULT NULL,
  `Magic8` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`Index`),
  CONSTRAINT `humangamepetdata_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humangamepetdata
-- ----------------------------

-- ----------------------------
-- Table structure for humangodblessstate
-- ----------------------------
DROP TABLE IF EXISTS `humangodblessstate`;
CREATE TABLE `humangodblessstate` (
  `HumanID` int(11) NOT NULL,
  `Index` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`Index`),
  CONSTRAINT `humangodblessstate_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humangodblessstate
-- ----------------------------

-- ----------------------------
-- Table structure for humanitemelementadd
-- ----------------------------
DROP TABLE IF EXISTS `humanitemelementadd`;
CREATE TABLE `humanitemelementadd` (
  `HumanID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `ValueIndex` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`ItemType`,`ItemIndex`,`ValueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanitemelementadd
-- ----------------------------

-- ----------------------------
-- Table structure for humanitemflute
-- ----------------------------
DROP TABLE IF EXISTS `humanitemflute`;
CREATE TABLE `humanitemflute` (
  `HumanID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `ValueIndex` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`ItemType`,`ItemIndex`,`ValueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanitemflute
-- ----------------------------

-- ----------------------------
-- Table structure for humanitemprogress
-- ----------------------------
DROP TABLE IF EXISTS `humanitemprogress`;
CREATE TABLE `humanitemprogress` (
  `HumanID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `ValueIndex` int(11) NOT NULL,
  `IsOpen` int(11) DEFAULT NULL,
  `NameColor` int(11) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `ShowType` int(11) DEFAULT NULL,
  `Max` int(11) DEFAULT NULL,
  `Value` int(11) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `Name` varchar(31) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`ItemType`,`ItemIndex`,`ValueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanitemprogress
-- ----------------------------

-- ----------------------------
-- Table structure for humanitemproperty
-- ----------------------------
DROP TABLE IF EXISTS `humanitemproperty`;
CREATE TABLE `humanitemproperty` (
  `HumanID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `ValueIndex` int(11) NOT NULL,
  `Color` int(11) DEFAULT NULL,
  `BindType` int(11) DEFAULT NULL,
  `ShowFlag` int(11) DEFAULT NULL,
  `IsPercent` int(11) DEFAULT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`ItemType`,`ItemIndex`,`ValueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanitemproperty
-- ----------------------------

-- ----------------------------
-- Table structure for humanitems
-- ----------------------------
DROP TABLE IF EXISTS `humanitems`;
CREATE TABLE `humanitems` (
  `HumanID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `MakeIndex` int(11) DEFAULT NULL,
  `DBIndex` int(11) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Dura` int(11) DEFAULT NULL,
  `DuraMax` int(11) DEFAULT NULL,
  `HeroM2DressEffect` int(11) DEFAULT NULL,
  `UpgradeCount` int(11) DEFAULT NULL,
  `IsStartTime` int(11) DEFAULT NULL,
  `LimitTime` int(11) DEFAULT NULL,
  `HeroM2Light` int(11) DEFAULT NULL,
  `Color` int(11) DEFAULT NULL,
  `IsBind` int(11) DEFAULT NULL,
  `BindOption` int(11) DEFAULT NULL,
  `Effect` int(11) DEFAULT NULL,
  `NewLooks` int(11) DEFAULT NULL,
  `NewShape` int(11) DEFAULT NULL,
  `FluteCount` int(11) DEFAULT NULL,
  `PropertyText` varchar(64) DEFAULT NULL,
  `PropertyTextColor` int(11) DEFAULT NULL,
  `ItemFrom` int(11) DEFAULT NULL,
  `ItemFromMap` varchar(30) DEFAULT NULL,
  `ItemFromMon` varchar(40) DEFAULT NULL,
  `ItemFromMaker` varchar(40) DEFAULT NULL,
  `ItemFromDate` double DEFAULT NULL,
  `InsuranceCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`ItemType`,`ItemIndex`),
  CONSTRAINT `humanitems_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanitems
-- ----------------------------

-- ----------------------------
-- Table structure for humanitemvalueadd
-- ----------------------------
DROP TABLE IF EXISTS `humanitemvalueadd`;
CREATE TABLE `humanitemvalueadd` (
  `HumanID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `ValueIndex` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`ItemType`,`ItemIndex`,`ValueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanitemvalueadd
-- ----------------------------

-- ----------------------------
-- Table structure for humanmagic
-- ----------------------------
DROP TABLE IF EXISTS `humanmagic`;
CREATE TABLE `humanmagic` (
  `HumanID` int(11) NOT NULL,
  `MagicType` int(11) NOT NULL,
  `MagicIndex` int(11) NOT NULL,
  `MagicID` int(11) DEFAULT NULL,
  `MagicAttr` int(11) DEFAULT NULL,
  `MagicLevel` int(11) DEFAULT NULL,
  `MagicNewLevel` int(11) DEFAULT NULL,
  `MagicKey` int(11) DEFAULT NULL,
  `MagicTranPoint` int(11) DEFAULT NULL,
  `MagicIsUseItemAdd` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`MagicType`,`MagicIndex`),
  CONSTRAINT `humanmagic_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanmagic
-- ----------------------------

-- ----------------------------
-- Table structure for humanmagicusetick
-- ----------------------------
DROP TABLE IF EXISTS `humanmagicusetick`;
CREATE TABLE `humanmagicusetick` (
  `HumanID` int(11) NOT NULL,
  `MagicID` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`MagicID`),
  CONSTRAINT `humanmagicusetick_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanmagicusetick
-- ----------------------------

-- ----------------------------
-- Table structure for humanquestflag
-- ----------------------------
DROP TABLE IF EXISTS `humanquestflag`;
CREATE TABLE `humanquestflag` (
  `HumanID` int(11) NOT NULL,
  `Index` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`Index`),
  CONSTRAINT `humanquestflag_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanquestflag
-- ----------------------------

-- ----------------------------
-- Table structure for humanskillpower
-- ----------------------------
DROP TABLE IF EXISTS `humanskillpower`;
CREATE TABLE `humanskillpower` (
  `HumanID` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL,
  `HumanAttackPercent` int(11) DEFAULT '0',
  `HumanAttackValue` int(11) DEFAULT '0',
  `MonAttackPercent` int(11) DEFAULT '0',
  `MonAttackValue` int(11) DEFAULT '0',
  `DefensePercent` int(11) DEFAULT '0',
  `DefenseValue` int(11) DEFAULT '0',
  `RemainingTime` int(11) DEFAULT '0',
  PRIMARY KEY (`HumanID`,`SkillID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanskillpower
-- ----------------------------

-- ----------------------------
-- Table structure for humanstatustime
-- ----------------------------
DROP TABLE IF EXISTS `humanstatustime`;
CREATE TABLE `humanstatustime` (
  `HumanID` int(11) NOT NULL,
  `Index` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`Index`),
  CONSTRAINT `humanstatustime_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanstatustime
-- ----------------------------

-- ----------------------------
-- Table structure for humanvariablej
-- ----------------------------
DROP TABLE IF EXISTS `humanvariablej`;
CREATE TABLE `humanvariablej` (
  `HumanID` int(11) NOT NULL,
  `Index` int(11) NOT NULL,
  `Value` int(11) DEFAULT '0',
  PRIMARY KEY (`HumanID`,`Index`),
  CONSTRAINT `humanvariablej_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanvariablej
-- ----------------------------

-- ----------------------------
-- Table structure for humanvariablet
-- ----------------------------
DROP TABLE IF EXISTS `humanvariablet`;
CREATE TABLE `humanvariablet` (
  `HumanID` int(11) NOT NULL,
  `Index` int(11) NOT NULL,
  `Value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`Index`),
  CONSTRAINT `humanvariablet_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanvariablet
-- ----------------------------

-- ----------------------------
-- Table structure for humanvariableu
-- ----------------------------
DROP TABLE IF EXISTS `humanvariableu`;
CREATE TABLE `humanvariableu` (
  `HumanID` int(11) NOT NULL,
  `Index` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`HumanID`,`Index`),
  CONSTRAINT `humanvariableu_ibfk_1` FOREIGN KEY (`HumanID`) REFERENCES `human` (`HumanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of humanvariableu
-- ----------------------------

-- ----------------------------
-- Table structure for itemelementadd
-- ----------------------------
DROP TABLE IF EXISTS `itemelementadd`;
CREATE TABLE `itemelementadd` (
  `ParentID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `ValueIndex` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ParentID`,`ItemType`,`ItemIndex`,`ValueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of itemelementadd
-- ----------------------------

-- ----------------------------
-- Table structure for itemflute
-- ----------------------------
DROP TABLE IF EXISTS `itemflute`;
CREATE TABLE `itemflute` (
  `ParentID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `ValueIndex` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ParentID`,`ItemType`,`ItemIndex`,`ValueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of itemflute
-- ----------------------------

-- ----------------------------
-- Table structure for itemprogress
-- ----------------------------
DROP TABLE IF EXISTS `itemprogress`;
CREATE TABLE `itemprogress` (
  `ParentID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `ValueIndex` int(11) NOT NULL,
  `IsOpen` int(11) DEFAULT NULL,
  `NameColor` int(11) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `ShowType` int(11) DEFAULT NULL,
  `Max` int(11) DEFAULT NULL,
  `Value` int(11) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL,
  `Name` varchar(31) DEFAULT NULL,
  PRIMARY KEY (`ParentID`,`ItemType`,`ItemIndex`,`ValueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of itemprogress
-- ----------------------------

-- ----------------------------
-- Table structure for itemproperty
-- ----------------------------
DROP TABLE IF EXISTS `itemproperty`;
CREATE TABLE `itemproperty` (
  `ParentID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `ValueIndex` int(11) NOT NULL,
  `Color` int(11) DEFAULT NULL,
  `BindType` int(11) DEFAULT NULL,
  `ShowFlag` int(11) DEFAULT NULL,
  `IsPercent` int(11) DEFAULT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ParentID`,`ItemType`,`ItemIndex`,`ValueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of itemproperty
-- ----------------------------

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `ParentID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `MakeIndex` int(11) DEFAULT NULL,
  `DBIndex` int(11) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Dura` int(11) DEFAULT NULL,
  `DuraMax` int(11) DEFAULT NULL,
  `HeroM2DressEffect` int(11) DEFAULT NULL,
  `UpgradeCount` int(11) DEFAULT NULL,
  `IsStartTime` int(11) DEFAULT NULL,
  `LimitTime` int(11) DEFAULT NULL,
  `HeroM2Light` int(11) DEFAULT NULL,
  `Color` int(11) DEFAULT NULL,
  `IsBind` int(11) DEFAULT NULL,
  `BindOption` int(11) DEFAULT NULL,
  `Effect` int(11) DEFAULT NULL,
  `NewLooks` int(11) DEFAULT NULL,
  `NewShape` int(11) DEFAULT NULL,
  `FluteCount` int(11) DEFAULT NULL,
  `PropertyText` varchar(64) DEFAULT NULL,
  `PropertyTextColor` int(11) DEFAULT NULL,
  `ItemFrom` int(11) DEFAULT NULL,
  `ItemFromMap` varchar(30) DEFAULT NULL,
  `ItemFromMon` varchar(40) DEFAULT NULL,
  `ItemFromMaker` varchar(40) DEFAULT NULL,
  `ItemFromDate` double DEFAULT NULL,
  `InsuranceCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`ParentID`,`ItemType`,`ItemIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of items
-- ----------------------------

-- ----------------------------
-- Table structure for itemvalueadd
-- ----------------------------
DROP TABLE IF EXISTS `itemvalueadd`;
CREATE TABLE `itemvalueadd` (
  `ParentID` int(11) NOT NULL,
  `ItemType` int(11) NOT NULL,
  `ItemIndex` int(11) NOT NULL,
  `ValueIndex` int(11) NOT NULL,
  `Value` int(11) DEFAULT NULL,
  PRIMARY KEY (`ParentID`,`ItemType`,`ItemIndex`,`ValueIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of itemvalueadd
-- ----------------------------

-- ----------------------------
-- Table structure for magic
-- ----------------------------
DROP TABLE IF EXISTS `magic`;
CREATE TABLE `magic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '技能代号',
  `mag_name` varchar(50) DEFAULT '' COMMENT '技能名称',
  `effect_type` tinyint(4) unsigned DEFAULT '0' COMMENT '效果类型',
  `effect` tinyint(4) unsigned DEFAULT '0' COMMENT '效果',
  `magic_Icon` tinyint(4) unsigned DEFAULT '0' COMMENT '法术图标',
  `job` tinyint(4) unsigned DEFAULT '0' COMMENT '职业 0-战士，1-法师，2-道士',
  `delay` int(11) unsigned DEFAULT '0' COMMENT '技能延迟时间',
  `interval` int(11) unsigned DEFAULT '0' COMMENT '间隔',
  `spell_frame` int(6) unsigned DEFAULT '0' COMMENT '法术框',
  `spell` int(6) unsigned DEFAULT '0' COMMENT '每次耗用魔法值',
  `def_spell` int(6) unsigned DEFAULT '0' COMMENT '升级后增加的每次耗用魔法值',
  `power` int(11) unsigned DEFAULT '0' COMMENT '基本伤害',
  `max_power` int(11) unsigned DEFAULT '0' COMMENT '最大伤害',
  `def_power` int(11) unsigned DEFAULT '0' COMMENT '升级后增加的伤害',
  `def_max_power` int(11) unsigned DEFAULT '0' COMMENT '升级后增加的最大伤害',
  `need_max` int(11) unsigned DEFAULT '0',
  `need_l1` int(11) unsigned DEFAULT '0' COMMENT '1级技能所需等级',
  `l1_train` int(11) unsigned DEFAULT '0' COMMENT '1级技能修炼所需经验',
  `need_l2` int(11) unsigned DEFAULT '0' COMMENT '2级技能所需等级',
  `l2_train` int(11) unsigned DEFAULT '0' COMMENT '2级技能修炼所需经验',
  `need_l3` int(11) unsigned DEFAULT '0' COMMENT '3级技能所需等级',
  `l3_train` int(11) unsigned DEFAULT '0' COMMENT '3级技能修炼所需经验',
  `text` varchar(255) DEFAULT '' COMMENT '说明',
  `bind` int(11) DEFAULT '0' COMMENT '绑定',
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `utime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `MagName` (`mag_name`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='法术技能表';

-- ----------------------------
-- Records of magic
-- ----------------------------
INSERT INTO `magic` VALUES ('1', '火球术', '1', '1', '56', '1', '60', '0', '600', '4', '1', '8', '8', '2', '2', '3', '7', '300', '11', '500', '16', '800', '凝聚自身魔力发射一枚火球攻击目标', '0', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('2', '治愈术', '2', '2', '70', '2', '40', '0', '600', '7', '0', '14', '20', '0', '0', '3', '7', '500', '11', '1000', '16', '1500', '释放精神之力恢复自己或者他人的体力', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('3', '基本剑术', '0', '0', '0', '0', '0', '0', '600', '0', '0', '0', '0', '0', '0', '3', '7', '500', '11', '1000', '16', '1500', '提高自身的攻击命中率', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('4', '精神力战法', '0', '0', '71', '2', '0', '0', '600', '0', '0', '0', '0', '0', '0', '3', '9', '500', '13', '1000', '19', '1500', '通过与精神之力沟通 可以提高战斗时的命中率', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('5', '大火球', '1', '3', '54', '1', '60', '0', '600', '3', '5', '6', '6', '10', '10', '3', '19', '500', '23', '1000', '25', '1500', '凝聚自身魔力发射一枚大火球攻击目标', '0', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('6', '施毒术', '2', '4', '72', '2', '40', '0', '600', '4', '0', '0', '0', '0', '0', '3', '14', '300', '17', '500', '20', '800', '配合特殊药粉可以指定某个目标中毒', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('7', '攻杀剑术', '0', '5', '1', '0', '0', '0', '600', '0', '0', '0', '0', '0', '0', '3', '19', '500', '22', '1000', '24', '1500', '攻击时有机率造成大幅伤害', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('8', '抗拒火环', '4', '6', '41', '1', '30', '0', '600', '8', '0', '1', '1', '0', '0', '3', '12', '300', '15', '500', '19', '800', '将身边的人或者怪兽推开', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('9', '地狱火', '5', '7', '55', '1', '60', '0', '600', '10', '10', '14', '14', '6', '6', '3', '16', '300', '21', '500', '26', '800', '向前挥出一堵火焰墙 使法术区域内的敌人受到伤害', '0', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('10', '疾光电影', '6', '8', '45', '1', '100', '0', '600', '25', '20', '12', '12', '12', '12', '3', '26', '300', '29', '500', '32', '800', '积蓄一道光电 使直线上所有敌人受到伤害', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('11', '雷电术', '7', '9', '40', '1', '100', '0', '600', '12', '6', '14', '28', '10', '10', '3', '17', '500', '20', '1000', '24', '1500', '从空中召唤一道雷电攻击敌人', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('12', '刺杀剑术', '0', '13', '2', '0', '0', '0', '600', '0', '0', '0', '0', '0', '0', '3', '25', '500', '27', '1000', '29', '1500', '隔位施展剑气 使敌人受到大幅伤害', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('13', '灵魂火符', '8', '10', '73', '2', '60', '0', '600', '5', '2', '15', '28', '10', '10', '3', '18', '500', '21', '1000', '24', '1500', '将精神之力附着在护身符上 远程攻击目标', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('14', '幽灵盾', '9', '11', '77', '2', '40', '0', '600', '15', '0', '0', '0', '0', '0', '3', '22', '300', '24', '500', '26', '800', '使用护身符提高范围内非敌方的魔法防御力', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('15', '神圣战甲术', '9', '12', '78', '2', '40', '0', '600', '15', '0', '0', '0', '0', '0', '3', '25', '300', '27', '500', '29', '800', '使用护身符提高范围内非敌方的防御力', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('16', '困魔咒', '10', '14', '80', '2', '50', '0', '600', '10', '5', '0', '0', '0', '0', '3', '28', '500', '30', '1000', '32', '1500', '被限制在咒语中的怪兽因为看不见外面的情况只能绕着圈走', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('17', '召唤骷髅', '4', '15', '74', '2', '50', '0', '600', '16', '8', '0', '0', '0', '0', '3', '19', '500', '23', '1000', '26', '1500', '使用护身符从地狱的深处召唤骷髅', '0', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('18', '隐身术', '4', '16', '75', '2', '50', '0', '600', '5', '0', '0', '0', '0', '0', '3', '20', '500', '23', '1000', '26', '1500', '在自身周围释放精神之力使怪物无法察觉你的存在', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('19', '集体隐身术', '8', '17', '76', '2', '50', '0', '600', '10', '0', '0', '0', '0', '0', '3', '21', '300', '25', '500', '29', '800', '通达大量释放精神之力 能够隐藏范围内的人', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('20', '诱惑之光', '2', '18', '42', '1', '60', '0', '600', '3', '3', '3', '3', '0', '0', '3', '13', '300', '18', '500', '24', '800', '通过闪光电击使敌人瘫痪甚至可以使怪物成为忠实的仆人', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('21', '瞬息移动', '4', '19', '43', '1', '50', '0', '600', '10', '8', '0', '0', '0', '0', '3', '19', '300', '22', '500', '25', '800', '利用强大魔力打乱空间 从而达到随机传送目的的法术', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('22', '火墙', '4', '20', '44', '1', '120', '0', '600', '20', '25', '3', '3', '3', '3', '3', '24', '500', '29', '1000', '33', '1500', '在地面上产生火焰 使踏入的敌人受到伤害', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('23', '爆裂火焰', '2', '21', '53', '1', '60', '0', '600', '15', '10', '8', '8', '6', '6', '3', '22', '300', '27', '500', '31', '800', '产生高热的火焰 使法术区域内的敌人受到伤害', '0', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('24', '地狱雷光', '4', '22', '46', '1', '60', '0', '600', '35', '20', '10', '30', '10', '30', '3', '30', '500', '32', '1000', '34', '1500', '能够呼唤出一股强力的雷光风暴伤害所有围在身边的敌人', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('25', '半月弯刀', '0', '23', '3', '0', '0', '0', '600', '0', '4', '0', '0', '0', '0', '3', '28', '500', '31', '1000', '34', '1500', '使用劲气可同时攻击环绕自身周围的敌人', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('26', '烈火剑法', '0', '24', '5', '0', '0', '10000', '600', '0', '7', '0', '0', '0', '0', '3', '35', '300', '37', '500', '40', '800', '召唤火精灵附在武器上 从而造成强力的额外伤害', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('27', '野蛮冲撞', '0', '25', '4', '0', '0', '5000', '600', '15', '0', '0', '0', '0', '0', '3', '30', '300', '34', '500', '39', '800', '用肩膀把敌人撞开如果撞到障碍物将会对自己造成伤害', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('28', '心灵启示', '2', '26', '79', '2', '40', '0', '600', '16', '0', '0', '0', '0', '0', '3', '26', '300', '30', '500', '35', '800', '查看目标体力', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('29', '群体治疗术', '2', '27', '81', '2', '40', '0', '600', '12', '25', '10', '10', '4', '4', '3', '33', '500', '35', '1000', '38', '1500', '恢复自己和周围所有玩家的体力', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('30', '召唤神兽', '4', '28', '82', '2', '120', '0', '600', '16', '24', '0', '0', '0', '0', '3', '35', '300', '37', '500', '40', '800', '使用护身符召唤一只强大神兽作为自己的随从35级召唤:神兽45级召唤: 变异神兽55级召唤: 强化神兽65级召唤: 终级神兽', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('31', '魔法盾', '4', '29', '47', '1', '0', '0', '600', '20', '30', '0', '0', '0', '0', '3', '31', '300', '34', '500', '38', '800', '使用自身魔力制造一个魔法盾减少施法者受到的伤害', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('32', '圣言术', '2', '30', '48', '1', '120', '0', '600', '50', '40', '0', '0', '0', '0', '3', '32', '300', '35', '500', '39', '800', '有机率一击杀死不死生物', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('33', '冰咆哮', '2', '31', '49', '1', '60', '0', '600', '12', '30', '12', '12', '12', '12', '3', '35', '500', '37', '1000', '40', '1500', '召唤强力的暴风雪使法术区域内的敌人受到伤害', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('34', '解毒术', '2', '26', '95', '2', '160', '0', '600', '16', '0', '0', '0', '0', '0', '3', '42', '300', '44', '500', '46', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('36', '火焰冰', '1', '33', '94', '2', '120', '0', '600', '4', '1', '8', '8', '2', '2', '3', '42', '300', '44', '500', '46', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('37', '群体雷电术', '4', '9', '68', '1', '120', '0', '600', '12', '6', '14', '30', '10', '12', '3', '42', '300', '44', '500', '46', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('38', '群体施毒术', '2', '47', '96', '2', '0', '0', '600', '12', '30', '10', '10', '4', '4', '3', '42', '300', '44', '500', '46', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('39', '彻地钉', '1', '1', '10', '0', '600', '5000', '600', '20', '10', '0', '0', '0', '0', '3', '42', '500', '44', '1000', '46', '1500', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('41', '狮子吼', '4', '43', '13', '0', '600', '0', '600', '10', '10', '14', '14', '6', '6', '3', '42', '300', '44', '500', '46', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('42', '纵横剑术', '4', '56', '11', '0', '0', '0', '600', '5', '10', '0', '0', '0', '0', '3', '45', '300', '47', '500', '49', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('43', '开天斩', '0', '0', '8', '0', '0', '5000', '600', '0', '14', '0', '0', '0', '0', '3', '42', '300', '44', '500', '46', '800', '凝聚力量的顶点幻化出一柄巨剑爆发出毁天灭地的威力', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('44', '寒冰掌', '1', '39', '67', '1', '60', '0', '600', '3', '5', '10', '10', '10', '10', '3', '42', '300', '44', '500', '46', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('45', '灭天火', '14', '34', '50', '1', '60', '1500', '600', '12', '12', '12', '36', '10', '10', '3', '40', '500', '42', '1000', '44', '1500', '召唤天火使单个目标受到伤害同时扣除其魔力值', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('47', '火龙气焰', '2', '45', '57', '1', '120', '0', '600', '35', '20', '25', '35', '25', '35', '3', '42', '500', '44', '1000', '46', '1500', '召唤出可以熔化天日的火龙气焰', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('48', '气功波', '4', '36', '83', '2', '0', '0', '600', '15', '5', '0', '0', '0', '0', '3', '38', '300', '40', '500', '42', '800', '一种内功的修炼 可以推开周围的怪物而得以防身的作用', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('50', '无极真气', '4', '35', '87', '2', '0', '0', '600', '8', '0', '1', '1', '0', '0', '3', '42', '300', '44', '500', '46', '800', '利用自然真气 引发体内潜力 瞬间倍增自身精神力', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('52', '诅咒术', '9', '46', '98', '2', '40', '0', '600', '15', '0', '0', '0', '0', '0', '3', '42', '300', '44', '500', '46', '800', '使用护身符降低范围内敌方的防御和魔御', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('53', '噬血术', '2', '48', '84', '2', '0', '10000', '600', '50', '30', '10', '20', '10', '20', '3', '40', '500', '42', '1000', '44', '1500', '对目标造成伤害 并吸取对方生命', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('55', '擒龙手', '2', '55', '12', '0', '0', '5000', '600', '3', '3', '0', '0', '0', '0', '3', '42', '300', '44', '500', '46', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('56', '逐日剑法', '0', '0', '6', '0', '0', '10000', '600', '10', '20', '10', '15', '10', '15', '3', '40', '300', '42', '500', '44', '800', '剑气凝聚成形 瞬间化作一道光影突袭身前的敌人', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('57', '流星火雨', '2', '49', '51', '1', '600', '8000', '600', '40', '80', '50', '100', '25', '25', '3', '45', '300', '47', '500', '49', '800', '召唤一阵猛烈的火雨使法术区域内的敌人受到伤害', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('58', '金刚护盾', '4', '50', '52', '1', '30', '0', '600', '40', '30', '0', '0', '0', '0', '3', '38', '300', '41', '500', '44', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('60', '复活术', '2', '52', '85', '2', '60', '20000', '600', '50', '80', '0', '0', '0', '0', '3', '45', '300', '47', '500', '49', '800', '将已死亡的玩家原地复活', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('62', '医疗阵', '4', '54', '86', '2', '60', '0', '600', '0', '0', '0', '0', '0', '0', '3', '38', '300', '38', '500', '38', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('63', '移形换位', '4', '57', '66', '1', '60', '15000', '600', '60', '40', '0', '0', '0', '0', '3', '42', '300', '44', '500', '46', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('64', '护体神盾', '0', '0', '103', '99', '0', '0', '600', '0', '0', '0', '0', '0', '0', '3', '1', '300', '30', '500', '60', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('65', '召唤月灵', '4', '41', '97', '2', '0', '0', '600', '20', '30', '0', '0', '0', '0', '3', '42', '300', '44', '500', '46', '800', '集天地万物之灵气 发挥精神力的极限召唤出月灵为自己战斗', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('66', '冰霜雪雨', '2', '58', '59', '1', '600', '8000', '600', '40', '80', '50', '100', '25', '25', '3', '45', '300', '47', '500', '49', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('67', '裂神符', '8', '59', '89', '2', '600', '0', '600', '5', '2', '15', '28', '10', '10', '3', '45', '300', '47', '500', '49', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('70', '十步一杀', '4', '70', '9', '0', '600', '10000', '600', '0', '20', '0', '0', '0', '0', '3', '50', '300', '55', '500', '60', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('71', '冰霜群雨', '2', '71', '58', '1', '600', '10000', '600', '80', '60', '50', '100', '25', '25', '3', '50', '300', '55', '500', '60', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('72', '死亡之眼', '2', '72', '88', '2', '600', '10000', '600', '40', '30', '30', '50', '20', '40', '3', '50', '300', '55', '500', '60', '800', '', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('100', '连击', '0', '0', '101', '99', '0', '60000', '600', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0', '1', '', '0', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('110', '三绝杀', '0', '110', '30', '0', '0', '5000', '600', '0', '8', '0', '0', '0', '0', '3', '50', '300', '52', '500', '55', '800', '近身攻击 对单体目标造成伤害 可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('111', '追心刺', '0', '111', '31', '0', '0', '5000', '600', '0', '8', '0', '0', '0', '0', '3', '50', '300', '52', '500', '55', '800', '近身攻击 冲撞前方单体目标 在迫使其后退的同时 造成伤害可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('112', '断岳斩', '0', '112', '32', '0', '0', '8000', '600', '0', '8', '0', '0', '0', '0', '3', '50', '300', '52', '500', '55', '800', '远程攻击 对前方三步内的单体目标造成伤害可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('113', '横扫千军', '0', '113', '33', '0', '0', '15000', '600', '0', '16', '0', '0', '0', '0', '3', '50', '300', '52', '500', '55', '800', '范围攻击 以自身为中心 对5X5范围内的目标造成伤害可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('114', '双龙破', '1', '114', '60', '1', '60', '5000', '600', '12', '20', '18', '40', '10', '25', '3', '50', '300', '52', '500', '55', '800', '远程攻击 对单体目标造成伤害可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('115', '凤舞技', '1', '115', '61', '1', '60', '8000', '600', '18', '25', '20', '45', '10', '25', '3', '50', '300', '52', '500', '55', '800', '远程攻击 对单体目标造成伤害 有一定机率击退目标可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('116', '惊雷爆', '1', '116', '62', '1', '60', '5000', '600', '14', '30', '20', '50', '10', '25', '3', '50', '300', '52', '500', '55', '800', '远程攻击 对单体目标造成伤害可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('117', '冰天雪地', '2', '117', '63', '1', '120', '15000', '600', '24', '50', '25', '55', '12', '25', '3', '50', '300', '52', '500', '55', '800', '范围攻击 以目标为中心对5X5范围内的目标造成伤害 可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('118', '虎啸决', '1', '118', '90', '2', '60', '5000', '600', '12', '16', '18', '40', '12', '25', '3', '50', '300', '52', '500', '55', '800', '远程攻击 对单体目标造成伤害可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('119', '八卦掌', '1', '119', '91', '2', '60', '3000', '600', '12', '16', '20', '45', '12', '25', '3', '50', '300', '52', '500', '55', '800', '远程攻击 对单体目标造成伤害 有一定机率击退目标可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('120', '三焰咒', '1', '120', '92', '2', '60', '8000', '600', '12', '16', '20', '50', '12', '25', '3', '50', '300', '52', '500', '55', '800', '远程攻击 对单体目标造成伤害可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('121', '万剑归宗', '1', '121', '93', '2', '60', '15000', '600', '18', '30', '25', '55', '12', '25', '3', '50', '300', '52', '500', '55', '800', '范围攻击 以目标为中心对5X5范围内的目标造成伤害 可以组合连击', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('122', '穿刺剑法', '0', '122', '7', '0', '0', '10000', '600', '0', '15', '0', '0', '0', '0', '3', '45', '300', '47', '500', '49', '800', '隔位施展剑气 烈火和刺杀的完美结合', '1', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('123', '怒气爆发', '2', '123', '100', '99', '0', '5000', '600', '0', '0', '0', '0', '0', '0', '3', '50', '300', '52', '500', '55', '800', '', '0', '2019-12-03 11:47:42', null);
INSERT INTO `magic` VALUES ('124', '倚天辟地', '2', '124', '104', '99', '0', '30000', '600', '0', '0', '10', '20', '12', '25', '3', '60', '300', '62', '500', '64', '800', '', '1', '2019-12-03 11:47:42', null);

-- ----------------------------
-- Table structure for monster
-- ----------------------------
DROP TABLE IF EXISTS `monster`;
CREATE TABLE `monster` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '怪物ID',
  `name` varchar(50) DEFAULT '' COMMENT '怪物名称',
  `race` int(11) unsigned DEFAULT '0' COMMENT '行动模式及死亡时的效果代码',
  `raceimg` int(11) unsigned DEFAULT '0' COMMENT '攻击模式代码',
  `appr` int(11) unsigned DEFAULT '0' COMMENT '怪物形象代码',
  `lvl` int(11) unsigned DEFAULT '0' COMMENT '怪物等级',
  `undead` int(11) unsigned DEFAULT '0' COMMENT '是否属不死系 0-否，1-是[不死系不可招，死系可召]',
  `cool_eye` int(11) unsigned DEFAULT '0' COMMENT '怪物的感知范围，并和等级有关(反隐形范围)',
  `notIn_safe` int(11) unsigned DEFAULT '0' COMMENT '不安全',
  `color` int(11) unsigned DEFAULT '0' COMMENT '颜色',
  `exp` int(11) unsigned DEFAULT '0' COMMENT '怪物的经验值',
  `hp` int(11) unsigned DEFAULT '0' COMMENT '怪物生命',
  `mp` int(11) unsigned DEFAULT '0' COMMENT '怪物魔法',
  `ac` int(11) unsigned DEFAULT '0' COMMENT '怪物防御力',
  `mav` int(11) unsigned DEFAULT '0' COMMENT '魔法防御力',
  `dc` int(11) unsigned DEFAULT '0' COMMENT '攻击力',
  `dchax` int(11) unsigned DEFAULT '0' COMMENT '攻击力上限',
  `mc` int(11) unsigned DEFAULT '0' COMMENT '魔法攻击力',
  `sc` int(11) unsigned DEFAULT '0' COMMENT '道士精神力',
  `speed` int(11) unsigned DEFAULT '0' COMMENT '速度',
  `hit` int(11) unsigned DEFAULT '0' COMMENT '攻击命中率',
  `walk_speed` int(11) unsigned DEFAULT '0' COMMENT '行走速度间隔',
  `walk_step` int(11) unsigned DEFAULT '0' COMMENT '行走步伐',
  `walk_wait` int(11) unsigned DEFAULT '0' COMMENT '行走等待时间',
  `attack_speed` int(11) unsigned DEFAULT '0' COMMENT '攻击速度间隔',
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `utime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `Name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='怪物表';

-- ----------------------------
-- Records of monster
-- ----------------------------
INSERT INTO `monster` VALUES ('1', '鸡', '51', '11', '160', '5', '0', '0', '0', '0', '5', '5', '0', '0', '0', '1', '1', '0', '0', '10', '3', '1400', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('2', '鹿', '52', '11', '161', '12', '0', '0', '0', '0', '15', '15', '0', '0', '0', '2', '4', '0', '0', '12', '4', '1400', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('3', '鹿1', '97', '11', '161', '12', '0', '0', '0', '0', '100', '1200', '0', '35', '35', '0', '100', '0', '0', '17', '20', '600', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('4', '半兽人', '83', '19', '100', '12', '0', '0', '0', '0', '25', '30', '0', '1', '0', '4', '9', '0', '0', '15', '6', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('5', '半兽人0', '83', '19', '100', '12', '0', '0', '0', '0', '25', '30', '0', '1', '0', '4', '9', '0', '0', '15', '8', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('6', '半兽战士', '81', '19', '101', '12', '0', '0', '0', '0', '90', '100', '0', '3', '1', '5', '12', '0', '0', '15', '10', '1500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('7', '半兽战士0', '81', '19', '101', '12', '0', '0', '0', '0', '90', '100', '0', '3', '1', '6', '12', '0', '0', '15', '12', '1500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('8', '半兽勇士', '81', '19', '102', '27', '0', '0', '0', '0', '300', '300', '0', '0', '0', '15', '32', '0', '0', '15', '13', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('9', '半兽勇士1', '81', '19', '102', '50', '0', '0', '0', '0', '100', '900', '0', '100', '0', '0', '80', '0', '0', '17', '20', '600', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('10', '毒蜘蛛', '82', '19', '163', '16', '0', '0', '0', '0', '42', '42', '0', '2', '1', '6', '9', '0', '0', '15', '8', '900', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('11', '卫士', '11', '12', '0', '99', '0', '100', '0', '0', '1', '9999', '0', '100', '100', '200', '200', '200', '200', '5', '200', '500', '1', '0', '4000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('12', '蛤蟆', '83', '19', '162', '12', '0', '0', '0', '0', '15', '20', '0', '0', '0', '0', '5', '0', '0', '13', '6', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('13', '蛤蟆0', '83', '19', '162', '12', '0', '0', '0', '0', '15', '20', '0', '0', '0', '0', '5', '0', '0', '13', '8', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('14', '蝎子', '84', '32', '83', '18', '0', '0', '0', '0', '45', '45', '0', '2', '0', '7', '16', '0', '0', '15', '10', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('15', '山洞蝙蝠', '81', '19', '80', '20', '0', '0', '0', '0', '25', '25', '0', '2', '0', '4', '6', '0', '0', '25', '11', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('16', '山洞蝙蝠0', '81', '19', '80', '20', '0', '0', '0', '0', '25', '25', '0', '2', '0', '4', '6', '0', '0', '25', '13', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('17', '森林雪人', '83', '10', '1', '16', '0', '0', '0', '0', '30', '36', '0', '2', '0', '7', '10', '0', '0', '12', '7', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('18', '森林雪人0', '83', '10', '1', '16', '0', '0', '0', '0', '30', '36', '0', '2', '0', '7', '10', '0', '0', '12', '9', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('19', '食人花', '85', '13', '10', '20', '0', '0', '0', '0', '28', '28', '0', '2', '0', '6', '9', '0', '0', '14', '12', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('20', '骷髅', '86', '14', '20', '18', '1', '0', '0', '0', '85', '90', '0', '0', '0', '7', '10', '0', '0', '13', '11', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('21', '骷髅0', '86', '14', '20', '18', '1', '0', '0', '0', '85', '90', '0', '0', '0', '7', '10', '0', '0', '13', '13', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('22', '掷斧骷髅', '87', '15', '21', '18', '1', '0', '0', '0', '90', '100', '0', '0', '0', '4', '9', '0', '0', '12', '15', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('23', '掷斧骷髅0', '87', '15', '21', '18', '1', '0', '0', '0', '90', '100', '0', '0', '0', '4', '9', '0', '0', '12', '17', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('24', '骷髅战士', '88', '14', '22', '19', '1', '0', '0', '0', '95', '105', '0', '0', '0', '2', '15', '0', '0', '13', '11', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('25', '骷髅战士0', '88', '14', '22', '19', '1', '0', '0', '0', '95', '105', '0', '0', '0', '2', '15', '0', '0', '13', '13', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('26', '骷髅战将', '89', '14', '23', '20', '1', '0', '0', '0', '100', '110', '0', '2', '1', '7', '13', '0', '0', '15', '12', '1200', '1', '0', '2300', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('27', '骷髅战将0', '89', '14', '23', '20', '1', '0', '0', '0', '100', '110', '0', '2', '1', '7', '13', '0', '0', '15', '14', '1200', '1', '0', '2300', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('28', '骷髅精灵', '89', '14', '150', '40', '1', '1', '0', '0', '600', '500', '0', '5', '4', '7', '24', '0', '0', '15', '14', '1200', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('29', '骷髅精灵1', '89', '14', '150', '50', '1', '1', '0', '0', '100', '800', '0', '0', '50', '0', '60', '0', '0', '17', '20', '600', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('30', '洞蛆', '90', '16', '24', '21', '0', '1', '0', '0', '60', '65', '0', '0', '0', '6', '8', '0', '0', '12', '12', '1000', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('31', '多钩猫', '81', '17', '25', '13', '0', '0', '0', '0', '17', '22', '0', '0', '0', '2', '4', '0', '0', '12', '5', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('32', '多钩猫0', '81', '17', '25', '13', '0', '0', '0', '0', '17', '22', '0', '0', '0', '2', '4', '0', '0', '12', '7', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('33', '钉耙猫', '81', '17', '26', '13', '0', '0', '0', '0', '18', '23', '0', '0', '0', '2', '4', '0', '0', '12', '5', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('34', '钉耙猫0', '81', '17', '26', '13', '0', '0', '0', '0', '18', '23', '0', '0', '0', '2', '4', '0', '0', '12', '7', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('35', '稻草人', '83', '18', '27', '10', '1', '0', '0', '0', '12', '15', '0', '0', '0', '1', '2', '0', '0', '10', '5', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('36', '稻草人0', '83', '18', '27', '10', '1', '0', '0', '0', '12', '15', '0', '0', '0', '1', '2', '0', '0', '10', '7', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('37', '稻草人1', '83', '18', '27', '50', '1', '0', '0', '0', '100', '1000', '0', '30', '30', '0', '90', '0', '0', '17', '20', '600', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('38', '沃玛战士', '97', '19', '30', '30', '1', '0', '0', '0', '260', '265', '0', '3', '2', '14', '28', '0', '0', '15', '13', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('39', '沃玛战士0', '97', '19', '30', '30', '1', '0', '0', '0', '260', '265', '0', '3', '2', '14', '28', '0', '0', '15', '15', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('40', '沃玛勇士', '97', '19', '32', '30', '1', '0', '0', '0', '280', '285', '0', '3', '2', '16', '28', '0', '0', '15', '13', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('41', '沃玛勇士0', '97', '19', '32', '30', '1', '0', '0', '0', '280', '285', '0', '3', '2', '16', '28', '0', '0', '15', '15', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('42', '沃玛战将', '97', '19', '33', '30', '1', '0', '0', '0', '280', '285', '0', '3', '2', '15', '29', '0', '0', '15', '13', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('43', '沃玛战将0', '97', '19', '33', '30', '1', '0', '0', '0', '280', '285', '0', '3', '2', '15', '29', '0', '0', '15', '15', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('44', '火焰沃玛', '91', '20', '31', '31', '1', '0', '0', '0', '290', '340', '0', '0', '0', '14', '26', '0', '0', '20', '20', '800', '1', '0', '1700', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('45', '火焰沃玛0', '91', '20', '31', '31', '1', '0', '0', '0', '290', '340', '0', '0', '0', '14', '26', '0', '0', '20', '20', '800', '1', '0', '1700', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('46', '火焰沃玛2', '91', '20', '31', '31', '1', '0', '0', '0', '1', '340', '0', '0', '0', '14', '26', '0', '0', '20', '20', '800', '1', '0', '17', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('47', '沃玛卫士', '97', '19', '151', '50', '1', '0', '0', '0', '1200', '1000', '0', '8', '8', '22', '42', '0', '0', '20', '17', '800', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('48', '沃玛卫士1', '97', '19', '151', '50', '1', '0', '0', '0', '100', '600', '0', '20', '20', '0', '50', '0', '0', '17', '20', '600', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('49', '沃玛教主', '92', '21', '34', '60', '1', '1', '0', '0', '2500', '2200', '0', '5', '5', '35', '70', '0', '0', '30', '20', '800', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('50', '沃玛教主1', '92', '21', '34', '60', '1', '1', '0', '0', '100', '100', '0', '0', '0', '0', '20', '0', '0', '17', '20', '600', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('51', '暗黑战士', '93', '22', '28', '26', '0', '0', '0', '0', '200', '165', '0', '3', '2', '9', '16', '0', '0', '15', '15', '900', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('52', '暗黑战士0', '93', '22', '28', '26', '0', '0', '0', '0', '200', '165', '0', '3', '2', '9', '16', '0', '0', '15', '17', '900', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('53', '粪虫', '90', '16', '29', '26', '1', '1', '0', '0', '180', '155', '0', '3', '2', '9', '17', '0', '0', '15', '12', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('54', '粪虫0', '90', '16', '29', '26', '1', '1', '0', '0', '180', '155', '0', '3', '2', '9', '17', '0', '0', '15', '14', '1500', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('55', '僵尸1', '94', '40', '40', '25', '1', '0', '0', '0', '160', '155', '0', '0', '0', '12', '16', '0', '0', '13', '13', '2000', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('56', '僵尸10', '94', '40', '40', '25', '1', '0', '0', '0', '160', '155', '0', '0', '0', '12', '16', '0', '0', '13', '15', '2000', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('57', '僵尸2', '95', '41', '50', '25', '1', '0', '0', '0', '160', '155', '0', '2', '1', '8', '17', '0', '0', '15', '13', '2000', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('58', '僵尸20', '95', '41', '50', '25', '1', '0', '0', '0', '160', '155', '0', '2', '1', '8', '17', '0', '0', '15', '15', '2000', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('59', '僵尸3', '96', '42', '51', '25', '1', '0', '0', '0', '160', '155', '0', '2', '1', '6', '17', '0', '0', '15', '12', '2000', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('60', '僵尸30', '96', '42', '51', '25', '1', '0', '0', '0', '160', '155', '0', '2', '1', '6', '17', '0', '0', '15', '14', '2000', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('61', '僵尸4', '96', '42', '52', '25', '1', '0', '0', '0', '160', '155', '0', '2', '1', '6', '17', '0', '0', '15', '12', '2000', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('62', '僵尸40', '96', '42', '52', '25', '1', '0', '0', '0', '160', '155', '0', '2', '1', '6', '17', '0', '0', '15', '14', '2000', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('63', '僵尸5', '96', '42', '53', '25', '1', '0', '0', '0', '160', '155', '0', '2', '1', '6', '17', '0', '0', '15', '12', '1500', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('64', '僵尸50', '96', '42', '53', '25', '1', '0', '0', '0', '160', '155', '0', '2', '1', '6', '17', '0', '0', '15', '14', '1500', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('65', '尸王', '81', '19', '152', '40', '1', '1', '0', '0', '800', '500', '0', '3', '3', '18', '36', '0', '0', '15', '15', '1500', '1', '0', '2800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('66', '尸王1', '81', '19', '152', '50', '1', '1', '0', '0', '100', '800', '0', '25', '0', '0', '60', '0', '0', '17', '20', '600', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('67', '尸王2', '81', '19', '152', '50', '1', '1', '0', '0', '800', '500', '0', '3', '3', '18', '36', '0', '0', '15', '15', '1200', '1', '0', '2800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('68', '红蛇', '81', '19', '36', '15', '0', '0', '0', '0', '50', '50', '0', '0', '2', '7', '12', '0', '0', '15', '11', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('69', '红蛇0', '81', '19', '36', '15', '0', '0', '0', '0', '50', '50', '0', '0', '2', '7', '12', '0', '0', '15', '13', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('70', '练功师', '55', '19', '72', '99', '0', '0', '0', '0', '1', '9999', '0', '0', '0', '1', '1', '0', '0', '15', '15', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('71', '变异骷髅110', '100', '23', '37', '19', '1', '0', '0', '0', '1', '100', '0', '10', '10', '10', '25', '0', '0', '22', '15', '1000', '1', '0', '2800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('72', '虎蛇', '81', '19', '38', '18', '0', '0', '0', '0', '53', '53', '0', '0', '2', '10', '11', '0', '0', '15', '12', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('73', '虎蛇0', '81', '19', '38', '18', '0', '0', '0', '0', '53', '53', '0', '0', '2', '10', '11', '0', '0', '15', '14', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('74', '羊', '52', '19', '43', '13', '0', '0', '0', '0', '20', '20', '0', '0', '0', '1', '3', '0', '0', '10', '7', '1400', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('75', '猎鹰', '53', '19', '44', '16', '0', '0', '0', '0', '38', '38', '0', '0', '0', '7', '10', '0', '0', '40', '15', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('76', '猎鹰0', '53', '19', '44', '16', '0', '0', '0', '0', '38', '38', '0', '0', '0', '7', '10', '0', '0', '40', '17', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('77', '盔甲虫', '81', '19', '45', '16', '0', '0', '0', '0', '37', '50', '0', '0', '0', '4', '10', '0', '0', '12', '7', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('78', '盔甲虫0', '81', '19', '45', '16', '0', '0', '0', '0', '37', '50', '0', '0', '0', '4', '10', '0', '0', '12', '9', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('79', '威思而小虫', '82', '19', '48', '16', '0', '0', '0', '0', '42', '50', '0', '2', '1', '6', '9', '0', '0', '15', '12', '1000', '1', '0', '2300', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('80', '沙虫', '82', '19', '49', '17', '0', '0', '0', '0', '54', '54', '0', '0', '0', '8', '11', '0', '0', '15', '13', '1000', '1', '0', '2300', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('81', '多角虫', '81', '19', '90', '16', '0', '0', '0', '0', '32', '52', '0', '0', '0', '7', '8', '0', '0', '13', '10', '1300', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('82', '多角虫0', '81', '19', '90', '16', '0', '0', '0', '0', '32', '52', '0', '0', '0', '7', '8', '0', '0', '13', '12', '1300', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('83', '巨型多角虫', '81', '19', '91', '25', '0', '0', '0', '0', '200', '250', '0', '0', '0', '7', '15', '0', '0', '13', '12', '1000', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('84', '巨型多角虫1', '81', '19', '91', '25', '0', '0', '0', '0', '100', '900', '0', '0', '50', '0', '50', '0', '0', '17', '20', '600', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('85', '狼', '53', '19', '70', '16', '0', '0', '0', '0', '35', '48', '0', '0', '0', '6', '8', '0', '0', '13', '10', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('86', '蜈蚣', '81', '19', '73', '22', '0', '0', '0', '0', '230', '230', '0', '0', '5', '12', '18', '0', '0', '15', '13', '1500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('87', '蜈蚣0', '81', '19', '73', '22', '0', '0', '0', '0', '230', '230', '0', '0', '5', '12', '18', '0', '0', '15', '15', '1500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('88', '触龙神', '107', '33', '140', '60', '0', '0', '0', '0', '2200', '1000', '0', '0', '50', '15', '30', '0', '0', '15', '15', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('89', '黑色恶蛆', '81', '19', '74', '22', '0', '0', '0', '0', '180', '230', '0', '5', '0', '10', '15', '0', '0', '15', '13', '580', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('90', '黑色恶蛆0', '81', '19', '74', '22', '0', '0', '0', '0', '180', '230', '0', '5', '0', '10', '15', '0', '0', '15', '15', '570', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('91', '钳虫', '81', '19', '120', '22', '0', '0', '0', '0', '250', '270', '0', '5', '7', '15', '25', '0', '0', '15', '13', '1500', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('92', '钳虫0', '81', '19', '120', '22', '0', '0', '0', '0', '250', '270', '0', '5', '7', '15', '25', '0', '0', '15', '15', '1500', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('93', '邪恶钳虫', '81', '19', '121', '60', '0', '0', '0', '0', '1400', '1000', '0', '20', '10', '22', '40', '0', '0', '15', '17', '700', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('94', '邪恶钳虫1', '81', '19', '121', '60', '0', '0', '0', '0', '100', '600', '0', '20', '20', '0', '50', '0', '0', '17', '20', '600', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('95', '跳跳蜂', '81', '19', '81', '22', '1', '0', '0', '0', '210', '200', '0', '3', '3', '12', '18', '0', '0', '15', '13', '1500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('96', '跳跳蜂0', '81', '19', '81', '22', '1', '0', '0', '0', '210', '200', '0', '3', '3', '12', '18', '0', '0', '15', '15', '1500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('97', '巨型蠕虫', '81', '19', '82', '22', '1', '0', '0', '0', '230', '200', '0', '3', '3', '15', '18', '0', '0', '15', '13', '1200', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('98', '巨型蠕虫0', '81', '19', '82', '22', '1', '0', '0', '0', '230', '200', '0', '3', '3', '15', '18', '0', '0', '15', '15', '1200', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('99', '角蝇', '103', '43', '41', '30', '0', '0', '0', '0', '300', '200', '0', '0', '6', '0', '0', '0', '0', '1', '1', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('100', '蝙蝠', '81', '31', '42', '5', '0', '0', '0', '0', '5', '3', '0', '0', '0', '0', '22', '0', '0', '5', '18', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('101', '楔蛾', '105', '52', '39', '32', '0', '1', '0', '0', '350', '220', '0', '0', '5', '13', '18', '0', '0', '15', '12', '600', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('102', '红野猪', '81', '19', '110', '32', '1', '0', '0', '0', '320', '330', '0', '0', '8', '18', '25', '0', '0', '15', '13', '1200', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('103', '红野猪0', '81', '19', '110', '32', '1', '0', '0', '0', '320', '330', '0', '0', '8', '18', '25', '0', '0', '15', '15', '1200', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('104', '黑野猪', '81', '19', '111', '35', '1', '0', '0', '0', '380', '310', '0', '10', '0', '20', '26', '0', '0', '15', '13', '800', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('105', '黑野猪0', '81', '19', '111', '35', '1', '0', '0', '0', '380', '310', '0', '10', '0', '20', '26', '0', '0', '15', '15', '800', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('106', '白野猪', '81', '19', '112', '50', '1', '0', '0', '0', '1600', '1000', '0', '5', '5', '25', '45', '0', '0', '10', '17', '800', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('107', '白野猪0', '81', '19', '112', '50', '1', '0', '0', '0', '1600', '1000', '0', '5', '5', '25', '45', '0', '0', '10', '17', '800', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('108', '白野猪1', '81', '19', '112', '50', '1', '0', '0', '0', '100', '400', '0', '0', '0', '0', '40', '0', '0', '17', '20', '600', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('109', '蝎蛇', '81', '19', '130', '35', '1', '0', '0', '0', '360', '330', '0', '5', '3', '22', '28', '0', '0', '15', '13', '600', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('110', '蝎蛇0', '81', '19', '130', '35', '1', '0', '0', '0', '360', '330', '0', '5', '3', '22', '28', '0', '0', '15', '15', '600', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('111', '邪恶毒蛇', '81', '19', '164', '50', '1', '1', '0', '0', '1800', '1100', '0', '5', '8', '30', '50', '0', '0', '17', '17', '800', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('112', '邪恶毒蛇1', '81', '19', '164', '50', '1', '1', '0', '0', '100', '200', '0', '0', '0', '0', '30', '0', '0', '17', '20', '600', '1', '0', '3000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('113', '大老鼠', '81', '19', '46', '24', '1', '0', '0', '0', '330', '385', '0', '3', '5', '12', '23', '0', '0', '15', '12', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('114', '大老鼠0', '81', '19', '46', '24', '1', '0', '0', '0', '330', '385', '0', '3', '5', '12', '23', '0', '0', '15', '14', '1200', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('115', '祖玛弓箭手', '104', '45', '47', '40', '1', '0', '0', '0', '370', '385', '0', '5', '8', '12', '18', '0', '0', '15', '15', '1000', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('116', '祖玛弓箭手0', '104', '45', '47', '40', '1', '0', '0', '0', '370', '385', '0', '5', '8', '12', '18', '0', '0', '15', '17', '1000', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('117', '祖玛弓箭手3', '104', '45', '47', '40', '1', '0', '0', '0', '370', '800', '0', '5', '8', '24', '36', '0', '0', '15', '17', '900', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('118', '祖玛雕像', '101', '47', '61', '45', '1', '0', '0', '0', '450', '495', '0', '5', '8', '20', '32', '0', '0', '17', '15', '900', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('119', '祖玛雕像0', '101', '47', '61', '45', '1', '0', '0', '0', '450', '495', '0', '5', '8', '20', '32', '0', '0', '17', '17', '900', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('120', '祖玛雕像3', '101', '47', '61', '45', '1', '0', '0', '0', '450', '900', '0', '10', '10', '40', '64', '0', '0', '17', '17', '700', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('121', '祖玛卫士', '101', '47', '62', '45', '1', '0', '0', '0', '480', '495', '0', '10', '10', '22', '34', '0', '0', '17', '15', '700', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('122', '祖玛卫士0', '101', '47', '62', '45', '1', '0', '0', '0', '480', '495', '0', '10', '10', '22', '34', '0', '0', '17', '17', '700', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('123', '祖玛卫士3', '101', '47', '62', '45', '1', '0', '0', '0', '480', '1000', '0', '10', '10', '44', '68', '0', '0', '18', '17', '500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('124', '祖玛卫士00', '101', '47', '62', '50', '1', '0', '0', '0', '2000', '1400', '0', '10', '10', '35', '60', '0', '0', '17', '18', '700', '1', '0', '1700', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('125', '祖玛教主', '102', '49', '63', '60', '1', '1', '0', '0', '3000', '3000', '0', '10', '10', '40', '65', '0', '0', '17', '17', '300', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('126', '弓箭手', '112', '45', '71', '99', '0', '0', '0', '0', '1', '2000', '0', '20', '20', '15', '30', '0', '0', '18', '15', '500', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('127', '护卫1', '81', '19', '72', '99', '0', '0', '0', '0', '1', '1000', '0', '15', '15', '17', '32', '0', '0', '18', '15', '500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('128', '弓箭守卫', '112', '45', '71', '99', '0', '0', '0', '0', '1', '2000', '0', '15', '15', '20', '35', '0', '0', '18', '15', '500', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('129', '神兽', '113', '54', '170', '60', '1', '0', '0', '0', '1', '100', '0', '0', '5', '6', '15', '0', '0', '10', '10', '70', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('130', '神兽001', '114', '55', '171', '30', '1', '100', '0', '240', '1', '300', '0', '15', '15', '25', '35', '0', '0', '10', '10', '700', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('131', '双头血魔', '92', '21', '92', '55', '1', '1', '0', '0', '4000', '5000', '0', '5', '5', '100', '100', '0', '0', '20', '30', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('132', '双头金刚', '105', '52', '93', '50', '1', '1', '0', '0', '4000', '5000', '0', '5', '5', '100', '100', '0', '0', '25', '30', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('133', '血巨人', '81', '19', '115', '55', '1', '1', '0', '0', '1000', '1200', '0', '5', '5', '35', '70', '0', '0', '20', '17', '800', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('134', '血巨人0', '81', '19', '115', '55', '1', '1', '0', '0', '1000', '1200', '0', '5', '5', '35', '70', '0', '0', '20', '17', '800', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('135', '月魔蜘蛛', '105', '19', '113', '52', '1', '2', '0', '0', '700', '850', '0', '5', '5', '27', '27', '0', '0', '20', '50', '400', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('136', '月魔蜘蛛0', '105', '19', '113', '52', '1', '2', '0', '0', '700', '850', '0', '5', '5', '27', '27', '0', '0', '20', '50', '400', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('137', '黑锷蜘蛛', '81', '19', '118', '53', '1', '0', '0', '0', '900', '1200', '0', '5', '5', '15', '75', '0', '0', '17', '17', '450', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('138', '黑锷蜘蛛0', '81', '19', '118', '53', '1', '0', '0', '0', '900', '1200', '0', '5', '5', '15', '75', '0', '0', '17', '17', '450', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('139', '钢牙蜘蛛', '81', '19', '114', '53', '1', '0', '0', '0', '700', '800', '0', '5', '5', '35', '50', '0', '0', '17', '20', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('140', '钢牙蜘蛛0', '81', '19', '114', '53', '1', '0', '0', '0', '700', '800', '0', '5', '5', '35', '50', '0', '0', '17', '20', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('141', '天狼蜘蛛', '81', '19', '119', '49', '0', '0', '0', '0', '500', '500', '0', '8', '5', '20', '30', '0', '0', '17', '15', '700', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('142', '天狼蜘蛛0', '81', '19', '119', '49', '0', '0', '0', '0', '500', '500', '0', '8', '5', '20', '30', '0', '0', '17', '15', '700', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('143', '花吻蜘蛛', '81', '19', '117', '54', '1', '1', '0', '0', '680', '750', '0', '8', '8', '20', '60', '0', '0', '25', '17', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('144', '花吻蜘蛛0', '81', '19', '117', '54', '1', '1', '0', '0', '680', '750', '0', '8', '8', '20', '60', '0', '0', '25', '17', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('145', '赤月恶魔', '115', '34', '131', '60', '1', '1', '0', '0', '5000', '5000', '0', '5', '5', '50', '75', '0', '0', '25', '25', '0', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('146', '爆裂蜘蛛', '117', '36', '133', '52', '0', '1', '0', '0', '7', '10', '0', '0', '0', '30', '30', '0', '0', '15', '15', '500', '1', '0', '0', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('147', '爆裂蜘蛛0', '117', '36', '133', '52', '0', '1', '0', '0', '7', '10', '0', '0', '0', '30', '30', '0', '0', '15', '15', '500', '1', '0', '0', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('148', '多钩猫王', '81', '17', '25', '50', '1', '1', '0', '0', '350', '1200', '0', '10', '10', '20', '130', '0', '0', '15', '15', '1500', '1', '0', '2300', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('149', '钉耙猫王', '81', '17', '26', '50', '1', '1', '0', '0', '350', '1200', '0', '10', '10', '20', '130', '0', '0', '15', '15', '1500', '1', '0', '2300', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('150', '雪人王', '83', '10', '1', '50', '1', '1', '0', '0', '400', '1300', '0', '10', '10', '80', '80', '0', '0', '15', '45', '2500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('151', '剧毒蜘蛛', '82', '19', '163', '50', '1', '1', '0', '0', '530', '1200', '0', '5', '5', '20', '30', '0', '0', '15', '45', '2300', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('152', '暗之触龙神', '107', '33', '140', '55', '1', '1', '0', '0', '3300', '2200', '0', '10', '10', '25', '140', '0', '0', '15', '15', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('153', '半兽勇士9', '81', '19', '102', '26', '0', '1', '0', '0', '300', '300', '0', '0', '0', '15', '32', '0', '0', '15', '13', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('154', '邪恶钳虫2', '81', '19', '121', '60', '0', '1', '0', '0', '1400', '1000', '0', '10', '5', '22', '45', '0', '0', '15', '17', '700', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('155', '红野猪3', '81', '19', '110', '40', '1', '0', '0', '0', '320', '500', '0', '4', '12', '22', '29', '0', '0', '15', '15', '1200', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('156', '黑野猪3', '81', '19', '111', '40', '1', '0', '0', '0', '380', '500', '0', '14', '4', '24', '30', '0', '0', '15', '15', '800', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('157', '蝎蛇3', '81', '19', '130', '40', '1', '0', '0', '0', '360', '500', '0', '9', '7', '26', '32', '0', '0', '15', '15', '600', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('158', '幻影蜘蛛', '116', '35', '132', '53', '1', '0', '0', '0', '900', '1200', '0', '10', '15', '0', '0', '0', '0', '1', '1', '0', '1', '0', '2200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('159', '带刀护卫', '11', '24', '2', '99', '0', '1', '0', '0', '1', '9999', '1', '0', '200', '150', '150', '200', '200', '5', '200', '500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('160', '赤血恶魔', '81', '19', '92', '55', '1', '1', '0', '0', '1500', '900', '0', '8', '16', '29', '50', '0', '0', '22', '18', '700', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('161', '暴牙蜘蛛', '93', '22', '114', '43', '1', '1', '0', '0', '400', '500', '0', '8', '15', '22', '30', '0', '0', '17', '17', '700', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('162', '暴牙蜘蛛0', '93', '22', '114', '43', '1', '1', '0', '0', '400', '500', '0', '8', '15', '22', '30', '0', '0', '17', '17', '700', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('163', '血僵尸', '96', '42', '115', '47', '1', '1', '0', '0', '800', '1200', '0', '8', '15', '35', '40', '0', '0', '10', '25', '600', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('164', '血僵尸0', '96', '42', '115', '47', '1', '1', '0', '0', '800', '1200', '0', '8', '15', '35', '50', '0', '0', '10', '25', '600', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('165', '半兽统领', '104', '15', '102', '50', '0', '0', '0', '0', '500', '700', '0', '10', '10', '24', '36', '0', '0', '15', '17', '600', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('166', '鹰卫', '104', '45', '71', '10', '0', '0', '0', '0', '500', '380', '0', '10', '10', '28', '40', '0', '0', '20', '15', '500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('167', '虎卫', '100', '19', '72', '10', '0', '0', '0', '0', '250', '400', '0', '10', '10', '25', '35', '0', '0', '18', '15', '500', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('168', '神兽0', '81', '55', '171', '60', '1', '0', '0', '0', '1000', '2400', '0', '8', '6', '6', '41', '0', '0', '15', '15', '1500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('169', '石墓尸王', '95', '41', '50', '55', '1', '0', '0', '0', '3000', '5000', '0', '10', '3', '100', '150', '0', '0', '0', '30', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('170', '蜜蜂', '81', '19', '42', '26', '1', '0', '0', '0', '210', '200', '0', '3', '3', '12', '18', '0', '0', '15', '13', '1500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('171', '变异骷髅0', '104', '15', '37', '50', '0', '0', '0', '0', '500', '700', '0', '10', '10', '25', '36', '0', '0', '15', '17', '600', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('172', '神兽2', '81', '55', '171', '60', '1', '0', '0', '0', '480', '495', '0', '10', '10', '22', '34', '0', '0', '17', '15', '700', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('173', '虹魔猪卫', '81', '61', '103', '60', '1', '0', '0', '0', '2000', '1500', '0', '10', '10', '40', '60', '0', '0', '25', '17', '800', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('174', '虹魔猪卫0', '81', '61', '103', '60', '1', '0', '0', '0', '2000', '1500', '0', '10', '10', '40', '60', '0', '0', '25', '17', '800', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('175', '虹魔蝎卫', '81', '53', '153', '60', '1', '1', '0', '0', '2500', '2000', '0', '10', '10', '45', '65', '0', '0', '25', '17', '800', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('176', '虹魔蝎卫0', '81', '53', '153', '60', '1', '1', '0', '0', '2500', '2000', '0', '10', '10', '45', '65', '0', '0', '25', '17', '800', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('177', '虹魔教主', '92', '62', '122', '50', '1', '1', '0', '0', '5000', '5000', '0', '10', '10', '70', '120', '0', '0', '20', '30', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('178', '虹魔教主0', '92', '62', '122', '50', '1', '1', '0', '0', '5000', '5000', '0', '10', '10', '60', '80', '0', '0', '20', '30', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('179', '恶魔弓箭手', '112', '45', '47', '99', '0', '0', '0', '0', '1', '2000', '0', '10', '10', '20', '35', '0', '0', '18', '15', '500', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('180', '千年树妖', '115', '34', '141', '60', '1', '1', '0', '0', '2000', '1800', '0', '10', '10', '20', '60', '0', '0', '25', '25', '0', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('181', '虹魔猪卫9', '81', '61', '103', '60', '1', '0', '0', '0', '2000', '1500', '0', '10', '10', '40', '60', '0', '0', '25', '17', '800', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('182', '恶灵僵尸', '81', '19', '142', '28', '1', '0', '0', '0', '190', '180', '0', '1', '3', '10', '20', '0', '0', '15', '15', '2000', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('183', '恶灵僵尸0', '81', '19', '142', '28', '1', '0', '0', '0', '190', '180', '0', '1', '3', '10', '20', '0', '0', '15', '15', '2000', '1', '0', '2500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('184', '恶灵尸王', '81', '64', '143', '35', '1', '0', '0', '0', '460', '500', '0', '4', '8', '17', '45', '0', '0', '18', '15', '1500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('185', '恶灵尸王0', '81', '64', '143', '35', '1', '0', '0', '0', '460', '500', '0', '4', '8', '17', '45', '0', '0', '18', '15', '1500', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('186', '骷髅锤兵', '81', '67', '144', '35', '1', '0', '0', '0', '450', '390', '0', '6', '9', '24', '35', '0', '0', '15', '13', '600', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('187', '骷髅锤兵0', '81', '67', '144', '35', '1', '0', '0', '0', '450', '390', '0', '6', '9', '24', '35', '0', '0', '15', '13', '600', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('188', '骷髅长枪兵', '81', '66', '145', '32', '1', '0', '0', '0', '380', '390', '0', '0', '12', '20', '30', '0', '0', '15', '13', '1300', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('189', '骷髅长枪兵0', '81', '66', '145', '32', '1', '0', '0', '0', '380', '390', '0', '0', '12', '20', '30', '0', '0', '15', '13', '1300', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('190', '骷髅刀斧手', '81', '65', '146', '35', '1', '0', '0', '0', '420', '440', '0', '9', '0', '24', '31', '0', '0', '15', '13', '1300', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('191', '骷髅刀斧手0', '81', '65', '146', '35', '1', '0', '0', '0', '420', '440', '0', '9', '0', '24', '31', '0', '0', '15', '13', '1300', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('192', '骷髅弓箭手', '104', '68', '147', '32', '1', '1', '0', '0', '240', '190', '0', '0', '0', '12', '28', '0', '0', '20', '20', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('193', '骷髅弓箭手0', '104', '68', '147', '32', '1', '1', '0', '0', '240', '190', '0', '0', '0', '12', '28', '0', '0', '20', '20', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('194', '黄泉教主', '81', '63', '196', '50', '1', '1', '0', '0', '2500', '3000', '0', '10', '10', '40', '80', '0', '0', '25', '17', '800', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('195', '牛头魔', '81', '19', '200', '30', '0', '0', '0', '0', '360', '330', '0', '0', '8', '15', '25', '0', '0', '15', '13', '1400', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('196', '牛头魔0', '81', '19', '200', '30', '0', '0', '0', '0', '360', '330', '0', '0', '8', '15', '25', '0', '0', '15', '13', '1400', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('197', '牛魔战士', '81', '19', '201', '33', '1', '0', '0', '0', '400', '420', '0', '2', '8', '15', '30', '0', '0', '18', '14', '1300', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('198', '牛魔战士0', '81', '19', '201', '33', '1', '0', '0', '0', '400', '420', '0', '2', '8', '15', '30', '0', '0', '18', '14', '1300', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('199', '牛魔斗士', '81', '19', '202', '40', '1', '0', '0', '0', '480', '460', '0', '7', '10', '20', '38', '0', '0', '18', '15', '1300', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('200', '牛魔斗士0', '81', '19', '202', '40', '1', '0', '0', '0', '480', '460', '0', '7', '10', '20', '38', '0', '0', '18', '15', '1300', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('201', '牛魔侍卫', '81', '19', '203', '40', '1', '0', '0', '0', '580', '500', '0', '10', '15', '26', '44', '0', '0', '17', '15', '1000', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('202', '牛魔侍卫0', '81', '19', '203', '40', '1', '0', '0', '0', '580', '500', '0', '10', '15', '26', '48', '0', '0', '17', '15', '1000', '1', '0', '1800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('203', '牛魔将军', '81', '19', '204', '45', '1', '0', '0', '0', '780', '750', '0', '10', '15', '32', '50', '0', '0', '22', '17', '800', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('204', '牛魔将军0', '81', '19', '204', '45', '1', '0', '0', '0', '780', '750', '0', '10', '15', '32', '60', '0', '0', '22', '17', '800', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('205', '牛魔法师', '94', '40', '205', '40', '1', '0', '0', '0', '440', '360', '0', '10', '10', '14', '28', '0', '0', '18', '18', '1200', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('206', '牛魔法师0', '94', '40', '205', '40', '1', '0', '0', '0', '440', '360', '0', '10', '15', '14', '35', '0', '0', '18', '18', '1200', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('207', '牛魔祭司', '81', '71', '206', '45', '1', '1', '0', '0', '750', '750', '0', '10', '16', '25', '42', '0', '0', '22', '17', '1200', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('208', '牛魔祭司0', '81', '71', '206', '45', '1', '1', '0', '0', '750', '750', '0', '10', '16', '25', '45', '0', '0', '22', '17', '1000', '1', '0', '1300', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('209', '牛魔王', '81', '72', '207', '60', '1', '1', '0', '0', '4000', '3600', '0', '10', '15', '45', '80', '0', '0', '32', '30', '600', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('210', '暗之牛魔王', '81', '72', '207', '60', '1', '1', '0', '0', '4000', '3600', '0', '10', '20', '150', '150', '0', '0', '32', '30', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('211', '黄泉教主0', '81', '63', '196', '60', '1', '1', '0', '0', '4000', '3000', '0', '10', '15', '80', '120', '0', '0', '25', '17', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('212', '宝箱', '107', '19', '166', '35', '1', '0', '0', '0', '1', '300', '0', '0', '10', '0', '0', '0', '0', '0', '0', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('213', '宝箱1', '107', '19', '166', '35', '1', '0', '0', '0', '1', '300', '0', '0', '10', '0', '0', '0', '0', '0', '0', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('214', '宝箱2', '107', '19', '166', '35', '1', '0', '0', '0', '1', '300', '0', '0', '10', '0', '0', '0', '0', '0', '0', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('215', '宝箱3', '107', '19', '166', '35', '1', '0', '0', '0', '1', '300', '0', '0', '10', '0', '0', '0', '0', '0', '0', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('216', '宝箱4', '107', '19', '166', '35', '1', '0', '0', '0', '1', '300', '0', '0', '10', '0', '0', '0', '0', '0', '0', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('217', '宝箱5', '107', '19', '166', '35', '1', '0', '0', '0', '1', '300', '0', '0', '10', '0', '0', '0', '0', '0', '0', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('218', '宝箱6', '107', '19', '166', '35', '1', '0', '0', '0', '1', '300', '0', '0', '10', '0', '0', '0', '0', '0', '0', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('219', '宝箱7', '107', '19', '166', '35', '1', '0', '0', '0', '1', '300', '0', '0', '10', '0', '0', '0', '0', '0', '0', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('220', '宝箱8', '107', '19', '166', '35', '1', '0', '0', '0', '1', '300', '0', '0', '10', '0', '0', '0', '0', '0', '0', '1000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('221', '暗之双头血魔', '92', '21', '92', '60', '1', '1', '0', '0', '3000', '3000', '0', '20', '10', '50', '80', '0', '0', '10', '10', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('222', '暗之双头金刚', '105', '52', '93', '60', '1', '1', '0', '0', '3000', '3000', '0', '15', '10', '60', '80', '0', '0', '10', '10', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('223', '暗之黄泉教主', '81', '63', '148', '60', '1', '1', '0', '0', '3000', '3000', '0', '10', '20', '60', '80', '0', '0', '10', '10', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('224', '暗之骷髅精灵', '81', '19', '150', '60', '1', '1', '0', '0', '3000', '3000', '0', '20', '10', '40', '80', '0', '0', '10', '10', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('225', '暗之沃玛教主', '92', '21', '34', '60', '1', '1', '0', '0', '3000', '3000', '0', '15', '15', '50', '80', '0', '0', '10', '10', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('226', '暗之虹魔教主', '92', '62', '122', '60', '1', '1', '0', '0', '3000', '3000', '0', '10', '20', '90', '80', '0', '0', '10', '10', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('227', '宝扇使者1', '92', '19', '165', '60', '1', '1', '0', '0', '3000', '6666', '0', '20', '20', '100', '150', '50', '50', '25', '25', '800', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('228', '宝扇使者2', '92', '19', '165', '60', '1', '1', '0', '0', '3000', '6666', '0', '20', '20', '100', '150', '50', '50', '25', '25', '800', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('229', '宝扇使者3', '92', '19', '165', '60', '1', '1', '0', '0', '3000', '6666', '0', '20', '20', '100', '150', '50', '50', '25', '25', '800', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('230', '宝扇使者4', '92', '19', '165', '60', '1', '1', '0', '0', '3000', '6666', '0', '30', '30', '100', '150', '50', '50', '25', '25', '800', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('231', '宝扇使者5', '92', '19', '165', '60', '1', '1', '0', '0', '3000', '6666', '0', '30', '30', '100', '150', '50', '50', '25', '25', '800', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('232', '宝扇使者6', '92', '19', '165', '60', '1', '1', '0', '0', '3000', '6666', '0', '30', '30', '100', '150', '50', '50', '25', '25', '800', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('233', '宝扇使者7', '92', '19', '165', '60', '1', '1', '0', '0', '3000', '6666', '0', '30', '30', '100', '150', '50', '50', '25', '25', '800', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('234', '圣域蝙蝠', '81', '19', '80', '60', '0', '0', '0', '0', '500', '500', '0', '10', '10', '20', '20', '0', '0', '15', '20', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('235', '圣域勇士', '81', '19', '102', '60', '0', '0', '0', '0', '500', '750', '0', '10', '10', '0', '50', '0', '0', '15', '20', '2000', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('236', '圣域魔蝎', '81', '19', '83', '60', '0', '0', '0', '0', '500', '500', '0', '10', '50', '0', '50', '0', '0', '15', '20', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('237', '圣域精灵', '89', '14', '150', '60', '0', '0', '0', '0', '500', '1000', '0', '10', '20', '30', '30', '0', '0', '15', '20', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('238', '圣域稻草人', '83', '18', '27', '60', '0', '0', '0', '0', '500', '750', '0', '10', '20', '0', '50', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('239', '圣域护法', '97', '19', '151', '60', '0', '0', '0', '0', '1000', '2000', '0', '15', '15', '30', '50', '0', '0', '15', '15', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('240', '圣域蛇王', '81', '19', '164', '60', '0', '0', '0', '0', '1000', '2500', '0', '10', '20', '20', '50', '0', '0', '15', '15', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('241', '圣域炎兽', '81', '55', '171', '60', '0', '0', '0', '0', '2000', '3000', '0', '25', '25', '20', '50', '0', '0', '15', '20', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('242', '圣域尸王', '81', '19', '152', '60', '0', '0', '0', '0', '500', '900', '0', '10', '15', '15', '30', '0', '0', '15', '20', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('243', '圣域神鹰', '53', '19', '44', '60', '0', '0', '0', '0', '500', '900', '0', '5', '30', '15', '30', '0', '0', '15', '20', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('244', '圣域冥狼', '53', '19', '70', '60', '0', '0', '0', '0', '500', '900', '0', '15', '30', '20', '45', '0', '0', '15', '20', '1500', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('245', '圣域卫士', '101', '47', '62', '60', '0', '0', '0', '0', '1000', '1500', '0', '20', '20', '10', '50', '0', '0', '15', '20', '1500', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('246', '圣域弓箭手', '104', '45', '47', '60', '0', '0', '0', '0', '500', '900', '0', '5', '20', '0', '35', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('247', '圣域牛魔', '81', '19', '200', '60', '0', '0', '0', '0', '500', '750', '0', '15', '15', '0', '30', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('248', '圣域侍卫', '81', '19', '203', '60', '0', '0', '0', '0', '500', '900', '0', '15', '15', '0', '35', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('249', '圣域骷髅', '81', '19', '144', '60', '0', '0', '0', '0', '500', '900', '0', '10', '25', '20', '30', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('250', '圣域楔蛾', '105', '52', '39', '60', '0', '0', '0', '0', '1000', '1500', '0', '10', '30', '30', '30', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('251', '圣域刀斧手', '81', '19', '146', '60', '0', '0', '0', '0', '500', '1000', '0', '15', '15', '15', '30', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('252', '圣域将军', '81', '19', '204', '60', '0', '0', '0', '0', '1000', '1500', '0', '20', '25', '10', '50', '0', '0', '15', '20', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('253', '圣域祭司', '81', '71', '206', '60', '0', '1', '0', '0', '1000', '1500', '0', '5', '20', '10', '50', '0', '0', '15', '20', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('254', '圣域杀手', '93', '22', '28', '60', '0', '1', '0', '0', '1000', '2000', '0', '10', '15', '30', '50', '0', '0', '15', '20', '1500', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('255', '圣域力士', '81', '19', '115', '60', '0', '0', '0', '0', '1000', '2000', '0', '10', '15', '0', '60', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('256', '圣域钳虫', '81', '19', '121', '60', '0', '0', '0', '0', '1000', '1500', '0', '15', '15', '0', '40', '0', '0', '15', '15', '1500', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('257', '圣域雕像', '101', '47', '61', '60', '0', '0', '0', '0', '1000', '1500', '0', '15', '15', '0', '40', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('258', '圣域巨虫', '81', '19', '91', '60', '0', '0', '0', '0', '500', '900', '0', '0', '20', '0', '35', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('259', '圣域天狼', '81', '19', '119', '60', '0', '0', '0', '0', '1000', '1500', '0', '10', '15', '0', '40', '0', '0', '15', '20', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('260', '圣域月魔', '105', '19', '113', '60', '0', '0', '0', '0', '1000', '2000', '0', '10', '15', '0', '40', '0', '0', '15', '20', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('261', '圣域花吻', '81', '19', '117', '60', '0', '0', '0', '0', '1000', '1500', '0', '10', '15', '0', '40', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('262', '圣域多钩猫', '81', '17', '25', '60', '0', '0', '0', '0', '500', '500', '0', '5', '15', '0', '30', '0', '0', '15', '15', '1500', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('263', '圣域蝎卫', '81', '53', '153', '60', '0', '0', '0', '0', '1000', '2000', '0', '15', '15', '10', '40', '0', '0', '15', '20', '1500', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('264', '圣域猪卫', '81', '61', '103', '60', '0', '0', '0', '0', '1000', '2000', '0', '15', '15', '10', '40', '0', '0', '15', '20', '1500', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('265', '圣域神龙', '107', '33', '140', '60', '0', '1', '0', '0', '1000', '2500', '0', '15', '15', '10', '40', '0', '0', '15', '20', '1500', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('266', '圣域教主', '92', '21', '34', '60', '0', '1', '0', '0', '2000', '5000', '0', '10', '15', '60', '60', '0', '0', '15', '20', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('267', '圣域修罗', '81', '19', '148', '60', '0', '1', '0', '0', '2000', '3500', '0', '5', '30', '60', '60', '0', '0', '15', '20', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('268', '圣域魔魂', '92', '37', '122', '60', '0', '1', '0', '0', '2000', '4000', '0', '25', '30', '60', '60', '0', '0', '15', '20', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('269', '圣域血魔', '92', '21', '92', '60', '0', '1', '0', '0', '2000', '3500', '0', '10', '40', '60', '60', '0', '0', '15', '20', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('270', '圣域金刚', '105', '52', '93', '60', '0', '1', '0', '0', '2000', '4000', '0', '10', '40', '60', '60', '0', '0', '15', '20', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('271', '圣域牛魔王', '81', '72', '165', '60', '0', '1', '0', '0', '2000', '4000', '0', '20', '20', '60', '60', '0', '0', '15', '20', '1200', '1', '0', '1200', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('272', '普通镖车', '54', '19', '290', '40', '0', '100', '0', '0', '0', '6000', '150', '45', '45', '45', '45', '45', '45', '10', '20', '1200', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('273', '紫色镖车', '54', '19', '290', '40', '0', '100', '0', '0', '0', '6000', '150', '45', '45', '45', '45', '45', '45', '10', '20', '1200', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('274', '超级镖车', '54', '19', '291', '50', '0', '100', '0', '0', '0', '8000', '100', '45', '45', '45', '45', '45', '45', '10', '20', '1100', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('275', '无敌镖车', '54', '19', '292', '60', '0', '100', '0', '0', '0', '10000', '1', '45', '45', '45', '45', '45', '45', '10', '20', '1000', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('276', '沃玛卫士2', '97', '19', '151', '50', '1', '0', '0', '0', '1200', '1000', '0', '8', '8', '22', '42', '0', '0', '20', '17', '800', '1', '0', '1500', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('277', '尸王3', '81', '19', '152', '40', '1', '1', '0', '0', '800', '500', '0', '10', '10', '18', '36', '0', '0', '15', '15', '1500', '1', '0', '2800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('278', '白野猪24', '81', '19', '112', '50', '1', '1', '0', '0', '1600', '10', '0', '10', '10', '18', '36', '0', '0', '15', '15', '1500', '1', '0', '2800', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('279', '沙巴克城门', '110', '99', '900', '60', '0', '0', '0', '0', '1', '10000', '0', '10', '10', '0', '0', '0', '0', '15', '1', '1000', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('280', '沙巴克左城墙', '111', '98', '904', '60', '0', '0', '0', '0', '1', '5000', '0', '10', '10', '0', '0', '0', '0', '15', '1', '1000', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('281', '沙巴克中城墙', '111', '98', '905', '60', '0', '0', '0', '0', '1', '5000', '0', '10', '10', '0', '0', '0', '0', '15', '1', '1000', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('282', '沙巴克右城墙', '111', '98', '906', '60', '0', '0', '0', '0', '1', '5000', '0', '10', '10', '0', '0', '0', '0', '15', '1', '1000', '1', '0', '1000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('283', '祖玛弓箭手13', '104', '45', '47', '40', '1', '0', '0', '0', '420', '385', '0', '10', '10', '12', '18', '0', '0', '15', '13', '1000', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('284', '祖玛雕像13', '101', '47', '61', '42', '1', '20', '0', '0', '450', '495', '0', '13', '13', '21', '34', '0', '0', '17', '13', '900', '1', '0', '2000', '2019-12-03 12:32:04', null);
INSERT INTO `monster` VALUES ('285', '祖玛卫士13', '101', '47', '62', '50', '1', '100', '0', '0', '2000', '495', '0', '15', '15', '35', '60', '0', '0', '25', '18', '400', '1', '0', '1000', '2019-12-03 12:32:04', null);

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '角色名称',
  `job` int(3) NOT NULL DEFAULT '0' COMMENT '职业?',
  `hair` int(6) NOT NULL DEFAULT '0' COMMENT '头发',
  `level` int(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `gender` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别',
  `isdel` tinyint(2) unsigned DEFAULT '1' COMMENT '是否删除 1:未删除 2:已删除',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `level` (`level`),
  KEY `gender` (`gender`),
  KEY `isdel` (`isdel`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='玩家角色表';

-- ----------------------------
-- Records of players
-- ----------------------------
INSERT INTO `players` VALUES ('1', '3', '2222', '0', '2', '1', '0', '1');
INSERT INTO `players` VALUES ('2', '12', '超人', '2', '3', '1', '1', '1');
INSERT INTO `players` VALUES ('3', '3', '超人1', '1', '2', '1', '0', '2');
INSERT INTO `players` VALUES ('4', '5', '阿萨德', '0', '2', '1', '0', '1');
INSERT INTO `players` VALUES ('5', '8', '发生', '0', '2', '1', '0', '2');
INSERT INTO `players` VALUES ('6', '8', '撒打算', '0', '2', '1', '0', '1');
INSERT INTO `players` VALUES ('7', '8', '噶是的', '0', '1', '1', '0', '1');
INSERT INTO `players` VALUES ('8', '3', 'asd发发发', '1', '4', '1', '0', '1');
INSERT INTO `players` VALUES ('9', '4', 'sad', '0', '4', '1', '0', '1');
INSERT INTO `players` VALUES ('10', '4', '发送', '2', '1', '1', '0', '1');

-- ----------------------------
-- Table structure for server_infos
-- ----------------------------
DROP TABLE IF EXISTS `server_infos`;
CREATE TABLE `server_infos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '服务器名称',
  `login_server_ip` varchar(15) NOT NULL DEFAULT '登录服务器地址',
  `login_server_port` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '登录服务器端口',
  `game_server_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '游戏服务器地址',
  `game_server_port` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '游戏服务器端口',
  `gameversion` varchar(20) DEFAULT '' COMMENT '版本',
  PRIMARY KEY (`id`),
  KEY `login_server_ip` (`login_server_ip`),
  KEY `game_server_ip` (`game_server_ip`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='服务器列表';

-- ----------------------------
-- Records of server_infos
-- ----------------------------
INSERT INTO `server_infos` VALUES ('1', 'PMIR2服务器', '127.0.0.1', '7000', '127.0.0.1', '7200', '1.76');

-- ----------------------------
-- Table structure for stditems
-- ----------------------------
DROP TABLE IF EXISTS `stditems`;
CREATE TABLE `stditems` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '数据库的序列号',
  `name` varchar(50) DEFAULT '' COMMENT '物件的名称',
  `stdmode` int(11) unsigned DEFAULT '0',
  `shape` int(11) unsigned DEFAULT '0',
  `weight` int(11) unsigned DEFAULT '0',
  `anicount` int(11) unsigned DEFAULT '0',
  `source` int(11) unsigned DEFAULT '0',
  `reserved` int(11) unsigned DEFAULT '0',
  `looks` int(11) unsigned DEFAULT '0',
  `color` varchar(20) DEFAULT '',
  `effect` int(11) unsigned DEFAULT '0',
  `dura_max` int(11) unsigned DEFAULT '0',
  `ac` int(11) unsigned DEFAULT '0',
  `ac2` int(11) unsigned DEFAULT '0',
  `mac` int(11) unsigned DEFAULT '0',
  `mac2` int(11) unsigned DEFAULT '0',
  `dc` int(11) unsigned DEFAULT '0',
  `dc2` int(11) unsigned DEFAULT '0',
  `mc` int(11) unsigned DEFAULT '0',
  `mc2` int(11) unsigned DEFAULT '0',
  `sc` int(11) unsigned DEFAULT '0',
  `sc2` int(11) unsigned DEFAULT '0',
  `hp` int(11) unsigned DEFAULT '0',
  `mp` int(11) unsigned DEFAULT '0',
  `add_damege` int(11) unsigned DEFAULT '0',
  `del_damege` int(11) unsigned DEFAULT '0',
  `hit_point` int(11) unsigned DEFAULT '0',
  `speed_point` int(11) unsigned DEFAULT '0',
  `strong` int(11) unsigned DEFAULT '0',
  `luck` int(11) unsigned DEFAULT '0',
  `hit_speed` int(11) unsigned DEFAULT '0',
  `anit_magic` int(11) unsigned DEFAULT '0',
  `posin_magic` int(11) unsigned DEFAULT '0',
  `health_recover` int(11) unsigned DEFAULT '0',
  `spell_recover` int(11) unsigned DEFAULT '0',
  `posion_recover` int(11) unsigned DEFAULT '0',
  `need` int(11) unsigned DEFAULT '0',
  `need_level` int(11) unsigned DEFAULT '0',
  `price` int(11) unsigned DEFAULT '0',
  `bind` varchar(20) DEFAULT '0',
  `text` varchar(255) DEFAULT '',
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `utime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='物品表';

-- ----------------------------
-- Records of stditems
-- ----------------------------
INSERT INTO `stditems` VALUES ('1', '金创药(小量)', '0', '0', '1', '0', '0', '51', '398', '0', '0', '1', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '80', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('2', '魔法药(小量)', '0', '0', '1', '0', '0', '52', '394', '0', '0', '1', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '80', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('3', '肉', '40', '0', '3', '0', '0', '0', '1', '0', '0', '10000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '200', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('4', '鸡肉', '40', '0', '1', '0', '0', '0', '13', '0', '0', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '80', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('5', '干肉', '31', '0', '1', '0', '0', '0', '5', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('6', '蜡烛', '30', '0', '1', '0', '0', '0', '130', '0', '0', '24464', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('7', '食人花叶', '42', '0', '1', '0', '0', '0', '255', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('8', '毒蜘蛛牙齿', '42', '0', '1', '0', '0', '0', '253', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('9', '食人花的果实', '42', '0', '1', '0', '0', '0', '256', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('10', '蝎子尾巴', '42', '0', '1', '0', '0', '0', '254', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('11', '蛆卵', '42', '0', '1', '0', '0', '0', '252', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('12', '灰色药粉(少量)', '25', '1', '1', '0', '0', '0', '251', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1100', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('13', '黄色药粉(少量)', '25', '2', '1', '0', '0', '0', '250', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1100', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('14', '灰色药粉(中量)', '25', '1', '2', '0', '0', '0', '251', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2420', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('15', '灰色药粉(大量)', '25', '1', '3', '0', '0', '0', '251', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '3850', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('16', '黄色药粉(中量)', '25', '2', '2', '0', '0', '0', '250', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2420', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('17', '黄色药粉(大量)', '25', '2', '3', '0', '0', '0', '250', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '3850', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('18', '沃玛号角', '44', '0', '1', '0', '0', '0', '261', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '909', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('19', '地牢逃脱卷', '3', '1', '1', '0', '0', '0', '408', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '100', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('20', '金创药(中量)', '0', '0', '2', '0', '0', '53', '400', '0', '0', '1', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '200', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('21', '魔法药(中量)', '0', '0', '2', '0', '0', '54', '396', '0', '0', '1', '0', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '200', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('22', '护身符', '25', '5', '1', '0', '0', '0', '270', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '605', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('23', '铜矿', '43', '0', '4', '0', '0', '0', '286', '0', '0', '15000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('24', '铁矿', '43', '0', '4', '0', '0', '0', '281', '0', '0', '15000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('25', '银矿', '43', '0', '4', '0', '0', '0', '285', '0', '0', '15000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('26', '金矿', '43', '0', '4', '0', '0', '0', '280', '0', '0', '15000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('27', '战神油', '3', '10', '1', '0', '0', '0', '2', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('28', '回城卷', '3', '3', '1', '0', '0', '0', '402', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '455', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('29', '祝福油', '3', '4', '1', '0', '0', '0', '26', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('30', '太阳水', '0', '1', '1', '0', '0', '0', '16', '0', '0', '0', '30', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '909', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('31', '祖玛头像', '44', '1', '1', '0', '0', '0', '271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('32', '随机传送卷', '3', '2', '1', '107', '0', '0', '404', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '100', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('33', '行会回城卷', '3', '5', '1', '0', '0', '0', '406', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '800', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('34', '修复油', '3', '9', '1', '0', '0', '0', '27', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '800', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('35', '强效金创药', '0', '0', '3', '0', '0', '37', '28', '0', '0', '1', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '540', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('36', '强效魔法药', '0', '0', '3', '0', '0', '38', '29', '0', '0', '1', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '540', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('37', '超级金创药', '31', '100', '20', '0', '0', '0', '313', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3409', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('38', '超级魔法药', '31', '101', '20', '0', '0', '0', '314', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3409', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('39', '强效太阳水', '0', '1', '2', '124', '0', '667', '312', '0', '0', '0', '50', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1818', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('40', '黑铁矿石', '43', '0', '4', '0', '0', '0', '284', '0', '0', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('41', '彩票', '3', '11', '1', '0', '0', '0', '265', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('42', '疗伤药', '0', '1', '1', '122', '0', '668', '14', '0', '0', '1', '100', '0', '160', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('43', '特殊药水', '0', '3', '1', '0', '0', '0', '14', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('44', '鹿茸', '0', '1', '5', '0', '0', '0', '6', '0', '0', '1', '100', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4545', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('45', '金条', '31', '0', '1', '36', '0', '0', '117', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('46', '金砖', '47', '0', '52', '0', '0', '0', '121', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('47', '金盒', '47', '0', '110', '0', '0', '0', '122', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('48', '鹿血', '0', '1', '1', '0', '0', '0', '23', '0', '0', '1', '20', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('49', '神水', '0', '2', '1', '0', '0', '0', '119', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('50', '万年雪霜', '0', '1', '2', '123', '0', '666', '260', '0', '0', '1', '100', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('51', '金创药(小)包', '31', '102', '8', '0', '0', '0', '399', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '680', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('52', '魔法药(小)包', '31', '103', '8', '0', '0', '0', '395', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '680', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('53', '金创药(中)包', '31', '104', '14', '0', '0', '0', '401', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('54', '魔法药(中)包', '31', '105', '14', '0', '0', '0', '397', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('55', '地牢逃脱卷包', '31', '106', '8', '0', '0', '0', '409', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '800', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('56', '随机传送卷包', '31', '107', '8', '0', '0', '0', '405', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '800', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('57', '回城卷包', '31', '108', '8', '0', '0', '0', '403', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('58', '行会回城卷包', '31', '109', '8', '0', '0', '0', '407', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('59', '攻击力药水', '3', '12', '3', '0', '0', '0', '425', '0', '0', '0', '0', '0', '0', '180', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('60', '魔法力药水', '3', '12', '3', '0', '0', '0', '423', '0', '0', '0', '0', '0', '0', '180', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('61', '道术力药水', '3', '12', '3', '0', '0', '0', '421', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('62', '疾风药水', '3', '12', '3', '0', '0', '0', '420', '0', '0', '0', '0', '1', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('63', 'HP强化水', '3', '12', '3', '0', '0', '0', '424', '0', '0', '0', '50', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('64', 'MP强化水', '3', '12', '3', '0', '0', '0', '422', '0', '0', '0', '0', '0', '50', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('65', '攻击力药水(中)', '3', '12', '3', '0', '0', '0', '425', '0', '0', '0', '0', '0', '0', '180', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('66', '魔法力药水(中)', '3', '12', '3', '0', '0', '0', '423', '0', '0', '0', '0', '0', '0', '180', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('67', '道术力药水(中)', '3', '12', '3', '0', '0', '0', '421', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('68', '疾风药水(中)', '3', '12', '3', '0', '0', '0', '420', '0', '0', '0', '0', '2', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('69', 'HP强化水(中)', '3', '12', '3', '0', '0', '0', '424', '0', '0', '0', '100', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('70', 'MP强化水(中)', '3', '12', '3', '0', '0', '0', '422', '0', '0', '0', '0', '0', '100', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('71', '强效攻击力药水', '3', '12', '3', '0', '0', '0', '425', '0', '0', '0', '0', '0', '0', '180', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('72', '强效魔法力药水', '3', '12', '3', '0', '0', '0', '423', '0', '0', '0', '0', '0', '0', '180', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('73', '强效道术力药水', '3', '12', '3', '0', '0', '0', '421', '0', '0', '0', '0', '0', '0', '180', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('74', '强效HP强化水', '3', '12', '3', '0', '0', '0', '424', '0', '0', '0', '150', '0', '0', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('75', '强效MP强化水', '3', '12', '3', '0', '0', '0', '422', '0', '0', '0', '0', '0', '150', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('76', '超级攻击力药水', '3', '12', '3', '0', '0', '0', '425', '0', '0', '0', '0', '0', '0', '240', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('77', '超级魔法力药水', '3', '12', '3', '0', '0', '0', '423', '0', '0', '0', '0', '0', '0', '240', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('78', '超级道术力药水', '3', '12', '3', '0', '0', '0', '421', '0', '0', '0', '0', '0', '0', '240', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('79', '超级HP强化水', '3', '12', '3', '0', '0', '0', '424', '0', '0', '0', '200', '0', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('80', '超级MP强化水', '3', '12', '3', '0', '0', '0', '422', '0', '0', '0', '0', '0', '200', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('81', '超级疾风药水', '3', '12', '3', '0', '0', '0', '420', '0', '0', '0', '0', '4', '0', '240', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('82', '强效疾风药水', '3', '12', '3', '0', '0', '0', '420', '0', '0', '0', '0', '3', '0', '180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('83', '苹果', '3', '12', '3', '0', '0', '0', '426', '0', '0', '0', '200', '2', '200', '240', '10', '0', '10', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '60000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('84', '赤血魔剑', '5', '30', '22', '0', '0', '0', '66', '0', '0', '22000', '0', '0', '0', '0', '15', '10', '4', '3', '4', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '100000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('85', '护身符(大)', '25', '5', '1', '111', '0', '312', '270', '0', '0', '200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3630', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('86', '青铜头盔', '15', '0', '4', '0', '0', '0', '100', '0', '0', '8000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '909', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('87', '魔法头盔', '15', '0', '4', '0', '0', '0', '100', '0', '0', '8000', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '14', '1818', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('88', '骷髅头盔', '15', '0', '5', '0', '0', '0', '103', '0', '0', '8000', '2', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '7273', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('89', '道士头盔', '15', '0', '2', '0', '0', '0', '106', '0', '0', '8000', '1', '2', '2', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '5000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('90', '黑铁头盔', '15', '0', '20', '0', '0', '0', '344', '0', '0', '10000', '4', '5', '2', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '46', '40000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('91', '布衣(男)', '10', '1', '5', '0', '1', '0', '60', '0', '0', '5000', '0', '2', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '400', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('92', '布衣(女)', '11', '1', '5', '0', '1', '0', '80', '0', '0', '5000', '0', '2', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '400', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('93', '轻型盔甲(男)', '10', '2', '8', '0', '2', '0', '61', '0', '0', '8000', '3', '3', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '3000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('94', '轻型盔甲(女)', '11', '2', '8', '0', '2', '0', '81', '0', '0', '8000', '3', '3', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '3000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('95', '中型盔甲(男)', '10', '2', '18', '0', '2', '0', '61', '0', '0', '12000', '3', '5', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '5500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('96', '中型盔甲(女)', '11', '2', '18', '0', '2', '0', '81', '0', '0', '12000', '3', '5', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '5500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('97', '重盔甲(女)', '11', '3', '23', '0', '3', '0', '82', '0', '0', '25000', '4', '7', '2', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '10000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('98', '魔法长袍(女)', '11', '4', '12', '0', '4', '0', '83', '0', '0', '20000', '3', '5', '3', '4', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '9091', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('99', '灵魂战衣(女)', '11', '5', '15', '0', '5', '0', '84', '0', '0', '20000', '3', '6', '3', '3', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '9091', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('100', '重盔甲(男)', '10', '3', '23', '0', '3', '0', '62', '0', '0', '25000', '4', '7', '2', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '10000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('101', '魔法长袍(男)', '10', '4', '12', '0', '4', '0', '63', '0', '0', '20000', '3', '5', '3', '4', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '9091', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('102', '灵魂战衣(男)', '10', '5', '15', '0', '5', '0', '64', '0', '0', '20000', '3', '6', '3', '3', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '9091', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('103', '战神盔甲(男)', '10', '3', '45', '0', '3', '0', '62', '0', '0', '30000', '5', '9', '3', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '46', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('104', '战神盔甲(女)', '11', '3', '45', '0', '3', '0', '82', '0', '0', '30000', '5', '9', '3', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '46', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('105', '幽灵战衣(男)', '10', '5', '26', '0', '5', '0', '64', '0', '0', '28000', '4', '7', '3', '3', '0', '0', '0', '0', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '27', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('106', '幽灵战衣(女)', '11', '5', '26', '0', '5', '0', '84', '0', '0', '28000', '4', '7', '3', '3', '0', '0', '0', '0', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '27', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('107', '恶魔长袍(男)', '10', '4', '19', '0', '4', '0', '63', '0', '0', '28000', '4', '7', '3', '4', '0', '0', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '28', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('108', '恶魔长袍(女)', '11', '4', '19', '0', '4', '0', '83', '0', '0', '28000', '4', '7', '3', '4', '0', '0', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '28', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('109', '木剑', '5', '1', '7', '0', '0', '0', '30', '0', '0', '4000', '0', '0', '0', '0', '4', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '50', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('110', '乌木剑', '5', '1', '8', '0', '0', '0', '43', '0', '0', '7000', '0', '0', '0', '0', '4', '8', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '3636', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('111', '铁剑', '5', '2', '10', '0', '0', '0', '36', '0', '0', '10000', '0', '0', '0', '0', '5', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '1000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('112', '青铜剑', '5', '2', '9', '0', '0', '0', '31', '0', '0', '6000', '0', '0', '0', '0', '3', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '900', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('113', '短剑', '5', '4', '9', '0', '0', '0', '33', '0', '0', '8000', '0', '0', '0', '0', '3', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '1000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('114', '青铜斧', '5', '3', '10', '0', '0', '0', '32', '0', '0', '10000', '0', '0', '0', '0', '0', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('115', '匕首', '5', '6', '5', '0', '0', '0', '35', '0', '0', '10000', '0', '0', '0', '0', '4', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('116', '鹤嘴锄', '6', '19', '10', '0', '0', '0', '50', '0', '0', '10000', '0', '0', '0', '0', '0', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '11', '700', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('117', '八荒', '5', '15', '25', '0', '0', '0', '44', '0', '0', '18000', '0', '0', '0', '0', '4', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '4545', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('118', '半月', '5', '16', '16', '0', '0', '0', '46', '0', '0', '14000', '0', '0', '0', '0', '5', '10', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '3000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('119', '海魂', '6', '8', '12', '0', '0', '0', '39', '0', '0', '12000', '0', '0', '0', '0', '3', '10', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '3000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('120', '凌风', '5', '5', '20', '0', '0', '0', '34', '0', '0', '18000', '0', '0', '0', '0', '6', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '19', '4545', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('121', '破魂', '5', '6', '8', '0', '0', '0', '51', '0', '0', '11000', '0', '0', '0', '0', '8', '10', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '5000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('122', '降魔', '5', '14', '20', '0', '0', '0', '47', '0', '0', '17000', '0', '0', '0', '0', '6', '11', '0', '0', '1', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '9091', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('123', '偃月', '6', '18', '13', '0', '0', '0', '49', '0', '0', '12000', '0', '0', '0', '0', '4', '10', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '9091', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('124', '斩马刀', '5', '10', '27', '0', '0', '0', '37', '0', '0', '19000', '0', '0', '0', '0', '5', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '6000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('125', '修罗', '5', '7', '40', '0', '0', '0', '40', '0', '0', '25000', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '10000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('126', '凝霜', '5', '13', '20', '0', '0', '0', '45', '0', '0', '20000', '0', '0', '0', '0', '10', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '8000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('127', '炼狱', '6', '11', '60', '0', '0', '0', '41', '0', '0', '28000', '0', '0', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('128', '魔杖', '6', '12', '10', '0', '0', '0', '42', '0', '0', '15000', '0', '0', '0', '0', '5', '9', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '15000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('129', '银蛇', '5', '9', '26', '0', '0', '0', '38', '0', '0', '24000', '0', '0', '0', '0', '7', '14', '0', '0', '1', '3', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '15000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('130', '井中月', '5', '17', '58', '0', '0', '0', '48', '0', '0', '30000', '0', '0', '0', '0', '7', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '28', '30000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('131', '骨玉权杖', '6', '28', '20', '0', '0', '0', '59', '0', '0', '18000', '0', '0', '0', '0', '6', '12', '2', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '50000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('132', '无极棍', '5', '21', '15', '0', '0', '0', '52', '0', '0', '25000', '0', '0', '0', '0', '8', '16', '0', '0', '3', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '25', '40000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('133', '裁决之杖', '6', '24', '80', '0', '0', '0', '55', '0', '0', '32000', '0', '0', '0', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30', '50000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('134', '血饮', '5', '22', '12', '0', '0', '0', '53', '0', '0', '20000', '0', '0', '0', '0', '6', '16', '3', '5', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '27', '40000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('135', '龙纹剑', '5', '25', '40', '0', '0', '0', '56', '0', '0', '22000', '0', '0', '0', '0', '8', '20', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '50000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('136', '命运之刃', '5', '29', '48', '0', '0', '0', '65', '0', '0', '20000', '0', '0', '0', '0', '12', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '23000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('137', '屠龙屠龙', '5', '26', '99', '0', '0', '0', '57', '0', '0', '33000', '0', '0', '0', '0', '5', '35', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '34', '60000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('138', '嗜魂扇', '6', '27', '26', '0', '0', '0', '58', '0', '0', '10000', '0', '0', '0', '0', '6', '13', '2', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '50000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('139', '传统项链', '20', '0', '1', '0', '0', '0', '237', '0', '0', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '1000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('140', '金项链', '20', '0', '1', '0', '0', '0', '222', '0', '0', '8000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('141', '黑檀项链', '20', '0', '1', '0', '0', '0', '220', '0', '0', '8000', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1200', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('142', '黄色水晶项链', '20', '0', '1', '0', '0', '0', '221', '0', '0', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1200', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('143', '黑色水晶项链', '20', '0', '1', '0', '0', '0', '225', '0', '0', '8000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13', '1500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('144', '琥珀项链', '20', '0', '1', '0', '0', '0', '236', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '17', '1818', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('145', '灯笼项链', '19', '0', '1', '0', '0', '0', '233', '0', '0', '8000', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '18', '2727', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('146', '白色虎齿项链', '19', '0', '1', '0', '0', '0', '230', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '3', '11', '3636', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('147', '白金项链', '20', '0', '1', '0', '0', '0', '231', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '10', '1818', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('148', '凤凰明珠', '20', '0', '1', '0', '0', '0', '243', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '17', '1818', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('149', '放大镜', '20', '0', '1', '0', '0', '0', '245', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '6000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('150', '竹笛', '20', '0', '1', '0', '0', '0', '242', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '6000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('151', '蓝翡翠项链', '20', '0', '1', '0', '0', '0', '246', '0', '0', '8000', '0', '0', '0', '0', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '23', '9091', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('152', '生命项链', '20', '0', '1', '0', '0', '0', '320', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '1', '5', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '25', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('153', '天珠项链', '20', '0', '1', '0', '0', '0', '218', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '22', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('154', '幽灵项链', '20', '0', '1', '0', '0', '0', '219', '0', '0', '8000', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '24', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('155', '绿色项链', '20', '0', '1', '0', '0', '0', '240', '0', '0', '8000', '0', '0', '0', '0', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '37', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('156', '灵魂项链', '20', '0', '1', '0', '0', '0', '239', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '6', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '23', '18000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('157', '恶魔铃铛', '20', '0', '1', '0', '0', '0', '244', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '27', '18000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('158', '狂风项链', '21', '0', '1', '0', '0', '0', '228', '0', '0', '8000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '19', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('159', '探测项链', '20', '121', '1', '0', '0', '0', '248', '0', '0', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('160', '技巧项链', '20', '120', '1', '0', '0', '0', '241', '0', '0', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('161', '铁手镯', '24', '0', '1', '0', '0', '0', '180', '0', '0', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '800', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('162', '皮制手套', '26', '0', '2', '0', '0', '0', '190', '0', '0', '6000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('163', '坚固手套', '26', '0', '3', '0', '0', '0', '191', '0', '0', '8000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '6364', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('164', '钢手镯', '26', '0', '1', '0', '0', '0', '180', '0', '0', '5000', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8', '1818', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('165', '躲避手链', '20', '0', '1', '0', '0', '0', '238', '0', '0', '8000', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '20000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('166', '小手镯', '26', '0', '1', '0', '0', '0', '192', '0', '0', '5000', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '1000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('167', '银手镯', '24', '0', '2', '0', '0', '0', '202', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '1500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('168', '大手镯', '26', '0', '2', '0', '0', '0', '203', '0', '0', '10000', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '4545', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('169', '死神手套', '26', '0', '2', '0', '0', '0', '188', '0', '0', '8000', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '22', '8000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('170', '魔法手镯', '26', '0', '1', '0', '0', '0', '205', '0', '0', '7000', '0', '1', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '4000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('171', '金手镯', '26', '0', '1', '0', '0', '0', '207', '0', '0', '7000', '0', '0', '2', '3', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '23', '6364', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('172', '骑士手镯', '26', '0', '1', '0', '0', '0', '209', '0', '0', '8000', '0', '0', '0', '0', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '39', '15000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('173', '道士手镯', '26', '0', '1', '0', '0', '0', '198', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '19', '3636', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('174', '三眼手镯', '26', '0', '1', '0', '0', '0', '208', '0', '0', '7000', '1', '1', '0', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '22', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('175', '黑檀手镯', '26', '0', '1', '0', '0', '0', '211', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '19', '3636', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('176', '思贝儿手镯', '26', '0', '1', '0', '0', '0', '210', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('177', '夏普儿手镯', '24', '0', '1', '0', '0', '0', '204', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '20000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('178', '避邪手镯', '24', '0', '1', '0', '0', '0', '200', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '19', '20000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('179', '心灵手镯', '26', '0', '1', '0', '0', '0', '328', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '24', '13000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('180', '幽灵手套', '26', '0', '5', '0', '0', '0', '186', '0', '0', '8000', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '8000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('181', '阎罗手套', '26', '0', '10', '0', '0', '0', '187', '0', '0', '8000', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('182', '龙之手镯', '26', '0', '3', '0', '0', '0', '214', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '28', '12000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('183', '魔力手镯', '26', '0', '2', '0', '0', '0', '290', '0', '0', '4000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '7273', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('184', '古铜戒指', '22', '0', '1', '0', '0', '0', '145', '0', '0', '5000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('185', '玻璃戒指', '22', '0', '1', '0', '0', '0', '143', '0', '0', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '800', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('186', '牛角戒指', '22', '0', '1', '0', '0', '0', '140', '0', '0', '6000', '0', '0', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9', '1000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('187', '蓝色水晶戒指', '22', '0', '1', '0', '0', '0', '142', '0', '0', '10000', '0', '0', '0', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '1500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('188', '六角戒指', '22', '0', '1', '0', '0', '0', '144', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '800', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('189', '生铁戒指', '22', '0', '1', '0', '0', '0', '141', '0', '0', '5000', '0', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '9', '2727', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('190', '金戒指', '22', '0', '1', '0', '0', '0', '148', '0', '0', '5000', '0', '0', '0', '3', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '7273', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('191', '魅力戒指', '23', '0', '1', '0', '0', '0', '159', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '23', '3636', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('192', '道德戒指', '23', '0', '1', '0', '0', '0', '153', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '23', '3636', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('193', '黑色水晶戒指', '22', '0', '1', '0', '0', '0', '163', '0', '0', '5000', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '1818', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('194', '魔鬼项链', '20', '0', '1', '0', '0', '0', '235', '0', '0', '8000', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '17', '2500', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('195', '珊瑚戒指', '22', '0', '1', '0', '0', '0', '164', '0', '0', '5000', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '10000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('196', '蛇眼戒指', '22', '0', '1', '0', '0', '0', '165', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '1818', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('197', '降妖除魔戒指', '22', '0', '1', '0', '0', '0', '152', '0', '0', '5000', '0', '0', '0', '4', '1', '2', '1', '2', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '25', '8000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('198', '红宝石戒指', '22', '0', '1', '0', '0', '0', '166', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '17', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('199', '珍珠戒指', '22', '0', '1', '0', '0', '0', '161', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '1818', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('200', '铂金戒指', '22', '0', '1', '0', '0', '0', '173', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '17', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('201', '骷髅戒指', '22', '0', '1', '0', '0', '0', '177', '0', '0', '5000', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '30', '4545', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('202', '龙之戒指', '22', '0', '1', '0', '0', '0', '169', '0', '0', '5000', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '37', '15000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('203', '力量戒指', '22', '0', '3', '0', '0', '0', '336', '0', '0', '6000', '0', '0', '0', '0', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '46', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('204', '紫碧螺', '22', '0', '2', '0', '0', '0', '183', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '24', '15000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('205', '泰坦戒指', '22', '0', '3', '0', '0', '0', '182', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '2', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '24', '15000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('206', '指隐身戒指', '22', '111', '1', '0', '0', '0', '174', '0', '0', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '20000', '7', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('207', '传送戒指指', '22', '112', '1', '0', '0', '0', '172', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '20000', '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('208', '麻痹戒指指', '22', '113', '1', '0', '0', '0', '168', '0', '0', '5000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '20000', '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('209', '复活戒指指', '22', '114', '1', '0', '0', '0', '175', '0', '0', '5000', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '20000', '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('210', '火焰戒指指', '22', '115', '1', '0', '0', '0', '171', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '20000', '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('211', '指防御戒指', '22', '116', '1', '0', '0', '0', '167', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '20000', '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('212', '求婚戒指指', '22', '0', '1', '0', '0', '0', '170', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('213', '护身戒指指', '22', '118', '1', '0', '0', '0', '176', '0', '0', '5000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '20000', '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('214', '超负载戒指指', '22', '119', '1', '0', '0', '0', '170', '0', '0', '5000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('215', '狂风戒指', '23', '0', '1', '0', '0', '0', '162', '0', '0', '5000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('216', '记忆戒指指', '22', '122', '1', '0', '0', '0', '178', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('217', '记忆项链', '19', '123', '1', '0', '0', '0', '247', '0', '0', '8000', '0', '0', '0', '0', '2', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('218', '记忆手镯', '24', '124', '1', '0', '0', '0', '212', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('219', '记忆头盔', '15', '125', '7', '0', '0', '0', '109', '0', '0', '8000', '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '26', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('220', '祈祷之刃', '5', '23', '10', '0', '0', '8', '54', '0', '0', '20000', '0', '0', '0', '0', '8', '20', '0', '0', '0', '0', '0', '0', '0', '0', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '30000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('221', '祈祷手镯镯', '26', '126', '1', '0', '0', '8', '213', '0', '0', '5000', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('222', '祈祷项链', '21', '127', '1', '0', '0', '8', '249', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('223', '祈祷戒指', '23', '128', '1', '0', '0', '8', '179', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '1', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('224', '祈祷头盔', '15', '129', '2', '0', '0', '8', '110', '0', '0', '5000', '3', '4', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('225', '神秘戒指', '22', '130', '1', '0', '0', '0', '181', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '27', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('226', '神秘腰带', '26', '131', '1', '0', '0', '0', '215', '0', '0', '8000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '27', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('227', '神秘头盔', '15', '132', '10', '0', '0', '0', '111', '0', '0', '10000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '27', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('228', '魔血戒指', '22', '133', '2', '0', '0', '0', '430', '0', '0', '4000', '0', '0', '0', '0', '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('229', '魔血手镯', '26', '134', '2', '0', '0', '0', '429', '0', '0', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('230', '魔血项链', '20', '135', '2', '0', '0', '0', '428', '0', '0', '4000', '0', '0', '0', '0', '2', '2', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('231', '虹魔戒指', '22', '136', '2', '0', '0', '0', '433', '0', '0', '4000', '0', '0', '0', '0', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('232', '虹魔手镯', '26', '137', '2', '0', '0', '0', '434', '0', '0', '4000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('233', '虹魔项链', '20', '138', '2', '0', '0', '0', '432', '0', '0', '4000', '0', '0', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('234', '圣战头盔', '15', '0', '20', '0', '0', '0', '104', '0', '0', '7000', '4', '5', '2', '3', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '40', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('235', '圣战项链', '20', '0', '2', '0', '0', '0', '229', '0', '0', '7000', '0', '0', '0', '0', '3', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '40', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('236', '圣战手镯', '26', '0', '2', '0', '0', '0', '196', '0', '0', '7000', '0', '1', '0', '0', '2', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '40', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('237', '圣战戒指', '22', '0', '2', '0', '0', '0', '147', '0', '0', '7000', '0', '0', '0', '1', '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '40', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('238', '法神头盔', '15', '0', '2', '0', '0', '0', '101', '0', '0', '7000', '4', '4', '1', '2', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '28', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('239', '法神项链', '20', '0', '1', '0', '0', '0', '226', '0', '0', '7000', '1', '2', '0', '0', '0', '0', '1', '8', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '28', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('240', '法神手镯', '26', '0', '1', '0', '0', '0', '197', '0', '0', '7000', '0', '1', '0', '0', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '28', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('241', '法神戒指', '22', '0', '1', '0', '0', '0', '158', '0', '0', '7000', '0', '0', '0', '1', '0', '0', '1', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '28', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('242', '天尊头盔', '15', '0', '3', '0', '0', '0', '102', '0', '0', '7000', '4', '4', '1', '2', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '25', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('243', '天尊项链', '20', '0', '1', '0', '0', '0', '234', '0', '0', '7000', '0', '0', '0', '0', '0', '0', '0', '0', '2', '7', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '25', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('244', '天尊手镯', '26', '0', '1', '0', '0', '0', '195', '0', '0', '7000', '1', '2', '0', '0', '0', '0', '0', '0', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '25', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('245', '天尊戒指', '22', '0', '1', '0', '0', '0', '157', '0', '0', '7000', '0', '0', '0', '1', '0', '0', '0', '0', '2', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '25', '20000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('246', '荣誉勋章11号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '5', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('247', '荣誉勋章12号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '5', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('248', '荣誉勋章13号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '5', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('249', '荣誉勋章14号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '5', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('250', '荣誉勋章15号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '5', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('251', '荣誉勋章21号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '10', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('252', '荣誉勋章22号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '10', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('253', '荣誉勋章23号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '10', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('254', '荣誉勋章24号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '10', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('255', '荣誉勋章25号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '10', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('256', '荣誉勋章31号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '15', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('257', '荣誉勋章32号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '15', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('258', '荣誉勋章33号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '15', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('259', '荣誉勋章34号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '15', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('260', '荣誉勋章35号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '15', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('261', '荣誉勋章41号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '20', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('262', '荣誉勋章42号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '20', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('263', '荣誉勋章43号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '20', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('264', '荣誉勋章44号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '20', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('265', '荣誉勋章45号', '30', '0', '1', '0', '1', '0', '393', '0', '0', '500000', '0', '0', '0', '0', '0', '0', '0', '0', '1', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '20', '5000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('266', '罗刹', '5', '7', '3', '0', '0', '0', '40', '0', '0', '27000', '0', '0', '0', '0', '15', '0', '2', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '10000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('267', '龙指', '5', '31', '25', '0', '0', '0', '69', '0', '0', '28000', '0', '5', '0', '0', '10', '18', '3', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '28', '85000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('268', '怒斩龙指', '5', '32', '85', '0', '0', '0', '70', '0', '0', '35000', '0', '3', '0', '0', '12', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '46', '85000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('269', '逍遥扇扇', '5', '33', '45', '0', '0', '0', '71', '0', '0', '30000', '0', '0', '0', '0', '5', '13', '0', '0', '4', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '35', '85000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('270', '天魔神甲', '10', '6', '62', '0', '0', '0', '85', '0', '0', '35000', '5', '12', '4', '7', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('271', '圣战宝甲', '11', '6', '62', '0', '0', '0', '88', '0', '0', '35000', '5', '12', '4', '7', '1', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('272', '法神披风', '10', '7', '21', '0', '0', '0', '86', '0', '0', '26000', '4', '9', '4', '6', '0', '0', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('273', '霓裳羽衣', '11', '7', '21', '0', '0', '0', '89', '0', '0', '26000', '4', '9', '4', '6', '0', '0', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('274', '天尊道袍', '10', '8', '37', '0', '0', '0', '87', '0', '0', '30000', '4', '9', '4', '6', '0', '0', '0', '0', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('275', '天师长袍', '11', '8', '37', '0', '0', '0', '90', '0', '0', '30000', '4', '9', '4', '6', '0', '0', '0', '0', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', '35000', '31', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('276', '基本剑术', '4', '0', '1', '0', '0', '0', '0', null, '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '500', '7', '提高自身的攻击命中率', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('277', '攻杀剑术', '4', '0', '1', '0', '0', '0', '0', null, '0', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000', '31', '攻击时有机率造成大幅伤害', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('278', '刺杀剑术', '4', '0', '1', '0', '0', '0', '0', null, '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4545', '31', '隔位施展剑气，使敌人受到大幅伤害', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('279', '半月弯刀', '4', '0', '1', '0', '0', '0', '0', null, '0', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '8000', '31', '使用劲气可同时攻击环绕自身周围的敌人', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('280', '野蛮冲撞', '4', '0', '1', '0', '0', '0', '0', null, '0', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '8000', '31', '用肩膀把敌人撞开，如果撞到障碍物将会对自己造成伤害', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('281', '烈火剑法', '4', '0', '1', '0', '0', '0', '0', null, '0', '35', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20000', '31', '召唤火精灵附在武器上，从而造成强力的额外伤害', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('282', '火球术', '4', '1', '1', '0', '0', '0', '0', null, '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '500', '7', '凝聚自身魔力发射一枚火球攻击目标', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('283', '地狱火', '4', '1', '1', '0', '0', '0', '0', null, '0', '16', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '31', '向前挥出一堵火焰墙，使法术区域内的敌人受到伤害', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('284', '雷电术', '4', '1', '1', '0', '0', '0', '0', null, '0', '17', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '31', '从空中召唤一道雷电攻击敌人', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('285', '大火球', '4', '1', '1', '0', '0', '0', '0', null, '0', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '31', '凝聚自身魔力发射一枚大火球攻击目标', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('286', '爆裂火焰', '4', '1', '1', '0', '0', '0', '0', null, '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000', '31', '产生高热的火焰，使法术区域内的敌人受到伤害', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('287', '抗拒火环', '4', '1', '1', '0', '0', '0', '0', null, '0', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '500', '31', '将身边的人或者怪兽推开', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('288', '诱惑之光', '4', '1', '1', '0', '0', '0', '0', null, '0', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1000', '31', '通过闪光电击使敌人瘫痪，甚至可以使怪物成为忠实的仆人', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('289', '瞬息移动', '4', '1', '1', '0', '0', '0', '0', null, '0', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2000', '31', '利用强大魔力打乱空间，从而达到随机传送目的的法术', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('290', '火墙', '4', '1', '1', '0', '0', '0', '0', null, '0', '24', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '4545', '31', '在地面上产生火焰，使踏入的敌人受到伤害', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('291', '疾光电影', '4', '1', '1', '0', '0', '0', '0', null, '0', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9091', '31', '积蓄一道光电，使直线上所有敌人受到伤害', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('292', '地狱雷光', '4', '1', '1', '0', '0', '0', '0', null, '0', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '8000', '31', '能够呼唤出一股强力的雷光风暴，伤害所有围在身边的敌人', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('293', '魔法盾', '4', '1', '1', '0', '0', '0', '0', null, '0', '31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10000', '31', '使用自身魔力制造一个魔法盾减少施法者受到的伤害', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('294', '圣言术', '4', '1', '1', '0', '0', '0', '0', null, '0', '32', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10000', '31', '有机率一击杀死不死生物', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('295', '冰咆哮', '4', '1', '1', '0', '0', '0', '0', null, '0', '35', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20000', '31', '召唤强力的暴风雪，使法术区域内的敌人受到伤害', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('296', '治愈术', '4', '2', '1', '0', '0', '0', '0', null, '0', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '500', '7', '释放精神之力恢复自己或者他人的体力', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('297', '精神力战法', '4', '2', '1', '0', '0', '0', '0', null, '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '500', '7', '通过与精神之力沟通，可以提高战斗时的命中率', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('298', '施毒术', '4', '2', '1', '0', '0', '0', '0', null, '0', '14', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '31', '配合特殊药粉可以指定某个目标中毒', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('299', '灵魂火符', '4', '2', '1', '0', '0', '0', '0', null, '0', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1000', '31', '将精神之力附着在护身符上，远程攻击目标', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('300', '召唤骷髅', '4', '2', '1', '0', '0', '0', '0', null, '0', '19', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2000', '31', '使用护身符从地狱的深处召唤骷髅', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('301', '隐身术', '4', '2', '1', '0', '0', '0', '0', null, '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2000', '31', '在自身周围释放精神之力使怪物无法察觉你的存在', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('302', '集体隐身术', '4', '2', '1', '0', '0', '0', '0', null, '0', '21', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2727', '31', '通达大量释放精神之力，能够隐藏范围内的人', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('303', '幽灵盾', '4', '2', '1', '0', '0', '0', '0', null, '0', '22', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2727', '31', '使用护身符提高范围内非敌方的魔法防御力', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('304', '神圣战甲术', '4', '2', '1', '0', '0', '0', '0', null, '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5000', '31', '使用护身符提高范围内非敌方的防御力', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('305', '心灵启示', '4', '2', '1', '0', '0', '0', '0', null, '0', '26', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '9091', '31', '查看目标体力', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('306', '困魔咒', '4', '2', '1', '0', '0', '0', '0', null, '0', '28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '8000', '31', '被限制在咒语中的怪兽因为看不见外面的情况只能绕着圈走', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('307', '群体治疗术', '4', '2', '1', '0', '0', '0', '0', null, '0', '33', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10000', '31', '恢复自己和周围所有玩家的体力', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('308', '召唤神兽', '4', '2', '1', '0', '0', '0', '0', null, '0', '35', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20000', '31', '使用护身符召唤一只强大神兽作为自己的随从35级召唤: 神兽45级召唤:变异神兽', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('309', '强效太阳包', '31', '121', '15', '0', '0', '0', '1007', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20000', '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('310', '打捆疗伤药', '31', '119', '6', '0', '0', '0', '1009', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '36000', '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('311', '还魂丹', '41', '0', '1', '0', '0', '0', '1081', null, '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-352321530', '人物死亡后，可以通过使用还魂丹执行“原地复活”复活后恢复人物60%生命值限制地图不可能使用', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('312', '一心一意', '31', '0', '1', '5', '1', '0', '1016', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '436207622', '爱要大声的说出来打开一心一意礼花卷轴让真爱在天空中绽放', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('313', '心心相印', '31', '0', '1', '6', '1', '0', '1016', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '436207622', '纠缠的誓言一生一世打开心心相应礼花卷轴时间在此刻停留', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('314', '飞火流星', '31', '0', '1', '7', '1', '0', '1016', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '436207622', '何需不朽打开飞火流星礼花卷轴足以映亮永久', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('315', '浪漫星雨', '31', '0', '1', '8', '1', '0', '1016', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '436207622', '静待那一刻到来打开浪漫星雨卷轴一切都可实现', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('316', '绮梦幻想', '31', '0', '1', '9', '1', '0', '1016', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '436207622', '是梦想和期待打开绮梦幻想卷轴在你的心中一切正如你的幻想', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('317', '长空火舞', '31', '0', '1', '10', '1', '0', '1016', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '436207622', '随着心跳的节奏打开长空火舞礼花卷轴让青春在空中挥洒', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('318', '如雾似梦', '31', '1', '1', '11', '0', '0', '1016', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '436207622', '如幻梦飘渺淡淡的不留痕迹的飘过打开如雾似梦礼花卷轴虚幻也如此真实', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('319', '一心一意包', '31', '112', '6', '0', '0', '0', '1015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', '爱要大声的说出来打开一心一意礼花卷轴让真爱在天空中绽放', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('320', '心心相印包', '31', '113', '6', '0', '0', '0', '1015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', '纠缠的誓言一生一世打开心心相应礼花卷轴时间在此刻停留', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('321', '飞火流星包', '31', '114', '6', '0', '0', '0', '1015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', '何需不朽打开飞火流星礼花卷轴足以映亮永久', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('322', '浪漫星雨包', '31', '115', '6', '0', '0', '0', '1015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', '静待那一刻到来打开浪漫星雨卷轴一切都可实现', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('323', '绮梦幻想包', '31', '116', '6', '0', '0', '0', '1015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', '是梦想和期待打开绮梦幻想卷轴在你的心中一切正如你的幻想', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('324', '长空火舞包', '31', '117', '6', '0', '0', '0', '1015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', '随着心跳的节奏打开长空火舞礼花卷轴让青春在空中挥洒', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('325', '如雾似梦包', '31', '118', '6', '0', '0', '0', '1015', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', '如幻梦飘渺淡淡的不留痕迹的飘过打开如雾似梦礼花卷轴虚幻也如此真实', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('326', '庆典蛋糕', '31', '0', '1', '12', '1', '0', '1001', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '436207622', '十分漂亮的烟花常作祝福庆典之用', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('327', '修复神水', '2', '9', '1', '0', '0', '0', '120', '0', '0', '10000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '7', '按持久特修全身装备', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('328', '千里传音(大)', '8', '0', '1', '0', '0', '0', '1000', '0', '0', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '301989895', '可以配带到装备宝物栏里使用命令 @传 + 说话内容进行全服喊话', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('329', '千里传音', '8', '0', '1', '0', '0', '0', '1000', '0', '0', '10000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '301989895', '可以配带到装备宝物栏里使用命令 @传 + 说话内容 进行全服喊话', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('330', '特制梳子', '49', '0', '1', '0', '0', '0', '1013', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '-1845493753', '可以找比奇或盟重的发型师改变发型', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('331', '1点声望', '31', '1', '1', '13', '0', '0', '266', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '双击获得1点声望', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('332', '5点声望', '31', '1', '1', '14', '0', '0', '266', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '双击获得5点声望', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('333', '10点声望', '31', '1', '1', '15', '0', '0', '266', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '双击获得10点声望', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('334', '50点声望', '31', '1', '1', '16', '0', '0', '266', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '双击获得50点声望', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('335', '100点声望', '31', '1', '1', '17', '0', '0', '266', '0', '0', '6000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '7', '双击获得100点声望', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('336', '回城石', '2', '3', '1', '0', '0', '0', '1024', '0', '0', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '167772166', '双击使用后回到附近城镇', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('337', '随机传送石', '2', '2', '1', '0', '0', '0', '1025', '0', '0', '60000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-889192441', '在地图中随机传送', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('338', '盟重传送石', '2', '0', '1', '18', '0', '0', '1010', '0', '0', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '167772166', '双击使用后回到盟重省', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('339', '比奇传送石', '2', '0', '1', '19', '0', '0', '999', '0', '0', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-889192441', '双击使用后回到比奇省', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('340', '苍月传送石', '2', '0', '1', '20', '0', '0', '1024', '0', '0', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', '双击使用后回到苍月岛', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('341', '封魔传送石', '2', '0', '1', '21', '0', '0', '1024', '0', '0', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', '双击使用后回到封魔谷', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('342', '白日门传送石', '2', '0', '1', '22', '0', '0', '999', '0', '0', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', '双击使用后回到白日门', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('343', '1元宝', '31', '1', '1', '23', '0', '0', '1120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33554463', '双击后自动增加1元宝', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('344', '5元宝', '31', '1', '1', '24', '0', '0', '1120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '33554463', '双击后自动增加5元宝', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('345', '10元宝', '31', '1', '1', '25', '0', '0', '1120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '33554463', '双击后自动增加10元宝', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('346', '20元宝', '31', '1', '1', '26', '0', '0', '1120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '33554463', '双击后自动增加20元宝', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('347', '50元宝', '31', '1', '1', '27', '0', '0', '1120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '33554463', '双击后自动增加50元宝', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('348', '100元宝', '31', '1', '1', '28', '0', '0', '1120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '33554463', '双击后自动增加100元宝', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('349', '200元宝', '31', '1', '1', '29', '0', '0', '1120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '33554463', '双击后自动增加200元宝', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('350', '500元宝', '31', '1', '1', '30', '0', '0', '1120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '33554463', '双击后自动增加500元宝', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('351', '1000元宝', '31', '1', '1', '31', '0', '0', '1120', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '33554463', '双击后自动增加1000元宝', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('352', '超级灰色药粉', '25', '1', '2', '0', '0', '0', '10115', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33554438', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('353', '超级黄色药粉', '25', '2', '2', '0', '0', '0', '10116', '0', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '33554438', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('354', '超级护身符', '25', '5', '2', '0', '0', '0', '10114', '0', '0', '10000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '436207622', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('355', '━━新人━━', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('356', '开天', '5', '34', '1', '0', '0', '0', '72', '0', null, '0', '0', '0', '0', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('357', '镇天', '5', '35', '1', '0', '0', '0', '73', '0', '20000', '0', '0', '0', '0', '0', '0', '5', '15', '0', '0', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('358', '玄天', '5', '36', '1', '0', '0', '0', '74', '0', '30000', '0', '0', '0', '0', '0', '0', '0', '0', '5', '15', '0', '0', '0', '0', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('359', '雷霆战甲(男)', '10', '9', '1', '15', '2', '0', '869', '0', null, '5', '10', '5', '10', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('360', '雷霆战甲(女)', '11', '9', '1', '16', '2', '0', '870', '0', null, '5', '10', '5', '10', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('361', '烈焰魔衣(男)', '10', '9', '1', '5', '2', '0', '871', '0', null, '5', '10', '5', '10', '0', '0', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('362', '烈焰魔衣(女)', '11', '9', '1', '6', '2', '0', '872', '0', null, '5', '10', '5', '10', '0', '0', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('363', '光芒道袍(男)', '10', '9', '1', '1', '2', '0', '590', '0', null, '5', '10', '5', '10', '0', '0', '0', '0', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('364', '光芒道袍(女)', '11', '9', '1', '2', '2', '0', '591', '0', null, '5', '10', '5', '10', '0', '0', '0', '0', '2', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('365', '黄金之盔', '15', '0', '1', '0', '0', '0', '1117', '0', '10000', '2', '5', '2', '5', '5', '10', '5', '10', '5', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('366', '黄金之链', '19', '0', '1', '0', '0', '0', '1215', '0', '10000', '2', '5', '2', '5', '5', '10', '5', '10', '5', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('367', '黄金之镯', '24', '0', '1', '0', '0', '0', '1214', '0', '10000', '2', '5', '2', '5', '5', '10', '5', '10', '5', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('368', '黄金之戒', '22', '0', '1', '0', '0', '0', '1213', '0', '10000', '2', '5', '2', '5', '5', '10', '5', '10', '5', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('369', '黄金之腰', '27', '0', '1', '0', '0', '0', '1217', '0', '10000', '2', '5', '2', '5', '5', '10', '5', '10', '5', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('370', '黄金之靴', '28', '0', '1', '0', '0', '0', '1216', '0', '10000', '2', '5', '2', '5', '5', '10', '5', '10', '5', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '2', null, '150994946', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('371', '━━天龙━━', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('372', '天龙之剑', '5', '37', '50', '0', '0', '0', '828', '0', null, '0', '0', '0', '0', '10', '50', '10', '20', '10', '20', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '20000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('373', '天龙之袍(男)', '10', '10', '50', '3', '2', '0', '595', '0', null, '8', '13', '8', '13', '3', '8', '3', '8', '3', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '20000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('374', '天龙之衣(女)', '11', '10', '50', '4', '2', '0', '605', '0', null, '8', '13', '8', '13', '3', '8', '3', '8', '3', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '20000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('375', '天龙之盔', '15', '0', '2', '0', '0', '0', '827', '0', '10000', '3', '8', '3', '8', '8', '13', '8', '13', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '10000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('376', '天龙之链', '19', '0', '2', '0', '0', '0', '823', '0', '10000', '3', '8', '3', '8', '8', '13', '8', '13', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '10000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('377', '天龙之镯', '24', '0', '2', '0', '0', '0', '826', '0', '10000', '3', '8', '3', '8', '8', '13', '8', '13', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '10000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('378', '天龙之戒', '22', '0', '2', '0', '0', '0', '824', '0', '10000', '3', '8', '3', '8', '8', '13', '8', '13', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '10000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('379', '天龙之腰', '27', '0', '2', '0', '0', '0', '825', '0', '10000', '3', '8', '3', '8', '8', '13', '8', '13', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '10000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('380', '天龙之靴', '28', '0', '2', '0', '0', '0', '821', '0', '10000', '3', '8', '3', '8', '8', '13', '8', '13', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', '10000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('381', '━━荣耀━━', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('382', '荣耀之剑', '5', '56', '50', '23', '0', '0', '1880', '0', null, '0', '0', '0', '0', '20', '60', '15', '30', '15', '30', '0', '0', '0', '0', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110', '30000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('383', '荣耀之袍(男)', '10', '22', '50', '25', '2', '0', '1900', '0', null, '10', '15', '10', '15', '5', '10', '5', '10', '5', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110', '30000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('384', '荣耀之衣(女)', '11', '22', '50', '26', '2', '0', '1910', '0', null, '10', '15', '10', '15', '5', '10', '5', '10', '5', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110', '30000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('385', '荣耀之盔', '15', '0', '3', '0', '0', '0', '2081', '0', '10000', '5', '10', '5', '10', '10', '15', '10', '15', '10', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110', '15000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('386', '荣耀之链', '19', '0', '3', '0', '0', '0', '1852', '0', '10000', '5', '10', '5', '10', '10', '15', '10', '15', '10', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110', '15000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('387', '荣耀之镯', '24', '0', '3', '0', '0', '0', '1851', '0', '10000', '5', '10', '5', '10', '10', '15', '10', '15', '10', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110', '15000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('388', '荣耀之戒', '22', '0', '3', '0', '0', '0', '1850', '0', '10000', '5', '10', '5', '10', '10', '15', '10', '15', '10', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110', '15000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('389', '荣耀之腰', '27', '0', '3', '0', '0', '0', '1855', '0', '10000', '5', '10', '5', '10', '10', '15', '10', '15', '10', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110', '15000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('390', '荣耀之靴', '28', '0', '3', '0', '0', '0', '1854', '0', '10000', '5', '10', '5', '10', '10', '15', '10', '15', '10', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '110', '15000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('391', '━━辉煌━━', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('392', '辉煌之剑', '5', '39', '50', '0', '0', '0', '1405', '0', null, '0', '0', '0', '0', '30', '70', '20', '40', '20', '40', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '40000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('393', '辉煌之袍(男)', '10', '29', '50', '33', '2', '0', '2460', '0', null, '13', '18', '13', '18', '8', '13', '8', '13', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '40000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('394', '辉煌之衣(女)', '11', '29', '50', '34', '2', '0', '2461', '0', null, '13', '18', '13', '18', '8', '13', '8', '13', '8', '13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '40000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('395', '辉煌之盔', '15', '0', '4', '0', '0', '0', '2080', '0', '10000', '8', '13', '8', '13', '13', '18', '13', '18', '13', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '20000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('396', '辉煌之链', '19', '0', '4', '0', '0', '0', '2273', '0', '10000', '8', '13', '8', '13', '13', '18', '13', '18', '13', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '20000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('397', '辉煌之镯', '24', '0', '4', '0', '0', '0', '2271', '0', '10000', '8', '13', '8', '13', '13', '18', '13', '18', '13', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '20000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('398', '辉煌之戒', '22', '0', '4', '0', '0', '0', '2270', '0', '10000', '8', '13', '8', '13', '13', '18', '13', '18', '13', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '20000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('399', '辉煌之腰', '27', '0', '4', '0', '0', '0', '2275', '0', '10000', '8', '13', '8', '13', '13', '18', '13', '18', '13', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '20000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('400', '辉煌之靴', '28', '0', '4', '0', '0', '0', '2274', '0', '10000', '8', '13', '8', '13', '13', '18', '13', '18', '13', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '120', '20000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('401', '━━主宰━━', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('402', '主宰之剑', '5', '62', '50', '31', '0', '0', '2423', '0', null, '0', '0', '0', '0', '40', '80', '25', '50', '25', '50', '0', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '50000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('403', '主宰之袍(男)', '10', '28', '50', '29', '2', '0', '2420', '0', null, '15', '20', '15', '20', '10', '15', '10', '15', '10', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '50000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('404', '主宰之衣(女)', '11', '28', '50', '30', '2', '0', '2421', '0', null, '15', '20', '15', '20', '10', '15', '10', '15', '10', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '50000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('405', '主宰之盔', '15', '0', '5', '0', '0', '0', '2422', '0', '10000', '10', '15', '10', '15', '15', '20', '15', '20', '15', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '25000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('406', '主宰之链', '19', '0', '5', '0', '0', '0', '2412', '0', '10000', '10', '15', '10', '15', '15', '20', '15', '20', '15', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '25000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('407', '主宰之镯', '24', '0', '5', '0', '0', '0', '2411', '0', '10000', '10', '15', '10', '15', '15', '20', '15', '20', '15', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '25000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('408', '主宰之戒', '22', '0', '5', '0', '0', '0', '2410', '0', '10000', '10', '15', '10', '15', '15', '20', '15', '20', '15', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '25000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('409', '主宰之腰', '27', '0', '5', '0', '0', '0', '2414', '0', '10000', '10', '15', '10', '15', '15', '20', '15', '20', '15', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '25000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('410', '主宰之靴', '28', '0', '5', '0', '0', '0', '2413', '0', '10000', '10', '15', '10', '15', '15', '20', '15', '20', '15', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '130', '25000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('411', '━━传奇━━', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('412', '传奇之剑', '5', '64', '50', '35', '0', '0', '2523', '0', null, '0', '0', '0', '0', '50', '90', '30', '60', '30', '60', '0', '0', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140', '60000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('413', '传奇之袍(男)', '10', '31', '50', '33', '2', '0', '2540', '0', null, '18', '23', '18', '23', '13', '18', '13', '18', '13', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140', '60000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('414', '传奇之衣(女)', '11', '31', '50', '34', '2', '0', '2542', '0', null, '18', '23', '18', '23', '13', '18', '13', '18', '13', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140', '60000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('415', '传奇之盔', '15', '0', '6', '0', '0', '0', '2522', '0', '10000', '13', '18', '13', '18', '18', '23', '18', '23', '18', '23', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140', '30000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('416', '传奇之链', '19', '0', '6', '0', '0', '0', '2512', '0', '10000', '13', '18', '13', '18', '18', '23', '18', '23', '18', '23', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140', '30000', null, '14', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('417', '传奇之镯', '24', '0', '6', '0', '0', '0', '2511', '0', '10000', '13', '18', '13', '18', '18', '23', '18', '23', '18', '23', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140', '30000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('418', '传奇之戒', '22', '0', '6', '0', '0', '0', '2510', '0', '10000', '13', '18', '13', '18', '18', '23', '18', '23', '18', '23', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140', '30000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('419', '传奇之腰', '27', '0', '6', '0', '0', '0', '2514', '0', '10000', '13', '18', '13', '18', '18', '23', '18', '23', '18', '23', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140', '30000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('420', '传奇之靴', '28', '0', '6', '0', '0', '0', '2513', '0', '10000', '13', '18', '13', '18', '18', '23', '18', '23', '18', '23', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '140', '30000', null, '6', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('421', '━━材料━━', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('422', '黑玉宝石(初级)', '46', '3', '1', '1', '3', '0', '621', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '20000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('423', '黑玉宝石(中级)', '46', '3', '1', '1', '6', '0', '622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '40000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('424', '黑玉宝石(高级)', '46', '3', '1', '1', '9', '0', '624', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '60000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('425', '青玉宝石(初级)', '46', '3', '1', '2', '3', '0', '611', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '20000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('426', '青玉宝石(中级)', '46', '3', '1', '2', '6', '0', '612', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '40000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('427', '青玉宝石(高级)', '46', '3', '1', '2', '9', '0', '614', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '60000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('428', '火红宝石(初级)', '46', '3', '1', '3', '3', '0', '587', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '20000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('429', '火红宝石(中级)', '46', '3', '1', '3', '6', '0', '586', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '40000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('430', '火红宝石(高级)', '46', '3', '1', '3', '9', '0', '589', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '60000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('431', '白雾宝石(初级)', '46', '3', '1', '4', '3', '0', '577', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '20000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('432', '白雾宝石(中级)', '46', '3', '1', '4', '6', '0', '576', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '40000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('433', '白雾宝石(高级)', '46', '3', '1', '4', '9', '0', '579', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '60000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('434', '锐利宝石(初级)', '46', '3', '1', '5', '3', '0', '572', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '20000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('435', '锐利宝石(中级)', '46', '3', '1', '5', '6', '0', '571', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '40000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('436', '锐利宝石(高级)', '46', '3', '1', '5', '9', '0', '574', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '60000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('437', '黄沉宝石(初级)', '46', '3', '1', '6', '100', '0', '636', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '20000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('438', '黄沉宝石(中级)', '46', '3', '1', '6', '200', '0', '637', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '40000', null, '22', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('439', '黄沉宝石(高级)', '46', '3', '1', '6', '300', '0', '639', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '60000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('440', '暗青宝石(初级)', '46', '3', '1', '7', '100', '0', '631', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '20000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('441', '暗青宝石(中级)', '46', '3', '1', '7', '200', '0', '632', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '40000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('442', '暗青宝石(高级)', '46', '3', '1', '7', '300', '0', '634', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '18', '0', '60000', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('443', '强化玄晶(初级)', '46', '0', '1', '20', '0', '30', '10026', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '60', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('444', '强化玄晶(中级)', '46', '0', '1', '30', '0', '20', '10027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '11', '120', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('445', '强化玄晶(高级)', '46', '0', '1', '40', '0', '10', '10028', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '17', '180', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('446', '机率之珠(5%)', '46', '2', '1', '0', '0', '5', '10030', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('447', '机率之珠(10%)', '46', '2', '1', '0', '0', '10', '10032', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '200', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('448', '机率之珠(15%)', '46', '2', '1', '0', '0', '15', '10033', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '300', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('449', '等增加', '0', '0', '1', '0', '0', '0', '2762', '0', '5000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', null, '14', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('450', '等增加', '0', '0', '1', '0', '0', '0', '2763', '0', '10000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '200', null, '1990', '可以将背包中6个太阳水捆成(打捆太阳水)', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('451', '等增加', '0', '0', '1', '0', '0', '0', '1013', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5000', null, '14', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('452', '升级大礼包', '31', '0', '1', '32', '0', '0', '1030', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', null, '-285211671', '10级15级20级打开都有不同奖励', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('453', '超级祝福油', '31', '0', '1', '12', '0', '0', '1573', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', null, '30', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('454', '项链幸运石', '31', '0', '1', '13', '0', '0', '288', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '100', null, '14', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('455', '风雷召唤令', '31', '0', '1', '14', '0', '0', '1132', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '40', null, '14', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('456', '副本药箱(雷炎)', '31', '0', '1', '15', '0', '0', '1285', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '14', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('457', '副本药箱(雪域)', '31', '0', '1', '16', '0', '0', '1282', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '14', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('458', '打捆万年雪霜', '31', '120', '0', '0', '0', '0', '1008', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '14', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('459', '强效金创药(绑)', '31', '122', '20', '0', '0', '0', '313', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '-285212665', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('460', '强效魔法药(绑)', '31', '123', '20', '0', '0', '0', '314', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '-285212665', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('461', '金创药(绑)', '0', '0', '3', '0', '0', '37', '28', '0', '0', '1', '90', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '-285212665', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('462', '魔法药(绑)', '0', '0', '3', '0', '0', '38', '29', '0', '0', '1', '0', '0', '150', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '-285212665', null, '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('463', '太阳水捆药绳', '2', '0', '1', '33', '0', '0', '1006', '0', '2000', '20000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '1991', '可以将背包中6个太阳水捆成(打捆太阳水)', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('464', '雪霜捆药绳', '2', '0', '1', '34', '0', '0', '1006', '0', '2000', '20000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '1991', '可以将背包中6个万年雪霜捆成(打捆万年雪霜)', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('465', '疗伤药捆药绳', '2', '0', '1', '35', '0', '0', '1006', '0', '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', null, '1991', '可以将背包中6个疗伤药捆成(打捆疗伤药)', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('466', '太阳水(绑)', '0', '1', '2', '124', '0', '667', '312', '0', '0', '0', '50', '0', '80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1818', '-352321529', '新人药品已绑定', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('467', '强效太阳包(绑)', '31', '124', '15', '0', '0', '0', '1007', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20000', '-352321529', '新人药品已绑定', '2019-12-03 13:37:28', null);
INSERT INTO `stditems` VALUES ('468', '命运之书', '41', '0', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '7', null, '2019-12-03 13:37:28', null);

-- ----------------------------
-- Table structure for storageex
-- ----------------------------
DROP TABLE IF EXISTS `storageex`;
CREATE TABLE `storageex` (
  `StorageID` int(11) NOT NULL AUTO_INCREMENT,
  `HumanName` varchar(14) NOT NULL,
  PRIMARY KEY (`StorageID`),
  UNIQUE KEY `uk_HumanName` (`HumanName`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of storageex
-- ----------------------------

-- ----------------------------
-- Table structure for usershop
-- ----------------------------
DROP TABLE IF EXISTS `usershop`;
CREATE TABLE `usershop` (
  `ShopID` int(11) NOT NULL AUTO_INCREMENT,
  `HumanName` varchar(14) DEFAULT NULL,
  `ShopName` varchar(14) DEFAULT NULL,
  `IsBusiness` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `CareValue` int(11) DEFAULT '0',
  PRIMARY KEY (`ShopID`),
  UNIQUE KEY `uk_UserShop_HumanName` (`HumanName`) USING BTREE,
  KEY `idx_ShopName` (`ShopName`) USING BTREE,
  KEY `idx_IsBusiness` (`IsBusiness`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of usershop
-- ----------------------------

-- ----------------------------
-- Table structure for usershopitem
-- ----------------------------
DROP TABLE IF EXISTS `usershopitem`;
CREATE TABLE `usershopitem` (
  `ShopID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `ItemType` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `IsAllowSell` int(11) DEFAULT NULL,
  `MoneyType` int(11) DEFAULT NULL,
  `ItemPrice` int(11) DEFAULT NULL,
  `IsGetMoney` int(11) DEFAULT NULL,
  `BuyerName` varchar(14) DEFAULT NULL,
  `ItemDBName` varchar(30) DEFAULT NULL,
  `ItemName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ShopID`,`ItemID`),
  KEY `idx_ItemPrices` (`ItemPrice`) USING BTREE,
  KEY `idx_ItemName` (`ItemName`) USING BTREE,
  KEY `idx_ItemDBName` (`ItemDBName`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of usershopitem
-- ----------------------------
