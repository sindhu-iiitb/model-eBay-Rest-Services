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
				 
				 var key1=$("#key1").val();
				 var key2=$("#key2").val();
				 var key3=$("#key3").val();
				 var url= "http://svcs.ebay.com/services/search/FindingService/v1"
				 url+="?OPERATION-NAME=findItemsByKeywords";
				 url+="&SECURITY-APPNAME=SindhuY-test001-PRD-b5a615465-55ee9957";
				 url+="&RESPONSE-DATA-FORMAT=JSON";
				 url+="&REST-PAYLOAD";
				 url+="&keywords=%20"+key1+"%20"+key2+"%20"+key3+"%20&";
					$.ajax({
						type :"GET",
						url: url ,
						 data: { get_param: 'value' }, 
						 dataType: "jsonp",
							success: function(data)
							{
								console.log(data.findItemsByKeywordsResponse);
								$("#di").empty();
								temp='';
								temp='<table class="table table-striped table-hover "><thead><tr><th>Item Id</th><th>Title</th><th>Item Picture</th></tr> </thead><tbody>';
								$.each(data.findItemsByKeywordsResponse,function(i,list)
										{
									  // The contents inside stars
									  	
										$.each(list.searchResult , function(k2 , v2 ){ 
											// The contents inside stars
											console.log(v2.item);
											$.each(v2.item , function(k1 , v1 ){ 
											temp+='<tr ><td>'+v1.itemId+'</td> <td>'+v1.title+'</td>  <td><img src="'+v1.galleryURL+'" alt="Smiley face" width="42" height="42"></td></tr> ';
						                 });   
										 });
												
										});
								$("#di").show();
								$("#di").append(temp);
							
							},  
				       error: function(e){  
				         console.log( e);  
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
 <h2>Product Details for Ebay based on Keyword</h2>
 </center>
   <br>   <br>
   <div align="center" style="margin-left:325px;">
 <form class="form-horizontal" action="">
  <fieldset>
   
    <div class="form-group">
		      <label for="input" class="col-lg-2 control-label">Enter key word here</label>
		      <div class="col-lg-4">
		        <input class="form-control" id="key1" placeholder="enter key word here" type="text" >
		      </div>
	</div>
      <div class="form-group">
              <label for="input" class="col-lg-2 control-label">Enter key word here</label>
		      <div class="col-lg-4">
		        <input class="form-control" id="key2" placeholder="enter key word here" type="text" >
		      </div>
      </div>
      <div class="form-group">
            <label for="input" class="col-lg-2 control-label">Enter key word here</label>
	     	 <div class="col-lg-4">
	        <input class="form-control" id="key3" placeholder="enter key word here" type="text" >
	      	</div>
      </div>
    
    
    
    
    <div class="form-group">
      <div class="col-lg-5 col-lg-offset-2">
      
        <a id="click">Submit</a>
        
      </div>
    </div>
    </fieldset>
    </form>
   </div>
 
 <div id="di">

</body>
</html>