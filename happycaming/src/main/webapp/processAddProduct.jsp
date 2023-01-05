<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\upload"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb */

 MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	//PreparedStatement pstmt = null;
	
	String site_no = multi.getParameter("site_no");
	String site_name = multi.getParameter("site_name");
	String site_type = multi.getParameter("site_type");
	String price = multi.getParameter("price");
	String max_person = multi.getParameter("max_person");
	

	// string 으로 받아온 값을 integer로 변경하는 작업 필요 
 	Integer site_no2;
	if (site_no.isEmpty())
		site_no2 = 0;
	else
		site_no2 = Integer.valueOf(site_no);
	
	Integer price2;
	if (price.isEmpty())
		price2 = 0;
	else
		price2 = Integer.valueOf(price);
	
	Integer max_person2;
	if (max_person.isEmpty())
		max_person2 = 0;
	else
		max_person2 = Integer.valueOf(max_person);
	
	


	
// 	if (unitPrice.isEmpty())
// 		price = 0;
// 	else
// 		price = Integer.valueOf(unitPrice);

// 	long stock;

// 	if (unitsInStock.isEmpty())
// 		stock = 0;
// 	else
// 		stock = Long.valueOf(unitsInStock);
	
//현재는 테스트가 일반데이터 (사용자가 입력한 값만 처리)

//image file type 처리할 때 사용해요.
    Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;	
	
	String sql = "insert into camp_site values(?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, site_no2);
	pstmt.setString(2, site_name);
	pstmt.setString(3, site_type);
	pstmt.setInt(4, price2);
	pstmt.setInt(5, max_person2);
	pstmt.setString(6, fileName);
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("camp_sites.jsp");
	
%>
	










<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<% 
request.setCharacterEncoding("UTF-8");
// 폼페이지에서 입력된 값을 얻어오도록 request 내장 객체의 getParameter() 메소드를 작성.
String productId = request.getParameter("productId");
String name = request.getParameter("name");
String unitPrice = request.getParameter("unitPrice");

// 폼페이제엇 입력된 값을 "저장하도록" ProductRepositry 클래스의 addProduct() 메소드를 호출.
ProductRepository dao = ProductRepository.getInstance();

Product newProduct = new Product();
newProduct.setProductId(productId);
newProduct.setPname(name);
newProduct.setUnitPrice(unitPrice);

dao.addProduct(newProduct);

//products 페이지로 강제 이동하도록 response 내장 객체의 sendRedirect()메소드를 작성.
response.sendRedirect("products.jsp");

%> --%>