package spring.boot.aspect;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class DigimonAspect {

    Logger logger = Logger.getLogger(spring.boot.aspect.DigimonAspect.class);


    @Before("execution(* getDigimon*(..))")
    public void BeforeGettingDigimon(JoinPoint joinPoint) {
        logger.info(joinPoint.getSignature());
    }
}
