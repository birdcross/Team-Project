<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/user/uHeader.jsp"%>

<div class="container d-flex">
            <div class="list-group mx-2">
                <a href="/Users/Info?user_id=${ sessionScope.login.user_id }" class="list-group-item hs_list_effect shadow" style="width: 150px;">회원 정보</a>
                <a href="/Users/ResumeForm?user_id=${ sessionScope.login.user_id }" class="list-group-item shadow">이력서 관리</a>
                <a href="/Users/Scrap?user_id=${ sessionScope.login.user_id }" class="list-group-item shadow">스크랩</a>
                <a href="/Users/History?user_id=${ sessionScope.login.user_id }" class="list-group-item shadow">지원 이력</a>
            </div>

	<div class=" mx-2 pb-4 w-100">
		<form action="/Users/SaveResume" method="post"
			enctype="multipart/form-data">
	<input type="hidden"  name="user_id" value="${ sessionScope.login.user_id }">
			<div class="border border-tertiary w-100 p-5 rounded shadow">

				<h1>
					<input type="text" placeholder="이력서 제목을 입력하세요" style="width: 700px"
						class="hs_input_title" name="user_title" >
				</h1>

				<hr>
				<div class="container" style="width: 85%;">
					<div class="d-flex row justify-content-center">

						<div class="jh_resume_flexbox mt-3">
							<img src="/images/profile1.jpg" id="imagePreview"
								style="width: 200px; height: 250px;"
								class="mb-2 border border-tertiary">
							<div class="jh_resume_personal_info">
								<div class="input-group mb-3">
									<span
										class="input-group-text w-25 justify-content-center init_color hs_span">이름</span>
									<input type="text" class="form-control" style="width: 120px;"
										value="${vo.user_name}" readonly>
								</div>

								<div class="input-group mb-3">

									<span
										class="input-group-text w-25 justify-content-center init_color hs_span">생년월일</span>

									<input type="text" class="form-control" style="width: 120px;"
										value="${vo.user_date}" readonly>
								</div>

								<div class="input-group mb-3">


									<span
										class="input-group-text w-25 justify-content-center init_color hs_span">연락처</span>

									<input type="tel" class="form-control"
										value="${vo.user_tell}"  readonly>
								</div>

								<div class="input-group mb-3">

									<span
										class="input-group-text w-25 justify-content-center init_color hs_span">이메일</span>
									<input type="text" class="form-control"
										value="${vo.user_id}" readonly>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="container" style="width: 85%;">
					<div class="row justify-content-center">
						<div class="col-md-14 mx-auto">
							<!-- <input type="file" class="form-control mt-2" name="user_img들어갈곳"
								onchange="chooseImage(this)" /> <br>  -->
								
								<span>분야 &nbsp
								| &nbsp </span> <select name="skill">
								<option value="JAVA">Java</option>
								<option value="HTML/CSS">HTML/CSS</option>
								<option value="SPRINGBOOT">Springboot</option>
								<option value="JSP">JSP</option>
								<option value="ORACLE">ORACLE</option>
								<option value="GITHUB">GITHUB</option>
								<option value="PYTHON">PYTHON</option>
							</select>
							<span>&ensp;&ensp;</span>
							 <span>경력 &nbsp | &nbsp </span> <select name="career">
								<option value="신입">신입</option>
								<option value="경력">경력</option>
								<option value="무관">무관</option>
							</select>
								<span>&ensp;&ensp;</span>
							 <span>근무지 &nbsp | &nbsp </span> <select name="region">
								<option value="전국">전국</option>
								<option value="경기">경기</option>
								<option value="서울">서울</option>
								<option value="부산">부산</option>
								<option value="경기">경남</option>
								<option value="제주">제주</option>
								<option value="울산">울산</option>
							</select>
							<div class="mt-5">
								<h4>포트폴리오 주소</h4>
								<input type="text" class="form-control mt-2" id="floatingInput"
									placeholder="git 또는 blog 주소를 입력해주세요" name="user_port"
									style="display: block;" required>

							<div class="mt-5">
								<h4>자기소개서 제목</h4>
								<input type="text" class="form-control mt-2" id="floatingInput"
									placeholder="제목을 입력하세요" name="user_intti" required>
							</div>
							<br>
							<div>
								<h4>자기소개</h4>
								<textarea name="user_intco" class="w-100 opacity-50" rows="10"
									placeholder="내용을 입력하세요"></textarea>
							</div>
							<div class="d-flex mt-4 justify-content-center">
								<div class="px-2">
									<button type="submit" class="btn btn-dark">저장</button>
								</div>
							</div>
						</div>

					</div>
		</form>
	</div>

</div>
<script>
            function countCheck(obj) {
                let count = $("input:checked[type='checkbox']").length;

                if (count > 5) {
                    $(this).prop("checked", false);
                    alert("5개까지만 선택해주세요");
                    return false;
                }
                console.log(obj.value);
            }

            function chooseImage(obj) {
                console.log(obj);
                console.log(obj.files);
                let f = obj.files[0];
                if (!f.type.match("image")) {
                    alert("이미지 파일이 아닙니다!");
                }

                let reader = new FileReader();
                reader.readAsDataURL(f);
                reader.onload = function (e) {
                    $("#imagePreview").attr("src", e.target.result);
                }

            }
        </script>
