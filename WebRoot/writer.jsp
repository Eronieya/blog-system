<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>  
<html>  
<head lang="en">  
    <meta charset="UTF-8">  
    
    <title>writer</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>  
	<script src="ckeditor/ckeditor.js"></script>
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
	</style>
</head>
<body>
	<%	//判断用户是否登录,若未登录则先请求登录
		if(session.getAttribute("email")==null){
			response.sendRedirect("login.jsp");
		}
	%>
	
	<div style="width: 75%; margin: 0 auto;">
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
			      <ul class="nav navbar-nav navbar-right">
			        <li><a href="/about/">About</a></li>
			      </ul>
			    </div>
			</div>
		  </div>
	  </nav>
	</header>
	
	<div id="writer" style="margin-top: 20%;">
	    <form method="Get" action="addArticle">
	    	<h3>标题:</h3>
	    	<input id="title" name="title" type="text" onblur="if(this.value==''){this.value='请输入你的标题';}" onfocus="if(this.value=='请输入你的标题'){this.value='';}" value="请输入你的标题"></input>
	    	<!-- <h3>图片:</h3>
	    	<input/> -->
	    	<h3>内容:</h3>
	        <textarea name="description" id="description"/></textarea>
	        <input style="float:right;" type="submit" value="发表博文"/>
	    </form>
    </div>
  </div>
</body>
</html>