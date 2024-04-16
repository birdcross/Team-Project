<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/user/uHeader.jsp" %>
	  <%@taglib  prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>    
        <div class="container d-flex">
            <div class="list-group mx-2">
                <a href="/Users/Info?user_id=${ sessionScope.login.user_id }" class="list-group-item hs_list_effect shadow" style="width: 150px;">회원 정보</a>
                <a href="/Users/ResumeForm?user_id=${ sessionScope.login.user_id }" class="list-group-item shadow">이력서 관리</a>
                <a href="/Users/Scrap?user_id=${ sessionScope.login.user_id }" class="list-group-item shadow">스크랩</a>
                <a href="/Users/History?user_id=${ sessionScope.login.user_id }" class="list-group-item shadow">지원 이력</a>
            </div>


			
      
<div class="border border-tertiary w-100 p-5 rounded shadow">

				<h1>
					커뮤니티 등록
				</h1>

				
				<div class="container" style="width: 85%;">
					<div class="d-flex row justify-content-center">

						
					</div>
				</div>
				<div class="container" style="width: 85%;">
				<form action="/Community/ComuCreate?user_id=${ sessionScope.login.user_id }" method = "POST">
					<div class="row justify-content-center">
						<div class="col-md-14 mx-auto">
				
                <input type = "hidden" name = "${comu_bno }">
                <input type = "hidden" name = "${comu_hit }">
                <input type = "hidden" name = "comu_date" value = "${comu_date }">
							<div class="mt-5">
								<h5>제목</h5>
								<textarea class="w-100 opacity-50" rows="1" name = "comu_title"> </textarea>
							</div>
							
							<br>
							<div>
								<h5>내용</h5>
								<textarea class="w-100 opacity-50" rows="15" name = "comu_content"> </textarea>
							</div>

							<div class="d-flex mt-4 justify-content-center">
								<div class="px-2">
									<button type="submit" class="btn btn-dark" >등록</button>
								</div>
							</div>
						</div>
					</div>
				
				</form>
		


            
 </div>
  </div>
    </div>
    