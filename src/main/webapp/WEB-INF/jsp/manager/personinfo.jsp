<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>人员详细信息</title>
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="${pageContext.request.contextPath}/resources/css/css.css" rel="stylesheet" type="text/css" />
<div id="logo"><img src="${pageContext.request.contextPath}/resources/images/top.jpg" width="1002" height="258" /></div>
<!-- #EndLibraryItem --><table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;top: 250px">
  <tr>
    <td class="rightimg"><!-- #BeginLibraryItem "/Library/left.lbi" --><div id="left">
        <p><a href="/man/taskview" target="_self">查看任务</a></p>
        <p><a href="/man/task" target="_self">制定任务</a></p>
        <p><a href="/man/taskundone" target="_self">调整任务</a></p>
        <p><a href="/man/intendance" target="_self">跟踪任务</a></p>
        <p><a href="/man/checkper" target="_self">查看人员</a></p>
        <p><a href="/logOut" target="_self">退出系统</a></p>
</div><!-- #EndLibraryItem --><div id="right">
        <p>您现在的位置 &gt;&gt; 查看人员 &gt;&gt; 人员详细信息</p>
        <h1>人员详细信息:</h1>
        <form id="form1" name="form1" method="post" action="/man/checkper">
            <table width="700" border="0" cellpadding="0" cellspacing="0" class="table" >
                <input name="id" type="hidden" value="${employee.id}">
                <tr>
                    <td class="tdcolor">用户名称</td>
                    <td>&nbsp;${employee.name}</td>
                </tr>
                <tr>
                    <td width="15%" class="tdcolor">真实姓名</td>
                    <td>&nbsp;${employee.realName}</td>
                </tr>
                <tr>
                    <td class="tdcolor">行业角色</td>
                    <td>&nbsp;${employee.duty}</td>
                </tr>
                <tr>
                    <td class="tdcolor">性&nbsp;&nbsp;&nbsp; 别</td>
                    <td>${employee.sex}</td>
                </tr>
                <tr>
                    <td class="tdcolor">入职时间</td>
                    <td>&nbsp;<fmt:formatDate value="${employee.enrollDate}" type="DATE"></fmt:formatDate></td>
                </tr>
                <tr>
                    <td class="tdcolor">职位信息</td>
                    <td>&nbsp;${employee.experience}</td>
                </tr>
                <tr>
                    <td class="tdcolor">出生年月</td>
                    <td>&nbsp;<fmt:formatDate value="${employee.birthday}" type="DATE"></fmt:formatDate></td>
                </tr>
                <tr>
                    <td class="tdcolor">学历信息</td>
                    <td>&nbsp;${employee.education}</td>
                </tr>
                <tr>
                    <td class="tdcolor">专业信息</td>
                    <td>&nbsp;${employee.major}</td>
                </tr>
                <tr>
                    <td class="tdcolor">行业经验</td>
                    <td>&nbsp;${employee.experience}</td>
                </tr>
            </table>
    <p>
              <label>
              <input name="Submit" type="submit" class="menu4" value="返回" />
            </label>
          </p>
      </form>
      </div>
    </td></tr>
</table>
<!-- #BeginLibraryItem "/Library/bottom.lbi" --><div id="bottom"><img src="${pageContext.request.contextPath}/resources/images/button.jpg" width="1002" height="17" /></div><!-- #EndLibraryItem --></body>
</html>
