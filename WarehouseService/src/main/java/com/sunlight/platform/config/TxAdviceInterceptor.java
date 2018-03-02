package com.sunlight.platform.config;

import org.aspectj.lang.annotation.Aspect;
import org.springframework.aop.Advisor;
import org.springframework.aop.aspectj.AspectJExpressionPointcut;
import org.springframework.aop.support.DefaultPointcutAdvisor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.interceptor.MatchAlwaysTransactionAttributeSource;
import org.springframework.transaction.interceptor.RollbackRuleAttribute;
import org.springframework.transaction.interceptor.RuleBasedTransactionAttribute;
import org.springframework.transaction.interceptor.TransactionInterceptor;

import java.util.Collections;

/**
 * Created by brad on 16/12/5.
 */
@Aspect
@Configuration
public class TxAdviceInterceptor {
    private static final String TX_METHOD_NAME = "*";
    private static final String TX_IND_METHOD_NAME = "*IndependentTransaction*";//独立事务
    private static final int TX_METHOD_TIMEOUT = 3;
    private static final String AOP_POINTCUT_EXPRESSION = "execution(* com.sunlight..*.logic.service.*.*(..))";

    @Autowired
    private PlatformTransactionManager transactionManager;

    private TransactionInterceptor txAdvice(String methodName, String transactionType) {
        MatchAlwaysTransactionAttributeSource source = new MatchAlwaysTransactionAttributeSource();
        RuleBasedTransactionAttribute transactionAttribute = new RuleBasedTransactionAttribute();
        transactionAttribute.setName(methodName);
        transactionAttribute.setRollbackRules(
                Collections.singletonList(new RollbackRuleAttribute(Exception.class)));
//        transactionAttribute.setTimeout(TX_METHOD_TIMEOUT);
        transactionAttribute.setPropagationBehaviorName(transactionType);
        source.setTransactionAttribute(transactionAttribute);
        TransactionInterceptor txAdvice = new TransactionInterceptor(transactionManager, source);
        return txAdvice;
    }

    @Bean
    public TransactionInterceptor txAdvice() {
        return txAdvice(TX_METHOD_NAME, "PROPAGATION_REQUIRED");
    }

    @Bean
    public TransactionInterceptor txSepAdvice() {
        return txAdvice(TX_IND_METHOD_NAME, "PROPAGATION_REQUIRES_NEW");
    }

    @Bean
    public Advisor txAdviceAdvisor() {
        AspectJExpressionPointcut pointcut = new AspectJExpressionPointcut();
        pointcut.setExpression(AOP_POINTCUT_EXPRESSION);
        return new DefaultPointcutAdvisor(pointcut, txAdvice());
    }
}
