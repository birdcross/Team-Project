<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="/img/favicon.png" />
<link rel="stylesheet"  href="/css/common.css" />
<style>
   
</style>
</head>
	<%@include file="/WEB-INF/views/include/user/uHeader.jsp" %>
<body>
  <main>
	        <div class="container d-flex">
            <div class="list-group mx-2">
                <a href="/person/info" class="list-group-item shadow" style="width: 150px;">개인정보수정</a>
                <a href="/person/resumes" class="list-group-item  shadow">이력서 등록</a>
                <a href="/person/scrap" class="list-group-item shadow">이력서 관리</a>
                <a href="/person/history" class="list-group-item shadow">스크랩/관심기업</a>
                <a href="/person/history" class="list-group-item shadow">지원내역</a>
            </div>
  </main>	
  <%@include file="/WEB-INF/views/include/footer.jsp" %>
</body>

</html>






