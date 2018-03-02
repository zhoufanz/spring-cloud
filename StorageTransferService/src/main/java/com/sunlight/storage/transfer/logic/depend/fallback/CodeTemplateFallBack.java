package com.sunlight.storage.transfer.logic.depend.fallback;

import com.sunlight.storage.transfer.logic.depend.service.CodeTemplateServiceClient;
import org.springframework.stereotype.Component;

/**
 * Created by Nicholas on 16/12/27.
 */
@Component
public class CodeTemplateFallBack implements CodeTemplateServiceClient {
    @Override
    public String findOrderCodeByCode(String code) {
        return "调用失败！！！";
    }
}
