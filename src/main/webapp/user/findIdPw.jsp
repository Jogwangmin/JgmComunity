<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<title>ID/PW찾기</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/idPw.css">
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
                    <li id="top-li"><a href="mypage.jsp">마이페이지</a></li>
                    <li id="top-li"><a href="../board/board.jsp">게시판</a></li>
                    <li id="top-li"><a href="../board/eventPage.jsp">이벤트</a></li>
                    <li id="top-li"><a href="#">상점</a></li>
                </ul>
            </div>
            <main id="main">
                <div class="findID">
                    <form action="./login.jsp" method="">
                        <ul>
                            <li>
                                <label for="user-name">이름</label>
                                <input type="text" id="user-name" placeholder="이름을 입력해주세요." required>
                            </li>
                            <li>
                                <label for="email">이메일</label>
                                <input type="email" id="email" placeholder="이메일을 입력해주세요." required>
                            </li>
                        </ul>
                        <input type="submit" value="아이디 찾기" id="findID">
                        <ul>
                            <li>
                                <label for="user-name">이름</label>
                                <input type="text" id="user-name" placeholder="이름을 입력해주세요." required>
                            </li>
                            <li>
                                <label for="user-nick">아이디</label>
                                <input type="text" id="user-nick" placeholder="닉네임을 입력해주세요." required>
                            </li>
                            <li>
                                <label for="email">이메일</label>
                                <input type="email" id="email" placeholder="이메일을 입력해주세요." required>
                            </li>
                        </ul>
                        <input type="submit" value="비밀번호 찾기" id="findID">
                    </form>
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