<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="stylesheet" href="/css/navi.css" />
<link rel="stylesheet" href="/css/calender.css" />
<style type="text/css">
.sub--button {
	background-color: #FF9F8D; 
	border : none; 
	color : #fff; 
	width : 350px;
	height : 40px; 
	margin : 10px;
	cursor: pointer;
}

.select--box {
	height: 40px;
	border: none;
	border-bottom: 2px solid black;
	margin: 0 10px 30px 0;
}
</style>
</head>
<body>
	<div class="body--container">
		<div class="navi--bar">
			<span class="title--box">예약</span>
		<div class="detail--container">
			<span class="detail--box"><a href="/selectDate">객실 예약</a></span>
			<span class="detail--box selected--menu"><a href="/reserveDining">다이닝 예약</a></span>
		</div>
	</div>
	<div class="calender--container">
		<form action="/dining" method="post" id="calender--form" onsubmit="alert('예약이 완료되었습니다.')">
			<div class="calender--wrap">
				<input type="text" class="dateSelector" id="calender" name="date">
			</div>
			<div class="count--container">
				<div id="select--box--wrap">
					<div class="select--title--box">
						<h3>예약 인원</h3>
					</div>
					<div class="select--people--box">
						<p class="select--title--tag">성인</p>
						<select name="countPerson" class="select--box">
							<option value="1">1</option>
							<option value="2">2</option>
						</select> 
					</div>
					<div class="select--people--box">
						<p class="select--title--tag">어린이</p>
						<select name="countChild" class="select--box">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
						</select> 
					</div>
					<div class="select--people--box">
						<p class="select--title--tag">유아</p>
						<select name="countBaby" class="select--box">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="2">2</option>
						</select>
					</div>
				</div>
				<div id="calender--search--btn">
					<button class="sub--button">예약</button>
				</div>
			</div>
		</form>
	</div>
</div>
	<script>
		let dateSelector = document.querySelector('.dateSelector')
		console.log(dateSelector);
		$(".dateSelector").flatpickr({
			enableTime : false,
			dateFormat : "Y-m-d",
			mode : "single",
			minDate : "today",
			inline : true
		});
	</script>
</body>
</html>