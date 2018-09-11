<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>分配人员</title>
    <link href="../../../resources/css/css.css" rel="stylesheet" type="text/css"/>
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="../../../resources/css/css.css" rel="stylesheet" type="text/css"/>
<div id="logo"><img src="../../../resources/images/top.jpg" width="1002" height="258"/></div>
<!-- #EndLibraryItem -->
<table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;top: 250px;">
    <tr>
        <td class="rightimg"><!-- #BeginLibraryItem "/Library/left3.lbi" -->
            <link href="../../../resources/css/css.css" rel="stylesheet" type="text/css"/>
            <div id="left2">
                <p><a href="/admin/useradmin" target="_self">用户管理</a></p>
                <p><a href="/admin/empadmin" target="_self">员工管理</a></p>
                <p><a href="/admin/empdistribute" target="_self">分配人员</a></p>
                <p><a href="../login.html" target="_self">退出系统</a></p>
            </div><!-- #EndLibraryItem -->
            <div id="right">
                <p>您现在的位置 &gt;&gt; 用户管理 &gt;&gt; 用户列表</p>
                <h1>用户详细信息:</h1>

                <form id="form1" name="form1" method="post" action="/admin/persondesc">
                    <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">
                        <tr>
                            <td width="15%" class="tdcolor">用户名称</td>
                            <td class="tdcolor">用户密码</td>
                            <td class="tdcolor">用户角色</td>
                            <td class="tdcolor">真实姓名</td>
                            <td class="tdcolor">入职时间</td>
                            <td class="tdcolor">职位信息</td>
                            <td class="tdcolor">&nbsp;</td>
                        </tr>
                        <c:if test="${empty employeeList}">没有员工</c:if>
                        <c:forEach items="${employeeList}" var="employee">
                            <tr>
                                <td>${employee.name}</td>
                                <td>${employee.password}</td>
                                <td>${employee.roleId.desc}</td>
                                <td>${employee.realName}</td>
                                <td><fmt:formatDate value="${employee.enrollDate}" type="DATE"/></td>
                                <td>${employee.duty}</td>
                                <td><label>
                                    <input type="radio" name="id" value="${employee.id}"/>
                                </label></td>
                            </tr>
                        </c:forEach>
                    </table>
                    <p>
                        <label></label>
                        <label>
                            <input name="Submit2" type="submit" class="menu4" value="修改员工"/>
                        </label>
                    </p>
                </form>
                <p>&nbsp;</p>
            </div>
        </td>
    </tr>
</table>
<!-- #BeginLibraryItem "/Library/bottom.lbi" -->
<div id="bottom"><img src="../../../resources/images/button.jpg" width="1002" height="17"/></div>
<!-- #EndLibraryItem --></body>
</html>
