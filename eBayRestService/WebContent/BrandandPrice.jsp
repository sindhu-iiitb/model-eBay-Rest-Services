<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RestService</title>

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
			// var color=$("#color").val();
			 var brand=$("#brand").val();	
			 
			 var url="http://"+ip+":"+port+"/RestService/webapi/brandanddiscount/"+brand+"";
			 console.log(url);
			
				$.ajax({
					type :"GET",
					url: url,
					dataType:"jsonp",
					async: false,
					contentType: "application/json; charset=utf-8",
					success: function(data)
					{
						console.log(data);
						$("#di").empty();
						/*temp='';
						temp='<table class="table table-striped table-hover "><thead><tr><th>Item Name</th><th>Item Color</th><th>Item Brand</th><th>Item Picture</th></tr> </thead><tbody>';
						$.each(data,function(i,list)
								{
							console.log("helloSiri");
							console.log(list);
							temp+='<tr ><td>'+list.item_Name+'</td> <td>'+list.color+'</td> <td>'+list.brand+'</td> <td><img src="'+list.picture+'" alt="Smiley face" width="42" height="42"></td></tr> ';	
						
							
								});
						$("#di").show();*/
						//$("#di").append(temp);
						//$("#di").append(JSON.stringify(data));
					
					}
				,  
			       error: function(e){  
			         	//console.log(e);
			    	   alert(e);  
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
 <h2>Product Details for Brand Items with Discount</h2>
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
      <label for="input" class="col-lg-2 control-label">Enter Brand</label>
      <div class="col-lg-4">
        <input class="form-control" id="brand" placeholder="Enter Brand" type="text" >
      </div>
    </div>
     
    
    <div class="form-group">
      <div class="col-lg-5 col-lg-offset-2">
      
        <a id="click">Submit</a>
      </div>
    </div>
    </fieldset>
    </form>
    
 
 <div id="di">

</body>
</html>