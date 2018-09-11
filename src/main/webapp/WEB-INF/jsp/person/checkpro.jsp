<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>查询计划</title>
    <link href="${pageContext.request.getContextPath()}/resources/css/css.css" rel="stylesheet" type="text/css"/>
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<img src="${pageContext.request.getContextPath()}/resources/images/top.jpg" width="1002" height="258"/></div>
<!-- #EndLibraryItem -->
<table width="1002" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td class="rightimg"><!-- #BeginLibraryItem "/Library/left2.lbi" -->
            <div id="left">
                <p><a href="/person/newpro" target="_self">计划管理</a></p>
                <p><a href="/person/checkpro" target="_self">查询计划</a></p>
                <p><a href="/person/task" target="_self">我的任务</a></p>
                <p><a href="/logOut" target="_self">退出系统</a></p>
            </div><!-- #EndLibraryItem -->
            <div id="right">
                <p>您现在的位置 &gt;&gt; 查询计划 &gt;&gt; 查询</p>
                <form id="form1" name="form1" method="post" action="">
                    <h1>查询信息:</h1>
                    <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">
                        <tr>
                            <td width="15%" class="tdcolor">计划名称</td>
                            <td width="579">任务一</td>
                        </tr>
                        <tr>
                            <td class="tdcolor">所属任务</td>
                            <td><select name="taskId">
                                <option value="">请选择任务---</option>
                                <c:if test="${empty taskList}">没有任务</c:if>
                                <c:forEach items="${taskList}" var="task">
                                    <option value="${task.id}">${task.name}</option>
                                </c:forEach>
                            </select></td>
                        </tr>

                        <tr>
                            <td class="tdcolor">开始时间</td>
                            <td>从
                                <input name="beginDate" type="text" size="15"/>
                                到
                                <input name="beginDate1" type="text" size="15"/></td>
                        </tr>
                        <tr>
                            <td class="tdcolor">结束时间</td>
                            <td>从
                                <input name="endDate" type="text" size="15"/>
                                到
                                <input name="endDate1" type="text" size="15"/></td>
                        </tr>
                        <tr>
                            <td class="tdcolor">是否反馈</td>
                            <td><label>
                                <input name="feedback" type="text" size="15"/>
                            </label></td>
                        </tr>
                    </table>
                    <p>
                        <input id="find" name="Submit" type="button" class="menu3" value="查询计划"/>
                    </p>

                    <h1>计划信息：</h1>
                    <table width="700" border="0" cellpadding="0" cellspacing="0" class="table">
                        <thead>
                        <th width="15%" class="tdcolor">计划名称</th>
                        <th width="15%" class="tdcolor">所属任务</th>
                        <th class="tdcolor">开始时间</th>
                        <th class="tdcolor">结束时间</th>
                        <th class="tdcolor">计划状态</th>
                        <th class="tdcolor">是否反馈</th>
                        </thead>
                        <tbody id="planTable">

                        </tbody>
                    </table>
                </form>
            </div>
        </td>
    </tr>
</table>
<script type="text/javascript" src="${pageContext.request.getContextPath()}/resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.getContextPath()}/resources/js/js.js"></script>
<script type="text/javascript">

    $("#find").click(function () {
        $("#planTable").empty()
        var info = "";
        var a = $("#form1").serializeArray();
        $.ajax({
            type: "post",
            url: "${pageContext.request.getContextPath()}/person/findPlan",
            data: JSON.stringify(a),
            contentType: " application/json",
            dataType: "json",
            success: function (findPlanVOList) {
                $(findPlanVOList).each(function () {
                    info += "<tr>" +
                        "<td>" + this.planName + "</td>" +
                        "<td>" + $("option:selected").text() + "</td>" +
                        "<td>" + this.beginDate+ "</td>" +
                        "<td>" + this.endDate + "</td>" +
                        "<td>" + this.status + "</td>" +
                        "<td>" + this.feedback+ "</td>" +
                        "</tr>"
                })

                $("#planTable").html(info)
            },
            error: function () {
                $("#planTable").append('<tr>')
                $("#planTable").append("<td>" + '该任务没有计划' + "</td>")
                $("#planTable").append("</tr>")
            }

        })
    })


</script>
<!-- #BeginLibraryItem "/Library/bottom.lbi" -->
<div id="bottom"><img src="${pageContext.request.getContextPath()}/resources/images/button.jpg" width="1002"
                      height="17"/></div><!-- #EndLibraryItem --></body>
</html>
