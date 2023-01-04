<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> --%>
<%
	request.setCharacterEncoding("UTF-8");

    String email = request.getParameter("mail");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String pwc = request.getParameter("pwc");
	%>

<c:if test="${resultSet>=1}">
	<c:redirect url="2login.html" />
</c:if>

