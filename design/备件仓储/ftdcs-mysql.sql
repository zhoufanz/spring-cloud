/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307
Source Server Version : 50620
Source Host           : localhost:3307
Source Database       : ftdcs

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2016-11-17 11:07:10
*/

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for companytransferorder
-- ----------------------------
DROP TABLE IF EXISTS `companytransferorder`;
CREATE TABLE `companytransferorder` (
  `Id`                   INT(11)        NOT NULL,
  `Code`                 VARCHAR(50)    NOT NULL,
  `PartsSalesCategoryId` INT(11)        NOT NULL,
  `OriginalCompanyId`    INT(11)        NOT NULL,
  `OriginalCompanyCode`  VARCHAR(50)    NOT NULL,
  `OriginalCompanyName`  VARCHAR(100)   NOT NULL,
  `DestCompanyId`        INT(11)        NOT NULL,
  `DestCompanyCode`      VARCHAR(50)    NOT NULL,
  `DestCompanyName`      VARCHAR(100)   NOT NULL,
  `OriginalWarehouseId`  INT(11)      DEFAULT NULL,
  `DestWarehouseId`      INT(11)      DEFAULT NULL,
  `TransferDirection`    INT(11)        NOT NULL,
  `TotalAmount`          DECIMAL(19, 4) NOT NULL,
  `ReceivingAddress`     VARCHAR(200) DEFAULT NULL,
  `Type`                 INT(11)        NOT NULL,
  `Status`               INT(11)        NOT NULL,
  `Remark`               VARCHAR(200) DEFAULT NULL,
  `CreatorId`            INT(11)      DEFAULT NULL,
  `CreatorName`          VARCHAR(100) DEFAULT NULL,
  `CreateTime`           DATETIME(6)  DEFAULT NULL,
  `ModifierId`           INT(11)      DEFAULT NULL,
  `ModifierName`         VARCHAR(100) DEFAULT NULL,
  `ModifyTime`           DATETIME(6)  DEFAULT NULL,
  `ApproverId`           INT(11)      DEFAULT NULL,
  `ApproverName`         VARCHAR(100) DEFAULT NULL,
  `ApproveTime`          DATETIME(6)  DEFAULT NULL,
  `AbandonerId`          INT(11)      DEFAULT NULL,
  `AbandonerName`        VARCHAR(100) DEFAULT NULL,
  `AbandonTime`          DATETIME(6)  DEFAULT NULL,
  `RowVersion`           DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of companytransferorder
-- ----------------------------

-- ----------------------------
-- Table structure for companytransferorderdetail
-- ----------------------------
DROP TABLE IF EXISTS `companytransferorderdetail`;
CREATE TABLE `companytransferorderdetail` (
  `Id`                   INT(11)        NOT NULL,
  `PartsTransferOrderId` INT(11)        NOT NULL,
  `PartsId`              INT(11)        NOT NULL,
  `PartsCode`            VARCHAR(50)    NOT NULL,
  `PartsName`            VARCHAR(100)   NOT NULL,
  `PlannedAmount`        INT(11)        NOT NULL,
  `ConfirmedAmount`      INT(11)      DEFAULT NULL,
  `Price`                DECIMAL(19, 4) NOT NULL,
  `Remark`               VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of companytransferorderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for dealerpartsinventorybill
-- ----------------------------
DROP TABLE IF EXISTS `dealerpartsinventorybill`;
CREATE TABLE `dealerpartsinventorybill` (
  `Id`                 INT(11)      NOT NULL,
  `Code`               VARCHAR(50)  NOT NULL,
  `BranchId`           INT(11)      NOT NULL,
  `StorageCompanyId`   INT(11)      NOT NULL,
  `StorageCompanyCode` VARCHAR(50)  NOT NULL,
  `StorageCompanyName` VARCHAR(100) NOT NULL,
  `WarehouseId`        INT(11)      DEFAULT NULL,
  `SalesCategoryId`    INT(11)      NOT NULL,
  `CancelReason`       VARCHAR(200) DEFAULT NULL,
  `Status`             INT(11)      NOT NULL,
  `Remark`             VARCHAR(200) DEFAULT NULL,
  `CreatorId`          INT(11)      DEFAULT NULL,
  `CreatorName`        VARCHAR(100) DEFAULT NULL,
  `CreateTime`         DATETIME(6)  DEFAULT NULL,
  `ApproverId`         INT(11)      DEFAULT NULL,
  `ApproveTime`        DATETIME(6)  DEFAULT NULL,
  `ApproverName`       VARCHAR(100) DEFAULT NULL,
  `AbandonerId`        INT(11)      DEFAULT NULL,
  `AbandonerName`      VARCHAR(100) DEFAULT NULL,
  `AbandonTime`        DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of dealerpartsinventorybill
-- ----------------------------

-- ----------------------------
-- Table structure for dealerpartsinventorydetail
-- ----------------------------
DROP TABLE IF EXISTS `dealerpartsinventorydetail`;
CREATE TABLE `dealerpartsinventorydetail` (
  `Id`                     INT(11)      NOT NULL,
  `DealerPartsInventoryId` INT(11)      NOT NULL,
  `SparePartId`            INT(11)      NOT NULL,
  `SparePartCode`          VARCHAR(50)  NOT NULL,
  `SparePartName`          VARCHAR(100) NOT NULL,
  `CurrentStorage`         INT(11)      NOT NULL,
  `StorageAfterInventory`  INT(11)      NOT NULL,
  `StorageDifference`      INT(11)      NOT NULL,
  `Memo`                   VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of dealerpartsinventorydetail
-- ----------------------------

-- ----------------------------
-- Table structure for dealerpartsstock
-- ----------------------------
DROP TABLE IF EXISTS `dealerpartsstock`;
CREATE TABLE `dealerpartsstock` (
  `Id`                INT(11)      NOT NULL,
  `DealerId`          INT(11)      NOT NULL,
  `DealerCode`        VARCHAR(50)  NOT NULL,
  `DealerName`        VARCHAR(100) NOT NULL,
  `SubDealerId`       INT(11)      DEFAULT NULL,
  `BranchId`          INT(11)      NOT NULL,
  `SalesCategoryId`   INT(11)      NOT NULL,
  `SalesCategoryName` VARCHAR(100) NOT NULL,
  `SparePartId`       INT(11)      NOT NULL,
  `SparePartCode`     VARCHAR(50)  NOT NULL,
  `Quantity`          INT(11)      NOT NULL,
  `CreatorId`         INT(11)      DEFAULT NULL,
  `CreatorName`       VARCHAR(100) DEFAULT NULL,
  `CreateTime`        DATETIME(6)  DEFAULT NULL,
  `ModifierId`        INT(11)      DEFAULT NULL,
  `ModifierName`      VARCHAR(100) DEFAULT NULL,
  `ModifyTime`        DATETIME(6)  DEFAULT NULL,
  `RowVersion`        DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of dealerpartsstock
-- ----------------------------

-- ----------------------------
-- Table structure for partsbatchrecord
-- ----------------------------
DROP TABLE IF EXISTS `partsbatchrecord`;
CREATE TABLE `partsbatchrecord` (
  `Id`                      INT(11)      NOT NULL,
  `PartId`                  INT(11)      NOT NULL,
  `Quantity`                INT(11)      NOT NULL,
  `BatchNumber`             VARCHAR(100) NOT NULL,
  `Status`                  INT(11)      NOT NULL,
  `OriginalBatchNumber`     VARCHAR(100) DEFAULT NULL,
  `CreatorId`               INT(11)      NOT NULL,
  `CreatorName`             VARCHAR(100) NOT NULL,
  `CreatorOwnerCompanyId`   INT(11)      NOT NULL,
  `CreatorOwnerCompanyCode` VARCHAR(50)  NOT NULL,
  `CreateTime`              DATETIME(6)  NOT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsbatchrecord
-- ----------------------------

-- ----------------------------
-- Table structure for partsinboundcheckbill
-- ----------------------------
DROP TABLE IF EXISTS `partsinboundcheckbill`;
CREATE TABLE `partsinboundcheckbill` (
  `Id`                          INT(11)      NOT NULL,
  `Code`                        VARCHAR(50)  NOT NULL,
  `PartsInboundPlanId`          INT(11)      NOT NULL,
  `WarehouseId`                 INT(11)      NOT NULL,
  `WarehouseCode`               VARCHAR(50)  NOT NULL,
  `WarehouseName`               VARCHAR(100) NOT NULL,
  `StorageCompanyId`            INT(11)      NOT NULL,
  `StorageCompanyCode`          VARCHAR(50)  NOT NULL,
  `StorageCompanyName`          VARCHAR(100) NOT NULL,
  `StorageCompanyType`          INT(11)      NOT NULL,
  `PartsSalesCategoryId`        INT(11)      NOT NULL,
  `BranchId`                    INT(11)      NOT NULL,
  `BranchCode`                  VARCHAR(50)  NOT NULL,
  `BranchName`                  VARCHAR(100) NOT NULL,
  `CounterpartCompanyId`        INT(11)      NOT NULL,
  `CounterpartCompanyCode`      VARCHAR(50)  NOT NULL,
  `CounterpartCompanyName`      VARCHAR(100) NOT NULL,
  `InboundType`                 INT(11)      NOT NULL,
  `CustomerAccountId`           INT(11)      DEFAULT NULL,
  `OriginalRequirementBillId`   INT(11)      NOT NULL,
  `OriginalRequirementBillType` INT(11)      NOT NULL,
  `OriginalRequirementBillCode` VARCHAR(50)  NOT NULL,
  `Objid`                       VARCHAR(25)  DEFAULT NULL,
  `Status`                      INT(11)      NOT NULL,
  `SettlementStatus`            INT(11)      NOT NULL,
  `Remark`                      VARCHAR(400) DEFAULT NULL,
  `CreatorId`                   INT(11)      DEFAULT NULL,
  `CreatorName`                 VARCHAR(100) DEFAULT NULL,
  `CreateTime`                  DATETIME(6)  DEFAULT NULL,
  `ModifierId`                  INT(11)      DEFAULT NULL,
  `ModifierName`                VARCHAR(100) DEFAULT NULL,
  `ModifyTime`                  DATETIME(6)  DEFAULT NULL,
  `RowVersion`                  DATETIME(6)  DEFAULT NULL,
  `GPMSPurOrderCode`            VARCHAR(50)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsinboundcheckbill
-- ----------------------------

-- ----------------------------
-- Table structure for partsinboundcheckbilldetail
-- ----------------------------
DROP TABLE IF EXISTS `partsinboundcheckbilldetail`;
CREATE TABLE `partsinboundcheckbilldetail` (
  `Id`                      INT(11)        NOT NULL,
  `PartsInboundCheckBillId` INT(11)        NOT NULL,
  `SparePartId`             INT(11)        NOT NULL,
  `SparePartCode`           VARCHAR(50)    NOT NULL,
  `SparePartName`           VARCHAR(100)   NOT NULL,
  `WarehouseAreaId`         INT(11)        NOT NULL,
  `WarehouseAreaCode`       VARCHAR(50)    NOT NULL,
  `InspectedQuantity`       INT(11)        NOT NULL,
  `SettlementPrice`         DECIMAL(19, 4) NOT NULL,
  `CostPrice`               DECIMAL(19, 4) NOT NULL,
  `SpareOrderRemark`        VARCHAR(200) DEFAULT NULL,
  `Remark`                  VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsinboundcheckbilldetail
-- ----------------------------

-- ----------------------------
-- Table structure for partsinboundpackingdetail
-- ----------------------------
DROP TABLE IF EXISTS `partsinboundpackingdetail`;
CREATE TABLE `partsinboundpackingdetail` (
  `Id`                      INT(11)      NOT NULL,
  `PartsInboundCheckBillId` INT(11)      NOT NULL,
  `SparePartId`             INT(11)      NOT NULL,
  `SparePartCode`           VARCHAR(50)  NOT NULL,
  `SparePartName`           VARCHAR(100) NOT NULL,
  `Quantity`                INT(11)      NOT NULL,
  `WarehouseAreaId`         INT(11)      NOT NULL,
  `WarehouseAreaCode`       VARCHAR(50)  NOT NULL,
  `BatchNumber`             VARCHAR(100) NOT NULL,
  `PackingSpecification`    VARCHAR(200) DEFAULT NULL,
  `PackingMaterialQuantity` INT(11)      DEFAULT NULL,
  `Remark`                  VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsinboundpackingdetail
-- ----------------------------

-- ----------------------------
-- Table structure for partsinboundplan
-- ----------------------------
DROP TABLE IF EXISTS `partsinboundplan`;
CREATE TABLE `partsinboundplan` (
  `Id`                          INT(11)      NOT NULL,
  `Code`                        VARCHAR(50)  NOT NULL,
  `WarehouseId`                 INT(11)      NOT NULL,
  `WarehouseCode`               VARCHAR(50)  NOT NULL,
  `WarehouseName`               VARCHAR(100) NOT NULL,
  `StorageCompanyId`            INT(11)      NOT NULL,
  `StorageCompanyCode`          VARCHAR(50)  NOT NULL,
  `StorageCompanyName`          VARCHAR(100) NOT NULL,
  `StorageCompanyType`          INT(11)      NOT NULL,
  `BranchId`                    INT(11)      NOT NULL,
  `BranchCode`                  VARCHAR(50)  NOT NULL,
  `BranchName`                  VARCHAR(100) NOT NULL,
  `PartsSalesCategoryId`        INT(11)      NOT NULL,
  `CounterpartCompanyId`        INT(11)      NOT NULL,
  `CounterpartCompanyCode`      VARCHAR(50)  NOT NULL,
  `CounterpartCompanyName`      VARCHAR(100) NOT NULL,
  `SourceId`                    INT(11)      NOT NULL,
  `SourceCode`                  VARCHAR(50)  NOT NULL,
  `InboundType`                 INT(11)      NOT NULL,
  `CustomerAccountId`           INT(11)      DEFAULT NULL,
  `OriginalRequirementBillId`   INT(11)      NOT NULL,
  `OriginalRequirementBillType` INT(11)      NOT NULL,
  `OriginalRequirementBillCode` VARCHAR(50)  NOT NULL,
  `Status`                      INT(11)      NOT NULL,
  `IfWmsInterface`              TINYINT(4)   NOT NULL,
  `ArrivalDate`                 DATETIME(6)  DEFAULT NULL,
  `Remark`                      VARCHAR(400) DEFAULT NULL,
  `CreatorId`                   INT(11)      DEFAULT NULL,
  `CreatorName`                 VARCHAR(100) DEFAULT NULL,
  `CreateTime`                  DATETIME(6)  DEFAULT NULL,
  `ModifierId`                  INT(11)      DEFAULT NULL,
  `ModifierName`                VARCHAR(100) DEFAULT NULL,
  `ModifyTime`                  DATETIME(6)  DEFAULT NULL,
  `RowVersion`                  DATETIME(6)  DEFAULT NULL,
  `GPMSPurOrderCode`            VARCHAR(50)  DEFAULT NULL,
  `PartsPurchaseOrderTypeId`    INT(11)      DEFAULT NULL,
  `RequestedDeliveryTime`       DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsinboundplan
-- ----------------------------

-- ----------------------------
-- Table structure for partsinboundplandetail
-- ----------------------------
DROP TABLE IF EXISTS `partsinboundplandetail`;
CREATE TABLE `partsinboundplandetail` (
  `Id`                 INT(11)        NOT NULL,
  `PartsInboundPlanId` INT(11)        NOT NULL,
  `SparePartId`        INT(11)        NOT NULL,
  `SparePartCode`      VARCHAR(50)    NOT NULL,
  `SparePartName`      VARCHAR(100)   NOT NULL,
  `PlannedAmount`      INT(11)        NOT NULL,
  `InspectedQuantity`  INT(11)      DEFAULT NULL,
  `Price`              DECIMAL(19, 4) NOT NULL,
  `SpareOrderRemark`   VARCHAR(200) DEFAULT NULL,
  `Remark`             VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsinboundplandetail
-- ----------------------------

-- ----------------------------
-- Table structure for partsinventorybill
-- ----------------------------
DROP TABLE IF EXISTS `partsinventorybill`;
CREATE TABLE `partsinventorybill` (
  `Id`                          INT(11)      NOT NULL,
  `Code`                        VARCHAR(50)  NOT NULL,
  `BranchId`                    INT(11)      NOT NULL,
  `WarehouseAreaCategory`       INT(11)      NOT NULL,
  `WarehouseId`                 INT(11)      NOT NULL,
  `WarehouseCode`               VARCHAR(50)  NOT NULL,
  `WarehouseName`               VARCHAR(100) NOT NULL,
  `StorageCompanyId`            INT(11)      NOT NULL,
  `StorageCompanyCode`          VARCHAR(50)  NOT NULL,
  `StorageCompanyName`          VARCHAR(100) NOT NULL,
  `StorageCompanyType`          INT(11)      NOT NULL,
  `InitiatorName`               VARCHAR(200)   DEFAULT NULL,
  `InventoryReason`             VARCHAR(200)   DEFAULT NULL,
  `AmountDifference`            DECIMAL(19, 4) DEFAULT NULL,
  `AccountingStatus`            INT(11)        DEFAULT NULL,
  `Status`                      INT(11)      NOT NULL,
  `Remark`                      VARCHAR(200)   DEFAULT NULL,
  `CreatorId`                   INT(11)        DEFAULT NULL,
  `CreatorName`                 VARCHAR(100)   DEFAULT NULL,
  `CreateTime`                  DATETIME(6)    DEFAULT NULL,
  `ModifierId`                  INT(11)        DEFAULT NULL,
  `ModifierName`                VARCHAR(100)   DEFAULT NULL,
  `ModifyTime`                  DATETIME(6)    DEFAULT NULL,
  `ApproverId`                  INT(11)        DEFAULT NULL,
  `ApproverName`                VARCHAR(100)   DEFAULT NULL,
  `ApproveTime`                 DATETIME(6)    DEFAULT NULL,
  `ResultInputOperatorId`       INT(11)        DEFAULT NULL,
  `ResultInputOperatorName`     VARCHAR(100)   DEFAULT NULL,
  `ResultInputTime`             DATETIME(6)    DEFAULT NULL,
  `InventoryRecordOperatorId`   INT(11)        DEFAULT NULL,
  `InventoryRecordOperatorName` VARCHAR(100)   DEFAULT NULL,
  `InventoryRecordTime`         DATETIME(6)    DEFAULT NULL,
  `AbandonerId`                 INT(11)        DEFAULT NULL,
  `AbandonerName`               VARCHAR(100)   DEFAULT NULL,
  `AbandonTime`                 DATETIME(6)    DEFAULT NULL,
  `RejectComment`               VARCHAR(200)   DEFAULT NULL,
  `RowVersion`                  DATETIME(6)    DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsinventorybill
-- ----------------------------

-- ----------------------------
-- Table structure for partsinventorydetail
-- ----------------------------
DROP TABLE IF EXISTS `partsinventorydetail`;
CREATE TABLE `partsinventorydetail` (
  `Id`                    INT(11)      NOT NULL,
  `PartsInventoryBillId`  INT(11)      NOT NULL,
  `SparePartId`           INT(11)      NOT NULL,
  `SparePartCode`         VARCHAR(50)  NOT NULL,
  `SparePartName`         VARCHAR(100) NOT NULL,
  `WarehouseAreaId`       INT(11)      NOT NULL,
  `WarehouseAreaCode`     VARCHAR(50)  NOT NULL,
  `CurrentBatchNumber`    VARCHAR(100)   DEFAULT NULL,
  `CurrentStorage`        INT(11)      NOT NULL,
  `StorageAfterInventory` INT(11)      NOT NULL,
  `Ifcover`               TINYINT(4)     DEFAULT NULL,
  `StorageDifference`     INT(11)      NOT NULL,
  `CostPrice`             DECIMAL(19, 4) DEFAULT NULL,
  `AmountDifference`      DECIMAL(19, 4) DEFAULT NULL,
  `NewBatchNumber`        VARCHAR(100)   DEFAULT NULL,
  `Remark`                VARCHAR(200)   DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsinventorydetail
-- ----------------------------

-- ----------------------------
-- Table structure for partslockedstock
-- ----------------------------
DROP TABLE IF EXISTS `partslockedstock`;
CREATE TABLE `partslockedstock` (
  `Id`               INT(11) NOT NULL,
  `WarehouseId`      INT(11) NOT NULL,
  `StorageCompanyId` INT(11) NOT NULL,
  `BranchId`         INT(11) NOT NULL,
  `PartId`           INT(11) NOT NULL,
  `LockedQuantity`   INT(11) NOT NULL,
  `CreatorId`        INT(11)      DEFAULT NULL,
  `CreatorName`      VARCHAR(100) DEFAULT NULL,
  `CreateTime`       DATETIME(6)  DEFAULT NULL,
  `ModifierId`       INT(11)      DEFAULT NULL,
  `ModifierName`     VARCHAR(100) DEFAULT NULL,
  `ModifyTime`       DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partslockedstock
-- ----------------------------

-- ----------------------------
-- Table structure for partslogisticbatch
-- ----------------------------
DROP TABLE IF EXISTS `partslogisticbatch`;
CREATE TABLE `partslogisticbatch` (
  `Id`             INT(11) NOT NULL,
  `CompanyId`      INT(11) NOT NULL,
  `Status`         INT(11) NOT NULL,
  `ShippingStatus` INT(11) NOT NULL,
  `SourceId`       INT(11) NOT NULL,
  `SourceType`     INT(11) NOT NULL,
  `CreatorId`      INT(11)      DEFAULT NULL,
  `CreatorName`    VARCHAR(100) DEFAULT NULL,
  `CreateTime`     DATETIME(6)  DEFAULT NULL,
  `RowVersion`     DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partslogisticbatch
-- ----------------------------

-- ----------------------------
-- Table structure for partslogisticbatchbilldetail
-- ----------------------------
DROP TABLE IF EXISTS `partslogisticbatchbilldetail`;
CREATE TABLE `partslogisticbatchbilldetail` (
  `Id`                   INT(11) NOT NULL,
  `PartsLogisticBatchId` INT(11) NOT NULL,
  `BillId`               INT(11) NOT NULL,
  `BillType`             INT(11) NOT NULL,
  `CreatorId`            INT(11)      DEFAULT NULL,
  `CreatorName`          VARCHAR(100) DEFAULT NULL,
  `CreateTime`           DATETIME(6)  DEFAULT NULL,
  `ModifierId`           INT(11)      DEFAULT NULL,
  `ModifierName`         VARCHAR(100) DEFAULT NULL,
  `ModifyTime`           DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partslogisticbatchbilldetail
-- ----------------------------

-- ----------------------------
-- Table structure for partslogisticbatchitemdetail
-- ----------------------------
DROP TABLE IF EXISTS `partslogisticbatchitemdetail`;
CREATE TABLE `partslogisticbatchitemdetail` (
  `Id`                   INT(11)      NOT NULL,
  `PartsLogisticBatchId` INT(11)      NOT NULL,
  `CounterpartCompanyId` INT(11)      NOT NULL,
  `ReceivingCompanyId`   INT(11)      NOT NULL,
  `ShippingCompanyId`    INT(11)      NOT NULL,
  `SparePartId`          INT(11)      NOT NULL,
  `SparePartCode`        VARCHAR(50)  NOT NULL,
  `SparePartName`        VARCHAR(100) NOT NULL,
  `BatchNumber`          VARCHAR(100) DEFAULT NULL,
  `OutboundAmount`       INT(11)      NOT NULL,
  `InboundAmount`        INT(11)      DEFAULT NULL,
  `OutReturnAmount`      INT(11)      NOT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partslogisticbatchitemdetail
-- ----------------------------

-- ----------------------------
-- Table structure for partsoutboundbill
-- ----------------------------
DROP TABLE IF EXISTS `partsoutboundbill`;
CREATE TABLE `partsoutboundbill` (
  `Id`                          INT(11)      NOT NULL,
  `Code`                        VARCHAR(50)  NOT NULL,
  `PartsOutboundPlanId`         INT(11)      NOT NULL,
  `WarehouseId`                 INT(11)      NOT NULL,
  `WarehouseCode`               VARCHAR(50)  NOT NULL,
  `WarehouseName`               VARCHAR(100) NOT NULL,
  `StorageCompanyId`            INT(11)      NOT NULL,
  `StorageCompanyCode`          VARCHAR(50)  NOT NULL,
  `StorageCompanyName`          VARCHAR(100) NOT NULL,
  `StorageCompanyType`          INT(11)      NOT NULL,
  `BranchId`                    INT(11)      NOT NULL,
  `BranchCode`                  VARCHAR(50)  NOT NULL,
  `BranchName`                  VARCHAR(100) NOT NULL,
  `PartsSalesCategoryId`        INT(11)      NOT NULL,
  `PartsSalesOrderTypeId`       INT(11)       DEFAULT NULL,
  `PartsSalesOrderTypeName`     VARCHAR(100)  DEFAULT NULL,
  `CounterpartCompanyId`        INT(11)      NOT NULL,
  `CounterpartCompanyCode`      VARCHAR(50)  NOT NULL,
  `CounterpartCompanyName`      VARCHAR(100) NOT NULL,
  `ReceivingCompanyId`          INT(11)      NOT NULL,
  `ReceivingCompanyCode`        VARCHAR(50)  NOT NULL,
  `ReceivingCompanyName`        VARCHAR(100) NOT NULL,
  `ReceivingWarehouseId`        INT(11)       DEFAULT NULL,
  `ReceivingWarehouseCode`      VARCHAR(50)   DEFAULT NULL,
  `ReceivingWarehouseName`      VARCHAR(100)  DEFAULT NULL,
  `OutboundType`                INT(11)      NOT NULL,
  `ShippingMethod`              INT(11)       DEFAULT NULL,
  `CustomerAccountId`           INT(11)       DEFAULT NULL,
  `OriginalRequirementBillId`   INT(11)      NOT NULL,
  `OriginalRequirementBillType` INT(11)      NOT NULL,
  `OriginalRequirementBillCode` VARCHAR(50)  NOT NULL,
  `SettlementStatus`            INT(11)      NOT NULL,
  `OrderApproveComment`         VARCHAR(2000) DEFAULT NULL,
  `InterfaceRecordId`           VARCHAR(25)   DEFAULT NULL,
  `Remark`                      VARCHAR(200)  DEFAULT NULL,
  `CreatorId`                   INT(11)       DEFAULT NULL,
  `CreatorName`                 VARCHAR(100)  DEFAULT NULL,
  `CreateTime`                  DATETIME(6)   DEFAULT NULL,
  `ModifierId`                  INT(11)       DEFAULT NULL,
  `ModifierName`                VARCHAR(100)  DEFAULT NULL,
  `ModifyTime`                  DATETIME(6)   DEFAULT NULL,
  `RowVersion`                  DATETIME(6)   DEFAULT NULL,
  `OutboundPackPlanCode`        VARCHAR(50)   DEFAULT NULL,
  `ContractCode`                VARCHAR(50)   DEFAULT NULL,
  `GPMSPurOrderCode`            VARCHAR(50)   DEFAULT NULL,
  `PrintTimes`                  INT(11)       DEFAULT '0',
  `PurDistributionStatus`       INT(11)       DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsoutboundbill
-- ----------------------------

-- ----------------------------
-- Table structure for partsoutboundbilldetail
-- ----------------------------
DROP TABLE IF EXISTS `partsoutboundbilldetail`;
CREATE TABLE `partsoutboundbilldetail` (
  `Id`                  INT(11)        NOT NULL,
  `PartsOutboundBillId` INT(11)        NOT NULL,
  `SparePartId`         INT(11)        NOT NULL,
  `SparePartCode`       VARCHAR(50)    NOT NULL,
  `SparePartName`       VARCHAR(100)   NOT NULL,
  `OutboundAmount`      INT(11)        NOT NULL,
  `WarehouseAreaId`     INT(11)      DEFAULT NULL,
  `WarehouseAreaCode`   VARCHAR(50)  DEFAULT NULL,
  `BatchNumber`         VARCHAR(100) DEFAULT NULL,
  `SettlementPrice`     DECIMAL(19, 4) NOT NULL,
  `CostPrice`           DECIMAL(19, 4) NOT NULL,
  `Remark`              VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsoutboundbilldetail
-- ----------------------------

-- ----------------------------
-- Table structure for partsoutboundplan
-- ----------------------------
DROP TABLE IF EXISTS `partsoutboundplan`;
CREATE TABLE `partsoutboundplan` (
  `Id`                          INT(11)      NOT NULL,
  `Code`                        VARCHAR(50)  NOT NULL,
  `WarehouseId`                 INT(11)      NOT NULL,
  `WarehouseCode`               VARCHAR(50)  NOT NULL,
  `WarehouseName`               VARCHAR(100) NOT NULL,
  `StorageCompanyId`            INT(11)      NOT NULL,
  `StorageCompanyCode`          VARCHAR(50)  NOT NULL,
  `StorageCompanyName`          VARCHAR(100) NOT NULL,
  `StorageCompanyType`          INT(11)      NOT NULL,
  `CompanyAddressId`            INT(11)       DEFAULT NULL,
  `BranchId`                    INT(11)      NOT NULL,
  `BranchCode`                  VARCHAR(50)  NOT NULL,
  `BranchName`                  VARCHAR(100) NOT NULL,
  `PartsSalesCategoryId`        INT(11)      NOT NULL,
  `PartsSalesOrderTypeId`       INT(11)       DEFAULT NULL,
  `PartsSalesOrderTypeName`     VARCHAR(100)  DEFAULT NULL,
  `CounterpartCompanyId`        INT(11)      NOT NULL,
  `CounterpartCompanyCode`      VARCHAR(50)  NOT NULL,
  `CounterpartCompanyName`      VARCHAR(100) NOT NULL,
  `ReceivingCompanyId`          INT(11)      NOT NULL,
  `ReceivingCompanyCode`        VARCHAR(50)  NOT NULL,
  `ReceivingCompanyName`        VARCHAR(100) NOT NULL,
  `ReceivingWarehouseId`        INT(11)       DEFAULT NULL,
  `ReceivingWarehouseCode`      VARCHAR(50)   DEFAULT NULL,
  `ReceivingWarehouseName`      VARCHAR(100)  DEFAULT NULL,
  `SourceId`                    INT(11)      NOT NULL,
  `SourceCode`                  VARCHAR(50)  NOT NULL,
  `OutboundType`                INT(11)      NOT NULL,
  `ShippingMethod`              INT(11)       DEFAULT NULL,
  `CustomerAccountId`           INT(11)       DEFAULT NULL,
  `OriginalRequirementBillId`   INT(11)      NOT NULL,
  `OriginalRequirementBillType` INT(11)      NOT NULL,
  `OriginalRequirementBillCode` VARCHAR(50)  NOT NULL,
  `Status`                      INT(11)      NOT NULL,
  `StopComment`                 VARCHAR(200)  DEFAULT NULL,
  `IfWmsInterface`              TINYINT(4)   NOT NULL,
  `OrderApproveComment`         VARCHAR(2000) DEFAULT NULL,
  `Remark`                      VARCHAR(500)  DEFAULT NULL,
  `CreatorId`                   INT(11)       DEFAULT NULL,
  `CreatorName`                 VARCHAR(100)  DEFAULT NULL,
  `CreateTime`                  DATETIME(6)   DEFAULT NULL,
  `ModifierId`                  INT(11)       DEFAULT NULL,
  `ModifierName`                VARCHAR(100)  DEFAULT NULL,
  `ModifyTime`                  DATETIME(6)   DEFAULT NULL,
  `StoperId`                    INT(11)       DEFAULT NULL,
  `Stoper`                      VARCHAR(100)  DEFAULT NULL,
  `StopTime`                    DATETIME(6)   DEFAULT NULL,
  `RowVersion`                  DATETIME(6)   DEFAULT NULL,
  `GPMSPurOrderCode`            VARCHAR(50)   DEFAULT NULL,
  `IsPurDistribution`           TINYINT(4)    DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsoutboundplan
-- ----------------------------

-- ----------------------------
-- Table structure for partsoutboundplandetail
-- ----------------------------
DROP TABLE IF EXISTS `partsoutboundplandetail`;
CREATE TABLE `partsoutboundplandetail` (
  `Id`                  INT(11)        NOT NULL,
  `PartsOutboundPlanId` INT(11)        NOT NULL,
  `SparePartId`         INT(11)        NOT NULL,
  `SparePartCode`       VARCHAR(50)    NOT NULL,
  `SparePartName`       VARCHAR(100)   NOT NULL,
  `PlannedAmount`       INT(11)        NOT NULL,
  `OutboundFulfillment` INT(11)      DEFAULT NULL,
  `Price`               DECIMAL(19, 4) NOT NULL,
  `Remark`              VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsoutboundplandetail
-- ----------------------------

-- ----------------------------
-- Table structure for partspacking
-- ----------------------------
DROP TABLE IF EXISTS `partspacking`;
CREATE TABLE `partspacking` (
  `Id`                      INT(11)      NOT NULL,
  `PartsStockId`            INT(11)      NOT NULL,
  `WarehouseId`             INT(11)      NOT NULL,
  `WarehouseCode`           VARCHAR(50)  NOT NULL,
  `WarehouseName`           VARCHAR(100) NOT NULL,
  `StorageCompanyId`        INT(11)      NOT NULL,
  `StorageCompanyType`      INT(11)      NOT NULL,
  `SparePartId`             INT(11)      NOT NULL,
  `SparePartCode`           VARCHAR(50)  NOT NULL,
  `SparePartName`           VARCHAR(100) NOT NULL,
  `Quantity`                INT(11)      NOT NULL,
  `WarehouseAreaId`         INT(11)      NOT NULL,
  `WarehouseAreaCode`       VARCHAR(50)  NOT NULL,
  `BatchNumber`             VARCHAR(100) NOT NULL,
  `PackingSpecification`    VARCHAR(200) DEFAULT NULL,
  `PackingMaterialQuantity` INT(11)      DEFAULT NULL,
  `Remark`                  VARCHAR(200) DEFAULT NULL,
  `CreatorId`               INT(11)      DEFAULT NULL,
  `CreatorName`             VARCHAR(100) DEFAULT NULL,
  `CreateTime`              DATETIME(6)  DEFAULT NULL,
  `ModifierId`              INT(11)      DEFAULT NULL,
  `ModifierName`            VARCHAR(100) DEFAULT NULL,
  `ModifyTime`              DATETIME(6)  DEFAULT NULL,
  `RowVersion`              DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partspacking
-- ----------------------------

-- ----------------------------
-- Table structure for partsshiftorder
-- ----------------------------
DROP TABLE IF EXISTS `partsshiftorder`;
CREATE TABLE `partsshiftorder` (
  `Id`                 INT(11)      NOT NULL,
  `Code`               VARCHAR(50)  NOT NULL,
  `BranchId`           INT(11)      NOT NULL,
  `WarehouseId`        INT(11)      NOT NULL,
  `WarehouseCode`      VARCHAR(50)  NOT NULL,
  `WarehouseName`      VARCHAR(100) NOT NULL,
  `StorageCompanyId`   INT(11)      NOT NULL,
  `StorageCompanyCode` VARCHAR(50)  NOT NULL,
  `StorageCompanyName` VARCHAR(100) NOT NULL,
  `StorageCompanyType` INT(11)      NOT NULL,
  `Status`             INT(11)      NOT NULL,
  `Type`               INT(11)      NOT NULL,
  `Remark`             VARCHAR(200) DEFAULT NULL,
  `CreatorId`          INT(11)      DEFAULT NULL,
  `CreatorName`        VARCHAR(100) DEFAULT NULL,
  `CreateTime`         DATETIME(6)  DEFAULT NULL,
  `RowVersion`         DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsshiftorder
-- ----------------------------

-- ----------------------------
-- Table structure for partsshiftorderdetail
-- ----------------------------
DROP TABLE IF EXISTS `partsshiftorderdetail`;
CREATE TABLE `partsshiftorderdetail` (
  `Id`                            INT(11)      NOT NULL,
  `PartsShiftOrderId`             INT(11)      NOT NULL,
  `SparePartId`                   INT(11)      NOT NULL,
  `SparePartCode`                 VARCHAR(50)  NOT NULL,
  `SparePartName`                 VARCHAR(100) NOT NULL,
  `OriginalWarehouseAreaId`       INT(11)      NOT NULL,
  `OriginalWarehouseAreaCode`     VARCHAR(50)  NOT NULL,
  `OriginalWarehouseAreaCategory` INT(11)      NOT NULL,
  `DestWarehouseAreaId`           INT(11)      NOT NULL,
  `DestWarehouseAreaCode`         VARCHAR(50)  NOT NULL,
  `DestWarehouseAreaCategory`     INT(11)      NOT NULL,
  `BatchNumber`                   VARCHAR(100) DEFAULT NULL,
  `Quantity`                      INT(11)      NOT NULL,
  `Remark`                        VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsshiftorderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for partsstock
-- ----------------------------
DROP TABLE IF EXISTS `partsstock`;
CREATE TABLE `partsstock` (
  `Id`                      INT(11) NOT NULL,
  `WarehouseId`             INT(11) NOT NULL,
  `StorageCompanyId`        INT(11) NOT NULL,
  `StorageCompanyType`      INT(11) NOT NULL,
  `BranchId`                INT(11) NOT NULL,
  `WarehouseAreaId`         INT(11) NOT NULL,
  `WarehouseAreaCategoryId` INT(11)      DEFAULT NULL,
  `PartId`                  INT(11) NOT NULL,
  `Quantity`                INT(11) NOT NULL,
  `Remark`                  VARCHAR(200) DEFAULT NULL,
  `CreatorId`               INT(11)      DEFAULT NULL,
  `CreatorName`             VARCHAR(100) DEFAULT NULL,
  `CreateTime`              DATETIME(6)  DEFAULT NULL,
  `ModifierId`              INT(11)      DEFAULT NULL,
  `ModifierName`            VARCHAR(100) DEFAULT NULL,
  `ModifyTime`              DATETIME(6)  DEFAULT NULL,
  `RowVersion`              DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsstock
-- ----------------------------

-- ----------------------------
-- Table structure for partsstockbatchdetail
-- ----------------------------
DROP TABLE IF EXISTS `partsstockbatchdetail`;
CREATE TABLE `partsstockbatchdetail` (
  `Id`                 INT(11)      NOT NULL,
  `PartsStockId`       INT(11)      NOT NULL,
  `WarehouseId`        INT(11)      NOT NULL,
  `StorageCompanyId`   INT(11)      NOT NULL,
  `StorageCompanyType` INT(11)      NOT NULL,
  `PartId`             INT(11)      NOT NULL,
  `BatchNumber`        VARCHAR(100) NOT NULL,
  `Quantity`           INT(11)      NOT NULL,
  `InboundTime`        DATETIME(6)  NOT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partsstockbatchdetail
-- ----------------------------

-- ----------------------------
-- Table structure for partstransferorder
-- ----------------------------
DROP TABLE IF EXISTS `partstransferorder`;
CREATE TABLE `partstransferorder` (
  `Id`                    INT(11)        NOT NULL,
  `Code`                  VARCHAR(50)    NOT NULL,
  `OriginalWarehouseId`   INT(11)        NOT NULL,
  `OriginalWarehouseCode` VARCHAR(50)    NOT NULL,
  `OriginalWarehouseName` VARCHAR(100)   NOT NULL,
  `StorageCompanyId`      INT(11)        NOT NULL,
  `StorageCompanyType`    INT(11)        NOT NULL,
  `OriginalBillId`        INT(11)        DEFAULT NULL,
  `OriginalBillCode`      VARCHAR(50)    DEFAULT NULL,
  `DestWarehouseId`       INT(11)        NOT NULL,
  `DestWarehouseCode`     VARCHAR(50)    NOT NULL,
  `DestWarehouseName`     VARCHAR(100)   NOT NULL,
  `TotalAmount`           DECIMAL(19, 4) NOT NULL,
  `TotalPlanAmount`       DECIMAL(19, 4) DEFAULT NULL,
  `Status`                INT(11)        NOT NULL,
  `Type`                  INT(11)        NOT NULL,
  `AbandonComment`        VARCHAR(200)   DEFAULT NULL,
  `ShippingMethod`        INT(11)        DEFAULT NULL,
  `ReceivingAddress`      VARCHAR(200)   DEFAULT NULL,
  `Remark`                VARCHAR(200)   DEFAULT NULL,
  `CreatorId`             INT(11)        DEFAULT NULL,
  `CreatorName`           VARCHAR(100)   DEFAULT NULL,
  `CreateTime`            DATETIME(6)    DEFAULT NULL,
  `ModifierId`            INT(11)        DEFAULT NULL,
  `ModifierName`          VARCHAR(100)   DEFAULT NULL,
  `ModifyTime`            DATETIME(6)    DEFAULT NULL,
  `ApproverId`            INT(11)        DEFAULT NULL,
  `ApproverName`          VARCHAR(100)   DEFAULT NULL,
  `ApproveTime`           DATETIME(6)    DEFAULT NULL,
  `AbandonerId`           INT(11)        DEFAULT NULL,
  `AbandonerName`         VARCHAR(100)   DEFAULT NULL,
  `AbandonTime`           DATETIME(6)    DEFAULT NULL,
  `RowVersion`            DATETIME(6)    DEFAULT NULL,
  `GPMSPurOrderCode`      VARCHAR(50)    DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partstransferorder
-- ----------------------------

-- ----------------------------
-- Table structure for partstransferorderdetail
-- ----------------------------
DROP TABLE IF EXISTS `partstransferorderdetail`;
CREATE TABLE `partstransferorderdetail` (
  `Id`                   INT(11)        NOT NULL,
  `PartsTransferOrderId` INT(11)        NOT NULL,
  `SparePartId`          INT(11)        NOT NULL,
  `SparePartCode`        VARCHAR(50)    NOT NULL,
  `SparePartName`        VARCHAR(100)   NOT NULL,
  `PlannedAmount`        INT(11)        NOT NULL,
  `ConfirmedAmount`      INT(11)        DEFAULT NULL,
  `Price`                DECIMAL(19, 4) NOT NULL,
  `PlannPrice`           DECIMAL(19, 4) DEFAULT NULL,
  `Remark`               VARCHAR(200)   DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of partstransferorderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for vehiclepartsstocklevel
-- ----------------------------
DROP TABLE IF EXISTS `vehiclepartsstocklevel`;
CREATE TABLE `vehiclepartsstocklevel` (
  `Id`            INT(11)      NOT NULL,
  `BrandId`       INT(11)      NOT NULL,
  `BrandCode`     VARCHAR(50)  NOT NULL,
  `BrandName`     VARCHAR(100) NOT NULL,
  `WarehouseId`   INT(11)      NOT NULL,
  `WarehouseCode` VARCHAR(50)  NOT NULL,
  `WarehouseName` VARCHAR(100) NOT NULL,
  `PartId`        INT(11)      NOT NULL,
  `PartCode`      VARCHAR(50)  NOT NULL,
  `PartName`      VARCHAR(100) NOT NULL,
  `StockMaximum`  INT(11)      DEFAULT NULL,
  `StockMinimum`  INT(11)      DEFAULT NULL,
  `SafeStock`     INT(11)      DEFAULT NULL,
  `Status`        INT(11)      DEFAULT NULL,
  `CreatorId`     INT(11)      DEFAULT NULL,
  `CreatorName`   VARCHAR(100) DEFAULT NULL,
  `CreateTime`    DATETIME(6)  DEFAULT NULL,
  `ModifierId`    INT(11)      DEFAULT NULL,
  `ModifierName`  VARCHAR(100) DEFAULT NULL,
  `ModifyTime`    DATETIME(6)  DEFAULT NULL,
  `AbandonerId`   INT(11)      DEFAULT NULL,
  `AbandonerName` VARCHAR(100) DEFAULT NULL,
  `AbandonTime`   DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of vehiclepartsstocklevel
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse
-- ----------------------------
DROP TABLE IF EXISTS `warehouse`;
CREATE TABLE `warehouse` (
  `Id`                    INT(11)      NOT NULL,
  `Code`                  VARCHAR(50)  NOT NULL,
  `Name`                  VARCHAR(100) NOT NULL,
  `Type`                  INT(11)      NOT NULL,
  `Status`                INT(11)      NOT NULL,
  `Address`               VARCHAR(200) DEFAULT NULL,
  `RegionId`              INT(11)      DEFAULT NULL,
  `PhoneNumber`           VARCHAR(50)  DEFAULT NULL,
  `Contact`               VARCHAR(50)  DEFAULT NULL,
  `Fax`                   VARCHAR(50)  DEFAULT NULL,
  `Email`                 VARCHAR(50)  DEFAULT NULL,
  `StorageStrategy`       INT(11)      NOT NULL,
  `Remark`                VARCHAR(200) DEFAULT NULL,
  `Picture`               VARCHAR(200) DEFAULT NULL,
  `BranchId`              INT(11)      NOT NULL,
  `StorageCompanyId`      INT(11)      NOT NULL,
  `StorageCompanyType`    INT(11)      NOT NULL,
  `StorageCenter`         INT(11)      DEFAULT NULL,
  `WmsInterface`          TINYINT(4)   NOT NULL,
  `CreatorId`             INT(11)      DEFAULT NULL,
  `CreatorName`           VARCHAR(100) DEFAULT NULL,
  `CreateTime`            DATETIME(6)  DEFAULT NULL,
  `ModifierId`            INT(11)      DEFAULT NULL,
  `ModifierName`          VARCHAR(100) DEFAULT NULL,
  `ModifyTime`            DATETIME(6)  DEFAULT NULL,
  `IsCentralizedPurchase` TINYINT(4)   DEFAULT NULL,
  `RowVersion`            DATETIME(6)  DEFAULT NULL,
  `IsQualityWarehouse`    TINYINT(4)   DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of warehouse
-- ----------------------------

-- ----------------------------
-- Table structure for warehousearea
-- ----------------------------
DROP TABLE IF EXISTS `warehousearea`;
CREATE TABLE `warehousearea` (
  `Id`                      INT(11)     NOT NULL,
  `WarehouseId`             INT(11)     NOT NULL,
  `ParentId`                INT(11)      DEFAULT NULL,
  `Code`                    VARCHAR(50) NOT NULL,
  `TopLevelWarehouseAreaId` INT(11)      DEFAULT NULL,
  `AreaCategoryId`          INT(11)      DEFAULT NULL,
  `Status`                  INT(11)     NOT NULL,
  `Remark`                  VARCHAR(200) DEFAULT NULL,
  `AreaKind`                INT(11)     NOT NULL,
  `CreatorId`               INT(11)      DEFAULT NULL,
  `CreatorName`             VARCHAR(100) DEFAULT NULL,
  `CreateTime`              DATETIME(6)  DEFAULT NULL,
  `ModifierId`              INT(11)      DEFAULT NULL,
  `ModifierName`            VARCHAR(100) DEFAULT NULL,
  `ModifyTime`              DATETIME(6)  DEFAULT NULL,
  `RowVersion`              DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of warehousearea
-- ----------------------------

-- ----------------------------
-- Table structure for warehouseareacategory
-- ----------------------------
DROP TABLE IF EXISTS `warehouseareacategory`;
CREATE TABLE `warehouseareacategory` (
  `Id`       INT(11) NOT NULL,
  `Category` INT(11) NOT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of warehouseareacategory
-- ----------------------------

-- ----------------------------
-- Table structure for warehouseareahistory
-- ----------------------------
DROP TABLE IF EXISTS `warehouseareahistory`;
CREATE TABLE `warehouseareahistory` (
  `Id`                          INT(11) NOT NULL,
  `WarehouseId`                 INT(11) NOT NULL,
  `StorageCompanyId`            INT(11) NOT NULL,
  `StorageCompanyType`          INT(11) NOT NULL,
  `BranchId`                    INT(11) NOT NULL,
  `DestWarehouseAreaId`         INT(11)      DEFAULT NULL,
  `DestWarehouseAreaCategoryId` INT(11)      DEFAULT NULL,
  `WarehouseAreaId`             INT(11) NOT NULL,
  `WarehouseAreaCategoryId`     INT(11)      DEFAULT NULL,
  `PartId`                      INT(11) NOT NULL,
  `Quantity`                    INT(11) NOT NULL,
  `CreatorId`                   INT(11)      DEFAULT NULL,
  `CreatorName`                 VARCHAR(100) DEFAULT NULL,
  `CreateTime`                  DATETIME(6)  DEFAULT NULL,
  `ModifierId`                  INT(11)      DEFAULT NULL,
  `ModifierName`                VARCHAR(100) DEFAULT NULL,
  `ModifyTime`                  DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of warehouseareahistory
-- ----------------------------

-- ----------------------------
-- Table structure for warehouseareamanager
-- ----------------------------
DROP TABLE IF EXISTS `warehouseareamanager`;
CREATE TABLE `warehouseareamanager` (
  `Id`              INT(11) NOT NULL,
  `WarehouseAreaId` INT(11) NOT NULL,
  `ManagerId`       INT(11) NOT NULL,
  `CreatorId`       INT(11)      DEFAULT NULL,
  `CreatorName`     VARCHAR(100) DEFAULT NULL,
  `CreateTime`      DATETIME(6)  DEFAULT NULL,
  `ModifierId`      INT(11)      DEFAULT NULL,
  `ModifierName`    VARCHAR(100) DEFAULT NULL,
  `ModifyTime`      DATETIME(6)  DEFAULT NULL,
  `RowVersion`      DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of warehouseareamanager
-- ----------------------------

-- ----------------------------
-- Table structure for warehouseoperator
-- ----------------------------
DROP TABLE IF EXISTS `warehouseoperator`;
CREATE TABLE `warehouseoperator` (
  `Id`           INT(11) NOT NULL,
  `WarehouseId`  INT(11) NOT NULL,
  `OperatorId`   INT(11) NOT NULL,
  `CreatorId`    INT(11)      DEFAULT NULL,
  `CreatorName`  VARCHAR(100) DEFAULT NULL,
  `CreateTime`   DATETIME(6)  DEFAULT NULL,
  `ModifierId`   INT(11)      DEFAULT NULL,
  `ModifierName` VARCHAR(100) DEFAULT NULL,
  `ModifyTime`   DATETIME(6)  DEFAULT NULL,
  `RowVersion`   DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of warehouseoperator
-- ----------------------------

-- ----------------------------
-- Table structure for wmscongelationstock
-- ----------------------------
DROP TABLE IF EXISTS `wmscongelationstock`;
CREATE TABLE `wmscongelationstock` (
  `Id`                     INT(11)      NOT NULL,
  `BranchId`               INT(11)      NOT NULL,
  `BranchCode`             VARCHAR(50)  NOT NULL,
  `BranchName`             VARCHAR(100) NOT NULL,
  `StorageCenter`          INT(11)      NOT NULL,
  `PartsSalesCategoryId`   INT(11)      NOT NULL,
  `PartsSalesCategoryCode` VARCHAR(50)  NOT NULL,
  `PartsSalesCategoryName` VARCHAR(100) NOT NULL,
  `SparePartId`            INT(11)      NOT NULL,
  `SparePartCode`          VARCHAR(50)  NOT NULL,
  `SparePartName`          VARCHAR(100) NOT NULL,
  `CongelationStockQty`    INT(11)      NOT NULL,
  `DisabledStock`          INT(11)      NOT NULL,
  `CreatorId`              INT(11)      DEFAULT NULL,
  `CreatorName`            VARCHAR(100) DEFAULT NULL,
  `CreateTime`             DATETIME(6)  DEFAULT NULL,
  `ModifierId`             INT(11)      DEFAULT NULL,
  `ModifierName`           VARCHAR(100) DEFAULT NULL,
  `ModifyTime`             DATETIME(6)  DEFAULT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of wmscongelationstock
-- ----------------------------

-- ----------------------------
-- Table structure for wmscongelationstocksync
-- ----------------------------
DROP TABLE IF EXISTS `wmscongelationstocksync`;
CREATE TABLE `wmscongelationstocksync` (
  `Id`                     INT(11)      NOT NULL,
  `BranchName`             VARCHAR(100) NOT NULL,
  `StorageCenter`          VARCHAR(50)  NOT NULL,
  `PartsSalesCategoryName` VARCHAR(100) NOT NULL,
  `SparePartCode`          VARCHAR(50)  NOT NULL,
  `SparePartName`          VARCHAR(100) NOT NULL,
  `Direction`              VARCHAR(50)  NOT NULL,
  `CongelationStockQty`    INT(11)      NOT NULL,
  `DisabledStock`          INT(11)      NOT NULL,
  PRIMARY KEY (`Id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

-- ----------------------------
-- Records of wmscongelationstocksync
-- ----------------------------
