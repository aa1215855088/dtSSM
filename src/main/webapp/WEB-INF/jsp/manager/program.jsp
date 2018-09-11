<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>计划详细信息</title>
    <link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css"/>
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css"/>
<div id="logo"><img src="${pageContext.request.contextPath}/resources/images/top.jpg" width="1002" height="258"/></div>
<!-- #EndLibraryItem -->
<table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;top: 205px">
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
                <p>您现在的位置 &gt;&gt; 查看任务 &gt;&gt; 计划详细信息</p>
                <h1>计划详细信息：</h1>
                <form id="form1" name="form1" method="post" action="/man/task/taskparticular?taskId=${plan.task.id}">

                    <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">
                        <tr>
                            <td width="15%" class="tdcolor">计划名称</td>
                            <td width="579" colspan="3">${plan.planName}</td>
                        </tr>
                        <tr>
                            <td class="tdcolor">计划描述</td>
                            <td colspan="3">&nbsp;${plan.planDesc}</td>
                        </tr>
                        <tr>
                            <td class="tdcolor">开始时间</td>
                            <td width="579"><fmt:formatDate value="${plan.beginDate}" type="DATE"/></td>
                            <td width="20%" class="tdcolor">结束时间</td>
                            <td width="50%"><p>&nbsp;<fmt:formatDate value="${plan.endDate}" type="DATE"/></p></td>
                        </tr>
                        <tr>
                            <td class="tdcolor">所属任务</td>
                            <td>&nbsp;${plan.task.name}</td>
                            <td class="tdcolor">计划状态</td>
                            <td>&nbsp;${plan.status}</td>
                        </tr>
                        <tr>
                            <td class="tdcolor">反馈信息</td>
                            <td colspan="3">${plan.feedbackInfo}</td>
                        </tr>
                    </table>
                    <p>
                        <label>
                            <input name="Submit" type="submit" class="menu4" value="返回"/>
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
