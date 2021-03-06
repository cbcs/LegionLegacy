ALTER TABLE `taxi_nodes`   
  CHANGE `MountCreatureID` `MountCreatureID1` INT(10) UNSIGNED DEFAULT 0  NOT NULL,
  ADD COLUMN `MountCreatureID2` INT(10) UNSIGNED DEFAULT 0  NOT NULL AFTER `MountCreatureID1`,
  CHANGE `MapOffset` `MapOffset1` FLOAT DEFAULT 0  NOT NULL  AFTER `MountCreatureID2`,
  ADD COLUMN `MapOffset2` FLOAT DEFAULT 0  NOT NULL AFTER `MapOffset1`,
  CHANGE `MapID` `MapID` INT(10) UNSIGNED DEFAULT 0  NOT NULL  AFTER `MapOffset2`;

ALTER TABLE `taxi_path_node`   
  CHANGE `Delay` `Delay` INT(10) UNSIGNED DEFAULT 0  NOT NULL  AFTER `LocZ`,
  CHANGE `PathID` `PathID` INT(10) UNSIGNED DEFAULT 0  NOT NULL  AFTER `Delay`,
  CHANGE `MapID` `MapID` INT(10) UNSIGNED DEFAULT 0  NOT NULL  AFTER `PathID`,
  CHANGE `NodeIndex` `NodeIndex` INT(10) UNSIGNED DEFAULT 0  NOT NULL  AFTER `DepartureEventID`,
  CHANGE `Flags` `Flags` INT(10) UNSIGNED DEFAULT 0  NOT NULL  AFTER `NodeIndex`;

ALTER TABLE `item_upgrade`   
  CHANGE `currencyReqAmt` `currencyReqAmt` INT(10) UNSIGNED DEFAULT 0  NOT NULL  AFTER `id`,
  CHANGE `prevUpgradeId` `prevUpgradeId` INT(10) UNSIGNED DEFAULT 0  NOT NULL  AFTER `currencyReqAmt`,
  CHANGE `currencyReqId` `currencyReqId` INT(10) UNSIGNED DEFAULT 0  NOT NULL  AFTER `prevUpgradeId`;

  ALTER TABLE `item_upgrade`   
  CHANGE `prevUpgradeId` `prevUpgradeId` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `currencyReqId` `currencyReqId` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `itemUpgradePathId` `itemUpgradePathId` TINYINT(3) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `levelBonus` `levelBonus` TINYINT(3) UNSIGNED DEFAULT 0  NOT NULL;

ALTER TABLE `taxi_nodes`   
  CHANGE `MapID` `MapID` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `ConditionID` `ConditionID` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `LearnableIndex` `LearnableIndex` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `Flags` `Flags` TINYINT(3) UNSIGNED DEFAULT 0  NOT NULL;

ALTER TABLE `taxi_path`   
  CHANGE `From` `From` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `To` `To` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `Cost` `Cost` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL;

ALTER TABLE `taxi_path_node`   
  CHANGE `PathID` `PathID` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `MapID` `MapID` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `ArrivalEventID` `ArrivalEventID` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `DepartureEventID` `DepartureEventID` SMALLINT(6) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `NodeIndex` `NodeIndex` TINYINT(3) UNSIGNED DEFAULT 0  NOT NULL,
  CHANGE `Flags` `Flags` TINYINT(3) DEFAULT 0  NOT NULL;

ALTER TABLE `mount_capability`   
  DROP COLUMN `RequiredAura`, 
  CHANGE `RequiredSpell` `RequiredSpell` INT(10) UNSIGNED DEFAULT 0  NOT NULL  AFTER `ID`,
  CHANGE `Unknown7` `RequiredAura` TINYINT(3) UNSIGNED DEFAULT 0  NOT NULL;
