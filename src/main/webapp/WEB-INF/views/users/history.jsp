<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/include/user/uHeader.jsp"%>

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
				<h1>지원한 이력서</h1>
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
							<td class="text-center">&nbsp &nbsp <a href="/Users/View?po_num=${ ap.po_num }"
								style="text-decoration: none;">${ap.po_title}</a></td>
							<td class="text-center">${ap.re_num}</td>
							<td class="text-center">${ap.user_title}</td>
							<td class="text-center">${ap.result}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>



<%@include file="/WEB-INF/views/include/footer.jsp"%>