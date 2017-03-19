<%@page import="javax.imageio.ImageIO"%>
<%@page import="com.ys.util.VaildateCodeUtil"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//设置返回内容的类型
response.setContentType("images/jpg");
//接收生成的图片
String[] codes={"一生所爱","魑魅魍魉","前车之鉴","极度冷静","南辕北辙","大海模样"};
String code = codes[new Random().nextInt(5)];
//输入文字进行图片生成
BufferedImage buf = VaildateCodeUtil.getVaildateCode(code);
//将输入的文字存入会话
session.setAttribute("valicode", code);
ImageIO.write(buf,"jpg",response.getOutputStream());


%>
