<%@ page contentType="text/html; charset=utf-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%
// 로그인 후 세션으로 등록된 아이디를 가져오는 알고리즘. 페이지를 변경해도 계속 kgy(로그인된)이 따라다니는 것
	String sessionId = (String) session.getAttribute("sessionId");
%>

 <div class="header">
    
      <a href="Main.jsp" class="mainname"> 해피캠핑장 </a>
   	<a class="navbar-brand" href="/happycamping/login.jsp">로그인 ｜</a>
      <a href="signup.jsp">회원가입 ｜</a>
      <a href="#">고객센터</a>
    
  </div>
  
  <!-- 본문 영역 -->
  <div class="contents">
  
      <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
          
          <div class="collapse navbar-collapse" id="navbarNav">
  
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#">캠핑장 소개</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="products.jsp">온라인 예약</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="addProduct.jsp">캠핑사이트 추가</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="4gallery.html">갤러리</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">오시는 길</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </div>