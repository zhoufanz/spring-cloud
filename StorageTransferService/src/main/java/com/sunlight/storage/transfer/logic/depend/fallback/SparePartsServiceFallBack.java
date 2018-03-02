package com.sunlight.storage.transfer.logic.depend.fallback;

import com.sunlight.storage.transfer.logic.depend.service.SparePartsServiceClient;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * Created by Nicholas on 16/12/28.
 */
@Component
public class SparePartsServiceFallBack implements SparePartsServiceClient {
    @Override
    public Map<String, Object> findSparePartById(int id) {
        return null;
    }
}
