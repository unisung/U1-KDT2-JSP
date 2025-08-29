<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
<p>----------fmt:bundle----------
<fmt:setLocale value="en"/>
<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"/>
   <p> 제목:<fmt:message key="title" bundle="${resourceBundle}"/> 
   <p> 이름:<fmt:message key="username"  bundle="${resourceBundle}"/>
<p>-------한글 로케일--------------   
<fmt:setLocale value="ko"/>
<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle"/>
   <p> 제목:<fmt:message key="title" bundle="${resourceBundle}"/> 
   <p> 이름:<fmt:message key="username"  bundle="${resourceBundle}"/>     
</body>
</html>