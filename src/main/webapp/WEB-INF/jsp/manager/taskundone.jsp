<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>未实施任务</title>
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css" />
<div id="logo"><img src="${pageContext.request.contextPath}/resources/images/top.jpg" width="1002" height="258" /></div>
<!-- #EndLibraryItem --><table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;top: 250px;">
  <tr>
    <td class="rightimg"><!-- #BeginLibraryItem "/Library/left.lbi" --><div id="left">
      <p><a href="/man/taskview" target="_self">查看任务</a></p>
      <p><a href="/man/task" target="_self">制定任务</a></p>
      <p><a href="/man/taskundone" target="_self">调整任务</a></p>
      <p><a href="/man/intendance" target="_self">跟踪任务</a></p>
      <p><a href="/man/checkper" target="_self">查看人员</a></p>
      <p><a href="/logOut" target="_self">退出系统</a></p>
</div><!-- #EndLibraryItem --><div id="right">
        <p>您现在的位置 &gt;&gt; 查看任务 &gt;&gt; 未实施任务信息</p>
        <h1>未实施任务信息:</h1>
        <form id="form1" name="form1" method="post" action="/man/task/delete">
          <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">
            <tr>
              <td width="15%" class="tdcolor"><a href="#" target="_self">任务名称</a></td>
              <td class="tdcolor"><a href="#" target="_self">实施人</a></td>
              <td class="tdcolor"><a href="#" target="_self">开始时间</a></td>
              <td class="tdcolor"><a href="#" target="_self">结束时间</a></td>
              <td class="tdcolor"><a href="#" target="_self">任务状态</a></td>
              <td class="tdcolor">&nbsp;</td>
            </tr>
            <c:if test="${empty taskList}">没有任务</c:if>
            <c:forEach items="${taskList}" var="task">
              <tr>
                <td><a href="/man/adjust?taskId=${task.id}">${task.taskName}</a></td>
                <td>${task.employeeName}</td>
                <td><fmt:formatDate value="${task.beginDate}" type="DATE"/> </td>
                <td>&nbsp;<fmt:formatDate value="${task.endDate}" type="DATE"/> </td>
                <td>${task.status}</td>
                <td><label>
                  <input type="checkbox" name="taskId" value="${task.id}" />
                </label></td>
              </tr>
            </c:forEach>

          </table>
    <p>
            <label>
            <input name="Submit" type="submit" class="menu4" value="删除" />
            </label>
          </p>
      </form>
    </div>    </td></tr>
</table>
<!-- #BeginLibraryItem "/Library/bottom.lbi" --><div id="bottom"><img src="${pageContext.request.contextPath}/resources/images/button.jpg" width="1002" height="17" /></div><!-- #EndLibraryItem --></body>
</html>
