<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 메세지</title>
<style>
#A_Container_L {
	float: left;
	width: 200px;
}

#A_Container_C {
	width: 770px;
	float: left;
	overflow: hidden;
}

#A_Container {
	width: 1000px;
	margin: 0 auto;
	margin-top: 50px;
	margin-bottom: 20px;
	clear: both;
	overflow: hidden;
	min-height: 500px;
}

#A_Container_Wrap {
	width: 100%;
	clear: both;
	height: 100%;
}

/*  */

.allMessageOuter{
	float:left;
	width:800px;
	/* border:1px solid black; */
	height:1000px;
}
.topArea{
	/* border:1px solid red; */
	width:800px;
	height:80px;
	margin-top:30px;
}
.Select{
	width:140px;
	height:40px;
	padding-left:20px;
	margin-left:50px;
	border-radius:10px;
}
.showMessageList{
	margin-left:50px;
	/* border:1px solid red; */
	width:700px;
	height:500px;
}
.showListTable{
	
	width:700px;
	height:600px;
}
.tableTh{
	text-align:center;
	background:#e6e6e6;
}
.showListTable td{
	text-align:center;
	border-bottom:1px solid #cccccc;
}
</style>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div id='A_Container_Wrap'>
		<div id='A_Container'>
			<%@ include file="../mypage/mypageleft.jsp"%>

			<!--  -->
			<div class="allMessageOuter">
			<br>
			<h2 style="margin-left:50px;">전체 메세지</h2>
				<div class="topArea">
					<select class="Select">
						<option checked>전체수신함</option>
						<option>별표수신함</option>
						<option>미확인 수신함</option>
					</select>
					<!-- 휴지통 -->
					<label style="margin-left:10px; margin-right:10px;">
						<i class="fa fa-trash-o fa-lg font-color-lighter" aria-hidden="true"></i>
					</label>
					<input type="text" placeholder="상대방 닉네임 입력"style="width:200px; height:40px;">
					<img alt="검색" src="/p/Pimages/search.PNG" style="height:40px;">
				</div>
				<!-- 리스트 보여주는 테이블 -->
				<div class="showMessageList">
					<table class="showListTable" style="border:1px solid #cccccc;">
						<tr>
							<th class="tableTh"> <input type="checkbox"></th>
							<th class="tableTh">Message</th>
							<th class="tableTh">NickName</th>
							<th class="tableTh">Date</th>
						</tr>
						<tr>
							<td>1</td>
							<td>가능합니다.</td>
							<td>이다윤</td>
							<td>2018-02-28</td>
						</tr>
						<tr>
							<td>2</td>
							<td>가능합니다.</td>
							<td>이다윤</td>
							<td>2018-02-28</td>
						</tr>
						<tr>
							<td>3</td>
							<td>가능합니다.</td>
							<td>이다윤</td>
							<td>2018-02-28</td>
						</tr>
						<tr>
							<td>4</td>
							<td>가능합니다.</td>
							<td>이다윤</td>
							<td>2018-02-28</td>
						</tr>
						<tr>
							<td>5</td>
							<td>가능합니다.</td>
							<td>이다윤</td>
							<td>2018-02-28</td>
						</tr>
						<tr>
							<td>6</td>
							<td>가능합니다.</td>
							<td>이다윤</td>
							<td>2018-02-28</td>
						</tr>
						<tr>
							<td>7</td>
							<td>가능합니다.</td>
							<td>이다윤</td>
							<td>2018-02-28</td>
						</tr>
						<tr>
							<td>8</td>
							<td>가능합니다.</td>
							<td>이다윤</td>
							<td>2018-02-28</td>
						</tr>
						<tr>
							<td>9</td>
							<td>가능합니다.</td>
							<td>이다윤</td>
							<td>2018-02-28</td>
						</tr>
						<tr>
							<td>10</td>
							<td>가능합니다.</td>
							<td>이다윤</td>
							<td>2018-02-28</td>
						</tr>
					</table>
				</div>
			</div>
			</div>
			</div>
			
			<br><br><br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br><br><br>
			<br><br><br><br><br><br><br><br><br><br>
			
			<%@ include file="../common/footer.jsp" %>

</body>
</html>