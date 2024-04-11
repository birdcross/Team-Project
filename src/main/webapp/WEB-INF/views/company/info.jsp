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
            <div class="border border-tertiary p-5 rounded shadow">
                    <div class="d-flex justify-content-between">
                    <h1 class="d-inline-flex">${cvo.com_name} 정보</h1>
                    
                    <button type="button" class="btn btn-dark"
                     style="width:100px; height:40px;" onclick="location.href=`/Company/UpdateForm?com_id=${ sessionScope.clogin.com_id}`;">수정하기</button>
                     </div>


                <hr>
                <img src="${companyPS.logo == null ? '/images/defaultLogo.png' : companyPS.logo}" class="rounded mx-auto d-block rounded-4 mt-5 my-3 w-25" style="width:300px; height:250px;">

                <div>
                    <div class="container w-50 mt-5 text ">
                        <form >
                                <div class="input-group mb-3">
                                <span class="input-group-text justify-content-center hs_span_size init_color hs_span">회사아이디</span>
                                <input type="text" class="form-control" value="${cvo.com_id}" readonly>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text justify-content-center hs_span_size init_color hs_span">회사명</span>
                                <input type="text" class="form-control" value="${cvo.com_name}" readonly>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text  justify-content-center hs_span_size init_color hs_span">사업자등록번호</span>
                                <input type="text" class="form-control" value="${cvo.com_num}" readonly>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text  justify-content-center hs_span_size init_color hs_span">대표자 성명</span>
                                <input type="text" class="form-control" value="${cvo.com_boss}" readonly>
                            </div>
                               <div class="input-group mb-3">
                                <span class="input-group-text  justify-content-center hs_span_size init_color hs_span">비밀번호</span>
                                <input type="password" class="form-control" value="${cvo.com_pw}" readonly >
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>


