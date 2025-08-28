<%@page import="dto.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <title>상품 상세 정보</title>
  </head>
  <body>
    <jsp:include page="menu.jsp"/>
     <div class="jumbotron">
      <div class="container">
      	<h1 class="display-3">상품 정보</h1>
      </div>
     </div>
     <%
      String id = request.getParameter("id");
      Product product = productDAO.getProductById(id);
     %>
     
     <div class="container">
       <div class="row">
        <div class="col-md-5">
          <img src="/upload/<%=product.getFilename() %>" style="width: 100%">
        </div>
         <div class="col-md-6">
          <h3><%=product.getPname()%></h3>
          <p><%=product.getDescription() %></p>
          <p><b>상품 코드 : </b><span class="badge badge-pill badge-danger"><%=product.getProductId() %></span>
          <p><b>제조사 : </b><%=product.getManufacturer() %>
          <p><b>분류 : </b><%=product.getCategory() %>
          <p><b>재고 수 : </b><%=product.getUnitsInStock() %>
          <h4><%=product.getUnitPrice() %>원</h4>
          <p><a href="#" class="btn btn-info">상품 주문 &raquo;</a>
             <a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
         </div>
       </div>
       <hr>
     </div>
     
    
    <jsp:include page="footer.jsp" /> 
  </body>
</html>