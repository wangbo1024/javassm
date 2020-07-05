<%--
  Created by IntelliJ IDEA.
  User: ThinkPad
  Date: 2020/7/5
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
    <!-- web路径：
    不以/开始的相对路径，找资源，以当前资源的路径为基准，经常容易出问题。
    以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:8080)；需要加上项目名
            http://localhost:3306/crud
     -->
    <script type="text/javascript"	src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>
    <link href="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <script	src="${pageContext.request.contextPath }/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
    <div style="float: left">
        <form id="addEmployee">
            姓名：<input type="text" name="name"><br/>
            年龄：<input type="number" name="age"><br/>
            性别：<input type="radio" name="gender" id="gender1_update_input" value="男" checked="checked"> 男
            <input type="radio" name="gender" id="gender2_update_input" value="女"> 女<br/>
            地址：<input type="text" name="address"><br/>
            <input onclick="addEmployee()" type="button" value="添加"><br/>
        </form>
    </div>
    <div style="margin-left: 20px; float: left">
        姓名：<input type="text" name="empName" id="empName">
        <input type="button" onclick="deleteEmployee()" value="删除">
    </div>
    <div style="margin-left: 50px">
        姓名：<input type="text" name="empName" id="empName_query">
        <input type="button" onclick="queryEmployee()" value="查询">
    </div>
    <script type="text/javascript">
        function addEmployee() {
            $.ajax({
                type: "POST",//方法类型，或者用GET
                dataType: "json",//数据格式为json
                url: "employee/addEmployee" ,//访问的url路径
                data: $("#addEmployee").serialize(),//获取表单里的数据到这里
                success: function (result) {
                    alert(result);
                },
                error : function() {
                    alert("异常！");
                }
            });
        }
        function deleteEmployee() {
            var empName = $("#empName").val();
            $.ajax({
                type: "post",
                dataType: "json",//数据格式为json
                url: "employee/deleteEmployee",//访问的url路径
                data: "empName="+empName,//获取表单里的数据到这里
                success: function (result) {
                    alert(result);
                },
                error : function() {
                    alert("异常！");
                }
            });
        }
        function queryEmployee() {
            var empName = $("#empName_query").val();
            $.ajax({
                type: "post",
                dataType: "json",//数据格式为json
                url: "employee/queryEmployee",//访问的url路径
                data: "empName="+empName,//获取表单里的数据到这里
                success: function (result) {
                    alert(result.name+","+result.age+","+result.gender+","+result.address);
                },
                error : function() {
                    alert("异常！");
                }
            });
        }
    </script>
</body>
</html>
