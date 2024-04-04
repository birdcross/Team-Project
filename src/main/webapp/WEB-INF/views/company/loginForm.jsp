<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/company/cHeader.jsp" %>

        <div style="margin-top: 100px; margin-bottom: 100px;">
            <div class="d-flex justify-content-center mb-4">
                <h2>기업 회원</h2>
            </div>
            <div class="d-flex justify-content-center">

                <div class="border rounded p-3 m-3 shadow" style="width: 300px;">

                    <form action="/Company/Login" method="post">

                        <div class="form-group form-floating m-3 mx-auto">
                            <input type="text" name="email" class="form-control" id="floatingInput"
                                placeholder="사용자 이메일" required>
                            <label for="floatingInput">사용자 이메일
                        </div>

                        <div class="form-group form-floating m-3 mx-auto">
                            <input type="password" name="password" class="form-control" id="floatingInput"
                                placeholder="name@example.com" required>
                            <label for="floatingInput">password</label>
                        </div>

                        <div class="form-group form-floating m-3 mx-auto">
                            <button type="submit" class="btn btn-block"
                                style="width: 265px; background-color: rgb(63, 189, 214);">로그인</button>
                        </div>
                    </form>
                    <div class="text-center sj_login_join">
                        <p><a href="/Company/JoinForm" style="color: rgb(36, 152, 175);">회원가입</a></p>
                    </div>
                </div>
            </div>
        </div>

       <%@include file="/WEB-INF/views/include/footer.jsp" %>