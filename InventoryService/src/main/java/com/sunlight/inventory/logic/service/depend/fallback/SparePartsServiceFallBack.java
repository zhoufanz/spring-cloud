package com.sunlight.inventory.logic.service.depend.fallback;

import com.sunlight.inventory.logic.service.depend.service.SparePartsServiceClient;
import com.sunlight.platform.exception.ResponseData;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * Created by Nicholas on 16/12/27.
 */
@Component
public class SparePartsServiceFallBack implements SparePartsServiceClient {
    @Override
    public ResponseData getSpareParts(Integer sparePartId) {
        return null;
    }

    @Override
    public Map<String, Object> findSparePartById(int id) {
        return null;
    }
}
