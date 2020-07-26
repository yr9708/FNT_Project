<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FNT - Sign Up</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="css/fntsignupform.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">

</script>
<script src="./js/fntsignupform.js"></script>
</head>
<body>
<%
	
	String nickname = request.getParameter("nickname");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String birth = request.getParameter("birthday");
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	Date birthday = sdf.parse(birth);
%>
	<div>
		<a href="fntmain.jsp">
			<img id="fnt_logo" alt="FNT" src="./img/fnt_logo.png">
		</a>	
	</div>
	
	<br/><br/>
	
	<form action="signup.do" id="form" name="form" method="post" >
		<input type="hidden" name="command" value="signupform"/>
		<table>
			<tr>
				<td colspan="3" align="left"><p>* 반드시 모든 항목을 작성완료하셔야만 정상 가입됩니다 :)</p></td>
			</tr>
			<tr>
				<th>ID</th>
				<td>
					<input type="text" name="memberid" placeholder="ID를 입력해주세요. (영문/숫자 포함 10자 이내)" maxlength="10" title="n" required="required"/>
				</td>
				<td>
					<button id="idchkbtn" class="in_btn" onclick="open_win('signup.do?command=idchk','idchk');">ID 중복 확인</button>
				</td>
			</tr>
			<tr>
				<th>Password</th>
				<td colspan="2"><input class="Pw" type="password" name="memberpw" placeholder="비밀번호를 입력해주세요. (영문/숫자 포함 6~16자 이내)" maxlength="16" required="required"/></td>
			</tr>
			<tr>
				<th>Password Check</th>
				<td colspan="2"><input class="PwChk" type="password" name="memberpwchk" placeholder="비밀번호를 다시 한 번 입력해주세요." maxlength="16" required="required"/></td>
			</tr>
			<tr>
				<th>Nickname</th>
				<td colspan="2"><input type="text" name="membernickname" placeholder="사용하실 닉네임을 입력해주세요. (한글 6자 이내)" required="required"/></td>
			</tr>
			<tr>
				<th>Name</th>
				<td colspan="2"><input type="text" name="membername" placeholder="성함을 입력해주세요." maxlength="10" required="required"/></td>
			</tr>
			<tr>
				<th>Birthday</th>
				<td colspan="2"><input type="date" name="memberbirth" placeholder="생년월일(YYYYMMDD)을 입력해주세요. (ex.'20200101')" maxlength="8" required="required"/></td>
			</tr>
			<tr>
				<th>Phone</th>
				<td colspan="2"><input type="tel" name="memberphone" placeholder="'-'를 사용해서 전화번호를 입력해주세요. (ex.'010-0000-0000')" maxlength="13" required="required"/></td>
			</tr>
			<tr>
				<th>Address</th>
				<td>
					<input type="text" class="memberaddr" name="memberaddr" placeholder="거래 시 배송지로 이용될 도로주소를 입력해주세요." required="required" onclick="goPopup();"/><br/>
				</td>
				<td><button class="in_btn" onclick="goPopup();">도로명주소 검색</button></td>
			</tr>
			<tr>
				<th>Email</th>
				<td colspan="2"><input type="email" name="memberemail" placeholder="이메일을 입력해주세요." required="required"/></td>
			</tr>
		</table><br/>
		<button id="resetbtn" type="reset">RESET</button>
		<button id="submitbtn" type="submit">Sign Up</button>
	</form>

</body>
</html>