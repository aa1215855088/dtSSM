package com.guigu.core.annotation;

import java.lang.annotation.*;

/**
 * 自定义注解类
 */
@Retention(RetentionPolicy.RUNTIME)

@Target({ElementType.METHOD,ElementType.TYPE})
public @interface RoleAnnotation {
    String value();
}
