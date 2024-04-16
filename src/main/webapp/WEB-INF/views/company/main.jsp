<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="/WEB-INF/views/include/company/cHeader.jsp" %>
	  <%@taglib  prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>  
        
        <script>
            let deadline;
            let today = new Date();
            let dDay;
            let currDay = 24 * 60 * 60 * 1000; 
        </script>
        
                <div class="select_box jm_select_box mt-5">
                    <select id="skill" class="jm_select selectpicker" data-style="btn-info" name="">
                        <option value="none" selected>분야</option>
                        <option value="Java">Java</option>
                        <option value="Springboot">Springboot</option>
                        <option value="C">C</option>
                        <option value="CSS">CSS</option>
                        <option value="html">Html</option>
                        <option value="Flutter">Flutter</option>
                        <option value="JavaScript">JavaScript</option>
                    </select>
                    <select id="career" class="jm_select" name="">
                        <option value="none" selected>고용형태</option>
                        <option value="신입">신입</option>
                        <option value="경력">경력</option>
                    </select>
                    <select id="address" class="jm_select" name="">
                        <option value="none" selected>근무지</option>
                        <option value="경기">전국</option>
                        <option value="경기">경기</option>
                        <option value="서울">서울</option>
                        <option value="부산">부산</option>
                        <option value="경기">경남</option>
                        <option value="제주">제주</option>
                        <option value="울산">울산</option>
                    </select>
                </div>
                <div class="container jm_container mt-5">
                    <div class="row row-cols-3 g-4 d-flex flex-wrap">
                       <c:forEach items="${ resumeList }" var="Vo" varStatus="status"> 
                            <div class="col-xs-4 post">
                                <a href="/Company/View?re_num=${ Vo.re_num }" style="color: inherit; text-decoration: none;">
                                    <div class="card jm_card h-100">
                                        <img src="${Vo.user_img}" class="card-img-top jm_card_img_top">
                                        <div class="card-body jm_card_body">
                                            <div class="jm_company_name">공고번호 : ${ Vo.re_num }</div>
                                            <div class="jm_company_title">${ Vo.user_title}</div>

                                            <div class="jm_company_address">${post.address}</div>
                                            <div class="jm_D-day d-flex justify-content-between">
                                                <div id="dDay-${status.count}"></div>

                                                <button type="button" class="btn btn-sm"
                                                    onclick="scrapOrCancle(event, ${book.po_num})">
                                                    <c:choose>
                                                        <c:when test="${book.bookmark == 0}">
                                                            <i class="fa-regular text-secondary fa-thumbs-up fa-2xl"
                                                                id="scrap-${book.po_num}" value="${book.bookmark}"></i>
                                                        </c:when>

                                                        <c:otherwise>
                                                            <i class="fa-solid scrap_icon fa-thumbs-up fa-2xl"
                                                                id="scrap-${book.po_num}" value="${book.bookmark}"></i>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <input type="hidden" value="${post.deadline}" name="" class="deadline"
                                    id="deadline-${status.count}" />
                            </div>
                         </c:forEach>
                         </div>
                         </div>
<div class="col-xs-4 post"></div>
        <script>
            let postId = $("#bookmark").val();

            function scrapOrCancle(event, postId) {
                event.preventDefault();
                let scrapValue = $("#scrap-" + postId).attr("value");

                let data = {
                    "po_num": po_num
                };

                if (scrapValue == 0) {
                    // insert
                    $.ajax({
                        type: "put",
                        url: "/Bookmarks/GetBookMark/" + com_id,
                        data: JSON.stringify(data),
                        dateType: "JSON",
                        headers: {
                            "Content-Type": "application/json; charset=UTF-8"
                        }
                    }).done((res) => {
                        $("#scrap-" + postId).attr("value", 1);
                        $("#scrap-" + postId).addClass("fa-solid scrap_icon");
                        $("#scrap-" + postId).removeClass("fa-regular text-secondary");
                    }).fail((err) => {
                        alert(err.responseJSON.msg);
                    });
                } else {
                    $.ajax({
                        type: "delete",
                        url: "/Bookmarks/DeleteBookMark/" + com_id,
                        dateType: "JSON"
                    }).done((res) => {
                        $("#scrap-" + postId).attr("value", 0);
                        $("#scrap-" + postId).addClass("fa-regular text-secondary");
                        $("#scrap-" + postId).removeClass("fa-solid scrap_icon");
                    }).fail((err) => {
                        alert(err.responseJSON.msg);
                    });
                }
            }
        </script>
  <%@include file="/WEB-INF/views/include/footer.jsp" %>

  
  