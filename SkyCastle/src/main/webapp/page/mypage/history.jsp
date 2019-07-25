<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>스카이캐슬</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/skc/css/mypage.css">
</head>
<body>
<jsp:include page="../side/header.jsp" flush="false"/>
<div id="whole">
	<div id="contenttop">
		<img class="ff1" src="/skc/img/edu1.jpg" />
		<a class="a1" href="../myPage.jsp"> > 마이페이지 > </a>
		<a class="a2" href="history.jsp"> 내가 쓴 글</a>
	</div>
<br/><br/>
	<div class="contents_wrap" style="position:relative;">
		<form method="get" name="list" id='frm_list' >
		<input type="hidden" name="page" id='page' value="1" />
		<!-- my_write -->
		<div class="my_write">
			<!-- list_style_table -->
			<p class="table_msg">내가 쓴 글 리스트 ( 총 88 건 )</p>
			<div class="list_style_table">
				<table summary="">
					<colgroup>
						<col width="130px" />
						<col width="3px" />
						<col width="400px" />
						<col width="3px" />
						<col width="130px" />
						<col width="3px" />
						<col width="123px" />
						<col width="3px" />
						
					</colgroup>
					<thead>
						<tr>
							<th scope="col">게시판</th>
							<th></th>
							<th scope="col">제목</th>
							<th></th>
							<th scope="col">날짜</th>
							<th></th>
							<th scope="col">조회</th>
							<th></th>
							
						</tr>
					</thead>
					<tbody>
		                    <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=watch" target="_blank">시계포럼</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=watch&no=108477">세이코 커플시계 고른건데 괜찮으려나요ㅠ</a> <img src="/images/main/201111/search_ico_img.gif" alt="" /> <span class="point_num">7</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=watch&no=108477" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2018.05.25 </td>
                        <td></td>
                        <td>1256</td>
                        <td></td>
                        
                    </tr>
		                        <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=watch" target="_blank">시계포럼</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=watch&no=108393">시알못이 회원님들의 추천을 구하옵니다ㅠ</a>  <span class="point_num">1</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=watch&no=108393" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2018.05.23 </td>
                        <td></td>
                        <td>294</td>
                        <td></td>
                       
                    </tr>
		                        <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=car" target="_blank">자동차포럼</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=675443">휠밸런스 관련 여쭤봅니다....</a>  <span class="point_num">5</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=675443" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2017.12.19 </td>
                        <td></td>
                        <td>722</td>
                        <td></td>
                        
                    </tr>
		                        <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=car" target="_blank">자동차포럼</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=669268">중고차 카히스토리 처음봐서 질문드립니다ㅠ</a> <img src="/images/main/201111/search_ico_img.gif" alt="" /> <span class="point_num">1</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=669268" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2017.11.14 </td>
                        <td></td>
                        <td>322</td>
                        <td></td>
                        
                    </tr>
		                        <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=car" target="_blank">자동차포럼</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=668159">임시번호판은 무조건 영맨이 받아서 주는건가요?</a>  <span class="point_num">5</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=car&no=668159" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2017.11.08 </td>
                        <td></td>
                        <td>928</td>
                        <td></td>
                        
                    </tr>
		                        <tr>
                        <td class="left"><a href="/zboard/zboard.php?id=car_service" target="_blank">신차견적상담</a></td>
                        <td></td>
                        <td class="left"><a href="http://www.ppomppu.co.kr/zboard/view.php?id=car_service&no=88509">i30 1.4터보 견적부탁드립니다</a>  <span class="point_num">1</span>
                        <a href="http://www.ppomppu.co.kr/zboard/view.php?id=car_service&no=88509" target="_blank"><img src="//static.ppomppu.co.kr/www/img/myinfo/n_icon_150730.gif"></a>
                        </td>
                        <td></td>
                        <td>2017.09.28 </td>
                        <td></td>
                        <td>93</td>
                        <td></td>
                        
                    </tr>
		                        
		    		    
		    					</tbody>
				</table>
			</div>
			<!-- //list_style_table -->

<!-- paging_box -->

<table border="0" cellpadding="0" cellspacing="0" width="769px" class="info_bg">
<tbody>
 <tr>
  <td id="page_list">
<font class='han'>
 <font class='page_inert'>1</font>  <a href='#none' onfocus='blur()' onclick="movePaginate('2');">2</a>  <a href='#none' onfocus='blur()' onclick="movePaginate('3');">3</a>  <a href='#none' onfocus='blur()' onclick="movePaginate('4');">4</a>  <a href='#none' onfocus='blur()' onclick="movePaginate('5');">5</a> </font>
    
  </td>
 </tr>
 <tr>
 	<td style='text-align: right'>
 		
 		<table border="0" cellpadding="0" cellspacing="0" style='width:310px; float:right'>
        <tbody><tr>
        <td style="width:150px;text-align:right;">
            <select name="search_type" id="search_type" style="height:21px;">
        		
        		<option value="subject"  >제목만</option>
        		<option value="bbs"  >게시판</option>
        		<option value="subject_memo"  > 제목+본문</option>
        		
            </select>
   		</td>
        <td class="search-input">
            <span class="default">
                <input name="keyword" id="keyword" value="" size="15" class="input" type="text">
                <input onfocus="blur()" value="" style="background-color:#ffffff" type="submit">
           </span>
           </td>
        </tr>
        </tbody>
        </table>
        
 	</td>
 </tr>
</tbody>
</table>
<!-- //paging_box -->

</div>
</form>
</div>
</div>
<br>
<jsp:include page="../side/footer.jsp" flush="false"/>
<script src="/skc/js/mypage.js"></script>
</body>
</html>