<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/user/uHeader.jsp" %>


		<div class="sj_ha_container">
            <div class=" mx-2 pb-4 w-100">
                <div class=" border border-tertiary p-5 rounded shadow">
                    <div class="d-flex justify-content-between">
                        <h1 class=" d-inline-flex">회사이름 : ${po.com_name} </h1>
                        <button type="button" class="btn btn-dark" style="width:100px; height:40px;"
                            onclick="location.href=`/Users/ApplyForm?po_num=${ po.po_num }&user_id=${ sessionScope.login.user_id }`;">지원하기</button>
                    </div>
                    <hr />
	<div class=" mx-2 pb-4 w-100">
			<form action="/Company/PostDetailUpdateView?po_num=${po.po_num}&user_id=${ sessionScope.login.user_id }" method="post" enctype="multipart/form-data">
			<div class="border border-tertiary w-100 p-5 rounded shadow">

				<h1>
					${ po.po_title }
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
								| &nbsp </span> <span>${ po.skill }</span>
							
							<br>
							<br>
				
							 <span>경력 &ensp;&ensp;&ensp;&ensp; | &nbsp </span>
							 <span>${ po.career }</span>
								<br>
								<br>
							 <span>근무지 &ensp;&ensp;&nbsp; | &nbsp </span>
							 <span>${ po.region }</span>
							<br>
							<br>
							 <span>고용형태 &nbsp&nbsp  | &nbsp </span> 
							 <span>${po.emplo }</span>
							<div class="mt-5">
								<h4>공고 소제목</h4>
								<h5>${ po.po_subtitle }</h5>
							</div>
							<br>
							<div>
								<h5>공고내용</h5>
								<textarea name="po_content" class="w-100 opacity-50" rows="10"
									readonly="readonly">${po.po_content } </textarea>
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