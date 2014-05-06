<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>FindMeWeb</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
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
<script type="text/javascript">
	function mainpageShow(){
		document.getElementById("leftDiv").style.display="block";
		document.getElementById("rightDiv").style.display="block";
		document.getElementById("produce").style.display="none";
		document.getElementById("programList").style.display="none";
		document.getElementById("imgShow").style.display="none";
		document.getElementById("welcometable").style.display="block";
	}
	function programShow(){
		document.getElementById("leftDiv").style.display="block";
		document.getElementById("rightDiv").style.display="block";
		document.getElementById("produce").style.display="none";
		document.getElementById("programList").style.display="block";
		document.getElementById("imgShow").style.display="block";
		document.getElementById("welcometable").style.display="none";
	};
	function produceShow(){
		document.getElementById("leftDiv").style.display="none";
		document.getElementById("rightDiv").style.display="none";
		document.getElementById("produce").style.display="block";
	}
	var p =1;
	var maxNum = 1;
	var picPath;
	function changePro(n){
		p = 1;
		if(n == 1){
			maxNum = 12;
			picPath = "img/团购网/IMG";
		}else if(n == 2){
			maxNum = 18;
			picPath = "img/ITxue/IMG"
		}
		
		document.getElementById("imgShow").src = picPath+"1.jpg";
	}
function changPic(n){
	   
		p=p+n;
		if(p>maxNum||p<1){
			p=1;
		}
		var newSrc = p;
		document.getElementById("imgShow").src=picPath+newSrc+".jpg";
		document.getElementById("imgShow").value = p;
//		document.getElementById("testButton").value=newSrc;
}
</script>
</head>

<body>
<div style="width:1000px; margin:0px auto">
	<div id="topDiv" >
    	<img src="hotsync.png" />
        <ul>
            <li><a href="Copy of index.jsp">测试入口</a></li>
            <li onClick="produceShow()">个人简历</li>
            <li onClick="programShow()">项目展示</li>
            <li onClick="mainpageShow()">主页</li>
       	</ul>
    </div>
    <div style="clear:both"></div>
    
    <div id="leftDiv" class="showDiv">
    	<p style="visibility:visible">
        	测试部分仅作为APP数据测试,暂无其他用途,主要用于后台修改数据.
            </p>
        <ul id = "programList" style=" display:none">
        	<li onClick="changePro(1)">团购网项目</li>
            <li onClick="changePro(2)">视频点播网站</li>
            <li><a href="FindMe_UI.apk">Android定位系统</a></li>
        </ul>
    </div>
    <div id="rightDiv" class="showDiv" align="center">
    	<table class="mainPage" id="welcometable" style=" text-align:center;display:block">
        	<tr><th><p>欢迎来到我的主页!</p>
            <a href="mailto:454407725@qq.com">Email:45407725@qq.com</a><br/>
            <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes">点击这里给我发消息</a>
            </th>
            <th>
            <img src="mmqrcode1399314292658.png" width="300px"/>
            </tr> 
        </table>
        <img  id="imgShow"  onClick="changPic(1)" style=" display:none; width:90%; margin-top:20px; margin-left:5%"></img>
   	</div>
    <div class="showDiv" id="produce" style="display:none">
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
        <td rowspan="10" align="right"><img src="IMG_2095.jpg" width="200" height="280"/></td>
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
  </div>
</body>
</html>
