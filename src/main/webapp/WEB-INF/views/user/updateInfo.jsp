<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
 	<title>정보수정</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/Modification.css">
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
                    <li id="top-li"><a href="./mypage.jsp">마이페이지</a></li>
                    <li id="top-li"><a href="../board/board.jsp">게시판</a></li>
                    <li id="top-li"><a href="../board/eventPage.jsp">이벤트</a></li>
                    <li id="top-li"><a href="#">상점</a></li>
                </ul>
            </div>
            <main id="main">
                <div id="profile">
                    <div id="profile-info">
                        <img src="../resources/images/user.png" alt="프로필 사진" id="profile-picture">
                        <div id="profile-name"><input type="button" value="변경" id="profile-change"></div>
                    </div>
                    <div id="Modification">
                        <form action="/user/update.do" method="post">
                            <ul>
                                <li>
                                    <label for="user-id">아이디</label>
                                    <input type="text" id="user-id" name="user-id" value="${user.userId }">
                                    <input type="button" id="change" value="변경">
                                </li>
                                <li>
                                    <label for="user-pw">비밀번호</label>
                                    <input type="password" id="user-pw" name="user-pw">
                                    <input type="button" id="change" value="확인">
                                </li>
                                <li>
                                    <label for="user-name">닉네임</label>
                                    <input type="text" id="user-name" name="user-name" value="">
                                    <input type="button" id="change" value="변경">
                                </li>
                                <li>
                                    <label for="age">나이</label>
                                    <input type="text" id="age">   
                                    <input type="button" id="change" value="변경">
                                </li>
                                
                                <li>
                                    <label for="email">이메일</label>
                                    <input type="email" id="email">
                                    <input type="button" id="change" value="변경">
                                </li>
                                <li>
                                    <label for="phone">전화번호</label>
                                    <input type="text" id="phone">
                                    <input type="button" id="change" value="변경">
                                </li>
                                <li>
                                    <label for="addr">주소</label>
                                    <input type="text" id="addr">
                                    <input type="button" id="change" value="주소찾기">
                                </li>
                            </ul>
                            <div id="sumbitBtn">
                                <input type="submit" value="완료" id="ok">
                                <input type="reset" value="취소" id="cancle">
                            </div>
                        </form>
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