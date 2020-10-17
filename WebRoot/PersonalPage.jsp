<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head> 
	<meta charset="utf-8">
	 <title>PersonalPage</title>
	<!-- Le styles -->
	<link href="//cdn.staticfile.org/twitter-bootstrap/3.0.1/css/bootstrap.min.css" rel="stylesheet">
	<link href="v3/layoutit.css" rel="stylesheet">
	<link href="skin/jplayer.blue.monday.css" rel="stylesheet" type="text/css" />

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<script src="//apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->

	<!-- Fav and touch icons -->

	<script type="text/javascript" src="//cdn.staticfile.org/jquery/2.0.0/jquery.min.js"></script>
	<script type="text/javascript" src="//cdn.staticfile.org/jqueryui/1.10.2/jquery-ui.min.js"></script>
	<script type="text/javascript" src="//cdn.staticfile.org/jqueryui-touch-punch/0.2.2/jquery.ui.touch-punch.min.js"></script>
	<script type="text/javascript" src="//cdn.staticfile.org/twitter-bootstrap/3.0.1/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="v3/jquery.htmlClean.js"></script>
	<script type="text/javascript" src="v3/scripts.min.js"></script>
	<script type="text/javascript" src="css_js/jquery.min.js"></script> 
	<script type="text/javascript" src="jPlayer/jplayer.playlist.min.js"></script>
	<script type="text/javascript" src="jPlayer/jquery.jplayer.min.js"></script>
	<script src="https://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
	<script src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
	<script src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
	
	<script>
		/* $.validator.setDefaults({
		  submitHandler:function(){
		    alert("提交事件!");
		    action("")
		  }
		}); */
		
		$().ready(function(){
		  $("#changePsw").validate({
		    rules:{
		      opwd:{
		      	required:true,
		      	minlength: 5
		      },
		      npwd:{
		      	required:true,
		      	minlength: 5
		      },
		      checkpwd:{
		      	required:true,
		      	minlength: 5,
		      	equalTo:"#npwd"
		      },
		    },
		    
		    messages:{
		      opwd:{
		        required:"请输入旧密码",
		        minlength:"密码长度不能小于5个字母"
		      },
		      npwd:{
		      	required:"请输入新密码",
		      	minlength:"密码长度不能小于5个字母"
		      },
		      checkpwd:{
		      	required:"请确认密码",
		      	minlength:"长度不能小于5",
		      	equalTo:"两次密码输入不一致"
		      }
		    }
		  });
		});
	</script>
	
	<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){
	new jPlayerPlaylist({
		jPlayer: "#jquery_jplayer_2",
		cssSelectorAncestor: "#jp_container_2"
	}, [
		{
			title:"Cro Magnon Man",
			mp3:"http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3",
			oga:"http://www.jplayer.org/audio/ogg/TSP-01-Cro_magnon_man.ogg"
		},
		{
			title:"Your Face",
			mp3:"http://www.jplayer.org/audio/mp3/TSP-05-Your_face.mp3",
			oga:"http://www.jplayer.org/audio/ogg/TSP-05-Your_face.ogg"
		},
		{
			title:"Cyber Sonnet",
			mp3:"http://www.jplayer.org/audio/mp3/TSP-07-Cybersonnet.mp3",
			oga:"http://www.jplayer.org/audio/ogg/TSP-07-Cybersonnet.ogg"
		},
		{
			title:"Tempered Song",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-01-Tempered-song.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-01-Tempered-song.ogg"
		},
		{
			title:"Hidden",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-02-Hidden.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-02-Hidden.ogg"
		},
		{
			title:"Lentement",
			free:true,
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-03-Lentement.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-03-Lentement.ogg"
		},
		{
			title:"Lismore",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-04-Lismore.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-04-Lismore.ogg"
		},
		{
			title:"The Separation",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-05-The-separation.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-05-The-separation.ogg"
		},
		{
			title:"Beside Me",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-06-Beside-me.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-06-Beside-me.ogg"
		},
		{
			title:"Bubble",
			free:true,
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-07-Bubble.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-07-Bubble.ogg"
		},
		{
			title:"Stirring of a Fool",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-08-Stirring-of-a-fool.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-08-Stirring-of-a-fool.ogg"
		},
		{
			title:"Partir",
			free: true,
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-09-Partir.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-09-Partir.ogg"
		},
		{
			title:"Thin Ice",
			mp3:"http://www.jplayer.org/audio/mp3/Miaow-10-Thin-ice.mp3",
			oga:"http://www.jplayer.org/audio/ogg/Miaow-10-Thin-ice.ogg"
		}
	], {
		//swfPath是一个路径,里面存放着swf文件.
		swfPath: "dist",
		supplied: "oga, mp3",
		wmode: "window",
		useStateClassSkin: true,
		autoBlur: false,
		smoothPlayBar: true,
		keyEnabled: true
	});
});
//]]>
</script>
	<style>
		.error{
			color:red;
		}
		.user-list{
			width: 200px;
			height: 100%;
			margin-left: 1px;
			float: left;
			padding-top: 100px;
			background-color: #fbfbfb;
		}
		.tab-content{
			padding-top: 100px;
		}
		.tab-pane{
			padding-left: 200px;
		}
		.table{
			width: 80%;
			margin: 0 auto;
		}
		.li-meta{
			padding-left: 30px;
			padding-right: 25px;
		}
		.comment{
			text-align: left;
			padding-left: 50px;
		}
		.observer-info{
			padding-left: 20px;
			padding-bottom: 8px;
		}
		.delete-btn{
			text-align: right;
			padding-right: 60px;
		}
		.nav::after{
			clear: none;
		}
		.dlt-btn{
			padding-top: 25px;
		}
		.photo-place{
			display: inline-block;
			padding-right: 50px;
		}
		.pht-space{
			width:190px;
			height: 123px;
		}
		#ptl li{
			display: inline-block;
			padding-right: 60px;
			padding-bottom: 50px;
		}
		dt{
			background-color: #f3f3f3;
			height: 40px;
			line-height: 3;
		}
		td{
			padding-top:5px;
		}
		li{
			list-style-type:none;
		}
	</style>
</head>
  
  <body>
    <div style="text-align: center;">
    	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="navbar-header">
					 <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> 
					 <a class="navbar-brand" href="BlogHome.jsp">Blog</a>
				</div>	
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="hover">
							 <a href="#">个人管理</a>
						</li>
						<li>
							 <a href="#">管理员管理</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right" style="margin-right:30px">
						<li>
							 <a href="signOut.jsp" >sign out</a>
						</li>
					</ul>
				</div>			
			</nav>
			
			<div class="user-list">	
				<div class="uportrait">
					<a href="#" target="_blank">
					<img src="#" width="80" height="80">
					</a>
				</div>
				<div>
					<p>${username }</p>
				</div>
				<dl style=" text-align: center;">
					<dt style=" background-color: #f3f3f3;">账号管理</dt>
					<dd>
						<ul class="nav">
							
							<li>
								<a href="#article" data-toggle="tab">博文管理</a>
							</li>
							<li>
								<a href="#photo" data-toggle="tab">图片管理</a>
							</li>
							<li>
								<a href="#music" data-toggle="tab">MP3管理</a>
							</li>
							<li>
								<a href="#leavemsg" data-toggle="tab">留言管理</a>
							</li>
							<li>
								<a href="#Comment" data-toggle="tab">评论查看</a>
							</li>
							<li>
								<a href="#category" data-toggle="tab">分类管理</a>
							</li>
							<li>
								<a href="#cpswd" data-toggle="tab">修改密码</a>
							</li>
						</ul>
					</dd>
				</dl>
		 </div>
		 
		 <div class="tab-content">
		 					
					<div class="tab-pane" id="cpswd">
						<p>
							修改密码
						</p>
						<hr>
						<div style="width:100%;">
						<form  id="changePsw" action="changepswd" method="post">
							<table style="width:auto; margin: 0 auto;">
								<tbody>
									<tr>
										<th>输入旧密码:</th>
										<td>
											<input id="opwd" type="password" name="opwd" />
										</td>
									</tr>
									<tr>
										<th>输入新密码:</th>
										<td>
											<input id="npwd" type="password" name="npwd" />
										</td>
									</tr>
									<tr>
										<th>再次输入新密码:</th>
										<td>
											<input id="checkpwd" type="password" name="checkpwd" />
										</td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<input type="submit" value="确认">
										</td>
									</tr>
								</tbody>
							</table>
						</form>
						</div>
					</div>
					
					<div class="tab-pane active" id="article">
						<p>博文管理</p>
						<hr>
						<table class="table">
				<thead>
					<tr>
						<th>
							编号
						</th>
						<th>
							标题
						</th>
						<th>
							类型
						</th>
						<th>
							发表时间
						</th>
						<th>
						</th>
		
					</tr>
				</thead>
				<tbody>
				<c:forEach var="blogInfo" items="${requestScope.blogList }">
					<tr class="success">
						<td>
							${blogInfo.id }
						</td>
						<td>
							${blogInfo.title }
						</td>
						<td>
							${blogInfo.categoryId }
						</td>
						<td>
							${blogInfo.createdTime }
						</td>
						<td>
							<a type="button" class="btn btn-sm btn-danger" href="delete?bid=${blogInfo.id }">删除博文</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
				<div class="row clearfix">
				<ul class="pagination">
					<li>
						 <a href="#">Prev</a>
					</li>
					<li>
						 <a href="#">1</a>
					</li>
					<li>
						 <a href="#">2</a>
					</li>
					<li>
						 <a href="#">3</a>
					</li>
					<li>
						 <a href="#">4</a>
					</li>
					<li>
						 <a href="#">5</a>
					</li>
					<li>
						 <a href="#">Next</a>
					</li>
				</ul>
			</div>
		</div>
					
					<div class="tab-pane" id="photo">
						<p>图片管理</p>
						<hr>
						<div id="ptl" class="photo-list">
							<ul>
							<c:forEach var="photoInfo" items="${requestScope.photoList }">
							
								<li>
								<div class="pht-space">
									<a href="#">
										<img style="width:190px; height: 135px; opacity:1;" src="${photoInfo.foldername }">
										<span>${photoInfo.filename }</span>
									</a>
								</div>
								</li>						
							</c:forEach>
							</ul>
						</div>
						
						<div class="button-list">
							<button class="btn btn-sm">添加图片</button>
							<button class="btn btn-sm">删除图片</button>
						</div>
						
						<div class="row clearfix">
							<ul class="pagination">
								<li>
									 <a href="#">Prev</a>
								</li>
								<li>
									 <a href="#">1</a>
								</li>
								<li>
									 <a href="#">2</a>
								</li>
								<li>
									 <a href="#">3</a>
								</li>
								<li>
									 <a href="#">4</a>
								</li>
								<li>
									 <a href="#">5</a>
								</li>
								<li>
									 <a href="#">Next</a>
								</li>
							</ul>
						</div>		
					</div>
					
					<div class="tab-pane" id="category">
						<p>分类管理</p>
						<hr>
						<div id="content">
							<div id="consist-category">
								<p style="text-align:left; padding-left:25px;">已有分类:</p>
								<ul class="nav nav-pills" >
								<c:forEach var="categoryInfo" items="${requestScope.categoryList }">
									<li class="li-meta">
										 <a href="#"> <span class="badge pull-right">0</span> ${categoryInfo.name }</a>
									</li>
								</c:forEach>
								</ul>
								<br>
							</div>
							<div class="dlt-btn">
									<button class="btn btn-default">添加分类</button>	
							</div>
						</div>
					</div>
					
					<div class="tab-pane" id="leavemsg">
						<p>留言管理</p>
						<hr>
						<div class="comment">
							<c:forEach var="leavemsgInfo" items="${requestScope.leavemsgList }">
							<div id="a-comment">
								<div id="comments-content">
									<div class="observer-info">
										<a>${leavemsgInfo.name }</a>:${leavemsgInfo.content }
									</div>
									<div class="date-info">
										<span>${leavemsgInfo.createdTime }</span>
									</div>
									<div class="delete-btn">
										<a type="button" class="btn btn-sm btn-danger" href="delete?lid=${leavemsgInfo.id }">删除留言</a>
									</div>
								</div>
								<hr style="width: 80%;">
							</div>
							</c:forEach>
						</div>
						
						<div class="row clearfix">
							<ul class="pagination">
								<li>
									 <a href="#">Prev</a>
								</li>
								<li>
									 <a href="#">1</a>
								</li>
								<li>
									 <a href="#">2</a>
								</li>
								<li>
									 <a href="#">3</a>
								</li>
								<li>
									 <a href="#">4</a>
								</li>
								<li>
									 <a href="#">5</a>
								</li>
								<li>
									 <a href="#">Next</a>
								</li>
							</ul>
						</div>						
					</div>
					
					<div class="tab-pane" id="Comment">
						<p>评论管理</p>
						<hr>
						<div class="comment">
							<c:forEach var="commentInfo" items="${requestScope.commentList }">
							<div id="a-comment">
								<div id="comments-content">
									<div id="blog-head">
										<h1><a href="#">${commentInfo.blogTitle }</a></h1>
									</div>
									<div class="observer-info">
										<a>${commentInfo.username }</a>:${commentInfo.content }
									</div>
									<div class="date-info">
										<span>${commentInfo.createdTime }</span>
									</div>
									<div class="delete-btn">
										<a type="button" class="btn btn-sm btn-danger" href="delete?cid=${commentInfo.id }">删除评论</a>
									</div>
								</div>
								<hr style="width: 80%;">
							</div>
							</c:forEach>
						</div>
						
						<div class="row clearfix">
							<ul class="pagination">
								<li>
									 <a href="#">Prev</a>
								</li>
								<li>
									 <a href="#">1</a>
								</li>
								<li>
									 <a href="#">2</a>
								</li>
								<li>
									 <a href="#">3</a>
								</li>
								<li>
									 <a href="#">4</a>
								</li>
								<li>
									 <a href="#">5</a>
								</li>
								<li>
									 <a href="#">Next</a>
								</li>
							</ul>
						</div>						
					</div>
					
					<div class="tab-pane" id="music">
						<p>MP3管理</p>
						<hr>
						<div id="jquery_jplayer_2" class="jp-jplayer"></div>
							<div id="jp_container_2" class="jp-audio" role="application" aria-label="media player" style="margin-left: auto; margin-right: auto; text-align: center;">
								<div class="jp-type-playlist">
									<div class="jp-gui jp-interface">
										<div class="jp-controls">
											<button class="jp-previous" role="button" tabindex="0">previous</button>
											<button class="jp-play" role="button" tabindex="0">play</button>
											<button class="jp-next" role="button" tabindex="0">next</button>
											<button class="jp-stop" role="button" tabindex="0">stop</button>
										</div>
										<div class="jp-progress">
											<div class="jp-seek-bar">
												<div class="jp-play-bar"></div>
											</div>
										</div>
										<div class="jp-volume-controls">
											<button class="jp-mute" role="button" tabindex="0">mute</button>
											<button class="jp-volume-max" role="button" tabindex="0">max volume</button>
											<div class="jp-volume-bar">
												<div class="jp-volume-bar-value"></div>
											</div>
										</div>
										<div class="jp-time-holder">
											<div class="jp-current-time" role="timer" aria-label="time">&nbsp;</div>
											<div class="jp-duration" role="timer" aria-label="duration">&nbsp;</div>
										</div>
										<div class="jp-toggles">
											<button class="jp-repeat" role="button" tabindex="0">repeat</button>
											<button class="jp-shuffle" role="button" tabindex="0">shuffle</button>
										</div>
									</div>
									<div class="jp-playlist">
										<ul>
											<li>&nbsp;</li>
										</ul>
									</div>
									<div class="jp-no-solution">
										<span>Update Required</span>
										To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
									</div>
								</div>
							</div>
					</div>
					
					
				</div>
</div>
  </body>
</html>
