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







<div class=" mx-2 pb-4 w-100">
            <div class="border border-tertiary  p-5 rounded shadow">
                <div class="d-flex justify-content-between">
                    <h1>커뮤니티 홈 💌</h1>
                </div>
                <hr>
                
      



<div class="row">
<div class="col-12">
<div class="card">
<div class="card-tools">
<div class="input-group input-group-sm" style="width: 200px;">
<div class="input-group-append">

</div>
</div>
</div>

<div class="card-body table-responsive p-0" style="height: 500px">
<table class="table table-hover text-nowrap" >

<thead style="background-color: #3FBDD6;">
<tr>
<th>번호</th>
<th>제목</th>
<th>작성자</th>
<th>작성일자</th>
<th>조회수</th>
</tr>
</thead>



<c:forEach var="comuVo" items="${comuList}"> 
<tr>
<td>${comuVo.comu_bno}</td>
<td>${comuVo.comu_title}</td>
<td>${comuVo.user_id}</td>
<td>${comuVo.comu_date}</td>
<td>${comuVo.comu_hit}</td>
</tr>
</c:forEach>






</table>
</div>
</div>


							<div class="d-flex mt-4 justify-content-md-end">
								<div class="px-2">
									<button type="submit" class="btn btn-dark" onclick="location.href=`/Community/ComuCreateForm?user_id=${ sessionScope.login.user_id }`;">등록</button>
								</div>
							</div>
						
</div>
</div>





            
            
        </div>
    