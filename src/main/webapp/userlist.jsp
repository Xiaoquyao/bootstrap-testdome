<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/17
  Time: 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-table-zh-CN.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-editable.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-table-editable.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-table.min.css">
    <link rel="stylesheet" href="css/bootstrap-editable.css">
    <title>Title</title>

</head>
<body>

<div class="container">

    <%--<form class="form-inline">
        <div class="input-group">
            <span class="input-group-addon">姓名：</span>
            <input type="text" placeholder="请输入姓名" id="searchname" class="form-control">
            <div class="input-group-btn">
                <input type="button" id="btnsearchuser" class="btn btn-primary" value="查询">
            </div>

        </div>
    </form>--%>

    <div class="table-responsive">
        <table id="codeCheckTable" class="table table-striped table-bordered table-hover">

        </table>

    </div>
</div>
<script type="text/javascript">

   $(function () {

       $("#codeCheckTable").bootstrapTable({
           url: "queryUser.action",//要请求数据的文件路径
           method: 'post',
           editable:true,//开启编辑模式
           striped: true,                      //是否显示行间隔色
           height:300,
           cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
           pagination: true,                   //是否显示分页（*）
           sortable: true,                     //是否启用排序
           sortOrder: "asc",                   //排序方式
           sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
           pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
           pageSize: 2,                     //每页的记录行数（*）
           pageList: [2, 4, 6, 8],        //可供选择的每页的行数（*）
           search: true,                      //是否显示表格搜索
           searchAlign: 'left',
           searchable: true,
           showColumns: true,                  //是否显示所有的列（选择显示的列）
           showRefresh: true,                  //是否显示刷新按钮
           minimumCountColumns: 2,             //最少允许的列数
           clickToSelect: true,                //是否启用点击选中行
           editable: true,
           //height: 500,                      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
           showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
           //cardView: true,                    //是否显示详细视图
           //detailView: false,                  //是否显示父子表
           /*queryParams :function(params) {
               return {
                   offset: params.offset+1,
                   pageSize: params.limit,
               };
           },*/
           columns: [
               {
                   title: 'ID',
                   field: 'uid',
                   visible: false
               },
               {
                   title: '姓名',
                   field: 'uname',
                   sortable: true,
                   cellStyle: { //设置样式
                       css: {"background-color": "pink"}
                   }

               },
               {
                   title: '出生日期',
                   field: 'udate',
                   sortable: true
               },

           ],
           locale: 'zh-CN',//中文支持,
           responseHandler: function (res) {
               //在ajax获取到数据，渲染表格之前，修改数据源
               return res;
           }
       })

       //实现条件查询
       /*$("#btnsearchuser").click(function () {
           $('#codeCheckTable').bootstrapTable("refresh");
       });*/

   })
</script>
</body>
</html>
