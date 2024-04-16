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
                <div class=" border border-tertiary p-5 rounded shadow">
                    <div class="d-flex justify-content-between">
                        <h1 class=" d-inline-flex">${uvo.user_name} 정보 수정</h1>
                        
                       <button type="submit" class="btn btn-dark"
                     style="width:100px; height:40px;" form="update_form" >수정완료</button>
                    
                    </div>
                 
                    <hr/>
                    <div>
                        <div class="container w-50 mt-5 text ">
                        
                            <form action="/Users/Update" id="update_form" method="POST">
                            
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">아이디</span>
                                    <input type="text" class="form-control" name="user_id" value="${uvo.user_id}" readonly>
                                </div>
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">이름</span>
                                    <input type="text" class="form-control" name="user_name" value="${uvo.user_name}" >
                                </div>
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">비밀번호</span>
                                    <input type="password" class="form-control" name="user_pw" value="${uvo.user_pw}" >
                                </div>
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">연락처</span>
                                    <input type="text" class="form-control" name="user_tell" value="${uvo.user_tell}" >
                                </div>
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">가입일자</span>
                                    <input type="text" class="form-control" name="user_date" value="${uvo.user_date}" >
                                </div>
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">성별</span>
                                    <input type="text" class="form-control" name="user_gender" value="${uvo.user_gender}" >
                                </div>

<form action="/Users/Delete?user_id=${ sessionScope.login.user_id}" id="delete_form" method="POST">
                              <div class="d-grid gap-2 d-md-flex justify-content-md-end">
  <button class="btn btn-danger" type=submit form="delete_form" style="width:100px; height:40px;" >회원탈퇴</button>
                              </div>
                   		     </form>
                            
                            
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $("#birthday").val($("#birthday").val().split(' ')[0]);
        </script>
  <%@include file="/WEB-INF/views/include/footer.jsp" %>