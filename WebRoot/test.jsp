<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>update 操作</title>
</head>
<body>
<!--
JDBC 驱动名及数据库 URL 
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码
 -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/studentcource?useUnicode=true&characterEncoding=utf-8"
     user="root"  password=""/>

 
<sql:update dataSource="${snapshot}" var="count">
  INSERT INTO s (SNO,SN,SD,SB,SEX) VALUES ('s19','大哥','体育','1999-09-09 00:00:00','男');
</sql:update>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from s;
</sql:query>
<h1>JSP 数据库实例 - 菜鸟教程</h1>
<table border="1" width="100%">
<tr>
   <th>SNO</th>
   <th>SN</th>
   <th>SD</th>
   <th>SB</th>
   <th>SEX</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.SNO}"/></td>
   <td><c:out value="${row.SN}"/></td>
   <td><c:out value="${row.SD}"/></td>
   <td><c:out value="${row.SB}"/></td>
   <td><c:out value="${row.SEX}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>