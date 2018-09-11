<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>我的任务</title>
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="../../../resources/css/css.css" rel="stylesheet" type="text/css"/>
<img src="../../../resources/images/top.jpg" width="1002" height="258"/></div>
<!-- #EndLibraryItem -->
<table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;left:458px">
    <tr>
        <td class="rightimg"><!-- #BeginLibraryItem "/Library/left2.lbi" -->

            <%@include file="../../../resources/Library/left1.jsp"%>
            <div id="right">
                <p>您现在的位置 &gt;&gt; 我的任务 &gt;&gt; 任务信息</p>
                <h1>任务信息:</h1>
                <form id="form1" name="form1" action="/person/taskview">
                    <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">
                        <tr>
                            <td width="15%" class="tdcolor">任务名称</td>
                            <td width="15%" class="tdcolor">制定人</td>
                            <td width="15%" class="tdcolor">开始时间</td>
                            <td width="15%" class="tdcolor">结束时间</td>
                            <td width="15%" class="tdcolor">任务状态</td>
                            <td width="15%" class="tdcolor">计划数目</td>
                            <td width="10%" class="tdcolor">&nbsp;</td>
                        </tr>

                        <c:if test="${empty tasks}" var="没有任务"></c:if>
                        <c:forEach items="${tasks}" var="task">
                            <tr>
                                <td>${task.name}</td>
                                <td>${task.implementorId.name}</td>
                                <td><fmt:formatDate value="${task.beginDate}" type="DATE" dateStyle="long"/></td>
                                <td><fmt:formatDate value="${task.endDate}" type="DATE" dateStyle="long"/></td>
                                <td>${task.status}</td>
                                <td>${task.plans.size()}
                                <td><input type="radio" name="taskId" value="${task.id}"/></td>
                            </tr>
                        </c:forEach>
                    </table>
                    <p>
                        <label>
                            <input name="Submit" type="submit" class="menu3" value="计划管理"/>
                        </label>
                    </p>
                </form>
            </div>
        </td>
    </tr>
</table>

<!-- #BeginLibraryItem "/Library/bottom.lbi" -->
<div style="position: absolute;left: 458px" id="bottom">
    <img src="../../../resources/images/button.jpg" width="1002" height="17"/></div><!-- #EndLibraryItem --></body>

<script src="../../../resources/js/jquery-1.11.0.min.js"></script>
<script src="../../../resources/js/js.js" charset="UTF-8"></script>
</html>
