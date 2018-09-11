<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="../../../resources/common/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>新建用户</title>
<link href="../../../resources/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body><!-- #BeginLibraryItem "/Library/topbanner.lbi" -->
<link href="../../../resources/css/css.css" rel="stylesheet" type="text/css" />
<div id="logo"><img src="../../../resources/images/top.jpg" width="1002" height="258" /></div>
<!-- #EndLibraryItem --><table width="1002" border="0" cellspacing="0" cellpadding="0" style="position: absolute;top: 250px;">
  <tr>
    <td class="rightimg"><!-- #BeginLibraryItem "/Library/left3.lbi" -->
<link href="../../../resources/css/css.css" rel="stylesheet" type="text/css" />
<div id="left2">
    <p><a href="/admin/useradmin" target="_self">用户管理</a></p>
    <p><a href="/admin/empadmin" target="_self">员工管理</a></p>
    <p><a href="/admin/empdistribute" target="_self">分配人员</a></p>
    <p><a href="../login.html" target="_self">退出系统</a></p>
</div><!-- #EndLibraryItem --><div id="right">
        <p>您现在的位置 &gt;&gt; 添加人员 &gt;&gt; 人员详细信息</p>
        <h1>人员详细信息:</h1>
	  
	  <form id="form1" name="form1" method="post" action="/admin/personadd/add">
          <p>用户名称：
            
            <input name="employeeName" type="text" size="16" />
          </p>
          <p>真实姓名：
            
            <input name="realName" type="text" size="16" />
          </p>
          <p>性&nbsp;&nbsp;&nbsp; 别：
            <input name="sex" type="radio" value="男" checked="checked" />
          男
          <input type="radio" name="sex" value="女" />
          女
          </p>
          <p>出生年月：
            <input name="birthday" type="text" size="16" />
          </p>
          <p>职位信息：
              <input name="duty" type="text" size="16" />
          </p>
          <p>入职时间：
            <input name="enrollDate" type="text" size="16" />
</p>
          <p>学历信息：
            <select name="education">
              <option value="小学">小学</option>
              <option value="初中">初中</option>
              <option value="高中">高中</option>
              <option value="大学">大学</option>
              <option value="大专">大专</option>
              <option value="硕士">硕士</option>
              <option value="博士">博士</option>
              <option value="博士后">博士后</option>
                       &nbsp;&nbsp; </select>
            <span class="marginleft">专业信息：</span>
            <select name="major">
                        <option value="市场营销">市场营销</option>
                        <option value="金融管理">金融管理</option>
                        <option value="会计">会计</option>
            </select>
          </p>
          <p>行业经验：
            <label>
            <textarea name="experience" cols="44"></textarea>
            </label>
          </p>
          <p>所属角色：
            <label>
            <select name="roleId">
              <option value="1">系统管理员</option>
              <option value="2">主管</option>
              <option value="3">员工</option>
            </select>
            </label>
          </p>
          <p>初始密码：
            <input id="password1" name="textfield32" type="password" size="16" maxlength="6" />
          </p>
          <p>确认密码：
            <input id="password2" name="password" type="password" size="16" maxlength="6" />
          </p>
          <p>&nbsp; </p>
            <p>
              
              <input name="Submit" type="reset" class="menu2" value="重置" />
             
           &nbsp; 
              
              <input name="Submit2" type="submit" class="menu1" value="提交" />
           </p>
      </form>
    </div>    </td></tr>
</table>
<!-- #BeginLibraryItem "/Library/bottom.lbi" --><div id="bottom"><img src="../../../resources/images/button.jpg" width="1002" height="17" /></div><!-- #EndLibraryItem --></body>
</html>
