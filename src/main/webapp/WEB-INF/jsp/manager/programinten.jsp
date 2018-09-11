<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>跟踪计划信息</title>
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
                <p>您现在的位置 &gt;&gt; 跟踪任务 &gt;&gt; 跟踪计划信息</p>
                <form id="form1" name="form1" method="post" action="/man/programinten/update">
                    <h1>任务详细信息:</h1>
                    <input type="hidden" name="taskId" value="${task.id}"/>
                    <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">
                        <tr>
                            <td width="15%" class="tdcolor">任务名称</td>
                            <td width="579" colspan="3">${task.name}</td>
                        </tr>
                        <tr>
                            <td class="tdcolor">任务描述</td>
                            <td colspan="3">&nbsp;${task.taskDesc}</td>
                        </tr>
                        <tr>
                            <td class="tdcolor">开始时间</td>
                            <td width="579"><fmt:formatDate value="${task.beginDate}" type="DATE"/></td>
                            <td width="579" class="tdcolor">结束时间</td>
                            <td width="579"><p>&nbsp; <fmt:formatDate value="${task.endDate}" type="DATE"/></p></td>
                        </tr>

                        <tr>
                            <td class="tdcolor">实施人</td>
                            <td>&nbsp;${task.implementorId.name}</td>
                            <td class="tdcolor">任务状态</td>
                            <td>

                                <select name="status">
                                    <option value="${task.status}">${task.status}</option>
                                    <option value="不干了">不干了</option>
                                    <option value="实施中">实施中</option>
                                    <option value="已完成">已完成</option>
                                </select></td>
                        </tr>
                    </table>
                    <input name="Submit" type="submit" class="menu4" value="提交"/>
                </form>
                <form id="form2" name="form1" method="post" action="">
                    <h1>计划信息：</h1>
                    <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">

                        <c:set var="status" value="已完成"></c:set>
                        <c:if test="">没有计划</c:if>
                        <c:choose>
                            <c:when test="${task.plans.size()==0}" >该任务占时没有计划</c:when>
                            <c:otherwise>
                                <tr>
                                    <td width="15%" class="tdcolor">计划名称</td>
                                    <td width="15%" class="tdcolor">完成状态</td>
                                    <td class="tdcolor">是否反馈</td>
                                    <td class="tdcolor">开始时间</td>
                                    <td class="tdcolor">结束时间</td>
                                    <td class="tdcolor">&nbsp;</td>
                                </tr>
                                <c:forEach items="${task.plans}" var="plan">
                                    <c:choose>
                                        <c:when test="${plan.status.equals(status)}">
                                            <tr>${plan.planName}计划已完成</tr>
                                        </c:when>
                                        <c:otherwise>
                                            <tr>
                                                <td>${plan.planName}</td>
                                                <td>${plan.status}</td>
                                                <td>${plan.feedback}</td>
                                                <td><fmt:formatDate value="${plan.beginDate}" type="DATE"/></td>
                                                <td><fmt:formatDate value="${plan.endDate}" type="DATE"/></td>
                                                <td><label>
                                                    <input type="checkbox" name="planId" value="${plan.planId}"/>
                                                </label></td>
                                            </tr>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>

                    </table>
                    <p>
                        <label>
                            <input name="Submit" type="submit" class="menu3" value="反馈信息"/>
                        </label>
                    </p>
                </form>
            </div>
        </td>
    </tr>
</table>
<!-- #BeginLibraryItem "/Library/copyright.lbi" -->
<div class="copyright">COPYRIGHT 2007 DATANG TELECOM TECHNOLOGY CO.LTD 京ICP备06071639号</div><!-- #EndLibraryItem -->
<!-- #BeginLibraryItem "/Library/bottom.lbi" -->
<div id="bottom"><img src="${pageContext.request.contextPath}/resources/images/button.jpg" width="1002" height="17"/>
</div><!-- #EndLibraryItem -->
</body>
</html>
