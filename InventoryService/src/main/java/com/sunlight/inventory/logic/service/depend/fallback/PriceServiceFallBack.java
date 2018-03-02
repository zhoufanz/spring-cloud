package com.sunlight.inventory.logic.service.depend.fallback;

import com.sunlight.inventory.logic.service.depend.service.PriceServiceClient;
import com.sunlight.platform.exception.ResponseData;
import org.springframework.stereotype.Component;

/**
 * Created by Nicholas on 16/12/27.
 */
@Component
public class PriceServiceFallBack implements PriceServiceClient {
    @Override
    public ResponseData getPrice(Integer sparePartId) {
        return null;
    }
}
