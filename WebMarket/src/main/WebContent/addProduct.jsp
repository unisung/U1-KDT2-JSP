<%@ page contentType="text/html; charset=utf-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>상품등록</title>
    <link rel="stylesheet" 
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    >
  </head>
  <body>
<%@ include file="menu.jsp" %>
  <div class="jumbotron">
    <div class="container">
    	 <h1 class="display-3">
    	 상품 등록
    	 </h1>
    </div>
  </div>
  <div class="container">
    <form name="newProduct" action="./processAddProduct.jsp"
     method="post" enctype="multipart/form-data" class="from-horizontal">
     <div class="form-group row">
       <label class="col-sm-2">상품 코드</label>
       <div class="col-sm-3">
       	<input name="productId" class="form-control">
       </div>
     </div>
    <div class="form-group row">
		<label class="col-sm-2">상품명</label>
		<div class="col-sm-3">
		  <input type="text" name="name" class="form-control" >
		 </div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">가격</label>
		<div class="col-sm-3">
			<input type="text" name="unitPrice" class="form-control" >
		</div>
	</div>
    <div class="form-group row">
		<label class="col-sm-2">상세 정보</label>
			<div class="col-sm-5">
				<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
			</div>
	</div>
	<div class="form-group row">
		<label class="col-sm-2">제조사</label>
		 <div class="col-sm-3">
			<input type="text" name="manufacturer" class="form-control">
		</div>
	</div>		
	<div class="form-group row">
		<label class="col-sm-2">분류</label>
		<div class="col-sm-3">
		  <input type="text" name="category" class="form-control" >
		</div>
	</div>		
	<div class="form-group row">
		<label class="col-sm-2">재고 수</label>
		<div class="col-sm-3">
			<input type="text" name="unitsInStock" class="form-control" >
		</div>
	</div>		
	<div class="form-group row">
		<label class="col-sm-2">상태</label>
		<div class="col-sm-5">
			<input type="radio" name="condition" value="New " > 신규 제품 
			<input type="radio" name="condition" value="Old" > 중고 제품 
			<input type="radio" name="condition" value="Refurbished" > 재생 제품
		</div>
	</div>		
	<div class="form-group row">
		<label class="col-sm-2">이미지</label>
		<div class="col-sm-5">
			<input type="file" name="productImage" class="form-control">
		</div>
	</div>
	<div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10 ">
			<input type="submit" class="btn btn-primary" value="등록" >
		</div>
	</div>
			
    </form>  
  <hr>
  </div>
<%@ include file="footer.jsp" %>>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>