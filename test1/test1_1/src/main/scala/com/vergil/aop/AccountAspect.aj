package com.vergil.aop;

import org.aspectj.lang.ProceedingJoinPoint
import org.aspectj.lang.annotation.Around
import org.aspectj.lang.annotation.Aspect


@Aspect
class AnnotationBasedAspect {
    
    /**
    * around execution of Sum
    */
    @Around("execution(@com.vergil.aop.Loggable * *.*(..))")
    def aroundSum(joinPoint: ProceedingJoinPoint): Object = {
        val result = joinPoint.proceed
        println("Method:-" + joinPoint.toShortString() + " Input:-" + joinPoint.getArgs().toList.mkString(",") + " Result:-" + result)
        result
    }

}

class Sum {
  @Loggable
  def checkSum(a: Int, b: Int): Int = a + b
}