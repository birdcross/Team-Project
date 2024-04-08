<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/company/cHeader.jsp" %>

<div class="container d-flex">
	<div class="list-group mx-2">
		<a href="/person/info" class="list-group-item shadow"
			style="width: 150px;">회원 정보</a> <a href="/person/resumes"
			class="list-group-item hs_list_effect shadow">이력서 관리</a> <a
			href="/person/scrap" class="list-group-item shadow">스크랩</a> <a
			href="/person/history" class="list-group-item shadow">지원 이력</a>
	</div>

	<div class=" mx-2 pb-4 w-100">
		<form action="/person/resumes" method="post"
			enctype="multipart/form-data">

			<div class="border border-tertiary w-100 p-5 rounded shadow">

				<h1>
					<input type="text" placeholder="공고 제목을 입력하세요" style="width: 700px"
						class="hs_input_title" name="title">
				</h1>

				<hr>
				<div class="container" style="width: 85%;">
					<div class="d-flex row justify-content-center">

						
					</div>
				</div>
				<div class="container" style="width: 85%;">
					<div class="row justify-content-center">
						<div class="col-md-14 mx-auto">
						<br>
						 <span>분야 &ensp;&ensp;&ensp;&ensp;
								| &nbsp </span> <select name="publish" class="jm_select selectpicker">
								<option value="Java">Java</option>
								<option value="Springboot">Springboot</option>
								<option value="C">C</option>
								<option value="CSS">CSS</option>
								<option value="html">Html</option>
								<option value="Flutter">Flutter</option>
								<option value="JavaScript">JavaScript</option>
							</select>
							<br>
				
							 <span>경력 &ensp;&ensp;&ensp;&ensp; | &nbsp </span> <select name="publish" class="jm_select selectpicker">>
								<option value="신입">신입</option>
								<option value="경력">경력</option>
							</select>
								<br>
							 <span>근무지 &ensp;&ensp;&nbsp; | &nbsp </span> <select name="publish" class="jm_select selectpicker">>
								<option value="경기">전국</option>
								<option value="경기">경기</option>
								<option value="서울">서울</option>
								<option value="부산">부산</option>
								<option value="경기">경남</option>
								<option value="제주">제주</option>
								<option value="울산">울산</option>
							</select>
							<br>
							 <span>고용형태 &nbsp&nbsp  | &nbsp </span> <select name="publish" class="jm_select selectpicker">>
								<option value="인턴">인턴</option>
								<option value="계약직">계약직</option>
								<option value="정규직">정규직</option>
								<option value="프리랜서">프리랜서</option>
							</select>
							<div class="mt-5">
								<h4>공고 소제목</h4>
								<input type="text" class="form-control mt-2" id="floatingInput"
									placeholder="제목을 입력하세요" name="user_intti" required>
							</div>
							<br>
							<div>
								<h4>공고내용</h4>
								<textarea name="selfIntro" class="w-100 opacity-50" rows="10"
									placeholder="내용을 입력하세요"></textarea>
							</div>
							<input type="file" class="form-control mt-2" name="profile"
								onchange="chooseImage(this)" /> 
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

  <%@include file="/WEB-INF/views/include/footer.jsp" %>