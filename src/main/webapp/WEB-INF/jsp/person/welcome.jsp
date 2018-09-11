<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>大唐管理系统首页</title>
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="../../../resources/css/css.css" rel="stylesheet" type="text/css"/>
<img src="../../../resources/images/top.jpg" width="1002" height="258"/></div>
<!-- #EndLibraryItem -->
<table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;left: 458px">
    <tr>
        <td class="rightimg"><!-- #BeginLibraryItem "/Library/left2.lbi" -->
            <%@include file="../../../resources/Library/left1.jsp"%><!-- #EndLibraryItem -->
            <div id="right">
                <p>您现在的位置&gt;&gt; 首页</p>
                <h1>欢迎${fn:split(user,"-")[0]}登录系统</h1>
            </div>
        </td>
    </tr>
</table>
<!-- #BeginLibraryItem "/Library/bottom.lbi" -->
<div style="position: absolute;left: 458px" id="bottom"><img src="../../../resources/images/button.jpg" width="1002" height="17"/></div><!-- #EndLibraryItem --></body>
</html>
