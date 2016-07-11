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
<script type="text/javascript">

$(document).ready(function() {

		 $("#click").click(function(){
			var temp=''; 
			 
			 var ip=$("#ip").val();
			 var port=$("#port").val();
			 var subcategory_name=$("#subcategory_name").val();
				
			 
			// var url="http://"+ip+":"+port+"/eBayRestService/rest1/ebay/"+color+"/"+brand+"";
			 //alert(url)
				
				$.ajax({
					type :"GET",
					url: "http://"+ip+":"+port+"/eBayRS_111/rest1/ebay/subcategoryservice/"+subcategory_name+"" ,	
					
					dataType:"json",
					success: function(data)
					{
						console.log(data);
						$("#di").empty();
						temp='';
						temp='<table class="table table-striped table-hover "><thead><tr><th>Item Name</th><th>Item Price</th><th>Item Category</th><th>Item SubCategory</th><th>Item Picture</th></tr> </thead><tbody>';
						$.each(data,function(i,list)
								{
							console.log(list);
							temp+='<tr ><td>'+list.item_name+'</td> <td>'+list.price+'</td> <td>'+list.category_name+'</td><td>'+list.subcategory_name+'</td> <td><img src="'+list.picture+'" alt="Smiley face" width="42" height="42"></td></tr> ';	
						
							
								});
						$("#di").show();
						$("#di").append(temp);
					
					}
				,  
			       error: function(e){  
			         alert('Error121212: '+ e);  
			       } 	
			});
		    });
	
});
</script>
</head>
<body>
<center>
 <h2>Rest Services Client for Ebay</h2>
 </center>
 <br>
 <center>
 <h2>Product Details of SubCategory items present in Deal</h2>
 </center>
   <br>   <br>
 <form class="form-horizontal" action="">
  <fieldset>
    <legend></legend>
    <div class="form-group">
      <label for="input" class="col-lg-2 control-label">IP</label>
      <div class="col-lg-4">
        <input class="form-control" id="ip" placeholder="Enter IP" type="text" >
      </div>
    </div>
    <div class="form-group">
      <label for="input" class="col-lg-2 control-label">PortNO</label>
      <div class="col-lg-4">
        <input class="form-control" id="port" placeholder="Enter Port No" type="text" >
      </div>
    </div>
    <div class="form-group">
      <label for="input" class="col-lg-2 control-label">Enter Sub Category</label>
      <div class="col-lg-4">
        <input class="form-control" id="subcategory_name" placeholder="Enter SubCategory" type="text" >
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-lg-5 col-lg-offset-2">
      
        <a id="click">Submit</a>
      </div>
    </div>
    </fieldset>
    </form>
    <a href="rest1/ebay/subcategoryservice"></a>
 
 <div id="di">

</body>
</html>