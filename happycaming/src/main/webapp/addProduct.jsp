<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
<script> src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"> </script>
<title>상품등록(only관리자)</title>
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
<h5>상품 등록(only 관리자)</h5>
<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
<input type="text" name="site_no" class="form-control" value="1">
<input type="text" name="site_name" class="form-control" value="사이트명">
<input type="text" name="site_type" class="form-control" value="타입">
<input type="text" name="price" class="form-control" value="30000">
<input type="text" name="max_person" class="form-control" value="4">

<div class="form-group row">
				<label class="col-sm-2">"상품 이미지 등록"</label>
				<div class="col-sm-5">
<input type="file" name="productImage" class="form-control">
				</div>
			</div>

<input type="submit" class="btn btn-primary" value="등록하기">


</form>




</div>




















</body>
</html>