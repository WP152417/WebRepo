<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.dimigo.vo.UserVO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>SignUp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="/WebClass/css/signin.css">
</head>
<body>
<div class="container">
<%
	String id = request.getParameter("id") == null ? "" : request.getParameter("id"); 
	String pwd = request.getParameter("pwd") == null ? "" : request.getParameter("pwd");
	String name = request.getParameter("name") == null ? "" : request.getParameter("name");
	String nickname = request.getParameter("nickname") == null ? "" : request.getParameter("nickname");
%>
  <form id="signupForm" class="form-signin" action="/WebClass/signup" method="post">
    <h2 class="form-signin-heading">Please sign up</h2>
    
    <label for="inputEmail" class="sr-only">Email</label>
    <input type="email" name="id" id="inputEmail" class="form-control" placeholder="Email address" value="<%= id%>" required autofocus>
    
    <label for="inputPassword" class="sr-only">PassWord</label>
    <input type="password" name="pwd" id="inputPassword" class="form-control" placeholder="Password" value="<%= pwd%>" required>
	
	<label for="inputName" class="sr-only">Name</label>
    <input type="text" name="name" id="inputName" class="form-control" placeholder="Name" value="<%= name%>" required>
	
	<label for="inputNickName" class="sr-only">NickName</label>
    <input type="text" name="nickname" id="inputNickName" class="form-control" placeholder="Nickname" value="<%= nickname%>" required>
    <br>
    <button class="btn btn-lg btn-primary btn-block" type="submit" >Sign up</button>
  </form>
</div>

<%@ include file="modal.jsp" %>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<script>
	<%-- 회원 가입이 실패한 경우 처리 추가 --%>
	<%  if("error".equals(request.getAttribute("msg"))) { %>
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Login Error');
		myModal.find('.modal-body').text('Invalid username or password');
		myModal.modal();
	<% } %>
</script>

</body>
</html>