<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>2417이상혁</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/main.css">
<style>
*{
	font-family: NanumGothic;
}
#joinBtn{
	margin-right:8px;
}
#loginBtn, #joinBtn{
	color: white;
	border: 1px solid white;
}
#loginBtn:hover, #joinBtn:hover{
	color: #007bff;
	background-color: white;
}
#articleTitle, h2{
	padding: 3rem 0;
}
.container{
	padding: 0 3rem 3rem 3rem;
	border-left: 2px solid #ddd;
	border-right: 2px solid #ddd
}
#navbar{
	border-bottom: 2px solid #ddd;
}
.img-fluid{
	width: 600px;
	padding: 1rem 0;
}
#frontPage{
	height: 400px;
	text-align: center;
	background-color: #868e96;
}
#frontTitle{
	display: inline-block;
	margin-top:200px;
	color: white;
}
#frontArticle{
	padding-top: 5rem;
	text-align: center;
}
#article{
	margin-top: 3rem;
}
#rad{
	display: inline-block;
}
</style>
 </head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary" id="navbar">
  <a class="navbar-brand" href="/WebClass/myblog/main.jsp">이상혁블로그</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <%@ include file="blogmenu.jsp" %>
    <%
    	UserVO user = (UserVO)session.getAttribute("user");
	    String id = request.getParameter("id") == null ? "" : request.getParameter("id"); 
		String pwd = request.getParameter("pwd") == null ? "" : request.getParameter("pwd");
    	if(user == null){
    %>
    <form class="form-inline my-2 my-lg-0" >
    	<button class="btn btn-outline-success my-2 my-sm-0" type="button" id="joinBtn"  onclick="location.href='/WebClass/myblog/join.jsp'">Join</button>
    </form>
    <form class="form-inline my-2 my-lg-0" id="loginForm" action="/WebClass/bloglogin" method="post">
	      <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" name="id" id="id" value="<%= id%>" required>
	      <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD" name="pwd" id="pwd" value="<%= pwd%>" required>
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="loginBtn">Login</button>
	 </form>
	 <%
    	}else{ 
     %>
     <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%= user.getId() + "님" %>
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      	<form action="/WebClass/bloglogout" method="post">
	      		<button type="submit" class="dropdown-item">Log out</button>
	      	</form>
	       	<div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	      </div>
	    </li>
	    </ul>
	    <% } %>
  </div>
</nav>
<div id="frontPage">
<h1 id="frontTitle">이상혁블로그</h1>
</div>
<div id="frontArticle">
<h3>자기소개</h3>
<p id="article">이름: 이상혁<br>나이: 18세<br>혈액형: A<br>취미: 게임, 음악감상<br></p>
</div>
<div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Result</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" ></script>
<script>
	<%  if("error".equals(request.getAttribute("msg"))) { %>
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Login Error');
		myModal.find('.modal-body').text('Invalid username or password');
		myModal.modal();
	<% } %>
</script>
</body>
</html>