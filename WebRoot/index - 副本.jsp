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

  </head>
 	<style media="screen" type="text/css">
<!--

html,body{font-size:12px; margin:0;text-align:center;over-flow:hidden;height:100%;width:100%;}
UL{font-size:12px;list-style-type:none; margin:0px;}
/* 标准盒模型 */
.ttl{font-size:12px;height:18px;}
/*.ctt{height:auto;padding:6px;clear:both;border:1px solid #064ca1;border-top:0;text-align:left;}*/
.w936{font-size:12px;margin:2px 0;clear:both;width:1000px; background-color:#0CC;/*滑动门的宽度*/}
/* TAB 切换效果 */
.tb_{font-size:12px;background-image: url('/jscss/demoimg/200901/tabs1.gif'); background-repeat: repeat-x;background-color: #E6F2FF;}
.tb_ ul{font-size:12px;height:24px;}
.tb_ li{font-size:12px;float:left;height: 24px;line-height:1.9;width: 94px;cursor:pointer;}
/* 控制显示与隐藏css类 */
.normaltab   {font-size:12px; background-image:url('/jscss/demoimg/200901/tabs2.gif'); background-repeat: no-repeat; color:#1F3A87 ;}
.hovertab    {font-size:12px; background-image: url('/jscss/demoimg/200901/tabs3.gif'); background-repeat: no-repeat; color:#1F3A87; font-weight:bold }
.dis{display:block;}
.undis{display:none;}
.tableInfo{
	background-color: #36F
	color:#FFF
	text-align: left;
	font-size: 20px;
	width: 900px;
}
-->
    </style>
<script type="text/javascript" language="javascript">



//<!CDATA[
function g(o){return document.getElementById(o);}
function HoverLi(n){
//如果有N个标签,就将i<=N;
for(var i=1;i<=6;i++){g('tb_'+i).className='normaltab';g('tbc_0'+i).className='undis';}g('tbc_0'+n).className='dis';g('tb_'+n).className='hovertab';
}
//如果要做成点击后再转到请将<li>中的onmouseover 改成 onclick;
//]]>
var p =1;
var p_1 = 1;
function changPic(n){
	   
		p=p+n;
		if(p>12||p<1){
			p=1;
		}
		var newSrc = p;
		document.getElementById("showPic").src="img/团购网/IMG"+newSrc+".jpg";
//		document.getElementById("testButton").value=newSrc;
}
function changPic_1(n){
	   
		p_1=p_1+n;
		if(p_1>18||p<1){
			p_1=1;
		}
		var newSrc = p_1;
		document.getElementById("showPic_1").src="img/ITxue/IMG"+newSrc+".jpg";
//		document.getElementById("testButton").value=newSrc;
}



</script>
<body>
<div class="w936" style="margin: 0px auto;">
 <div id="tb_" class="tb_" align="center">
   <ul>
    <li id="tb_1" class="hovertab" onclick="x:HoverLi(1);">
    主页</li>
    <li id="tb_2" class="normaltab" onclick="i:HoverLi(2);">
    简历</li>
    <li id="tb_3" class="normaltab" onclick="a:HoverLi(3);">
    团购网项目展示</li>
    <li id="tb_4" class="normaltab" onclick="o:HoverLi(4);">
    Red5项目展示</li>
    <li id="tb_5" class="normaltab" onclick="g:HoverLi(5);">
    Android项目展示</li>
    <li id="tb_6" class="normaltab" onclick="z:HoverLi(6);">
    个人测试入口</li>
   </ul>
 </div>
 <div class="ctt">
  <div class="dis" id="tbc_01" align="center" style="height:600px; text-align: inherit" >
  <div style="height:200px"></div> 
  欢迎来到王红奇的基本个人信息主页<br/>
  <a href="mailto:454407725@qq.com">Email</a>
  <br/>
  <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes">点击这里给我发消息</a>
  </div>
  <div class="undis" id="tbc_02">
  	<table class="tableInfo" border="0" align="center">
      <caption style="font-size:30px; background-color:#FFF">
        个人简历
      </caption>
      <tr ><td colspan="5">&nbsp;</td></tr>
      <tr >
      <td>基本信息</td>
      </tr
      ><tr  >
        <td >姓名:</td>
        <td >王红奇</td>
        <td >婚姻状况:</th>
        <td >未婚</td>
        <td bgcolor="#0CC" rowspan="10" align="right"><img src="IMG_2095.jpg" width="200" height="280"/></td>
      </tr>
      <tr   >
        <td>出生:</td>
        <td>1991年7月27日</td>
        <td>政治面貌:</td>
        <td>团员</td>
      </tr>
      <tr   >
        <td>性别:</td>
        <td>男</td>
        <td>民族:</td>
        <td>汉</td>
      </tr>
      <tr   >
        <td>学位:</td>
        <td>学士</td>
        <td>联系电话:</td>
        <td>13003189869</td>
      </tr>
      <tr   >
        <td>专业:</td>
        <td>软件工程</td>
        <td>电子邮件</td>
        <td><a href="mailto:454407725">454407725@qq.com</a></td>
      </tr>
      <tr   >
      	<td >现居地:</td>
        <td colspan="3">上海市浦东新区北蔡锦博苑 8栋</td>
      </tr>
      <tr>
      	<td>&nbsp;</td>
      </tr>
      <tr>
      <td>教育背景</td>
      </tr>
      <tr   >
      	<td>2009.9~2013.7</td>
        <td><a href="http://www.cse.cqu.edu.cn/">重庆大学软件学院</a></td>
      </tr>
      <tr   >
      	<td>2006.9~2009.7</td>
        <td><a href="http://www.hbzjzx.com/">湖北省枝江市第一高级中学</a></td>
       </tr>
      <tr>
      	<td>&nbsp;</td>
      </tr>
      <tr>
      	<td>主修课程</td>
      </tr>
      <tr>
      	<td colspan="4">软件工程 计算机网络 操作系统 多媒体开发 数据结构 java 开发</td>
      </tr>
      
      <tr>
      	<td>&nbsp;</td>
      </tr>
      <tr>
      	<td>能力及特长</td>
      </tr>
       <tr>
      	<td colspan="5">
        <ul  style="font-size:20px">四年的大学生活，我掌握了java，C#，Blend4，Android开发，同时利用这些技能参加了一些相关的小项目，这为我自己的将来打下了良好的基础。同时我利用闲余时间自主学习了servlet网站开发，spring结构，同时学习了Linux系统的基本操作和维护技巧。
    大三任辅导员助理，锻炼了我处理人际关系与实干的能力。
       未来的社会工作，是对我知识程度的考验，也是我的人生观，价值观的考验，我相信我会在以后的工作中不断完善自己，提高自己，来适应社会的需求。</ul></td>
      </tr>
       
      <tr>
      	<td>&nbsp;</td>
      </tr>
      <tr>
      	<td>计算机能力</td>
      </tr>
      <tr>
      	<td colspan="4">能熟悉使用Office等基本办公软件</td>
      <tr>  
        <td colspan="4">能熟练使用VS，Eclipse，Myeclipse，Dreamweaver，Blend4等编程工具</td>
      </tr>
      <tr>  
      <td colspan="4">掌握Java,Android开发</td>
      </tr>  
      <tr>
      <td colspan="4">掌握Linux的基本操作，包管理，编译，服务器管理</td>
      </tr>
      </tr>
      
      <tr>
      	<td>&nbsp;</td>
      </tr>
      <tr>
      	<td>外语能力 </td>
      </tr>
      <tr>
      	<td colspan="4">通过英语专业四级考试，成绩为524，能熟练进行听说读写译。</td>
      </tr>
      
      <tr>
      	<td>&nbsp;</td>
      </tr>
      <tr>
      	<td>实习经验 </td>
      </tr>
      <tr>
      	<td colspan="5">于2012年暑假在重庆市房管局担任实习雇员，期间担任入住确认职责，并同时对当时的基于Tomcat服务器的管理系统进行维护和差错，后期参与档案的管理及纠错。译。</td>
      </tr>
      
      <tr>
      	<td>&nbsp;</td>
      </tr>
      <tr>
      	<td>项目经验 </td>
      </tr>
      <tr>
      	<td colspan="5"><li>.net基于silverlight的团购网项目</li>
        <ul>项目时间:2011年12月 - 2012年1月</ul>
        <ul>项目简介:
采用SH架构来搭建本次平台 ，使用微软的Silverlight架构，利用起优秀的图形表现能力实现炫目的展示特效。
		</ul>
		<ul>项目职责:期间担任前台设计，主要针对接口和动画实现优化，asp的动画工作相对jsp简单，都是模块化的程序，可以用简单的操									作实现炫目的效果。</ul>
        <li>基于Red5的视频点播系统</li>
        <ul>项目时间:2012年6月 - 2012年07 月</ul>
        <ul>项目简介:
使用Red5服务器进行视频服务器的架设，采用的是tomcat服务器，mysql数据，ssl架构，难点在于如何利用redhat较小的库容存储较大的视频		</ul>
		<ul>项目职责:本人在项目中担任测试项目经理及数据库设计和前台实现等工作。</ul>
        <li>基于百度地图API的Android人对人寻人系统</li>
        <ul>项目时间:2013年3月-2012年5月</ul>
        <ul>项目简介:
使用百度地图API进行人对人的定位系统的开发，运用Tomcat架设服务器，MySQl数据库。相对于市面上的导航软件优点在于可实现好友的动态追踪，可拓展为社区。
		</ul>
		<ul>项目职责:本人独立完成本项目。
		</ul></td>
      </tr>
      
      <tr>
      	<td>&nbsp;</td>
      </tr>
      <tr>
      	<td>自我评价 </td>
        	<tr>
      	<td colspan="5">本人性格开朗、稳重、有活力，待人热情、真诚。工作认真负责，积极主动，能吃苦耐劳。有较强的组织能力、实际动手能力和团体协作精神，能迅速的适应各种环境，并融入其中。我不是最优秀的，但我是最用功的；我不是太显眼，但我很踏实；希望我的努力可以让您满意。
        </td>
        </tr>
	</table>
	
    
  </div>
  <div class="undis" id="tbc_03">
  	
    	<table align="center">
        	<tr>
        		<th><a onClick="changPic(-1)">上<br/>一<br/>页</a></th>
                <th><img id= "showPic"  type="button" src="img/团购网/IMG1.jpg" width="900" onClick="changePic(1)"></img></th>
                <th><a onClick="changPic(1)">下<br/>一<br/>页</a></th>
            </tr>
            </table></div>
  <div class="undis" id="tbc_04">
  		<table align="center">
        	<tr>
        		<th><a onClick="changPic_1(-1)">上<br/>一<br/>页</a></th>
                <th><img id= "showPic_1"  type="button" src="img/ITxue/IMG1.jpg" width="900" onClick="changePic(1)"></img></th>
                <th><a onClick="changPic_1(1)">下<br/>一<br/>页</a></th>
            </tr>
         </table></div>
  <div class="undis" id="tbc_05" style="height:800px">
  	<a href="FindMe_UI.apk">APK下载</a>
  	<div id="mediaplayer"></div>
   </div>
  <div class="undis" id="tbc_06"><form method ="post" action="<%= basePath%>servlet/registerUser">
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
  </form></b>
  </div>
 </div>
 <input id="userVersion" type="button" value="navigator.appName"/>
 <script type="text/javascript" src="jwplayer.js"></script>
 <script type="text/javascript">
 	document.getElementById("userVersion").value = navigator.appName;
	var name=UrlParm.parm("video");
	//var name = String("<%=session.getAttribute("videoName")%>");
	//name=request.getParameter("video");
		jwplayer("mediaplayer").setup({
			flashplayer: "WebPage/player.swf",
			file: "http://findmeweb-findme.stor.sinaapp.com/pai_20130613_124901.flv",
			height:480,
			width:640,
			control:true
		});
 </script>
 </div>
</html>
