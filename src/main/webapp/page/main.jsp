<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020/5/17
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>主页面</title>
<link rel="stylesheet" type="text/css" href="/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/js/easyui/themes/icon.css">
<script type="text/javascript" src="/js/jquery-1.7.2.js"></script>
<script type="text/javascript" src="/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript">
$(function () {
    $('#main_tree').tree({
        url:'/showMenu',
        onClick: function(node){
            if ($('#main_tabs').tabs("getTab",node.text)==null){
                $('#main_tabs').tabs('add',{
                    title: node.text,
                    selected: true,
                    //href只能引入<body>标签中的内容
                    //content:'<b>aa</b>'
                    href:node.attributes.filename,
                    closable:true
                });
            }else {
                $('#main_tabs').tabs("select",node.text);
            }
        }
    });
})
</script>
</head>

<body class="easyui-layout">
<div data-options="region:'north',title:'管理系统',split:false" style="height:100px;">
    <div style="width: 400px;height: 71px;float: left;line-height: 70px;font-size: 20px; font-weight: bold;padding-left: 20px;">
        至尊管理系统
    </div>
    <div style="width: 250px;height: 71px;float: right;line-height: 70px;font-size: 12px;font-weight: bold;padding-left: 20px;">
        你好！${user.username},欢迎登录。
    </div>
</div>
<div data-options="region:'south',title:'底部申明',split:false" style="height:100px;">
    <div style="height: 70px;text-align: center;line-height: 70px;color: grey;font-weight: bold ">
        Copyright &copy; 2020
    </div>
</div>
<div data-options="region:'west',title:'菜单',split:false" style="width:200px;">
    <ul id="main_tree"></ul>
</div>
<div data-options="region:'center',title:'内容'"  style="padding:5px;background:#eee;">
    <div id="main_tabs" class="easyui-tabs" style="width:500px;height:250px;" data-options="fit:true">

    </div>
</div>
</body>

</html>
