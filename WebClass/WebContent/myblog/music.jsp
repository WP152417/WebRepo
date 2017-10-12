<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>music</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" >
<link rel="stylesheet" href="../css/main.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary" id="navbar">
  <a class="navbar-brand" href="main.jsp">이상혁블로그</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <%@ include file="blogmenu.jsp" %>
    <form class="form-inline my-2 my-lg-0" >
<button class="btn btn-outline-success my-2 my-sm-0" type="button" id="joinBtn"  onclick="location.href='join.jsp'">Join</button>    
</form>
    <form class="form-inline my-2 my-lg-0" id="loginForm">
	      <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" required>
	      <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD" id="pwd" required>
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="loginBtn">Login</button>
	 </form>
  </div>
</nav>
<div class="container">
  	<h1 id="articleTitle">음악</h1>
  	<iframe width="900" height="600" src="https://www.youtube.com/embed/lM2kcpCjh04"  allowfullscreen></iframe>
  	<p id="article">
  		음악 감상이 취미입니다. 위는 제가 가장 좋아하는 음악입니다.<br>
  		Reminiscence라는 이름의 곡입니다.
  	</p>
  </div>
<div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">로그인 결과</h5>
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
<script type="text/javascript" src="../js/blog.js"></script>
</body>
</html>