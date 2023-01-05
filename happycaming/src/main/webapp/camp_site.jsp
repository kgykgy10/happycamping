<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<%@ page import = "dao.ProductRepository" %> <!-- 기존에 작성된 usebean 액션 태그를 삭제하고 상품 접근 패키지로 변경합니다 -->
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/> --%>
<!-- sql 작업 위해서 해당 클래스들 전부 임포트 -->
<%@ page import="java.sql.*"%>

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
<%-- <div class="jumbotron"> 
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
 --%>
<div class="jumbotron">
		<div class="container">
			<h3 class="display-3">캠핑사이트 목록</h3>
		</div>
	</div>
	<%
	//id 상품의 아이디입니다.
	// 뷰 목록에서 넘긴 이름의 값이 데 아이디 인데, 가져오는 이름은 사이트아이디로 가지고 오니 못가져오는 현상. 
		String id = request.getParameter("id");
	System.out.println("id 확 인 : " + id);
	
	//클래스에 등록된 샘플 상품을 사용하는 대신 디비 사용하기위해서. 주석. 
	/* 	ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id); */
	%>
	<!--  디비에 연결하기 위한 정보를 담아둔 페이지. -->
	<!-- 이 파일을 포함하면서 화면상 약간의 간격이 벌어지거나, 틀어지는 현상이 발생할수도 있음. 
	만약, 이상해지면, 이 파일의 위치를 수정 할 예정.  -->
		<%@ include file="dbconn.jsp" %>
	<div class="container">
		<div class="row">
		
		<%
			// 동적쿼리, 해당 sql 문장을 전달할 때 이용할 객체
				PreparedStatement pstmt = null;
			// 디비에서 조회된 정보들을 담을 객체.
				ResultSet rs = null;
				
			// 해당 상품의 정보를 가져오기 위한 쿼리 문장. 
			// ? 의 위치값은 1부터 시작합니다.
					// ?,?,? : 1,2,3 의 순서가 됩니다. 
				String sql = "select * from camp_site where site_no = ?";
			//현재 작업 중.
			//sql 문장을 pstmt 객체에 담기.
				pstmt = conn.prepareStatement(sql);
			// 동적인 문장에 첫번째 파라미터에 , 해당하는 문자열 값으로 상품의 아이디를 입력 로직. 
				pstmt.setString(1, id);
			// 조회를 할 때, executeQuery() 메소드를 호출
				rs = pstmt.executeQuery();
			// rs ResultSet 라는 형식의 객체에 테이블 형식으로 값을 저장. 
				while (rs.next()) { // 반복문을 통해서 해당 상품의 정보를 불러오면됩니다. 
			%>
		
			<div class="col-md-5">
							<img src="./Resources/images/<%=rs.getString("p_fileName")%>" style="width:50, height:30">
			<!-- 상세페이지 부분에 사진 출력  -->
			<%-- <img src="./resources/images/<%=rs.getString("p_fileName")%>" style="width: 100%"> --%>
				<%-- <img src="c:/upload/<%=product.getFilename()%>" style="width: 100%" /> --%>
				<%-- <img src="C:/JSP_Workspace1/ch18_WebMarket_2/src/main/webapp/resources/images/<%=rs.getString("p_fileName")%>" style="width: 100%"> --%>
			</div>
			<div class="col-md-6">  
		 	<h3><%=rs.getString("site_name")%></h3>
				<p><b>타입</b> : <%=rs.getString("site_type")%>
				<p><b>가격</b> : <%=rs.getString("price")%>원
				<p><b>최대수용인원</b> : <%=rs.getString("max_person")%>
				
			
				 <p><form name="addForm" action="./addCart.jsp?id=<%=rs.getString("site_no")%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()"> 예약하기 &raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a> 
					<a href="./camp_sites.jsp" class="btn btn-secondary"> 목록으로 돌아가기 &raquo;</a>
				</form> 
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
		<hr>
	</div>




<hr>   
 <!-- 푸터 영역 -->
 <div class="footer">
    <h5>상호명 : (주)해피캠핑장 / 대표 : 김가영 </h5>
  </div>
  

</body>
</html>