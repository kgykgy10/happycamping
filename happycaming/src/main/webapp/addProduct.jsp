<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<script> src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"> </script>
<title>상품 목록</title>
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

<!-- 상품 등록 정보 페이지 만들기. -->
<div class="container">
<h5>상품등록 페이지(only 관리자)</h5>
<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
<input type="text" name="productId" class="form-control" value="관리코드">
<input type="text" name="name" class="form-control" value="사이트명">
<input type="text" name="unitPrice" class="form-control" value="가격">
<input type="submit" class="btn btn-primary" value="등록하기">


</form>




</div>




















</body>
</html>