package com.guigu.datang.web.interceptors;

import com.guigu.core.annotation.RoleAnnotation;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author lenovo
 * 拦截器 判断是否登录
 */
public class LoggingInterceptors extends HandlerInterceptorAdapter {

    /**
     * 进入Handler方法钱执行
     * 身份认证 通过拦截器判断用户是否登录 没登录返回至登录界面
     *
     * @param request
     * @param response
     * @param handler
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {


        String requestURL = String.valueOf(request.getRequestURL());
        //如果是登录 退出 直接放行
        if (requestURL.indexOf("login") > 0 || requestURL.indexOf("logging") > 0 || requestURL.indexOf("logOut") > 0 || requestURL.indexOf("AccessErrors") > 0) {
            return true;
        }


        HandlerMethod handlerMethod = null;
        RoleAnnotation annotation = null;
        try {
            handlerMethod = (HandlerMethod) handler;
            Class<?> aClass = handlerMethod.getBean().getClass();
            annotation = aClass.getAnnotation(RoleAnnotation.class);
        } catch (Exception e) {
            request.setAttribute("message", "请输入正确的地址栏");
            request.getRequestDispatcher("/AccessErrors").forward(request, response);
            return false;
        }


        HttpSession session = request.getSession();

        String user = (String) session.getAttribute("user");

        String[] split = requestURL.split("/");
        if (user != null) {

            //获得类上的注解判断是否有权限访问该网页
            if (annotation.value().equals(user.split("-")[1])) {
                return true;
            } else {
                request.setAttribute("message", "抱歉你没有访问该地址的权限");
                request.getRequestDispatcher("/AccessErrors").forward(request, response);
                return false;
            }
        }
        //未登录拦截返回至登录界面
        response.sendRedirect("/login");
        return true;
    }

    /**
     * 首字母大写
     *
     * @param name
     * @return
     */
    public static String captureName(String name) {
        name = name.substring(0, 1).toUpperCase() + name.substring(1);

        return name;
    }


}
