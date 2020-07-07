<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020/5/16
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<title>登录界面</title>
<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<style type="text/css">
    .myIcon-login{
        background: url("images/login.jpg") no-repeat center center;
    }
</style>
<script type="text/javascript">
$(function () {
    $("#login_submit").click(function () {
        $('#login_form').form('submit', {
            url:'login',
            onSubmit: function(){
              //非空验证
                if ($(":text:eq(0)").val()==""){
                    $.messager.alert('系统提示','用户名不能为空！');
                    return false;
                }else if ($(":text:eq(1)").val()==""){
                    $.messager.alert('系统提示','密码不能为空！');
                    return false;
                }
            },
            success:function(data){
                if(data=="1"){
                    location.href="page/main.jsp";
                }else {
                    $.messager.alert('系统提示','登陆失败！');
                }
            }
        });
    })
})
</script>
</head>
<body>
<div style="margin: 150px auto;width: 500px">
    <div id="p" class="easyui-panel" title="登录"
         style="width:500px;height:220px;padding:10px;background:#fafafa;"
         data-options="iconCls:'myIcon-login'">
            <form id="login_form" action="login" method="post">
                <table align="center" width="250px">
                    <tr>
                        <td colspan="2" style="text-align: center;font-size: 20px;font-weight: bold">至尊管理系统</td>
                    </tr>
                    <tr style="height: 40px">
                        <td>登录名：</td>
                        <td><input type="text" name="username"></td>
                    </tr>
                    <tr style="height: 40px;">
                        <td>密码：</td>
                        <td><input type="text" name="password"></td>
                    </tr>
                    <tr>
                        <td colspan="2" width="250px">
                            <a id="login_submit" style="margin-left: 180px" id="btn" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">登录</a>
                        </td>
                    </tr>
                </table>
            </form>
    </div>
</div>

</body>
</html>
