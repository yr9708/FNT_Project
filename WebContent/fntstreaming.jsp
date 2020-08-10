<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/section2.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
* {margin: 0px; padding: 0px;}

#inputmenu {
	margin: 0px auto;
	width: 36%;
}

#roomid {
	width: 45%;
	height: 30px;
	padding-left: 2%;
	border: none;
	background-color: rgba(255,255,255,0.1);
	border-radius: 2px 2px 2px 2px;
	color: white;
}

#roomid::placeholder {
	color: white;
}

#localvideo {
	float : left;
	margin-right: 20px;
}

#btn-open {
	margin-left: 10px;
}

button {width: 50px; height: 26px; border: 2px solid rgba(255,255,255,0); margin-left: 10px; border-radius: 2px 2px 2px 2px; cursor: pointer; color: white; background-color: rgba(255,255,255,0.3);}
button:hover {font-weight: bold; border: 2px solid rgba(255,255,255,0.5); background-color: rgba(255,255,255,0);}

</style>
</head>
<body>
	<script
		src="https://rtcmulticonnection.herokuapp.com/dist/RTCMultiConnection.min.js"></script>
	<script
		src="https://rtcmulticonnection.herokuapp.com/socket.io/socket.io.js"></script>
	<%@ include file="./form/headerstreaming.jsp"%>
	<%
		if(memberdto == null) {
	%>
		<script type="text/javascript">
			alert("로그인 후 이용이 가능합니다.");
			opener.location.href="http://qclass.iptime.org:8787/FNT_Project/fntlogincrud.jsp";
			self.close();
		</script>
	<%
		}
	%>
	<section>
	<br/>
	<br/>
	<div id="inputmenu">
		<input type="text" id="roomid" placeholder="방 이름을 입력해주세요" required="required"/>
		<button id="btn-open">만들기</button>
		<button id="btn-join">입장</button>
	</div> 
	<div style="display: flex; margin-top: 50px;">
		<div id="localvideo"></div>
		<div id="remotevideo"></div>
	</div>
		<script type="text/javascript" src="./real.js"></script>
	</section>
</body>
</html>

