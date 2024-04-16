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
			<form action="/Company/PostDetailUpdateView?po_num=${pvo.po_num}&com_id=${pvo.com_id}" method="post" enctype="multipart/form-data">
			<div class="border border-tertiary w-100 p-5 rounded shadow">

				<h1>
					${ pvo.po_title }
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
								| &nbsp </span> <span>${ pvo.skill }</span>
							
							<br>
							<br>
				
							 <span>경력 &ensp;&ensp;&ensp;&ensp; | &nbsp </span>
							 <span>${ pvo.career }</span>
								<br>
								<br>
							 <span>근무지 &ensp;&ensp;&nbsp; | &nbsp </span>
							 <span>${ pvo.region }</span>
							<br>
							<br>
							 <span>고용형태 &nbsp&nbsp  | &nbsp </span> 
							 <span>${pvo.emplo }</span>
							<div class="mt-5">
								<h4>공고 소제목</h4>
								<h5>${ pvo.po_subtitle }</h5>
							</div>
							<br>
							<div>
								<h5>공고내용</h5>
								<textarea name="po_content" class="w-100 opacity-50" rows="10"
									readonly="readonly">${pvo.po_content } </textarea>
							</div>

							<div class="d-flex mt-4 justify-content-center">
								<div class="px-2">
									<button type="submit" class="btn btn-dark">수정하기</button>
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