<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic"
	rel="stylesheet">
<title>회원가입</title>
<style>
.step {
	border: 1px solid #b4b4b4;
	width: 250px;
	height: 40px;
	text-align: center;
}

#step2 {
	background: lightgray;
}

.person_change {
	width: 700px;
	margin-left: auto; 
	margin-top:30px;
	margin-right:auto;
	border : 1px solid #dedede;
	border-bottom: none;
	margin-bottom: 30px;
	font-size: 13px;
	border: 1px solid #dedede;
}

.person_change th {
	text-align: left;
	background: #efefef;
	color: #666;
	font-weight: normal;
	padding-left: 25px;
	border-bottom: 1px solid #e6e6e6;
	height: 40px;
}

.person_change td {
	position: relative;
	padding: 6px 0 6px 9px;
	color: #666;
	border-bottom: 1px solid #e6e6e6;
}

.person_change p {
	margin-left: 10px;
}

.person_change input {
	border: 1px solid #c6c6c6;
	outline: none;
	height: 26px;
	padding-left: 5px;
}

.person_change input.max {
	width: 98%;
}

.person_change textarea.max {
	width: 98%;
	height: 180px;
	border: 1px solid #c6c6c6;
}

.person_change select {
	border: 1px solid #c6c6c6;
	outline: none;
	height: 28px;
	padding-left: 5px;
}

.person_change textarea {
	border: 1px solid #e6e6e6;
	outline: none;
	height: 100px;
	width: 96%;
	padding-left: 5px;
}

.person_change input[type=password] {
	width: 235px;
}

.person_change input[type=email], .person_change input[type=url] {
	width: 290px;
}

.person_change input[type=tel] {
	width: 80px;
}

.font_12no66 {
	font-size: 12px;
	font-weight: normal;
	color: #666666;
}

.new {
	position: relative;
	top: 9px;
	margin-left: 10px;
	margin-right: 5px;
}

.bor_none .share_star {
	
	color: #666;
	float: right;
	font-weight: 100;
	font-size: 12px;
}

.resumeTable {
	width: 400px;
	margin-bottom: 30px;
	border-top: 1px solid #e6e6e6;
	border-left: 1px solid #e6e6e6;
	font-size: 13px;
	text-align: left;
}

.resumeTable th, .resumeTable td {
	height: 28px;
	color: #666;
	border-bottom: 1px solid #e6e6e6;
}

.resumeTable th {
	padding: 6px 0 6px 18px;
	border-right: 0;
	font-weight: normal;
	text-align: left;
	background: #efefef;
}

.resumeTable td {
	padding: 6px 9px;
	border-right: 1px solid #e6e6e6;
}

.bor_top4ff {
	border-top: 4px solid #ffffff;
}

.send_check {
	position: relative
}

.send_check span {
	margin: 5px 20px 0 20px;
}

.sns_send {
	position: absolute;
}

.btn_joinL {
	margin-top: 20px;
	text-align: center;
}

.btn_joinL span {
	display: inline-block;
	width: 130px;
	padding: 0;
	border-radius: 3px;
	color:white;
	font-size: 15px;
	font-weight: 600;
	line-height: 50px;
	background:darkgray;
}
.btn_joinL input{
	display: inline-block;
	width: 130px;
	padding: 0;
	border-radius: 3px;
	color:white;
	font-size: 15px;
	font-weight: 600;
	line-height: 50px;
	background:darkgray;
	border:none;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<h2 style="margin-left:400px;">회원가입</h2>
	<hr>
	<br><br> 	
	
	<div align="center">
		<table>
			<tr>
				<th class="step" id="step1"><h4>STEP1</h4></th>
				<th class="step" id="step2"><h4>
						<strong>STEP2</strong>
					</h4></th>
			</tr>
		</table>
	</div>
	
	
	<div id="A_Container_C">
		<form name="joinform" action="?member2=modifyok&amp;" method="post"
			enctype="multipart/form-data">
			<table class="person_change" cellspacing="0">
				<input type="hidden" name="intseq" value="3018">
				<colgroup>
					<col style="width: 150px">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th>회원종류</th>
						<td><select class="title">
								<option>일반회원</option>
								<option>기업회원</option>
						</select></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="userName" maxlength="14"></td>
					</tr>
					<tr>
						<th>아이디 *</th>
						<td><input type="text" name="userId" maxlength="14"></td>
					</tr>
					<tr>
						<th>비밀번호 *</th>
						<td><input type="password" name="strPwd" id="strPwd">
							<b class="font_12no66">* 4~15자의 영문자, 숫자조합</b></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input type="password" name="strPwd2"></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="date" name="date"></td>
					</tr>
					<tr>
						<th>성별</th>
						<td><input name="sex" class="new" type="radio" value="1"
							checked="">남 <input name="sex" class="new" type="radio"
							value="2">여</td>
					</tr>
					<tr>
						<th>이메일 *</th>
						<td><input type="text" maxlength="25" name="strEmail1"
							value="" onkeyup="SetEmailAddress_strEmail(this.form);"
							style="width: 100px;"> @ <input type="text"
							maxlength="25" name="strEmail2a" value=""
							onkeyup="SetEmailAddress_strEmail(this.form);"
							style="width: 100px;" readonly=""> <select
							style="width: 82px;" name="strEmail2b"
							onchange="changeEmailType_strEmail(this.form, this.value);SetEmailAddress_strEmail(this.form);">
								<option value="">선택</option>
								<option value="naver.com" selected="">naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="hotmail.com">hotmail.com</option>
								<option value="nate.com">nate.com</option>
								<option value="yahoo.co.kr">yahoo.co.kr</option>
								<option value="paran.com">paran.com</option>
								<option value="empas.com">empas.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
								<option value="freechal.com">freechal.com</option>
								<option value="lycos.co.kr">lycos.co.kr</option>
								<option value="korea.com">korea.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="hanmir.com">hanmir.com</option>
								<option value="직접입력">직접입력</option>
						</select> <input type="hidden" name="strEmail" value="wntmd1215@naver.com">
							<script language="javascript">
							<!--
								function changeEmailType_strEmail(frm,
										emailType) {
									frm.strEmail2a.value = "";
									if (emailType == "직접입력") {
										frm.strEmail2a.readOnly = false;
										frm.strEmail2a.focus();
									} else {
										frm.strEmail2a.readOnly = true;
										frm.strEmail2a.value = emailType;
									}
								}
								function SetEmailAddress_strEmail(frm) {
									frm.strEmail.value = frm.strEmail1.value
											+ "@" + frm.strEmail2a.value;
								}
							//-->
							</script></td>
					</tr>
					<tr>
						<th>휴대전화 *</th>
						<td><select style="width: 82px;" name="strMobil1"
							onchange="SetHandPhone_strMobil(this.form);">
								<option value="010" selected="">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select> - <input style="width: 80px;" type="text" maxlength="4" size="4"
							name="strMobil2" value=""
							onkeyup="if(isNaN(this.value))this.value='';SetHandPhone_strMobil(this.form);">
							- <input style="width: 80px;" type="text" maxlength="4" size="4"
							name="strMobil3" value=""
							onkeyup="if(isNaN(this.value))this.value='';SetHandPhone_strMobil(this.form);">
							<input type="hidden" name="strMobil" value=""> <script
								language="javascript">
							<!--
								function SetHandPhone_strMobil(frm) {
									frm.strMobil.value = frm.strMobil1.value
											+ "-" + frm.strMobil2.value + "-"
											+ frm.strMobil3.value;
								}
							//-->
							</script></td>
					</tr>
					<!-- <tr>
						<th rowspan="2">주소</th>
						<td><input type="text" id="strZip" name="strZip"
							value="06120  " class="address" placeholder="우편번호" readonly="">
							<a href="#" id="strZip2" class="btn_joinS"
							onclick="openDaumZipAddress();">우편번호</a></td>
					</tr>
					<tr>
						<td><input type="text" id="strAddr1" name="strAddr1"
							value="서울 강남구 강남대로 476" class="address_detail01" placeholder="주소"
							readonly=""> <br> <input type="text" name="strAddr2"
							value="kh정보교육원" style="margin-top: 5px; margin-left: 0px;"
							class="address_detail02" placeholder="나머지주소"></td>
					</tr>
 -->
					<tr>
						<th>계좌번호</th>
						<td><select class="select" name="bankname" id="bankname">
								<option value="0">선택</option>
								<option value="기업은행">기업은행</option>
								<option value="국민은행">국민은행</option>
								<option value="우리은행">우리은행</option>
								<option value="신한은행" selected="">신한은행</option>
								<option value="KEB하나은행">KEB하나은행</option>
								<option value="농협은행">농협은행</option>
								<option value="수협">수협</option>
								<option value="신협">신협</option>
								<option value="광주은행">광주은행</option>
								<option value="부산은행">부산은행</option>
								<option value="대구은행">대구은행</option>
								<option value="우체국">우체국</option>
						</select> <input name="bankaddr" class="input01" type="text" value=""
							size="40" maxlength="40"></td>
					</tr>
					<tr>
						<th>예금주</th>
						<td><input type="text" name="bankhuman" class="input01"
							value=""></td>
					</tr>


				</tbody>
			</table>
			<div style="margin-left:440px;">
			<h2 class="bor_none sub_title">정보수신설정</h2>
			<table class="resumeTable" cellspacing="0">
				<colgroup>
					<col style="width: 150px">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th class="bor_top4ff">메일링 수신설정 *</th>
						<td class="send_check"><input name="bitNews" class="sns_send"
							type="radio" value="true"> <span>수신함</span> <input
							name="bitNews" class="sns_send" type="radio" checked=""
							value="false"> <span>수신안함</span></td>
					</tr>
					<tr>
						<th>SMS 수신설정</th>
						<td class="send_check"><input name="bitNews2"
							class="sns_send" type="radio" value="True"> <span>수신함</span>
							<input name="bitNews2" class="sns_send" type="radio" checked=""
							value="False"> <span>수신안함</span></td>
					</tr>
				</tbody>
			</table>
			</div>
			<div class="btn_joinL">
				<a href="login.jsp" ><span>수정하기</span></a>
				<input type="reset" value="취소하기">
			</div>
		</form>
	</div>
	
	<br><br><br><br><br><br><br><br><br><br><br><br>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>