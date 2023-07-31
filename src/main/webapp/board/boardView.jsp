<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>게시판</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/boardView.css">
    </head>    
    <body>
        <div id="container">
            <header id="header">
                <div id="header-1"></div>
                <div id="header-2"><a href="../index.jsp"><img src="../resources/images/logo.PNG" alt="" id="top-logo"></a></div>
                <div id="header-3"><a href="../user/login.jsp"><input type="button" value="로그인" id="toplog-btn"></a></div>
            </header>
            <div id="nav">
                <ul id="top-ul">
                    <li id="top-li"><a href="../user/mypage.jsp">마이페이지</a></li>
                    <li id="top-li"><a href="board.jsp">게시판</a></li>
                    <li id="top-li"><a href="eventPage.jsp">이벤트</a></li>
                    <li id="top-li"><a href="#">상점</a></li>
                </ul>
            </div>
            <main>
                <div id="main-top">
                    <div id="top-left">
                        <h3>(자유)우리집 생후 3개월 아기고양이입니다</h3>
                        <ul>
                            <li>추천수 10</li>
                            <li>댓글 0</li>
                        </ul>
                    </div>
                </div>
                <div id="main-mid">
                    <h3>우리집 고양이입니다.</h3>
                    <img src="../resources/images/cat1.jpg" alt="cat" id="cat">
                </div>
                <div id="main-bottom">
                    <input type="text" value="내용을 입력해주세요.">
                    <input type="button" value="등록">
                </div>
            </main>
            <footer>
                <div id="footer">
                    <div id="footer-left">
                    </div>
                    <div id="footer-right">
                        <ul id="footer-ul">
                            <li id="footer-li"><a href="#">서비스 이용약관 및 운영원칙</a></li> <br>
                            <li id="footer-li">전화번호 : 02-1242-4124</li> <br>
                            <li id="footer-li">주소 : 서울특별시 성북구 종암동 월곡로 10길</li><br>
                        </ul>
                    </div>
                </div>                    
            </footer>
        </div>
    </body>
</html>