<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<%@ page import = "dao.ProductRepository" %> <!-- 기존에 작성된 usebean 액션 태그를 삭제하고 상품 접근 패키지로 변경합니다 -->
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/> --%>
<!-- sql 작업을 위해서 해당 클래스들 전부 복사해서 product에 복사하기 -->
<%@ page import="java.sql.*"%>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
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
.jumbotron { font-size: 20px; font-weight: bold
 display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  margin: 10px;
  padding: 10px;
}
.mainname {font-size: 35px; font-weight: bold}

h2 {font-weight: bold;
}

a {color:black;
text-decoration: none;}

.header {display:flex;
      justify-content:center;
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

<%-- <!-- 상품 목록 표시하기 --> 
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
</div> --%>
<h1>캠핑사이트 목록</h1>
<div class="jumbotron">

<!-- 	//디비에 연결하기 위한 정보를 담아둔 페이지 복사하기 -->
		<%@ include file="dbconn.jsp" %>
	<div class="container">
		<div class="row" align="center">
			<%
			// 동적 쿼리, 해당 sql 문장을 전달할 때 이용할 객체
				PreparedStatement pstmt = null;
			//디비에서 조회된 정보들을 담은 객체
				ResultSet rs = null;
				// 해당 상품의 정보를 가져오기 위한 쿼리문장.
				String sql = "select * from camp_site";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
			%>
				</div> 
			<div class="col-md-4">
		<img src="./Resources/images/<%=rs.getString("p_fileName")%>" style="width:500px" style="height:300px">
				<!-- 이클립스 내부 웹브라우저에서는 씨 드라이브에 접근이 임의로 가능. 
				사실 크롬 외부 웹 브라우저에서 권한이 없음. (정상.) -->
				<!-- 해당 프로젝트 내부에 정적인 자원을 관리하는 폴더에서 작업을 했어요. 
				실제로는 파일 서버는 외부에 -> 현재 테스트 이어서, 내부 프로젝트 임의의 폴더에서 작업중. -->
				<%-- <img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 50%"> --%>
				<h3><%=rs.getString("site_name")%></h3>
			    <p><b>타입</b> : <%=rs.getString("site_type")%>
				<p><b>가격</b> : <%=rs.getString("price")%>원
				<p><b>최대수용인원</b> : <%=rs.getString("max_person")%>
				<p><a href="./camp_site.jsp?id=<%=rs.getString("site_no")%>"class="btn btn-secondary" role="button">상세 정보 &raquo;></a>
		 </div>
		 
		 
			<%
				}
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			%>
		</div>
</div>
		
		<hr>
<div class="footer">
    <h5>상호명 : (주)해피캠핑장 / 대표 : 김가영 </h5>
  </div>


</body>
</html>

