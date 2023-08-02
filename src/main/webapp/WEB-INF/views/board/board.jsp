<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판</title>
		   <link rel="stylesheet" href="../resources/css/topFoot.css">
        <link rel="stylesheet" href="../resources/css/board.css">
	</head>
	<body>
		<div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/include/nav.jsp"></jsp:include>
            <main>
                <div id="profile">
                    <div><img src="../resources/images/user.png" alt=""></div>
                        <ul>
                            <li><a href="#">내 게시글 : 3</a></li>
                            <li><a href="#">내 댓글 : 4</a></li>
                        </ul>
                </div>
                <div id="bar">
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
                        <input type="search" placeholder="검색어를 입력하세요.">
                        <img src="../resources/images/search.png" alt="검색" id="search">
                        <a href="boardupload.jsp"><input type="button" value="글쓰기"></a>
                        <img src="../resources/images/upload.jpg" alt="글쓰기" id="upload">
                    </form>
                </div>
                <div id="tb">
                    <table>
                        <tr>
                            <th id="no">No.</th>
                            <th id="title">제목</th>
                            <th id="user">글쓴이</th>
                            <th id="date">등록일</th>
                            <th id="views">조회수</th>
                            <th id="up">추천수</th>
                        </tr>
                        <tr>
                            <td>66</td>
                            <td><a href="boardView.jsp">(자유)우리집 생후 3개월 아기고양이입니다</a></td>
                            <td>고집사</td>
                            <td>23/06/09</td>
                            <td>124</td>
                            <td>34</td>
                        </tr>
                        <tr>
                            <td>65</td>
                            <td><a href="#">(자유)우리집 개 또 사고쳤네요...</a></td>
                            <td>악마견주</td>
                            <td>23/06/09</td>
                            <td>3,221</td>
                            <td>252</td>
                        </tr>
                        <tr>
                            <td>64</td>
                            <td><a href="#">(나눔)(서울)캣타워 무료나눔 합니다.</a></td>
                            <td>고양삼</td>
                            <td>23/06/09</td>
                            <td>211</td>
                            <td>4</td>
                        </tr>
                        <tr>
                            <td>63</td>
                            <td><a href="#">(질문)생후 3개월 고양이 밥은 어떻게 줘야하나요?</a></td>
                            <td>간택당한사람</td>
                            <td>23/06/09</td>
                            <td>121</td>
                            <td>22</td>
                        </tr>
                        <tr>
                            <td>62</td>
                            <td><a href="#">(이벤트)이벤트참여합니다.</a></td>
                            <td>캣냥이</td>
                            <td>23/06/08</td>
                            <td>4,211</td>
                            <td>212</td>
                        </tr>
                        <tr>
                            <td>61</td>
                            <td><a href="#">(이벤트)이벤트참여합니다.</a></td>
                            <td>댕댕이</td>
                            <td>23/06/08</td>
                            <td>1,209</td>
                            <td>121</td>
                        </tr>
                        <tr>
                            <td>60</td>
                            <td><a href="#">(자유)비만 고양이 보고가세요.</a></td>
                            <td>뚱냥이집사</td>
                            <td>23/06/08</td>
                            <td>5,321</td>
                            <td>1,100</td>
                        </tr>
                        <tr>
                            <td>59</td>
                            <td><a href="#">(질문)캣타워 어디 브랜드가 좋은가요?</a></td>
                            <td>고양이안키움</td>
                            <td>23/06/08</td>
                            <td>53</td>
                            <td>1</td>
                        </tr>
                        <tr>
                            <td>58</td>
                            <td><a href="#">(이벤트)츄르가 타고싶어요.</a></td>
                            <td>주인님뫼심</td>
                            <td>23/06/08</td>
                            <td>14,256</td>
                            <td>321</td>
                        </tr>
                        <tr>
                            <td>57</td>
                            <td><a href="#">(자유)날씨가 좋네요</a></td>
                            <td>머리가꽃밭</td>
                            <td>23/06/07</td>
                            <td>222</td>
                            <td>12</td>
                        </tr>
                        <tr>
                            <td>56</td>
                            <td><a href="#">(자유)개 vs 고양이 누가 더 좋으신지 투표 ㄱㄱ</a></td>
                            <td>새키움</td>
                            <td>23/06/07</td>
                            <td>2,123</td>
                            <td>55</td>
                        </tr>
                        <tr>
                            <td>55</td>
                            <td><a href="#">(나눔)강아지 장난감 나눔해여</a></td>
                            <td>댕댕이는옳다</td>
                            <td>23/06/07</td>
                            <td>20</td>
                            <td>6</td>
                        </tr>
                        <tr>
                            <td>54</td>
                            <td><a href="#">(자유)강아지와 고양이</a></td>
                            <td>개냥이집사</td>
                            <td>23/06/07</td>
                            <td>112</td>
                            <td>14</td>
                        </tr>
                    </table>
                </div>
                <br>
                <a href="#">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
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