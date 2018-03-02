package com.sunlight.spareparts.logic.service.impl;

import com.sunlight.platform.utils.TransferObject;
import com.sunlight.spareparts.domain.po.SparePartEntity;
import com.sunlight.spareparts.domain.vo.SparePartsVO;
import com.sunlight.spareparts.logic.repository.SparePartsRepository;
import com.sunlight.spareparts.logic.service.SparePartsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * Created by brad on 16/11/21.
 */
@Service
public class SaprePartsServiceImpl implements SparePartsService {

    @Autowired
    private SparePartsRepository sparePartsRepository;
    /**
     * 根据备件的id查询备件的编号和名称
     * @param id
     * @return
     */
    @Override
    public Map<String, Object> findSparePartById(int id) {
        Map<String,Object> sparePartMaps=sparePartsRepository.findSparePartById(id);
        return sparePartMaps;
    }

    /**
     * 根据一组备件id查询备件的编号、名称等其他属性
     * @param ids
     * @return
     */
    @Override
    public Map<Integer, SparePartsVO> getSparePartsList(List<Integer> ids) {
        List<SparePartEntity> entityList = sparePartsRepository.getSparePartsList(ids);
        List<SparePartsVO> voList = TransferObject.transferList(entityList, SparePartsVO.class);
        Map<Integer, SparePartsVO> voMap = voList.stream().collect(Collectors.toMap(SparePartsVO::getId, Function.identity()));
        return voMap;
    }
}
