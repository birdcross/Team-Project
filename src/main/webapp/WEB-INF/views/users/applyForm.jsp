<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/user/uHeader.jsp" %>



		<div class="sj_ha_container">
            <div class=" mx-2 pb-4 w-100">
                <div class=" border border-tertiary p-5 rounded shadow">
                    <div class="d-flex justify-content-between">
                        <h1 class=" d-inline-flex">[${ po.po_title }]에 지원할 이력서 목록</h1>
                        
                    </div>
                    <hr />
                    <div>
                        <div class="container w-100 mt-4 text ">
                            	
                                <c:forEach items="${ resumeList }" var="aa" varStatus="status"> 
                            <div class="col-xs-4 post">
                                <a href="/Users/ResumeDetail?re_num=${ aa.re_num }&user_id=${ sessionScope.login.user_id }" style="color: inherit; text-decoration: none;">
                                    <div class="card jm_card h-100">
                                       
                                        <div class="card-body jm_card_body">
                                           <div class="jm_company_name">이력서번호 : ${ aa.re_num }</div>
                                            <div class="jm_company_title">이력서제목 : ${ aa.user_title }</div>
                                        </div> 
                                        <form action="/Users/Insert?po_num=${ po.po_num }&re_num=${ aa.re_num }&user_id=${ sessionScope.login.user_id }" 
                    id="insert_button_${status.count}" method="POST">
                    <div style="display: flex;">
                        <button type="submit" form="insert_button_${status.count}" class="btn btn-dark">지원하기</button>
                        </div>
                        </form>
                                    </div>
                                    
                                </a>
                                
                            </div>
                         </c:forEach> 

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