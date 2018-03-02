package com.sunlight.code.logic.service.impl;

import com.sunlight.code.domain.po.CodeTemplateEntity;
import com.sunlight.code.logic.dao.CodeDao;
import com.sunlight.code.logic.service.CodeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by Nicholas on 16/12/20.
 */
@Service
public class CodeServiceImpl implements CodeService {
    @Resource
    private CodeDao codeDao;
    @Override
    public String findOrderCodeByCode(String code) {
        CodeTemplateEntity orderCode=codeDao.findByOrderCode(code);
        String prefix=orderCode.getSerial().substring(0,3);
        String serial=orderCode.getSerial().substring(3,orderCode.getSerial().length());
        String result=Integer.toString(Integer.parseInt(serial)+1);
        int size=6-result.length();
        for(int i=0;i<size;i++){
            result="0"+result;
        }
        result=prefix+result;
        orderCode.setSerial(result);
        codeDao.save(orderCode);
        return result;
    }
}
