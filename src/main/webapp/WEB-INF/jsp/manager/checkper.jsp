<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>查看人员</title>
    <link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css"/>
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css"/>
<div id="logo"><img src="${pageContext.request.contextPath}/resources/images/top.jpg" width="1002" height="258"/></div>
<!-- #EndLibraryItem -->
<table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;top: 280px;">
    <tr>
        <td class="rightimg"><!-- #BeginLibraryItem "/Library/left.lbi" -->
            <div id="left">
                <p><a href="/man/taskview" target="_self">查看任务</a></p>
                <p><a href="/man/task" target="_self">制定任务</a></p>
                <p><a href="/man/taskundone" target="_self">调整任务</a></p>
                <p><a href="/man/intendance" target="_self">跟踪任务</a></p>
                <p><a href="/man/checkper" target="_self">查看人员</a></p>
                <p><a href="/logOut" target="_self">退出系统</a></p>
            </div><!-- #EndLibraryItem -->
            <div id="right">
                <p>您现在的位置 &gt;&gt; 查看人员 &gt;&gt; 人员信息</p>
                <h1>人员信息:</h1>
                <form id="form1" name="form1" method="post" action="/man/personinfo">
                    <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">
                        <tr>
                            <td width="15%" class="tdcolor">姓名</td>
                            <td class="tdcolor">性别</td>
                            <td class="tdcolor">入职时间</td>
                            <td class="tdcolor">职位</td>
                            <td class="tdcolor">&nbsp;</td>
                        </tr>
                        <c:if test="${empty personList}">没有员工</c:if>
                        <c:forEach items="${personList}" var="person">
                            <tr>
                                <td>${person.name}</td>
                                <td>${person.sex}</td>
                                <td><fmt:formatDate value="${person.enrollDate}" type="DATE"/></td>
                                <td>${person.duty}</td>
                                <td><label>
                                    <input type="radio" name="id" value="${person.id}"/>
                                </label></td>
                            </tr>
                        </c:forEach>
                    </table>
                    <p>
                        <label>
                            <input name="Submit" type="submit" class="menu3" value="详细信息"/>
                        </label>
                    </p>
                </form>
            </div>
        </td>
    </tr>
</table>
<!-- #BeginLibraryItem "/Library/bottom.lbi" -->
<div id="bottom"><img src="${pageContext.request.contextPath}/resources/images/button.jpg" width="1002" height="17"/>
</div><!-- #EndLibraryItem --></body>
</html>
