<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>任务详细信息</title>
    <link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css"/>
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css"/>
<div id="logo"><img src="${pageContext.request.contextPath}/resources/images/top.jpg" width="1002" height="258"/></div>
<!-- #EndLibraryItem -->
<table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;top: 250px;">
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
                <p>您现在的位置 &gt;&gt; 查看任务 &gt;&gt; 任务详细信息</p>
                <h1>任务详细信息:</h1>

                <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">
                    <tr>
                        <td width="15%" class="tdcolor">任务名称</td>
                        <td width="579" colspan="5">${task.name}</td>
                    </tr>
                    <tr>
                        <td class="tdcolor">任务描述</td>
                        <td colspan="5">&nbsp;${task.taskDesc}</td>
                    </tr>
                    <tr>
                        <td class="tdcolor">开始时间</td>
                        <td width="15%">${task.beginDate}</td>
                        <td width="20%" class="tdcolor">结束时间</td>
                        <td width="50%" colspan="3"><p>&nbsp;${task.endDate}</p></td>
                    </tr>
                    <tr>
                        <td class="tdcolor">实际开始时间</td>
                        <td>&nbsp;${task.realBeginDate}</td>
                        <td class="tdcolor">实际结束时间</td>
                        <td colspan="3">&nbsp;${task.realEndDate}</td>
                    </tr>
                    <tr>
                        <td class="tdcolor">实施人</td>
                        <td>&nbsp;${task.implementorId.name}</td>
                        <td class="tdcolor">任务状态</td>
                        <td>${task.status}</td>
                        <td class="tdcolor">计划数目</td>
                        <td>${task.plans.size()}</td>
                    </tr>
                </table>
                <form id="form1" name="form1" method="post" action="/man/plan/program">
                    <h1>实施计划：</h1>
                    <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">

                        <c:choose>
                            <c:when test="${task.plans.size()==0}">
                                该任务暂时没有计划
                            </c:when>
                            <c:otherwise>
                                <tr>
                                    <td width="15%" class="tdcolor">计划名称</td>
                                    <td width="15%" class="tdcolor">完成状态</td>
                                    <td width="20%" class="tdcolor">是否反馈</td>
                                    <td class="tdcolor">开始时间</td>
                                    <td class="tdcolor">结束时间</td>
                                    <td class="tdcolor">&nbsp;</td>
                                </tr>
                                <c:forEach items="${task.plans}" var="plan">

                                    <tr>
                                        <td>${plan.planName}</td>
                                        <td>${plan.status}</td>
                                        <td>${plan.feedback=="Y"?"是":"否"}</td>
                                        <td><fmt:formatDate value="${plan.beginDate}" type="DATE"/></td>
                                        <td><fmt:formatDate value="${plan.endDate}" type="DATE"/></td>
                                        <td><label>
                                            <input type="radio" name="planId" value="${plan.planId}"/>
                                        </label></td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
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
