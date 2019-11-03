<%@page import="javax.security.auth.callback.ConfirmationCallback"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="java.io.PrintWriter"%>
<%@page import="exam.jdbc.ClubVO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=1200">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/board.css">
<title>jsp 게시판 웹사이트</title>
</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");

		String username = null;
		if (session.getAttribute("username") != null) {
			username = (String) session.getAttribute("username");
		}
		int pageNumber = 1; //기본 페이지 넘버
		String condition = "";
		//페이지넘버값이 있을때
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
		if (request.getParameter("condition") != null) {
			condition = request.getParameter("condition");
		}
		int club_id = 1;
		String board_cd = "007001";
		if (request.getParameter("club_id") != null) {
			club_id = Integer.parseInt(request.getParameter("club_id"));
		}
		if (request.getParameter("board_cd") != null) {
			board_cd = request.getParameter("board_cd");
		}
	%>
	<div id="wrap">
		<div id="header">
			<h1>
				<a href="index.jsp"><img src="image/logo.gif" alt="한림대학교 동아리"></a>
			</h1>
			<a href="#content" class="skip">본문 바로가기</a>

			<ul id="snb">
				<li><a href="index.html">로그인</a></li>
				<li><a href="index.html">회원가입</a></li>
			</ul>

			<ul id="gnb">
				<li><a href="club_search.jsp">동아리조회</a></li>
				<li><a href="top_club.jsp">우수동아리</a></li>
				<li><a href="board.jsp">공지사항</a></li>
				<li><a href="jido.jsp">주변음식점</a></li>
			</ul>
		</div>
	<div id="content">
		<div class="info_tit">
			<h1>공지사항</h1>
		</div>

		<div class="tbl-div">
			<table class="tbl">
				<tr>
					<th style="width: 80px">번호</th>
					<th style="width: 500px">제목</th>
					<th style="width: 100px">분류</th>
					<th style="width: 120px">작성자</th>
					<th style="width: 80px">조회수</th>
				</tr>
				<%for(int i=0; i<11; i++){ %>
				<tr>
					<td>13</td>
					<td><a href="#">공지사항입니다.공지사항입니다.공지사항입니다.공지사항입니다.공지사항입니다.공지사항입니다.공지사항입니다.공지사항입니다.</a></td>
					<td>공지사항</td>
					<td>관리자</td>
					<td>100</td>
				</tr>
				<%} %>
			</table>

			<div id="page">
				<a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
			</div>

			<div class="category">
				<form>
					<ul>
						<li><select><option value="">제목</option></select></li>
						<li><input type="text" name="condition" size="30"
							value="<%=condition%>" onfocus="this.select()">
							<button type="submit" class="category-btn">검색</button></li>
					</ul>
				</form>
			</div>
		</div>
		</div>
		<hr>
		<div id="footer">
			<div class="copyright">
				<address>Copyright 2019. 김정인, 김진섭. All Rights Reserved.</address>
			</div>
		</div>

	</div>



</body>

</html>
