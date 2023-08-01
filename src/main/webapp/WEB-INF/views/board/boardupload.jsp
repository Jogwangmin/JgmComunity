<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>글쓰기</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/boardupload.css">
    </head>    
    <body>
        <div id="container">
            <header id="header">
                <div id="header-1"></div>
                <div id="header-2"><a href="../index.jsp"><img src="../resources/images/logo.PNG" alt="" id="top-logo"></a></div>
                <div id="header-3"><a href="../user/login.do"><input type="button" value="로그인" id="toplog-btn"></a></div>
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
                <div id="main">
                    <div id="main-top">
                        <form action="">
                            <select name="category">
                                <optgroup label="카테고리">
                                    <option>전체게시판</option>
                                    <option>자유게시판</option>
                                    <option>질문게시판</option>
                                    <option>나눔게시판</option>
                                    <option>이벤트게시판</option>
                                </optgroup>
                            </select>
                            <input type="text" id="title" placeholder="제목을 입력하세요.">
                            <input type="button" value="글쓰기">
                            <input type="button" value="취소">
                            <input type="button" value="임시저장">
                        </form>
                    </div>
                    <div id="main-mid"></div>
                    <div id="main-bot">
                        <input type="text" id="write" placeholder="내용을 입력해 주세요.">
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