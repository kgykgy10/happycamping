<%@ page language="java" contentType="text/html; charset=UTF-8"
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

%>