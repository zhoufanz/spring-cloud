package com.sunlight.price.logic.service.impl;



import com.sunlight.platform.utils.TransferObject;
import com.sunlight.price.domain.po.PartsPlannedPriceEntity;
import com.sunlight.price.domain.vo.PartsPlannedPriceVo;
import com.sunlight.price.logic.repository.PriceRepository;
import com.sunlight.price.logic.service.PriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * Created by brad on 16/11/21.
 */
@Service
public class PriceServiceImpl implements PriceService {

    @Autowired
    private PriceRepository priceRepository;

    @Override
    public double getPrice(String stockPartId) {
        return 0;
    }

    @Override
    public PartsPlannedPriceVo findPlannedPriceByPartsId(int partsId) {
        PartsPlannedPriceEntity plannedPriceEntity = priceRepository.findByPartsId(partsId);
        return plannedPriceEntity == null ? null : TransferObject.transferObject(plannedPriceEntity, PartsPlannedPriceVo.class);
    }

    @Override
    public Map<Integer, PartsPlannedPriceVo> getPlannedPriceList(List<Integer> ids) {
        List<PartsPlannedPriceEntity> priceEntities = priceRepository.getPriceList(ids);
        List<PartsPlannedPriceVo> priceVos = TransferObject.transferList(priceEntities, PartsPlannedPriceVo.class);

        Map<Integer, PartsPlannedPriceVo> priceVoMap = priceVos.stream().
                collect(Collectors.toMap(PartsPlannedPriceVo::getSparepartId, Function.identity(), (v1, v2) -> v1));//如果存在重复的key默认默认取第一个
        return priceVoMap;
    }

    @Override
    public List<PartsPlannedPriceVo> findPriceByIds(List<Integer> ids) {
        List<PartsPlannedPriceEntity> priceEntities = priceRepository.getPriceList(ids);
        return priceEntities.size() == 0 ? null : TransferObject.transferList(priceEntities, PartsPlannedPriceVo.class);
    }

    @Override
    @Transactional
    public boolean batchUpdate(List<PartsPlannedPriceVo> vos) {
        for (PartsPlannedPriceVo vo : vos) {
            priceRepository.save(TransferObject.transferObject(vo, PartsPlannedPriceEntity.class));
        }
        return true;
    }
}
