<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//取出两个地方的code 判断是否匹配
String code = request.getParameter("code");
String sessionCode = session.getAttribute("valicode").toString();
if(code.equals(sessionCode)){
 out.print("验证成功");
}else{
	out.print("验证失败");
}


%>

