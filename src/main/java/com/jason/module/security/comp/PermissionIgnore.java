package com.jason.module.security.comp;

import java.lang.annotation.*;

/**
 * 权限校验忽略
 */
@Documented
@Inherited
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface PermissionIgnore {
}
