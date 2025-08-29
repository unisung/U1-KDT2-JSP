<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id ="now" class="java.util.Date" />
<p>Date in Current Zone: <fmt:formatDate value = "${now}" 
         type = "both" timeStyle = "long" dateStyle = "long" /></p>
         
<p>Change Time Zone to GMT-8</p>
      <fmt:setTimeZone value = "GMT-8" />
 <p>Date in Changed Zone: <fmt:formatDate value = "${now}" 
         type = "both" timeStyle = "long" dateStyle = "long" /></p>
</body>
</html>