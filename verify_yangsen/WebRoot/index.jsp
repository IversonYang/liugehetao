<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
 <head>
  <meta charset="UTF-8">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>

  <style type = "text/css">
   *{margin:0;padding:0;}
   
   <!-- start content-->
	.content {text-align:center;width:370px; background:#a4acdb;margin:160px auto;border-radius:10px;padding:20px 20px 30px 20px;box-shadow:5px 5px 6px #3399ff;}

	.content .txt{width:270px;height:23px;margin-top:20px;}
	.content .txt:focus{border:1px solid #ff0033;}
	.content .txt1{width:120px;}
	.content .btn{width:200px;height:30px;background:#3399cc; border-radius:5px;font-size:18px;margin-top:13px;
	color:#ffffff;outline:none;border:none }
	.content .btn:hover{background:#003399}
	<!-- end content-->
  </style>
 </head>

 <body>
  <div class="content">
	<p>
		<input type="text" class="txt" placeholder="这里输入用户名："/>
	</p>
  	<p>
		<input type="text" class="txt" placeholder="这里输入密码："/>
	</p>
	<p>
		<input type="text" class="txt txt1" id="code" placeholder="请输入验证码" />
		<img src="valiCode.jsp" />
		<input type="button" value="提交" class="btn" onclick="validataCode()" />		
	</P>

  </div>
 </body>
 //使用ajax异步传输，传递输入的code的内容
 <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
 <script type="text/javascript">
 	function validataCode(){
 		var code = $("#code").val();
 		$.ajax({
 			type:"post",
 			url:"var.jsp",
 			data:{"code":code},
 			success:function(message){
 				alert(message);
 			}
 		});
 	}
 
 </script>
 
</html>

