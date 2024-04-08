<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/company/cHeader.jsp" %>
    
    <div class="container d-flex">
        <div class="list-group mx-2">
            <a href="/company/info" class="list-group-item  hs_list_effect shadow" style="width: 150px;">회사 정보</a>
            <a href="/company/posts" class="list-group-item shadow">공고 관리</a>
            <a href="/company/getResume" class="list-group-item shadow">받은 이력서</a>
            <a href="/company/scrap" class="list-group-item shadow">스크랩한 유저</a>
        </div>

            <div class=" mx-2 pb-4 w-100">
            <div class="border border-tertiary p-5 rounded shadow">
                    <div class="d-flex justify-content-between">
                    <h1 class="d-inline-flex">${vo.com_name} 회사정보 수정</h1>
                   
                     </div>


                <hr>
                <img src="${companyPS.logo == null ? '/images/defaultLogo.png' : companyPS.logo}" class="rounded mx-auto d-block rounded-4 mt-5 my-3 w-25" style="width:300px; height:250px;">

                <div>
                    <div class="container w-50 mt-5 text ">
                        <form action="/Users/Update" method="POST">
                            <div class="input-group mb-3">
                                <span class="input-group-text justify-content-center hs_span_size init_color hs_span">회사아이디</span>
                                <input type="text" class="form-control" value="${vo.com_id}" >
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text  justify-content-center hs_span_size init_color hs_span">회사명</span>
                                <input type="text" class="form-control" value="${vo.com_name}" >
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text  justify-content-center hs_span_size init_color hs_span">사업자등록번호</span>
                                <input type="text" class="form-control" value="${vo.com_num}" >
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text justify-content-center hs_span_size init_color hs_span">대표자</span>
                                <input type="text" class="form-control" value="${vo.com_boss}" >
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text justify-content-center hs_span_size init_color hs_span">비밀번호</span>
                                <input type=" text" class="form-control" value="${vo.com_pw}" >
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text justify-content-center hs_span_size init_color hs_span">비밀번호확인</span>
                                <input type=" text" class="form-control" value="${vo.com_pw}" >
                            </div>

                        
                            
                             <br>
                             <hr>
                            
                                 
            
  <div class="d-flex justify-content-between">
  <button type="submit" class="btn btn-dark" style="width:100px; height:40px;">수정완료</button>
  <button type="button" class="btn btn-dark" style="width:100px; height:40px;" onclick="location.href=`/Company/LoginForm`;">회원탈퇴</button>
  </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>


  <%@include file="/WEB-INF/views/include/footer.jsp" %>