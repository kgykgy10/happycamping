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

<title>상품 목록</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("해당 사이트를 예약하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
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

<!-- 상품 목록 표시하기 --> 
<%
ProductRepository dao = ProductRepository.getInstance(); /* ProductRepository 클래스의 객체 변수 instance를 호출하는 메서드 작성 */
ArrayList<Product> listOfProducts = dao.getAllProducts(); /* 이를 통해 getAllProducts() 메서드를 호출해 반환 결과 값을 listOfProducts에 저장 */
%>


<%for (int i = 0; i<listOfProducts.size(); i++){
 Product product = listOfProducts.get(i);
 %>

<div class="list">
<img src="c:/upload/<%=product.getFilename()%>" style="width:30%">
<h3><%=product.getProductId()%></h3>
<p><%=product.getPname()%>
<p><%=product.getUnitPrice()%>
<p><form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()"> 예약하기 &raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning"> 결제대기목록 &raquo;</a> 
				</form> 

<!-- 상품 상세 정보 버튼 만들기 -->
<p> <a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="botton">사이트 자세히 보기 &raquo;></a>

<%
}
%>
</div>

<!-- 장바구니 버튼 만들기 -->




<div class="footer">
    <h5>상호명 : (주)해피캠핑장 / 대표 : 김가영 </h5>
  </div>


</body>
</html>

