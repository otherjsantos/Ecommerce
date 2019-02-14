<%@ page 
language="java" 
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="br.com.model.UserBean"
%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	<head>
	<meta charset="utf-8">
	<title>User processor...</title>
	</head>
	<body>
		<jsp:useBean id="user" class="br.com.model.UserBean" scope="request">
			<jsp:setProperty name="user" property="login" />
			<jsp:setProperty name="user" property="password" />
			<jsp:setProperty name="user" property="name" />
			<jsp:setProperty name="user" property="dateBirth" />
			<jsp:setProperty name="user" property="gender" />
		</jsp:useBean>
		
		<c:if test="${user.isValid()}">
			<jsp:forward page="/WEB-INF/pages/sucess.html" />
		</c:if>
			<jsp:forward page="UserFormRetry.jsp" />
	</body>
</html>