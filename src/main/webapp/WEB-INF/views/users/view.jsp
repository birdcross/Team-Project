<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/user/uHeader.jsp" %>



            <div class=" mx-2 pb-4 w-100">
                <div class=" border border-tertiary p-5 rounded shadow">
                    <div class="d-flex justify-content-between">
                        <h1 class=" d-inline-flex">회사이름 : ${po.com_name} </h1>
                        <button type="button" class="btn btn-dark" style="width:100px; height:40px;"
                            onclick="location.href=`/Users/ApplyForm?po_num=${ po.po_num }&user_id=${ sessionScope.login.user_id }`;">지원하기</button>
                    </div>
                    <hr />
                    <div>
                        <div class="container w-50 mt-5 text ">
                            <form>
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">제목</span>
                                    <input type="text" class="form-control" value="${po.po_title}" readonly>
                                </div>
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">요구 기술스택</span>
                                    <input type="text" class="form-control" value="${po.skill}" id="birthday"
                                        readonly>
                                </div>
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">요구 경력</span>
                                    <input type="text" class="form-control" value="${po.career}" readonly>
                                </div>
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">고용형태</span>
                                    <input type="text" class="form-control" value="${po.emplo}" readonly>
                                </div>
                                <div class="input-group mb-3">
                                    <span
                                        class="input-group-text justify-content-center hs_span_size init_color hs_span">지역</span>
                                    <input type="text" class="form-control" value="${po.region}" readonly>
                                </div>

                                <hr class="my-4">
                                <div class="mt-5 jh_resume_skill">
                                    <h4>기술스택</h4>
                                    <div class="">
                                        <ul>
                                            <c:forEach items="${postList}" var="SK">
                                                <li>${SK.skill}</li>
                                            </c:forEach>

                                        </ul>
                                    </div>
                                </div>
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