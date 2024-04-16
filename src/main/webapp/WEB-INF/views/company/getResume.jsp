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
            <div class="border border-tertiary  p-5 rounded shadow">
                <div class="d-flex justify-content-between">
                    <h1>이력서 지원현황💌</h1>
                </div>
                <hr>

                <div class="container mb-5 mt-5 w-100">
                    <table class="table table-hover">
                        <tr class=" table-dark">
						<th class="col-4 text-center">지원 공고</th>
						<th class="col-3 text-center">이력서 번호</th>
						<th class="col-2 text-center">이력서 제목</th>
						<th class="col-2 text-center">합격 여부</th>
					</tr>
                        <c:forEach items="${ applyList }" var="ap" varStatus="status">

						<tr>
							<td class="text-center">${ap.po_title}</td>
							<td class="text-center">${ap.re_num}</td>
							<td class="text-center">&nbsp &nbsp <a href="/Company/View?re_num=${ ap.re_num }"
								style="text-decoration: none;">${ap.user_title}</a></td>
							<td class="text-center">${ap.result}</td>
						</tr>
					</c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
  <%@include file="/WEB-INF/views/include/footer.jsp" %>