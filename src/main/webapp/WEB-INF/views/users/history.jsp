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
						<th class="col-4 px-2">&nbsp &nbsp 지원 공고</th>
						<th class="col-3 text-center">회사명</th>
						<th class="col-2 text-center">마감일자</th>
						<th class="col-2 text-center">합격 여부</th>
					</tr>
					
					<c:forEach items="${ applyMap }" var="Ap" varStatus="status">

						<tr
							class="${proposal.status==1? 'table-info':(proposal.status==-1?'table-secondary':'')} hs_hover">
							<td>&nbsp &nbsp <a href="/person/detail/${proposal.postId}"
								style="text-decoration: none;">${Ap.po_title}</a></td>
							<td class="text-center">이력서번호:${Ap.re_num}</td>
							<td class="text-center">이력서제목:${Ap.user_id}</td>
							<td class="text-center"><c:choose>
									<c:when test="${proposal.status==0}">
                                                ${ap.result}
                                            </c:when>
									<c:when test="${proposal.status==1}">
										<a class="link-primary" data-bs-toggle="modal"
											data-bs-target="#exampleModal-${proposal.id}"> 합격 </a>
										<!-- Modal -->
										<div class="modal fade" id="exampleModal-${proposal.id}"
											tabindex="-1" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel">합격</h5>
														<button type=" button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">
														<c:forEach items="${proposalPassList}" var="propo">
															<c:if test="${propo.PProposalId==proposal.id}">
                                                                        ${propo.comment}
                                                                    </c:if>
														</c:forEach>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-dark"
															data-bs-dismiss="modal">닫기</button>
													</div>
												</div>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<h6 class="text-danger d-inline-flex">불합격</h6>
									</c:otherwise>
								</c:choose></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>



<%@include file="/WEB-INF/views/include/footer.jsp"%>