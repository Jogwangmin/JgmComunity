<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>즐겨찾기</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/follow.css">
    </head>     
    <body>
        <div id="container">
            <header id="header">
                <div id="header-1"></div>
                <div id="header-2"><a href="../index.jsp"><img src="../resources/images/logo.PNG" alt="" id="top-logo"></a></div>
                <div id="header-3"><a href="login.jsp"><input type="button" value="로그인" id="toplog-btn"></a></div>
            </header>
            <div id="nav">
                <ul id="top-ul">
                    <li id="top-li"><a href="./mypage.jsp">마이페이지</a></li>
                    <li id="top-li"><a href="../board/board.jsp">게시판</a></li>
                    <li id="top-li"><a href="../board/eventPage.jsp">이벤트</a></li>
                    <li id="top-li"><a href="#">상점</a></li>
                </ul>
            </div>
            <main id="main">
                <div id=main-top>
                    <h2>즐겨찾기 : 3명</h2>
                </div>
                <div id="main-bottom">
                </h1>
                <div id="bottom-1">
                    <div id="bt1"></div>
                    <div id="bt1-1"></div>
                    <div id="follow">
                        <h3>고세구</h3>
                        <input type="button" value="언팔로우">
                    </div>
                </div>
                <div id="bottom-2">
                    <div id="bt2"></div>
                    <div id="bt2-1"></div>
                    <div id="follow">
                        <h3>고먐미</h3>
                        <input type="button" value="언팔로우">
                    </div>
                </div>
                <div id="bottom-3">
                    <div id="bt3"></div>
                    <div id="bt3-1"></div>
                    <div id="follow">
                        <h3>댐댐이</h3>
                        <input type="button" value="언팔로우">
                    </div>
                </div>
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