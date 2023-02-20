<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지- 유저 정보 수정</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/admin/adminPage-member.css">
<link rel="stylesheet" href="../assets/css/admin/adminPage-modifyMember.css">
</head>
<body>
	<div>
		<div class="wrap">
		
			<!-- 사이드 바 -->
			<div id="side-bar"></div>
			<!-- 사이드 바 끝-->
			
			<!-- 목록 -->
			<div class="container">
				<div class="info-title-box"></div>
				<div class="info-flex">
					<section class="member-info-box-layout">
						<div class="member-info-box">
							<div class="notice-title-box-layout">
								<div class="member-info">
									<div>
										<a href=""><!-- 이전 경로로 이동 (회원 상세보기 페이지) -->
											<img src="../assets/img/admin/prev_icon.png" class="prev">
										</a>
									</div>
									<div class="member-img-box">
										<!-- 유저 이미지-->
										<div class="member-img"></div>
										<span class="member-nickname">벅벅코딩</span>
									</div>
									<div class="info-margin">
										<h2>회원 정보</h2>
									</div>
									<div class="info-margin">
										<span class="info-tag">이름</span>
										<h4>임**</h4>
									</div>
									<form action="" class="member-modify-form">
										<div class="info-margin">
											<span class="info-tag">생년월일</span>
											<!-- 유저 생년월일 -->
											<div class="member-input-box">
												<!-- 기존 유저 데이터 가져와서 데이터(생년월일) 넣기 -->
												<input type="text" class="member-input" name="memberBirth">
											</div>
										</div>
										<div class="info-margin">
											<span class="info-tag">이메일</span>
											<!-- 유저 이메일 -->
											<div class="member-input-box">
												<!-- 기존 유저 데이터 가져와서 데이터(이메일) 넣기 -->
												<input type="text" class="member-input" name="memberEmail">
											</div>
										</div>
										<div class="form-last-flex">
											<div class="info-margin">
												<span class="info-tag">핸드폰 번호</span>
												<!-- 유저 핸드폰 번호-->
												<div class="member-input-box">
												<!-- 기존 유저 데이터 가져와서 데이터(핸드폰 번호) 넣기 -->
													<input type="text" class="member-input" name="memberPhoneNumber">
												</div>
											</div>
											<div class="form-button-box">
												<button>정보 변경</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script src="../assets/js/admin/menuLoad.js"></script>
</html>