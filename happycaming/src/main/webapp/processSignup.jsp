<%@ page contentType="text/html; charset=utf-8"%>

<%@ page import="java.util.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%

request.setCharacterEncoding("UTF-8");

String mem_id = request.getParameter("mem_id");

String email = request.getParameter("email");

String pw = request.getParameter("pw");

/* String PW = request.getParameter("PW");
 */
%>


<sql:setDataSource var="dataSource"

url="jdbc:mysql://localhost:3306/happycamping"

driver="com.mysql.jdbc.Driver" user="root" password="k404" />

<sql:update dataSource="${dataSource}" var="resultSet">

INSERT INTO member(mem_id, email, pw) VALUES (?, ?, ?)

<sql:param value="<%=mem_id%>" />

<sql:param value="<%=email%>" />


<sql:param value="<%=pw%>" />

</sql:update>


<c:if test="${resultSet>=1}">

<c:redirect url="./member/resultMember.jsp?msg=1" />

</c:if>
