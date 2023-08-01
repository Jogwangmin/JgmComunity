<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>게시판</title>
        <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/event.css">
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
                <div id="top">
                    <h1>이번달 이벤트 상품</h1>
                    <div id="showItem"></div>
                </div>
                <div id="tb">
                    <table>
                        <tr>
                            <th id="no">No.</th>
                            <th id="title">제목</th>
                            <th id="user">글쓴이</th>
                            <th id="date">등록일</th>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>2023년 6월 이벤트 당첨자</td>
                            <td>관리자</td>
                            <td>2023년 6월</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>2023년 5월 이벤트 당첨자</td>
                            <td>관리자</td>
                            <td>2023년 5월</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>2023년 4월 이벤트 당첨자</td>
                            <td>관리자</td>
                            <td>2023년 4월</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>2023년 3월 이벤트 당첨자</td>
                            <td>관리자</td>
                            <td>2023년 3월</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>2023년 2월 이벤트 당첨자</td>
                            <td>관리자</td>
                            <td>2023년 2월</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>2023년 1월 이벤트 당첨자</td>
                            <td>관리자</td>
                            <td>2023년 1월</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>2022년 12월 이벤트 당첨자</td>
                            <td>관리자</td>
                            <td>2022년 12월</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>2022년 11월 이벤트 당첨자</td>
                            <td>관리자</td>
                            <td>2022년 11월</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>20222년 10월 이벤트 당첨자</td>
                            <td>관리자</td>
                            <td>20222년 10월</td>
                        </tr>
                    </table>
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