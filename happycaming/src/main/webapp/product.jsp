<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<%@ page import = "dao.ProductRepository" %> <!-- 기존에 작성된 usebean 액션 태그를 삭제하고 상품 접근 패키지로 변경합니다 -->
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/> --%>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<script> src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"> </script>
<title>해당 사이트 정보</title>
<style> 

.mainname {font-size: 35px; font-weight: bold}

h2 {font-weight: bold;
}

a {color:black;
text-decoration: none;}

.header {display:flex;
      justify-content: right;
      background-color: darkgray;
              }
div a.login {
  margin-left:30%;
}

#navbarNav {justify-content:center;
}

.nav-link {color: rgba(34, 112, 228, 0.863); font-size: larger; font-weight: bold;}


.frcheck {
  display: grid;
  grid-template-columns: 1fr 1fr;
  margin: 50px;
  padding: 20px;
}

.footer {display: flex; justify-content:center;}
</style>
</head>

<body>
<jsp:include page ="menu.jsp"/>
<div class="jumbotron"> 
<div class="container"> 
<h3 class="display-3">상품 정보</h3></div></div> 

<!--  상품 상세 정보 페이지 만들기. (request 내장 객체 활용) -->
    <%
    String id = request.getParameter("id");
    ProductRepository dao = ProductRepository.getInstance();
    Product product = dao.getProductById(id);
    %>
   
<div class="container">
<img src="c:/upload/<%=product.getFilename()%>" style="width:30%">
<h3><%=product.getPname()%></h3>
<h3><%=product.getUnitPrice()%></h3>
</div>






<hr>   
 <!-- 푸터 영역 -->
 <div class="footer">
    <h5>상호명 : (주)해피캠핑장 / 대표 : 김가영 </h5>
  </div>
  

</body>
</html>