<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>  
<html>  
<head lang="en">  
    <meta charset="UTF-8">  
    
    <title>article</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>  
	<script type="text/javascript">
	    window.onload = function()
	    {
	        CKEDITOR.replace( 'description');
	    };
	</script>   
	
	<style>
		button,input,
		optgroup,select,
		textarea {
			color: #9d9d9d;
			font: inherit;
			margin: 0;
		}
		.content-body{
			margin-top: 15%;
			text-align: center;
		}
		.article-title{
			font-family: "Times New Roman",Georgia, Serif;
			font-size:35px;
			margin-bottom: 20px;
		}
		.article-createtime{
			font-family:"Sorts Mill Goudy";
			font-size:15px;
			margin-bottom:10px;
		}
		.article-picture{
			height: auto;
			margin: 0 auto;
		}
		.article-content{
			font-family:"Sorts Mill Goudy";
			font-size: 20px;
			text-align: left;
			margin-top: 25px;
			margin-bottom: 50px;
		}
		.article-comment{
			margin-top: 50px;
		}
		.article-comment{
			text-align: left;
			font-style:oblique
		}
		.comment-content{
			padding-left: 20px;
			padding-top:10px;
			margin-bottom: 60px;
		}
		.tip-comment{
			text-align:left;
			font-family:"Sorts Mill Goudy";
			font-style:oblique;
			font-size: 15px;
			margin-bottom: 15px;
		}
	</style>
</head>
<body>
	<%-- <%	//判断用户是否登录,若未登录则先请求登录
		if(request.getAttribute("Blog")==null){
			int id = Integer.parseInt((String)request.getAttribute("BlogId"));
			response.sendRedirect("article?id="+id);
		}
	%> --%>
	
	<div style="width: 60%; margin: 0 auto;">
	<header>
	  <nav class="navbar" style="background-color:#383838; min-height:0px;">
		  <div class="navbar navbar-inverse navbar-fixed-top">
		  	 <div class="navbar-header"> 
			      <a class="navbar-brand"  href="BlogHome.jsp">Blog Home</a>
			 </div>
			 <div class="container">
			   	<div class="navbar-collapse collapse" role="navigation">
			      <ul class="nav navbar-nav">
			        <li class="hidden-sm"></li>
	<!-- 		        <li><a href="Home.jsp" target="_blank" >Home</a></li>
			        <li><a href="Personal.jsp" target="_blank">Personal</a></li>
			        <li><a href="Moment.jsp" target="_blank">Moment</a></li> -->
			        <li></li>
			        <li></li>
			      </ul>
			      <ul class="nav navbar-nav navbar-right ">
			        <li><a href="/about/">About</a></li>
			      </ul>
			    </div>
			</div>
		  </div>
	  </nav>
	</header>
	
	<div class="content-body">
		<div class="article-title">${Blog.title }</div>
		<div class="article-createtime">${Blog.createdTime } By <a href="#">editor</a></div>
		<div class="article-picture"><img src="img/timg.jpeg" style="width:100%; height:100%;"/></div>
		<div class="article-content">${Blog.content }</div>
		<hr>
		<c:forEach var="commentInfo" items="${requestScope.commentList }">
		<div class="article-comment">
			<div class="comment-Date">${commentInfo.createdTime }</div>
			<div class="commenter"><a>${commentInfo.username }:</a></div>
			<div class="comment-content">${commentInfo.content}</div>
			<hr>
		</div>
		</c:forEach>
		<%if(!session.getAttribute("email").equals(request.getAttribute("Email"))) {%>
		<div class="write-comment">
			<div class="write-place">
				<div class="tip-comment">write down your comment:</div>
				<form action="inputComment" method="Post">
					<div style="margin-bottom:15px;"><textarea name="content" style="width: 90%;height: 115px;"></textarea></div>
					<input type="hidden" name="id" value="${Blog.id }" />
					<div><input type="submit" value="submit comment"/></div>
				</form>
			</div>
		</div>
		<% }%>
	</div>
	
	</div>
  
  </body>
</html>
