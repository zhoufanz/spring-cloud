package com.sunlight.storage.transfer.logic.depend.service;


import com.sunlight.storage.transfer.logic.depend.fallback.CodeTemplateFallBack;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Nicholas on 16/12/20.
 */

@RequestMapping("/service/code")
@FeignClient(name="code-template-service",fallback = CodeTemplateFallBack.class)
public interface CodeTemplateServiceClient {
    @RequestMapping(method = RequestMethod.GET,value = "/{code}")
    String findOrderCodeByCode(@PathVariable("code") String code);
}
