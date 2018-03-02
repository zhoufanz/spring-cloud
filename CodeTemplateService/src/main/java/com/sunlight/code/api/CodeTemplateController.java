package com.sunlight.code.api;

import com.sunlight.code.logic.service.CodeService;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * Created by Nicholas on 16/12/20.
 */
@RestController
@RequestMapping("/service/code")
public class CodeTemplateController {
    @Resource
    private CodeService codeService;
    @RequestMapping(method = RequestMethod.GET,value = "/{code}")
    public String findOrderCodeByCode(@PathVariable String code){
        return codeService.findOrderCodeByCode(code);
    }
}
