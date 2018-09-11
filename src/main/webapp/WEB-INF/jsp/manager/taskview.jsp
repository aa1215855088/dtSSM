<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>查看任务</title>
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css" />
<img src="${pageContext.request.contextPath}/resources/images/top.jpg" width="1002" height="258" /></div>
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
        <p>您现在的位置 &gt;&gt; 查看任务 &gt;&gt; 任务信息</p>
        <h1>任务信息:</h1>
        <form action="/man/task/taskparticular" method="post" name="form1" target="_self" id="form1">
          <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">
            <tr>
              <td width="15%" class="tdcolor">任务名称</td>
              <td width="15%" class="tdcolor">实施人</td>
              <td width="15%" class="tdcolor">开始时间</td>
              <td width="15%" class="tdcolor">结束时间</td>
              <td width="15%" class="tdcolor">任务状态</td>
              <td width="15%" class="tdcolor">计划数目</td>
              <td width="10%" class="tdcolor">&nbsp;</td>
            </tr>
            <c:if test="${empty taskList}">没有任务</c:if>
            <c:forEach items="${taskList}" var="task">
              <tr>
                <td>${task.name}</td>
                <td>${task.implementorId.name}</td>
                <td><fmt:formatDate value="${task.beginDate}" type="DATE"/> </td>
                <td><fmt:formatDate value="${task.endDate}" type="DATE"/></td>
                <td>${task.status}</td>
                <td>${task.plans.size()}</td>
                <td><input type="radio" name="taskId" value="${task.id}" /></td>
              </tr>
            </c:forEach>
          </table>
    <p>
              <label>
              <input name="Submit" type="submit" class="menu3" value="详细信息" />
            </label>
          </p>
      </form>
      </div>
    </td></tr>
</table>
<!-- #BeginLibraryItem "/Library/bottom.lbi" --><div id="bottom"><img src="${pageContext.request.contextPath}/resources/images/button.jpg" width="1002" height="17" /></div><!-- #EndLibraryItem --></body>
</html>
