<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>登录页面</title>
    <link href="../../resources/css/css.css" rel="stylesheet" type="text/css"/>
</head>

<body>
<div id="logo"><img src="../../resources/images/logo.jpg" alt="大唐电信首页" width="1002" height="392"/></div>
<div class="login" id="middle">
    <form action="logging" method="post">
        <p>
            <label>
                用户名：<input name="username" type="text"/>
            </label></p>
        <p> 密&nbsp;&nbsp; 码：
            <label>
                <input type="text" name="password"/>
            </label></p>
        <p>角&nbsp;&nbsp; 色：
            <label>
                <select name="roleId">

                    <c:forEach items="${roles}" var="role">
                        <option value=${role.id}>
                                ${role.desc}
                        </option>
                    </c:forEach>
                </select>
            </label>
        </p>
        <p>
            <label class="left007-bg">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <input name="Submit" type="submit" class="menu1" value="登陆"/>
            </label>
        </p>
    </form>
</div>
<div id="nation" style="position: absolute;left: 0px;top: 380px;"><img src="../../resources/images/button.jpg"
                                                                       width="1002" height="17"/></div>
</body>
</html>
