<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2020/5/17
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
$(function () {
    $('#role_table').datagrid({
        url:'showRole',
        columns:[[
            {field:'id',title:'编号',width:100,hidden:true},
            {field:'name',title:'名称',width:100},
            {field:'sort',title:'排序id',width:100,align:'right'},
            {field:'remark',title:'备注',width:100,align:'right'}
        ]],
        pagination:true,
        pageList:[2,4,6],
        fitColumns:true,
        striped:true,
        toolbar: [{
            iconCls: 'icon-add',
            text:'增加',
            handler: function(){alert('编辑按钮')}
        },'-',{
            iconCls: 'icon-remove',
            text:'删除',
            handler: function(){alert('帮助按钮')}
        },'-',{
            iconCls: 'icon-edit',
            text:'分配权限',
            handler: function(){alert('帮助按钮')}
        },'-',{
            iconCls: 'icon-search',
            text:'查看',
            handler: function(){alert('帮助按钮')}
        }],


    });
})

</script>
<table id="role_table"></table>
</body>
</html>
