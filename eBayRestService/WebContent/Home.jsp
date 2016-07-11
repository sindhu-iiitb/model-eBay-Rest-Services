<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>EbayRestService</title>

<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/bootstrap/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/bootstrap/css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/bootstrap/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/bootstrap/css/form.css" rel="stylesheet" type="text/css" media="all" />

<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script> -->
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
</head>
<body>
<center>
 <h2>Rest Services Client for Ebay</h2>
 </center>
 <br>
 <center>
 <h2>Product Details on Color & Brand</h2>
 </center>
   <br>   <br>
  <div align="center">
	<div style="font-size:20px;">   <a href="Colorandbrand.jsp">Click here for color and brand service</a></div>
	<div style="font-size:20px;"> <a href="Colorandprice.jsp">Click here for color and price service</a></div>
	<div style="font-size:20px;"> <a href="subCategoryService.jsp">Click here for subcategory service</a></div>
	<div style="font-size:20px;"> <a href="BrandandPrice.jsp">Click here for brand and price service</a></div>
	
	<div style="font-size:20px;"><a href="ebayopensource.jsp">Click here to filter Items on original ebay based on item condition</a></div>
</div>
</body>
</html>