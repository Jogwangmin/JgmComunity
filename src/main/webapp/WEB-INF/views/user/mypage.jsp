<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
 	<title>mypage</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/mypage.css">
    </head>     
    <body>
        <div id="container">
            <header id="header">
                <div id="header-1"></div>
                <div id="header-2"><a href="../index.jsp"><img src="../resources/images/logo.PNG" alt="" id="top-logo"></a></div>
                <div id="header-3"><a href="login.do"><input type="button" value="로그인" id="toplog-btn"></a></div>
            </header>
            <div id="nav">
                <ul id="top-ul">
                    <li id="top-li"><a href="mypage.jsp">마이페이지</a></li>
                    <li id="top-li"><a href="../board/board.jsp">게시판</a></li>
                    <li id="top-li"><a href="../board/eventPage.jsp">이벤트</a></li>
                    <li id="top-li"><a href="#">상점</a></li>
                </ul>
            </div>
            <main id="main">
                <div id="profile">
                    <div id="follower-count"><p>팔로워 : <strong>100명</strong> 팔로잉 : <strong>3명</strong></p></div>
                    <div id="profile-info">
                        <img src="../resources/images/user.png" alt="프로필 사진" id="profile-picture">
                        <div id="profile-name">홍길동</div>
                    </div>
                    <div id="profile-option">
                        <ul id="option">
                            <li><a href="updateInfo.jsp">정보수정</a></li>
                            <li><a href="posts.jsp">내가 쓴 글</a></li>
                            <li><a href="follow.jsp">즐겨찾기</a></li>
                        </ul>
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