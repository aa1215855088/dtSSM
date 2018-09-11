<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>计划信息</title>
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="../../../resources/css/css.css" rel="stylesheet" type="text/css"/>
<div id="logo"><img src="../../../resources/images/top.jpg" width="1002" height="258"/></div>
<!-- #EndLibraryItem -->
<table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;top: 260px">
    <tr>
        <td class="rightimg"><!-- #BeginLibraryItem "/Library/left2.lbi" -->
            <div id="left">
                <p><a href="/person/newpro" target="_self">计划管理</a></p>
                <p><a href="/person/checkpro" target="_self">查询计划</a></p>
                <p><a href="/person/task" target="_self">我的任务</a></p>
                <p><a href="/logOut" target="_self">退出系统</a></p>
            </div>
            <!-- #EndLibraryItem -->
            <div id="right">
                <p>您现在的位置 &gt;&gt; 计划管理 &gt;&gt; 计划信息</p>
                <form id="form1" name="form1" method="post" action="/person/plan/delete?taskId=${task.id}">
                    <h1>任务详细信息:</h1>

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
                            <td width="579"><p>&nbsp;<fmt:formatDate value="${task.endDate}" type="DATE"/></p></td>
                        </tr>

                        <tr>
                            <td class="tdcolor">实施人</td>
                            <td>&nbsp;${task.implementorId.name}</td>
                            <td class="tdcolor">任务状态</td>
                            <td>
                                ${task.status}
                        </tr>
                    </table>


                    <h1>计划信息：</h1>
                    <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">


                        <c:choose>
                            <c:when test="${task.plans.size()==0}">没有计划</c:when>
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
                                    <tr>
                                        <td><a href="/person/feedback?planId=${plan.planId}&taskId=${task.id}"
                                               target="_self">${plan.planName}</a></td>
                                        <td>${plan.status}</td>
                                        <td>${plan.feedback?"已反馈":"未反馈"}</td>
                                        <td><fmt:formatDate value="${plan.beginDate}" type="DATE"/></td>
                                        <td><fmt:formatDate value="${plan.endDate}" type="DATE"/></td>
                                        <td><label>
                                            <input type="checkbox" name="planId" value="${plan.planId}"/>
                                        </label></td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>


                    </table>
                    <p>
                        <input onclick="add(${task.id})" name="Submit2" type="button" class="menu2" value="新建"/>
                        <input name="Submit" type="submit" class="menu1" value="删除"/>
                        <script type="text/javascript">
                            function add(id) {
                                window.location = "/person/newpro?taskId=" + id;
                            }
                        </script>
                    </p>
                </form>
            </div>
        </td>
    </tr>
</table>
<!-- #BeginLibraryItem "/Library/bottom.lbi" -->
<div id="bottom"><img src="../../../resources/images/button.jpg" width="1002" height="17"/></div>
<!-- #EndLibraryItem --></body>
</html>
