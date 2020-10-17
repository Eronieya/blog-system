<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    <title>Register</title>
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
			float:left;
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
		width:460px !important;
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
		.td-pd{
		padding-top: 20px;
		padding-bottom: 20px;
		padding-left:10px;
		}
	</style>
  </head>
  
  
<body>
    	<div class="content">
    		<div class="content_wrapper" style="background-color:#383838; padding: 10px 0px;">
    			<h3>Register</h3>
    			<table align="center">	
    				<tbody>
    				<form class="form-signin" action="register" method="post">
    					<tr>
    						<td align="right"><label for="userName">User name:</label></td>
    						<td class="td-pd"><input type="text" name="username" class="inputOuter form-control" placeholder="Username" required=""></td>
    					</tr>
    					
    					<tr>
    						<td style="padding-bottom: 15px;" valign="middle" align="right"><label for="inputEmail" style="padding-bottom: auto;">Email:</label></td>
    						<td class="td-pd" style="padding-top: unset;"><input type="email" name="email" class="inputOuter form-control" placeholder="Email address" required="" autofocus=""></td>
    					</tr>
    					
    					<tr>
    						<td style="padding-bottom: 5px;" valign="middle" align="right"><label for="inputPassword">Password:</label></td>
    						<td class="td-pd" style="padding-top: unset;padding-bottom: 10;"><input type="password" name="password" class="inputOuter form-control" placeholder="Password" required=""></td>
    					</tr>
    					
    					<tr>
    						<td style="padding-bottom: 15px;" align="right"><label for="ConfirmPassword">Confirm Password:</label></td>
    						<td class="td-pd" style="padding-top: unset;"><input type="password" id="ConfirmPassword" class="inputOuter form-control" placeholder="ConfirmPassword" required=""></td>
    					</tr>
    					<tr>
    						
    						<td colspan="2" class="td-pd" align="center"><div class="bottom" style="padding-bottom:20px;"><a href="login.jsp">Existing account</a></div> <input class="btn btn-primary" style="color:height:38px; width: 282px;" type="submit" value="Register"></td>
    					</tr>
    				</form>
    				</tbody>
    			</table>
	    	</div>
    	</div>
</body>
</html>

