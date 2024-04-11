<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/user/uHeader.jsp" %>

        <div class="container d-flex">
            <div class="list-group mx-2">
                <a href="/Users/Info?user_id=${ sessionScope.login.user_id }" class="list-group-item shadow" style="width: 150px;">회원 정보</a>
                <a href="/Users/ResumeForm?user_id=${ sessionScope.login.user_id }" class="list-group-item hs_list_effect shadow">이력서 관리</a>
                <a href="/Users/Scrap?user_id=${ sessionScope.login.user_id }" class="list-group-item shadow">스크랩</a>
                <a href="/Users/History?user_id=${ sessionScope.login.user_id }" class="list-group-item shadow">지원 이력</a>
            </div>

            <div class=" mx-2 pb-4 w-100">
                <div class="border border-tertiary p-5 rounded shadow">
                    <h1>${ rv.user_title }</h1>
                    <hr>
                    <div class="d-flex justify-content-center">
                        <div style="width: 85%;">
                            <div class="jh_resume_flexbox mt-3">
                                <img src="${resumeDetail.profile == null ? '/images/profile1.jpg' : resumeDetail.profile}"
                                    style="width: 188px; height: 226px;">
                                <table class="jh_resume_table">
                                    <tr>
                                        <td>이름</td>
                                        <td>${uv.user_name}</td>
                                    </tr>
                                    <tr>
                                        <td>생년월일</td>
                                        <td>${uv.user_date}</td>
                                    </tr>
                                    <tr>
                                        <td>연락처</td>
                                        <td>${uv.user_tell}</td>
                                    </tr>
                                    <tr>
                                        <td>이메일</td>
                                        <td>${ uv.user_id }</td>
                                    </tr>
                                </table>
                            </div>
                            <br>
                        <span>기술스택 &nbsp | &nbsp </span><select value="rv.skill" disabled>
                        <option value="Java">Java</option>
                        <option value="Springboot">Springboot</option>
                        <option value="C">C</option>
                        <option value="CSS">CSS</option>
                        <option value="html">Html</option>
                        <option value="Flutter">Flutter</option>
                        <option value="JavaScript">JavaScript</option>
                     </select>
                     <span>&ensp;&ensp;</span>
                      <span>경력 &nbsp | &nbsp </span> <select value="rv.career" disabled>
                        <option value="신입">신입</option>
                        <option value="경력">경력</option>
                     </select>
                        <span>&ensp;&ensp;</span>
                      <span>근무지 &nbsp | &nbsp </span> <select value="rv.region" disabled>
                        <option value="경기">전국</option>
                        <option value="경기">경기</option>
                        <option value="서울">서울</option>
                        <option value="부산">부산</option>
                        <option value="경기">경남</option>
                        <option value="제주">제주</option>
                        <option value="울산">울산</option>
                     </select>
                            <div class="mt-5">
                                <h4>포트폴리오 주소</h4>
                                <input type="url" class="form-control mt-2" id="floatingInput"
                                    placeholder="git 또는 blog 주소를 입력해주세요" style="display: block;"
                                    value="${ rv.user_port }" readOnly>
                            </div>
                                                 <div class="mt-5">
                        <h4>자기소개서 제목</h4>
                        <input type="text" class="form-control mt-2" id="floatingInput"
                           placeholder="제목을 입력하세요" value="${ rv.user_intti }" required>
                     </div>
                     <br>
                            <div class="mt-5 jh_resume_skill">
                            </div>
                            <div class="mt-5 w-100">
                                <h4>자기소개</h4>

                                <textarea value="${ rv.user_intco } class="w-100 opacity-50" rows="10" readOnly>${ rv.user_intco }
                               </textarea>
                            </div>

                            <div class="d-flex mt-4 justify-content-center">
                                <div class="px-2">
                                    <button type="button" class="btn btn-dark"
                                        onclick="updateResumeForm(${resumeDetail.id})">수정하기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function updateResumeForm(id) {
                console.log(id);
                $.ajax({
                    type: "GET",
                    url: "/person/updateResume/" + id
                }).done((res) => {
                    location.href = "/person/updateResume/" + id;
                }).fail((err) => {

                });
            }
        </script>
       <%@include file="/WEB-INF/views/include/footer.jsp" %>