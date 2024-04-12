<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/company/cHeader.jsp" %>
<%@taglib  prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>  
<div class="container d-flex">
	<div class="list-group mx-2">
            <a href="/Company/Info?com_id=${ sessionScope.clogin.com_id}" class="list-group-item   shadow" style="width: 150px;">회사 정보</a>
            <a href="/Company/Posts?com_id=${ sessionScope.clogin.com_id}" class="list-group-item hs_list_effect shadow">공고 관리</a>
            <a href="/Company/GetResume?com_id=${ sessionScope.clogin.com_id}" class="list-group-item shadow">받은 이력서</a>
            <a href="/Company/Scrap?com_id=${ sessionScope.clogin.com_id}" class="list-group-item shadow">스크랩한 구직자</a>
	</div>

	<div class=" mx-2 pb-4 w-100">
		<form action="/Company/SavePostWriter" method="post"
			enctype="multipart/form-data">
			<input type = "hidden" name = "com_id" value ="${ sessionScope.clogin.com_id}" >
			<div class="border border-tertiary w-100 p-5 rounded shadow">

				<h1>
					<input type="text" placeholder="공고 제목을 입력하세요" style="width: 700px"
						class="hs_input_title" name="po_title">
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
								| &nbsp </span> <select name="skill" class="jm_select selectpicker">
								<option value="JAVA">JAVA</option>
								<option value="HTML/CSS">HTML/CSS</option>
								<option value="JSP">JSP</option>
								<option value="ORACLE">ORACLE</option>
								<option value="SPRINGBOOT">SPRINGBOOT</option>
								<option value="GITHUB">GITHUB</option>
								<option value="PYTHON">PYTHON</option>
							</select>
							<br>
				
							 <span>경력 &ensp;&ensp;&ensp;&ensp; | &nbsp </span> <select name="career" class="jm_select selectpicker">>
								<option value="신입">신입</option>
								<option value="경력">경력</option>
							</select>
								<br>
							 <span>근무지 &ensp;&ensp;&nbsp; | &nbsp </span> <select name="region" class="jm_select selectpicker">>
								<option value="경기">전국</option>
								<option value="서울">서울</option>
								<option value="부산">부산</option>
								<option value="인천">인천</option>
								<option value="경기">경기</option>
								<option value="충북">충북</option>
								<option value="충남">충남</option>
								<option value="전북">전북</option>
								<option value="전남">전남</option>
								<option value="강원">강원</option>
								<option value="경북">경북</option>
								<option value="경남">경남</option>
								<option value="제주">제주</option>
							</select>
							<br>
							 <span>고용형태 &nbsp&nbsp  | &nbsp </span> <select name="emplo" class="jm_select selectpicker">>
								<option value="정규직">정규직</option>
								<option value="계약직">계약직</option>
							    
							</select>
							<div class="mt-5">
								<h4>공고 소제목</h4>
								<input type="text" class="form-control mt-2" id="floatingInput"
									placeholder="제목을 입력하세요" name="po_subtitle" required>
							</div>
							<br>
							<div>
								<h4>공고 내용</h4>
								<textarea name="po_content" class="w-100 opacity-50" rows="10"
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