<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/company/cHeader.jsp" %>
    <%@taglib  prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>  
    <div class="container d-flex">


              <div class=" mx-2 pb-4 w-100">
            <div class="border border-tertiary  p-5 rounded shadow">
                <h1 class="mb-4">등록한 공고</h1>
                <hr>
                    <c:forEach items="${postComList}" var = "pocom">
                    <div class="jh_resume_content mb-3" style="display: flex; justify-content: space-between">
                    
                    <div style="">
                    	<a href="/Company/PostDetail?po_num=${pocom.po_num}&com_id=${ sessionScope.clogin.com_id }"> ${pocom.po_title} </a>
                        <div id="post_deadline_${status.count}" value="${post.deadline}">마감기한 : ~${post.deadline}</div>
                    </div>
                    
                    <form action="/Company/ApplyMain?com_id=${ sessionScope.clogin.com_id }" 
                    id="apply_btn_${status.count}" method="POST">
                    <div style="display: flex;">
                        <button type="submit" form="apply_btn_${status.count}" class="btn btn-dark">권유</button>
                        </div>
                        </form>
                        
                    </div>
                    </c:forEach>
                    
                     <input type="hidden" value="${size}" id="postSize"/>
                </div>
            </div>
        </div>
w
<script>
document.addEventListener('DOMContentLoaded', function() { // DOM이 완전히 로드되고 난 후에 이벤트 리스너를 추가
    var buttons = document.querySelectorAll('.btn-dark'); // 'btn-dark' 클래스를 가진 모든 버튼을 선택
    buttons.forEach(function(button) {
        button.addEventListener('click', function(event) { // 각 버튼에 대해 클릭 이벤트 리스너 추가
            event.preventDefault(); // 버튼의 기본 동작(제출)을 막습니다.
            alert('권유했습니다'); // 알림 메시지를 띄웁니다.
        });
    });
});
</script>


</script>

  <%@include file="/WEB-INF/views/include/footer.jsp" %>