package com.sunlight.spareparts.domain.po;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by Administrator on 2016/12/26.
 */
@Entity
@Table(name = "spare_part")
public class SparePartEntity {
    private int id;
    private String code;
    private String name;
    private String lastSubstitute;
    private String nextSubstitute;
    private Integer shelflife;
    private String englishName;
    private String pinyinCode;
    private String referenceCode;
    private String referenceName;
    private String cadCode;
    private String cadName;
    private int partType;
    private String specification;
    private String feature;
    private int status;
    private BigDecimal length;
    private BigDecimal width;
    private BigDecimal height;
    private BigDecimal volume;
    private BigDecimal weight;
    private String material;
    private Integer packingAmount;
    private String packingSpecification;
    private String partsOutPackingCode;
    private String partsInPackingCode;
    private String measureUnit;
    private Integer creatorId;
    private String creatorName;
    private Date createTime;
    private Integer modifierId;
    private String modifierName;
    private Date modifyTime;
    private Integer abandonerId;
    private String abandonerName;
    private Date abandonTime;
    private Date rowVersion;
    private Integer minPackingAmount;
    private Integer groupAbcCategory;
    private String imsCompressionNumber;
    private String imsManufacturerNumber;
    private String productBrand;
    private String substandardName;
    private String totalNumber;
    private String factury;
    private Integer isOriginal;
    private String categoryCode;
    private String overseaSpartsFigure;
    private String categoryName;
    private String expandlanguageName1;
    private String expandlanguageCode1;
    private String expandlanguageCode13;
    private String expandlanguageName13;
    private String expandlanguageCode12;
    private String expandlanguageName12;
    private String expandlanguageCode11;
    private String expandlanguageName11;
    private String expandlanguageCode10;
    private String expandlanguageName10;
    private String expandlanguageCode9;
    private String expandlanguageName9;
    private String expandlanguageCode8;
    private String expandlanguageName8;
    private String expandlanguageCode7;
    private String expandlanguageName7;
    private String expandlanguageCode6;
    private String expandlanguageName6;
    private String expandlanguageCode5;
    private String expandlanguageName5;
    private String expandlanguageCode4;
    private String expandlanguageName4;
    private String expandlanguageCode3;
    private String expandlanguageName3;
    private String expandlanguageCode2;
    private String expandlanguageName2;
    private String exchangeIdentification;
    private Integer goldenTaxClassifyid;
    private String goldenTaxClassifyCode;
    private String goldenTaxClassifyName;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "CODE")
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Basic
    @Column(name = "NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "LAST_SUBSTITUTE")
    public String getLastSubstitute() {
        return lastSubstitute;
    }

    public void setLastSubstitute(String lastSubstitute) {
        this.lastSubstitute = lastSubstitute;
    }

    @Basic
    @Column(name = "NEXT_SUBSTITUTE")
    public String getNextSubstitute() {
        return nextSubstitute;
    }

    public void setNextSubstitute(String nextSubstitute) {
        this.nextSubstitute = nextSubstitute;
    }

    @Basic
    @Column(name = "SHELFLIFE")
    public Integer getShelflife() {
        return shelflife;
    }

    public void setShelflife(Integer shelflife) {
        this.shelflife = shelflife;
    }

    @Basic
    @Column(name = "ENGLISH_NAME")
    public String getEnglishName() {
        return englishName;
    }

    public void setEnglishName(String englishName) {
        this.englishName = englishName;
    }

    @Basic
    @Column(name = "PINYIN_CODE")
    public String getPinyinCode() {
        return pinyinCode;
    }

    public void setPinyinCode(String pinyinCode) {
        this.pinyinCode = pinyinCode;
    }

    @Basic
    @Column(name = "REFERENCE_CODE")
    public String getReferenceCode() {
        return referenceCode;
    }

    public void setReferenceCode(String referenceCode) {
        this.referenceCode = referenceCode;
    }

    @Basic
    @Column(name = "REFERENCE_NAME")
    public String getReferenceName() {
        return referenceName;
    }

    public void setReferenceName(String referenceName) {
        this.referenceName = referenceName;
    }

    @Basic
    @Column(name = "CAD_CODE")
    public String getCadCode() {
        return cadCode;
    }

    public void setCadCode(String cadCode) {
        this.cadCode = cadCode;
    }

    @Basic
    @Column(name = "CAD_NAME")
    public String getCadName() {
        return cadName;
    }

    public void setCadName(String cadName) {
        this.cadName = cadName;
    }

    @Basic
    @Column(name = "PART_TYPE")
    public int getPartType() {
        return partType;
    }

    public void setPartType(int partType) {
        this.partType = partType;
    }

    @Basic
    @Column(name = "SPECIFICATION")
    public String getSpecification() {
        return specification;
    }

    public void setSpecification(String specification) {
        this.specification = specification;
    }

    @Basic
    @Column(name = "FEATURE")
    public String getFeature() {
        return feature;
    }

    public void setFeature(String feature) {
        this.feature = feature;
    }

    @Basic
    @Column(name = "STATUS")
    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Basic
    @Column(name = "LENGTH")
    public BigDecimal getLength() {
        return length;
    }

    public void setLength(BigDecimal length) {
        this.length = length;
    }

    @Basic
    @Column(name = "WIDTH")
    public BigDecimal getWidth() {
        return width;
    }

    public void setWidth(BigDecimal width) {
        this.width = width;
    }

    @Basic
    @Column(name = "HEIGHT")
    public BigDecimal getHeight() {
        return height;
    }

    public void setHeight(BigDecimal height) {
        this.height = height;
    }

    @Basic
    @Column(name = "VOLUME")
    public BigDecimal getVolume() {
        return volume;
    }

    public void setVolume(BigDecimal volume) {
        this.volume = volume;
    }

    @Basic
    @Column(name = "WEIGHT")
    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    @Basic
    @Column(name = "MATERIAL")
    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    @Basic
    @Column(name = "PACKING_AMOUNT")
    public Integer getPackingAmount() {
        return packingAmount;
    }

    public void setPackingAmount(Integer packingAmount) {
        this.packingAmount = packingAmount;
    }

    @Basic
    @Column(name = "PACKING_SPECIFICATION")
    public String getPackingSpecification() {
        return packingSpecification;
    }

    public void setPackingSpecification(String packingSpecification) {
        this.packingSpecification = packingSpecification;
    }

    @Basic
    @Column(name = "PARTS_OUT_PACKING_CODE")
    public String getPartsOutPackingCode() {
        return partsOutPackingCode;
    }

    public void setPartsOutPackingCode(String partsOutPackingCode) {
        this.partsOutPackingCode = partsOutPackingCode;
    }

    @Basic
    @Column(name = "PARTS_IN_PACKING_CODE")
    public String getPartsInPackingCode() {
        return partsInPackingCode;
    }

    public void setPartsInPackingCode(String partsInPackingCode) {
        this.partsInPackingCode = partsInPackingCode;
    }

    @Basic
    @Column(name = "MEASURE_UNIT")
    public String getMeasureUnit() {
        return measureUnit;
    }

    public void setMeasureUnit(String measureUnit) {
        this.measureUnit = measureUnit;
    }

    @Basic
    @Column(name = "CREATOR_ID")
    public Integer getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(Integer creatorId) {
        this.creatorId = creatorId;
    }

    @Basic
    @Column(name = "CREATOR_NAME")
    public String getCreatorName() {
        return creatorName;
    }

    public void setCreatorName(String creatorName) {
        this.creatorName = creatorName;
    }

    @Basic
    @Column(name = "CREATE_TIME")
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Basic
    @Column(name = "MODIFIER_ID")
    public Integer getModifierId() {
        return modifierId;
    }

    public void setModifierId(Integer modifierId) {
        this.modifierId = modifierId;
    }

    @Basic
    @Column(name = "MODIFIER_NAME")
    public String getModifierName() {
        return modifierName;
    }

    public void setModifierName(String modifierName) {
        this.modifierName = modifierName;
    }

    @Basic
    @Column(name = "MODIFY_TIME")
    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    @Basic
    @Column(name = "ABANDONERID")
    public Integer getAbandonerId() {
        return abandonerId;
    }

    public void setAbandonerId(Integer abandonerId) {
        this.abandonerId = abandonerId;
    }

    @Basic
    @Column(name = "ABANDONER_NAME")
    public String getAbandonerName() {
        return abandonerName;
    }

    public void setAbandonerName(String abandonerName) {
        this.abandonerName = abandonerName;
    }

    @Basic
    @Column(name = "ABANDON_TIME")
    public Date getAbandonTime() {
        return abandonTime;
    }

    public void setAbandonTime(Date abandonTime) {
        this.abandonTime = abandonTime;
    }

    @Basic
    @Column(name = "ROW_VERSION")
    public Date getRowVersion() {
        return rowVersion;
    }

    public void setRowVersion(Date rowVersion) {
        this.rowVersion = rowVersion;
    }

    @Basic
    @Column(name = "MIN_PACKING_AMOUNT")
    public Integer getMinPackingAmount() {
        return minPackingAmount;
    }

    public void setMinPackingAmount(Integer minPackingAmount) {
        this.minPackingAmount = minPackingAmount;
    }

    @Basic
    @Column(name = "GROUP_ABC_CATEGORY")
    public Integer getGroupAbcCategory() {
        return groupAbcCategory;
    }

    public void setGroupAbcCategory(Integer groupAbcCategory) {
        this.groupAbcCategory = groupAbcCategory;
    }

    @Basic
    @Column(name = "IMS_COMPRESSION_NUMBER")
    public String getImsCompressionNumber() {
        return imsCompressionNumber;
    }

    public void setImsCompressionNumber(String imsCompressionNumber) {
        this.imsCompressionNumber = imsCompressionNumber;
    }

    @Basic
    @Column(name = "IMS_MANUFACTURER_NUMBER")
    public String getImsManufacturerNumber() {
        return imsManufacturerNumber;
    }

    public void setImsManufacturerNumber(String imsManufacturerNumber) {
        this.imsManufacturerNumber = imsManufacturerNumber;
    }

    @Basic
    @Column(name = "PRODUCT_BRAND")
    public String getProductBrand() {
        return productBrand;
    }

    public void setProductBrand(String productBrand) {
        this.productBrand = productBrand;
    }

    @Basic
    @Column(name = "SUBSTANDARD_NAME")
    public String getSubstandardName() {
        return substandardName;
    }

    public void setSubstandardName(String substandardName) {
        this.substandardName = substandardName;
    }

    @Basic
    @Column(name = "TOTAL_NUMBER")
    public String getTotalNumber() {
        return totalNumber;
    }

    public void setTotalNumber(String totalNumber) {
        this.totalNumber = totalNumber;
    }

    @Basic
    @Column(name = "FACTURY")
    public String getFactury() {
        return factury;
    }

    public void setFactury(String factury) {
        this.factury = factury;
    }

    @Basic
    @Column(name = "IS_ORIGINAL")
    public Integer getIsOriginal() {
        return isOriginal;
    }

    public void setIsOriginal(Integer isOriginal) {
        this.isOriginal = isOriginal;
    }

    @Basic
    @Column(name = "CATEGORY_CODE")
    public String getCategoryCode() {
        return categoryCode;
    }

    public void setCategoryCode(String categoryCode) {
        this.categoryCode = categoryCode;
    }

    @Basic
    @Column(name = "OVERSEA_SPARTS_FIGURE")
    public String getOverseaSpartsFigure() {
        return overseaSpartsFigure;
    }

    public void setOverseaSpartsFigure(String overseaSpartsFigure) {
        this.overseaSpartsFigure = overseaSpartsFigure;
    }

    @Basic
    @Column(name = "CATEGORY_NAME")
    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME1")
    public String getExpandlanguageName1() {
        return expandlanguageName1;
    }

    public void setExpandlanguageName1(String expandlanguageName1) {
        this.expandlanguageName1 = expandlanguageName1;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE1")
    public String getExpandlanguageCode1() {
        return expandlanguageCode1;
    }

    public void setExpandlanguageCode1(String expandlanguageCode1) {
        this.expandlanguageCode1 = expandlanguageCode1;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE13")
    public String getExpandlanguageCode13() {
        return expandlanguageCode13;
    }

    public void setExpandlanguageCode13(String expandlanguageCode13) {
        this.expandlanguageCode13 = expandlanguageCode13;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME13")
    public String getExpandlanguageName13() {
        return expandlanguageName13;
    }

    public void setExpandlanguageName13(String expandlanguageName13) {
        this.expandlanguageName13 = expandlanguageName13;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE12")
    public String getExpandlanguageCode12() {
        return expandlanguageCode12;
    }

    public void setExpandlanguageCode12(String expandlanguageCode12) {
        this.expandlanguageCode12 = expandlanguageCode12;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME12")
    public String getExpandlanguageName12() {
        return expandlanguageName12;
    }

    public void setExpandlanguageName12(String expandlanguageName12) {
        this.expandlanguageName12 = expandlanguageName12;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE11")
    public String getExpandlanguageCode11() {
        return expandlanguageCode11;
    }

    public void setExpandlanguageCode11(String expandlanguageCode11) {
        this.expandlanguageCode11 = expandlanguageCode11;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME11")
    public String getExpandlanguageName11() {
        return expandlanguageName11;
    }

    public void setExpandlanguageName11(String expandlanguageName11) {
        this.expandlanguageName11 = expandlanguageName11;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE10")
    public String getExpandlanguageCode10() {
        return expandlanguageCode10;
    }

    public void setExpandlanguageCode10(String expandlanguageCode10) {
        this.expandlanguageCode10 = expandlanguageCode10;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME10")
    public String getExpandlanguageName10() {
        return expandlanguageName10;
    }

    public void setExpandlanguageName10(String expandlanguageName10) {
        this.expandlanguageName10 = expandlanguageName10;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE9")
    public String getExpandlanguageCode9() {
        return expandlanguageCode9;
    }

    public void setExpandlanguageCode9(String expandlanguageCode9) {
        this.expandlanguageCode9 = expandlanguageCode9;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME9")
    public String getExpandlanguageName9() {
        return expandlanguageName9;
    }

    public void setExpandlanguageName9(String expandlanguageName9) {
        this.expandlanguageName9 = expandlanguageName9;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE8")
    public String getExpandlanguageCode8() {
        return expandlanguageCode8;
    }

    public void setExpandlanguageCode8(String expandlanguageCode8) {
        this.expandlanguageCode8 = expandlanguageCode8;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME8")
    public String getExpandlanguageName8() {
        return expandlanguageName8;
    }

    public void setExpandlanguageName8(String expandlanguageName8) {
        this.expandlanguageName8 = expandlanguageName8;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE7")
    public String getExpandlanguageCode7() {
        return expandlanguageCode7;
    }

    public void setExpandlanguageCode7(String expandlanguageCode7) {
        this.expandlanguageCode7 = expandlanguageCode7;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME7")
    public String getExpandlanguageName7() {
        return expandlanguageName7;
    }

    public void setExpandlanguageName7(String expandlanguageName7) {
        this.expandlanguageName7 = expandlanguageName7;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE6")
    public String getExpandlanguageCode6() {
        return expandlanguageCode6;
    }

    public void setExpandlanguageCode6(String expandlanguageCode6) {
        this.expandlanguageCode6 = expandlanguageCode6;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME6")
    public String getExpandlanguageName6() {
        return expandlanguageName6;
    }

    public void setExpandlanguageName6(String expandlanguageName6) {
        this.expandlanguageName6 = expandlanguageName6;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE5")
    public String getExpandlanguageCode5() {
        return expandlanguageCode5;
    }

    public void setExpandlanguageCode5(String expandlanguageCode5) {
        this.expandlanguageCode5 = expandlanguageCode5;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME5")
    public String getExpandlanguageName5() {
        return expandlanguageName5;
    }

    public void setExpandlanguageName5(String expandlanguageName5) {
        this.expandlanguageName5 = expandlanguageName5;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE4")
    public String getExpandlanguageCode4() {
        return expandlanguageCode4;
    }

    public void setExpandlanguageCode4(String expandlanguageCode4) {
        this.expandlanguageCode4 = expandlanguageCode4;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME4")
    public String getExpandlanguageName4() {
        return expandlanguageName4;
    }

    public void setExpandlanguageName4(String expandlanguageName4) {
        this.expandlanguageName4 = expandlanguageName4;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE3")
    public String getExpandlanguageCode3() {
        return expandlanguageCode3;
    }

    public void setExpandlanguageCode3(String expandlanguageCode3) {
        this.expandlanguageCode3 = expandlanguageCode3;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME3")
    public String getExpandlanguageName3() {
        return expandlanguageName3;
    }

    public void setExpandlanguageName3(String expandlanguageName3) {
        this.expandlanguageName3 = expandlanguageName3;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_CODE2")
    public String getExpandlanguageCode2() {
        return expandlanguageCode2;
    }

    public void setExpandlanguageCode2(String expandlanguageCode2) {
        this.expandlanguageCode2 = expandlanguageCode2;
    }

    @Basic
    @Column(name = "EXPANDLANGUAGE_NAME2")
    public String getExpandlanguageName2() {
        return expandlanguageName2;
    }

    public void setExpandlanguageName2(String expandlanguageName2) {
        this.expandlanguageName2 = expandlanguageName2;
    }

    @Basic
    @Column(name = "EXCHANGE_IDENTIFICATION")
    public String getExchangeIdentification() {
        return exchangeIdentification;
    }

    public void setExchangeIdentification(String exchangeIdentification) {
        this.exchangeIdentification = exchangeIdentification;
    }

    @Basic
    @Column(name = "GOLDEN_TAX_CLASSIFYID")
    public Integer getGoldenTaxClassifyid() {
        return goldenTaxClassifyid;
    }

    public void setGoldenTaxClassifyid(Integer goldenTaxClassifyid) {
        this.goldenTaxClassifyid = goldenTaxClassifyid;
    }

    @Basic
    @Column(name = "GOLDEN_TAX_CLASSIFY_CODE")
    public String getGoldenTaxClassifyCode() {
        return goldenTaxClassifyCode;
    }

    public void setGoldenTaxClassifyCode(String goldenTaxClassifyCode) {
        this.goldenTaxClassifyCode = goldenTaxClassifyCode;
    }

    @Basic
    @Column(name = "GOLDEN_TAX_CLASSIFY_NAME")
    public String getGoldenTaxClassifyName() {
        return goldenTaxClassifyName;
    }

    public void setGoldenTaxClassifyName(String goldenTaxClassifyName) {
        this.goldenTaxClassifyName = goldenTaxClassifyName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SparePartEntity that = (SparePartEntity) o;

        if (id != that.id) return false;
        if (partType != that.partType) return false;
        if (status != that.status) return false;
        if (code != null ? !code.equals(that.code) : that.code != null) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (lastSubstitute != null ? !lastSubstitute.equals(that.lastSubstitute) : that.lastSubstitute != null)
            return false;
        if (nextSubstitute != null ? !nextSubstitute.equals(that.nextSubstitute) : that.nextSubstitute != null)
            return false;
        if (shelflife != null ? !shelflife.equals(that.shelflife) : that.shelflife != null) return false;
        if (englishName != null ? !englishName.equals(that.englishName) : that.englishName != null) return false;
        if (pinyinCode != null ? !pinyinCode.equals(that.pinyinCode) : that.pinyinCode != null) return false;
        if (referenceCode != null ? !referenceCode.equals(that.referenceCode) : that.referenceCode != null)
            return false;
        if (referenceName != null ? !referenceName.equals(that.referenceName) : that.referenceName != null)
            return false;
        if (cadCode != null ? !cadCode.equals(that.cadCode) : that.cadCode != null) return false;
        if (cadName != null ? !cadName.equals(that.cadName) : that.cadName != null) return false;
        if (specification != null ? !specification.equals(that.specification) : that.specification != null)
            return false;
        if (feature != null ? !feature.equals(that.feature) : that.feature != null) return false;
        if (length != null ? !length.equals(that.length) : that.length != null) return false;
        if (width != null ? !width.equals(that.width) : that.width != null) return false;
        if (height != null ? !height.equals(that.height) : that.height != null) return false;
        if (volume != null ? !volume.equals(that.volume) : that.volume != null) return false;
        if (weight != null ? !weight.equals(that.weight) : that.weight != null) return false;
        if (material != null ? !material.equals(that.material) : that.material != null) return false;
        if (packingAmount != null ? !packingAmount.equals(that.packingAmount) : that.packingAmount != null)
            return false;
        if (packingSpecification != null ? !packingSpecification.equals(that.packingSpecification) : that.packingSpecification != null)
            return false;
        if (partsOutPackingCode != null ? !partsOutPackingCode.equals(that.partsOutPackingCode) : that.partsOutPackingCode != null)
            return false;
        if (partsInPackingCode != null ? !partsInPackingCode.equals(that.partsInPackingCode) : that.partsInPackingCode != null)
            return false;
        if (measureUnit != null ? !measureUnit.equals(that.measureUnit) : that.measureUnit != null) return false;
        if (creatorId != null ? !creatorId.equals(that.creatorId) : that.creatorId != null) return false;
        if (creatorName != null ? !creatorName.equals(that.creatorName) : that.creatorName != null) return false;
        if (createTime != null ? !createTime.equals(that.createTime) : that.createTime != null) return false;
        if (modifierId != null ? !modifierId.equals(that.modifierId) : that.modifierId != null) return false;
        if (modifierName != null ? !modifierName.equals(that.modifierName) : that.modifierName != null) return false;
        if (modifyTime != null ? !modifyTime.equals(that.modifyTime) : that.modifyTime != null) return false;
        if (abandonerId != null ? !abandonerId.equals(that.abandonerId) : that.abandonerId != null) return false;
        if (abandonerName != null ? !abandonerName.equals(that.abandonerName) : that.abandonerName != null)
            return false;
        if (abandonTime != null ? !abandonTime.equals(that.abandonTime) : that.abandonTime != null) return false;
        if (rowVersion != null ? !rowVersion.equals(that.rowVersion) : that.rowVersion != null) return false;
        if (minPackingAmount != null ? !minPackingAmount.equals(that.minPackingAmount) : that.minPackingAmount != null)
            return false;
        if (groupAbcCategory != null ? !groupAbcCategory.equals(that.groupAbcCategory) : that.groupAbcCategory != null)
            return false;
        if (imsCompressionNumber != null ? !imsCompressionNumber.equals(that.imsCompressionNumber) : that.imsCompressionNumber != null)
            return false;
        if (imsManufacturerNumber != null ? !imsManufacturerNumber.equals(that.imsManufacturerNumber) : that.imsManufacturerNumber != null)
            return false;
        if (productBrand != null ? !productBrand.equals(that.productBrand) : that.productBrand != null) return false;
        if (substandardName != null ? !substandardName.equals(that.substandardName) : that.substandardName != null)
            return false;
        if (totalNumber != null ? !totalNumber.equals(that.totalNumber) : that.totalNumber != null) return false;
        if (factury != null ? !factury.equals(that.factury) : that.factury != null) return false;
        if (isOriginal != null ? !isOriginal.equals(that.isOriginal) : that.isOriginal != null) return false;
        if (categoryCode != null ? !categoryCode.equals(that.categoryCode) : that.categoryCode != null) return false;
        if (overseaSpartsFigure != null ? !overseaSpartsFigure.equals(that.overseaSpartsFigure) : that.overseaSpartsFigure != null)
            return false;
        if (categoryName != null ? !categoryName.equals(that.categoryName) : that.categoryName != null) return false;
        if (expandlanguageName1 != null ? !expandlanguageName1.equals(that.expandlanguageName1) : that.expandlanguageName1 != null)
            return false;
        if (expandlanguageCode1 != null ? !expandlanguageCode1.equals(that.expandlanguageCode1) : that.expandlanguageCode1 != null)
            return false;
        if (expandlanguageCode13 != null ? !expandlanguageCode13.equals(that.expandlanguageCode13) : that.expandlanguageCode13 != null)
            return false;
        if (expandlanguageName13 != null ? !expandlanguageName13.equals(that.expandlanguageName13) : that.expandlanguageName13 != null)
            return false;
        if (expandlanguageCode12 != null ? !expandlanguageCode12.equals(that.expandlanguageCode12) : that.expandlanguageCode12 != null)
            return false;
        if (expandlanguageName12 != null ? !expandlanguageName12.equals(that.expandlanguageName12) : that.expandlanguageName12 != null)
            return false;
        if (expandlanguageCode11 != null ? !expandlanguageCode11.equals(that.expandlanguageCode11) : that.expandlanguageCode11 != null)
            return false;
        if (expandlanguageName11 != null ? !expandlanguageName11.equals(that.expandlanguageName11) : that.expandlanguageName11 != null)
            return false;
        if (expandlanguageCode10 != null ? !expandlanguageCode10.equals(that.expandlanguageCode10) : that.expandlanguageCode10 != null)
            return false;
        if (expandlanguageName10 != null ? !expandlanguageName10.equals(that.expandlanguageName10) : that.expandlanguageName10 != null)
            return false;
        if (expandlanguageCode9 != null ? !expandlanguageCode9.equals(that.expandlanguageCode9) : that.expandlanguageCode9 != null)
            return false;
        if (expandlanguageName9 != null ? !expandlanguageName9.equals(that.expandlanguageName9) : that.expandlanguageName9 != null)
            return false;
        if (expandlanguageCode8 != null ? !expandlanguageCode8.equals(that.expandlanguageCode8) : that.expandlanguageCode8 != null)
            return false;
        if (expandlanguageName8 != null ? !expandlanguageName8.equals(that.expandlanguageName8) : that.expandlanguageName8 != null)
            return false;
        if (expandlanguageCode7 != null ? !expandlanguageCode7.equals(that.expandlanguageCode7) : that.expandlanguageCode7 != null)
            return false;
        if (expandlanguageName7 != null ? !expandlanguageName7.equals(that.expandlanguageName7) : that.expandlanguageName7 != null)
            return false;
        if (expandlanguageCode6 != null ? !expandlanguageCode6.equals(that.expandlanguageCode6) : that.expandlanguageCode6 != null)
            return false;
        if (expandlanguageName6 != null ? !expandlanguageName6.equals(that.expandlanguageName6) : that.expandlanguageName6 != null)
            return false;
        if (expandlanguageCode5 != null ? !expandlanguageCode5.equals(that.expandlanguageCode5) : that.expandlanguageCode5 != null)
            return false;
        if (expandlanguageName5 != null ? !expandlanguageName5.equals(that.expandlanguageName5) : that.expandlanguageName5 != null)
            return false;
        if (expandlanguageCode4 != null ? !expandlanguageCode4.equals(that.expandlanguageCode4) : that.expandlanguageCode4 != null)
            return false;
        if (expandlanguageName4 != null ? !expandlanguageName4.equals(that.expandlanguageName4) : that.expandlanguageName4 != null)
            return false;
        if (expandlanguageCode3 != null ? !expandlanguageCode3.equals(that.expandlanguageCode3) : that.expandlanguageCode3 != null)
            return false;
        if (expandlanguageName3 != null ? !expandlanguageName3.equals(that.expandlanguageName3) : that.expandlanguageName3 != null)
            return false;
        if (expandlanguageCode2 != null ? !expandlanguageCode2.equals(that.expandlanguageCode2) : that.expandlanguageCode2 != null)
            return false;
        if (expandlanguageName2 != null ? !expandlanguageName2.equals(that.expandlanguageName2) : that.expandlanguageName2 != null)
            return false;
        if (exchangeIdentification != null ? !exchangeIdentification.equals(that.exchangeIdentification) : that.exchangeIdentification != null)
            return false;
        if (goldenTaxClassifyid != null ? !goldenTaxClassifyid.equals(that.goldenTaxClassifyid) : that.goldenTaxClassifyid != null)
            return false;
        if (goldenTaxClassifyCode != null ? !goldenTaxClassifyCode.equals(that.goldenTaxClassifyCode) : that.goldenTaxClassifyCode != null)
            return false;
        if (goldenTaxClassifyName != null ? !goldenTaxClassifyName.equals(that.goldenTaxClassifyName) : that.goldenTaxClassifyName != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (code != null ? code.hashCode() : 0);
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (lastSubstitute != null ? lastSubstitute.hashCode() : 0);
        result = 31 * result + (nextSubstitute != null ? nextSubstitute.hashCode() : 0);
        result = 31 * result + (shelflife != null ? shelflife.hashCode() : 0);
        result = 31 * result + (englishName != null ? englishName.hashCode() : 0);
        result = 31 * result + (pinyinCode != null ? pinyinCode.hashCode() : 0);
        result = 31 * result + (referenceCode != null ? referenceCode.hashCode() : 0);
        result = 31 * result + (referenceName != null ? referenceName.hashCode() : 0);
        result = 31 * result + (cadCode != null ? cadCode.hashCode() : 0);
        result = 31 * result + (cadName != null ? cadName.hashCode() : 0);
        result = 31 * result + partType;
        result = 31 * result + (specification != null ? specification.hashCode() : 0);
        result = 31 * result + (feature != null ? feature.hashCode() : 0);
        result = 31 * result + status;
        result = 31 * result + (length != null ? length.hashCode() : 0);
        result = 31 * result + (width != null ? width.hashCode() : 0);
        result = 31 * result + (height != null ? height.hashCode() : 0);
        result = 31 * result + (volume != null ? volume.hashCode() : 0);
        result = 31 * result + (weight != null ? weight.hashCode() : 0);
        result = 31 * result + (material != null ? material.hashCode() : 0);
        result = 31 * result + (packingAmount != null ? packingAmount.hashCode() : 0);
        result = 31 * result + (packingSpecification != null ? packingSpecification.hashCode() : 0);
        result = 31 * result + (partsOutPackingCode != null ? partsOutPackingCode.hashCode() : 0);
        result = 31 * result + (partsInPackingCode != null ? partsInPackingCode.hashCode() : 0);
        result = 31 * result + (measureUnit != null ? measureUnit.hashCode() : 0);
        result = 31 * result + (creatorId != null ? creatorId.hashCode() : 0);
        result = 31 * result + (creatorName != null ? creatorName.hashCode() : 0);
        result = 31 * result + (createTime != null ? createTime.hashCode() : 0);
        result = 31 * result + (modifierId != null ? modifierId.hashCode() : 0);
        result = 31 * result + (modifierName != null ? modifierName.hashCode() : 0);
        result = 31 * result + (modifyTime != null ? modifyTime.hashCode() : 0);
        result = 31 * result + (abandonerId != null ? abandonerId.hashCode() : 0);
        result = 31 * result + (abandonerName != null ? abandonerName.hashCode() : 0);
        result = 31 * result + (abandonTime != null ? abandonTime.hashCode() : 0);
        result = 31 * result + (rowVersion != null ? rowVersion.hashCode() : 0);
        result = 31 * result + (minPackingAmount != null ? minPackingAmount.hashCode() : 0);
        result = 31 * result + (groupAbcCategory != null ? groupAbcCategory.hashCode() : 0);
        result = 31 * result + (imsCompressionNumber != null ? imsCompressionNumber.hashCode() : 0);
        result = 31 * result + (imsManufacturerNumber != null ? imsManufacturerNumber.hashCode() : 0);
        result = 31 * result + (productBrand != null ? productBrand.hashCode() : 0);
        result = 31 * result + (substandardName != null ? substandardName.hashCode() : 0);
        result = 31 * result + (totalNumber != null ? totalNumber.hashCode() : 0);
        result = 31 * result + (factury != null ? factury.hashCode() : 0);
        result = 31 * result + (isOriginal != null ? isOriginal.hashCode() : 0);
        result = 31 * result + (categoryCode != null ? categoryCode.hashCode() : 0);
        result = 31 * result + (overseaSpartsFigure != null ? overseaSpartsFigure.hashCode() : 0);
        result = 31 * result + (categoryName != null ? categoryName.hashCode() : 0);
        result = 31 * result + (expandlanguageName1 != null ? expandlanguageName1.hashCode() : 0);
        result = 31 * result + (expandlanguageCode1 != null ? expandlanguageCode1.hashCode() : 0);
        result = 31 * result + (expandlanguageCode13 != null ? expandlanguageCode13.hashCode() : 0);
        result = 31 * result + (expandlanguageName13 != null ? expandlanguageName13.hashCode() : 0);
        result = 31 * result + (expandlanguageCode12 != null ? expandlanguageCode12.hashCode() : 0);
        result = 31 * result + (expandlanguageName12 != null ? expandlanguageName12.hashCode() : 0);
        result = 31 * result + (expandlanguageCode11 != null ? expandlanguageCode11.hashCode() : 0);
        result = 31 * result + (expandlanguageName11 != null ? expandlanguageName11.hashCode() : 0);
        result = 31 * result + (expandlanguageCode10 != null ? expandlanguageCode10.hashCode() : 0);
        result = 31 * result + (expandlanguageName10 != null ? expandlanguageName10.hashCode() : 0);
        result = 31 * result + (expandlanguageCode9 != null ? expandlanguageCode9.hashCode() : 0);
        result = 31 * result + (expandlanguageName9 != null ? expandlanguageName9.hashCode() : 0);
        result = 31 * result + (expandlanguageCode8 != null ? expandlanguageCode8.hashCode() : 0);
        result = 31 * result + (expandlanguageName8 != null ? expandlanguageName8.hashCode() : 0);
        result = 31 * result + (expandlanguageCode7 != null ? expandlanguageCode7.hashCode() : 0);
        result = 31 * result + (expandlanguageName7 != null ? expandlanguageName7.hashCode() : 0);
        result = 31 * result + (expandlanguageCode6 != null ? expandlanguageCode6.hashCode() : 0);
        result = 31 * result + (expandlanguageName6 != null ? expandlanguageName6.hashCode() : 0);
        result = 31 * result + (expandlanguageCode5 != null ? expandlanguageCode5.hashCode() : 0);
        result = 31 * result + (expandlanguageName5 != null ? expandlanguageName5.hashCode() : 0);
        result = 31 * result + (expandlanguageCode4 != null ? expandlanguageCode4.hashCode() : 0);
        result = 31 * result + (expandlanguageName4 != null ? expandlanguageName4.hashCode() : 0);
        result = 31 * result + (expandlanguageCode3 != null ? expandlanguageCode3.hashCode() : 0);
        result = 31 * result + (expandlanguageName3 != null ? expandlanguageName3.hashCode() : 0);
        result = 31 * result + (expandlanguageCode2 != null ? expandlanguageCode2.hashCode() : 0);
        result = 31 * result + (expandlanguageName2 != null ? expandlanguageName2.hashCode() : 0);
        result = 31 * result + (exchangeIdentification != null ? exchangeIdentification.hashCode() : 0);
        result = 31 * result + (goldenTaxClassifyid != null ? goldenTaxClassifyid.hashCode() : 0);
        result = 31 * result + (goldenTaxClassifyCode != null ? goldenTaxClassifyCode.hashCode() : 0);
        result = 31 * result + (goldenTaxClassifyName != null ? goldenTaxClassifyName.hashCode() : 0);
        return result;
    }
}
