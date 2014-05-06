<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
#topDiv{
	background-color:#C03;
	width:auto;
	margin:0 auto;
	margin-top:10px;
	height:40px;
}
#topDiv img{
	height:80px;
	float:left;
}
#topDiv ul{
	background-color:#C03;
	height:40px;
	width:auto;
}

#topDiv ul li{
	float:right;
	line-height:40px;
	padding:0 10px;
	list-style:none;
	margin-right:5px;
	color:#FFF;
}

.showDiv{
	overflow:auto;
	height:500px;
	border:3px solid #C03;
	margin-top:10px;
}
#rightDiv{
	width:70%;
	float:right;
	text-align:center;
	overflow:auto;
}
#rightDiv table{
	vertical-align:middle;
	margin-top:150px;
	width:90%;
	margin-left:5%;
}
#leftDiv{
	width:25%;
	float:left;
}
#leftDiv p{
	text-align:left;
	text-indent:2em;
	padding:10px;
}
.hide{
	display:none;
}
.show{
	display:block;
}
</style>
</head>

<body>
	<div id="topDiv" >
    	<img src="hotsync.png" />
        <ul>
            <li>测试入口</li>
            <li onClick="produceShow()">个人简历</li>
            <li onClick="programShow()">项目展示</li>
            <li onClick="mainpageShow()">主页</li>
       	</ul>
    </div>
    <div style="clear:both"></div>
    
  <div class="showDiv" style=" width:auto; height:700px" align="center">
  <form method ="post" action="<%= basePath%>servlet/registerUser">
  	<table>
  	<tr>
  		<td>
  			<label>Email:</label>
  		</td>
  		<td>
  			<input name="e" id="e" type="text">
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<label>Username:</label>
  		</td>
  		<td>
  			<input name="name" id="name" type="text">
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<label>Password:</label>
  		</td>
  		<td>
  			<input name="pass" type="password" id="pass">
  		</td>
  	</tr>
  	<tr>
  		<td rowspan="2">
  			<button type="submit" >register</button>
  		</td>
  	</tr>
  </table>
  </form>
  <form method ="post" action="<%= basePath%>servlet/logincheck">
  	<table>
  	<tr>
  		<td>
  			<label>Email:</label>
  		</td>
  		<td>
  			<input name="u" id="u" type="text">
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<label>Password:</label>
  		</td>
  		<td>
  			<input name="p" type="password" id="p">
  		</td>
  	</tr>
  	<tr>
  		<td rowspan="2">
  			<button type="submit" >login</button>
  		</td>
  	</tr>
  </table>
  </form>
  <form method="post" action="<%= basePath%>servlet/fileUpdate" enctype="multipart/form-data">
  <input type="file" name = "filePath" id = "filePath"></input>
  <button type="submit">上传</button>
  </form>
  </div>
    This is my JSP page. <br>
  </body>
</html>
