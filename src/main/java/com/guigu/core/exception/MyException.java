package com.guigu.core.exception;

/**
 * @author lenovo
 * 自定义异常
 */
public class MyException extends Exception {
    public MyException(String message) {
        super(message);
    }

    public MyException(String message, Throwable cause) {
        super(message, cause);
    }
}
