<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    <title>Login</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<style>
		header nav .logo{
			posiotion:absolute;
			top:18px;
			left:0px;
		}
		li{
			display:inline-block;
		}
		.bottom{
		height:16px;
		text-align:center;
		font-size:12px;
		bottom:0;
		}
		.inputD{
		margin-bottom:10px;
		}
		.inputOuter{
		background-color:#ffffff;
		height:38px;
		width:282px;
		border:1px solid;
		}
		.xm_login_container{
		width:334px !important;
		height:387px !important;
		}
		.header_font{
		margin: 10px auto;
  		text-align: left;
  		padding: 0px 250px;	
		}
		.content{
		width:960px;
		margin:32px auto;
		padding:0 24px;
		}
		.content_wrapper{
		min-height:372px;
		padding-top:40px;
		margin:60px 20px 60px 25px;
		position:relative;
		}
		.login_container{
		background-color:#474747;
		padding:0 auto;
		float:right;
		border:1px solid #383838;
		}
		body {
   		color: #fff;
    	text-align: center;
    	text-shadow: 0 1px 3px rgba(0,0,0,.5);
		}
		html, body {
   			height: 100%;
   			background-color: #333;
		}
		.form-control{
			display:unset;
		}
	</style>
  </head>
  
  
  <body>
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
	
    	<div class="content">
    		<div class="content_wrapper">
    			<div class="login_container xm_login_container">
				    <form class="form-signin" action="login" method="post">
				        <h3>Please login</h3>
				        <div class="inputD" style="margin-top:20px;">
					        <label for="inputEmail" class="sr-only">Email address</label>
					        <input type="email" name="email" class="inputOuter form-control" placeholder="Email address" required="" autofocus="">
				        </div>
				        
				        <div class="inputD">
					        <label for="inputPassword" class="sr-only">Password</label>
					        <input type="password" name="password" class="inputOuter form-control" placeholder="Password" required="">
				        </div>
				        <div class="checkbox" style="padding-left:25px; float:left;margin-top:unset;margin-bottom:15px;">
				          <label>
				            <input type="checkbox" value="remember-me"> Remember me
				          </label>
			        	</div>
			        	<div>
			        		<input class="btn btn-primary" style="color:height:38px; width: 282px;" type="submit" value="Sign in">
			        	</div>
			    	</form>		
			    	<div class="bottom" style="display:block; bottom:20px;margin-top:50px;margin-bottom:10px;">
			    		<a href="Register.jsp">Regist</a>
			   	 	</div>
			    			    
			  		<div class="bottom" style="display:block;">
			    		<a>Forget Password?</a>
			    	</div>	    
			    </div>	
	    	</div>
    	</div>

</body>
</html>

