<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>制定任务</title>
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css" />
<img src="${pageContext.request.contextPath}/resources/images/top.jpg" width="1002" height="258" /></div>
<!-- #EndLibraryItem --><table width="1002" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td class="rightimg"><!-- #BeginLibraryItem "/Library/left.lbi" --><div id="left">
        <p><a href="${pageContext.request.getContextPath()}/man/taskview" target="_self">查看任务</a></p>
        <p><a href="${pageContext.request.getContextPath()}/man/task" target="_self">制定任务</a></p>
        <p><a href="${pageContext.request.getContextPath()}/man/taskundone" target="_self">调整任务</a></p>
        <p><a href="${pageContext.request.getContextPath()}/man/intendance" target="_self">跟踪任务</a></p>
        <p><a href="${pageContext.request.getContextPath()}/man/checkper" target="_self">查看人员</a></p>
        <p><a href="${pageContext.request.getContextPath()}/logOut" target="_self">退出系统</a></p>
</div><!-- #EndLibraryItem --><div id="right">
        <p>您现在的位置 &gt;&gt; 制定任务 &gt;&gt; 新建任务</p>
        <h1>输入新任务信息</h1>
        
        <form id="form1" name="form1" method="post" action="${pageContext.request.getContextPath()}/man/task/add">
          <p>任务名称：<label>
          <input name="taskName" type="text" size="50" />
          </label></p>
          <p>任务描述：
            <label>
            <textarea name="taskDesc"></textarea>
            </label>
          </p>
            <p>开始时间：
              <label>
                <input name="beginDate" type="text" size="16" />
              </label>
             <span class="marginleft1">结束时间：
              <label>
                <input name="endDate" type="text" size="16" />
              </label></span>
          </p>
          <p>实施人员：
            <label>
              <select name="employeeName">
                <c:forEach items="${managerNameAndId}" var="name">
                    <option value="${name.id}">${name.name}</option>
                </c:forEach>
              </select>
            </label>
            <span class="status">任务状态：
             未实施
            </span></p>
            <p>
              <label>
              <input name="Submit" type="reset" class="menu2" value="重置" />
              </label>
           &nbsp; 
              <label>
              <input name="Submit2" type="submit" class="menu1" value="提交" />
              </label>
           </p>
      </form>
      </div>
    </td></tr>
</table>
<!-- #BeginLibraryItem "/Library/bottom.lbi" --><div id="bottom"><img src="${pageContext.request.contextPath}/resources/images/button.jpg" width="1002" height="17" /></div><!-- #EndLibraryItem --></body>
</html>
