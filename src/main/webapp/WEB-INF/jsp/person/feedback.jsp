<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>反馈信息</title>
    <link href="${pageContext.request.getContextPath()}/resources/css/css.css" rel="stylesheet" type="text/css"/>
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="${pageContext.request.getContextPath()}/resources/css/css.css" rel="stylesheet" type="text/css"/>
<div id="logo"><img src="${pageContext.request.getContextPath()}/resources/images/top.jpg" width="1002" height="258"/></div>
<!-- #EndLibraryItem -->
<table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;top: 250px;">
    <tr>
        <td class="rightimg"><!-- #BeginLibraryItem "/Library/left2.lbi" -->
            <link href="${pageContext.request.getContextPath()}/resources/css/css.css" rel="stylesheet" type="text/css"/>
            <div id="left">
                <p><a href="/person/newpro" target="_self">计划管理</a></p>
                <p><a href="/person/checkpro" target="_self">查询计划</a></p>
                <p><a href="/person/task" target="_self">我的任务</a></p>
                <p><a href="/logOut" target="_self">退出系统</a></p>
            </div><!-- #EndLibraryItem -->
            <div id="right">
                <p>您现在的位置 &gt;&gt; 计划管理 &gt;&gt; 反馈信息</p>
                <form id="form1" name="form1" method="post" action="/person/plan/update?planId=${plan.planId}&taskId=${taskId}">
                    <h1>输入反馈信息:</h1>

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
                            <td width="579" class="tdcolor">结束时间</td>
                            <td width="579"><p>&nbsp;<fmt:formatDate value="${plan.endDate}" type="DATE"/></p></td>
                        </tr>

                        <tr>
                            <td class="tdcolor">计划状态</td>
                            <td colspan="3">

                                <select name="status">
                                    <option value="${plan.status}">${plan.status}</option>
                                    <option value="未实施">未实施</option>
                                    <option value="实施中">实施中</option>
                                    <option value="已完成">已完成</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td class="tdcolor">是否反馈</td>
                            <td colspan="3"><select name="feedback">
                                <c:choose>
                                    <c:when test="${plan.feedback}">
                                        <option value="Y" selected>已反馈</option>
                                        <option value="N">未反馈</option>
                                    </c:when>
                                    <c:otherwise>
                                        <option value="N" selected>未反馈</option>
                                        <option value="Y">已反馈</option>
                                    </c:otherwise>
                                </c:choose>


                            </select></td>
                        </tr>
                        <tr>
                            <td class="tdcolor">反馈信息</td>
                            <td colspan="3"><label>
                                <textarea name="feedbackInfo" cols="60" rows="4">${plan.feedbackInfo}</textarea>
                            </label></td>
                        </tr>
                    </table>


                    <p>
                        <input name="Submit" type="reset" class="menu2" value="取消"/>
                        <input name="Submit" type="submit" class="menu1" value="提交"/>
                    </p>
                </form>
            </div>
        </td>
    </tr>
</table>
<!-- #BeginLibraryItem "/Library/bottom.lbi" -->
<div id="bottom"><img src="${pageContext.request.getContextPath()}/resources/images/button.jpg" width="1002" height="17"/></div><!-- #EndLibraryItem --></body>
</html>
