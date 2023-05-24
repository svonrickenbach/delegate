<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/style.css"/>
<!-- <script src="js/script.js"></script> -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Delegate</title>
</head>
<body class="bg-dark">
	<div class="wrapper fadeInDown">
	  <div id="formContent">
	  
	  <!-- Tabs Titles -->
		    <h4 class="inactive underlineHover">Welcome to the Delegate App! </h4>
	
			 <!-- Icon -->
		    <div class="fadeIn first">
		        <img src="https://thumbs.dreamstime.com/t/community-line-icon-concept-community-vector-linear-illustration-sign-symbol-community-line-icon-concept-community-vector-linear-132508238.jpg" style="border-radius: 50%;" id="icon" alt="Icon" />
		    </div>
		    
		     <!-- Register up Form -->
			<form:form action="/register" method="post" modelAttribute="newUser">
			
				<form:errors  path="firstName" class="text-light"/>
				<form:input   class="input" path="firstName" placeholder="First Name"/>
				 <br/>       
				<form:errors path="lastName" class="text-light"/>
				<form:input  class="input" path="lastName" placeholder="Last Name"/>
				 <br/>
				<form:errors  path="email" class="text-light"/>
				<form:input   class="input" path="email" placeholder="Email"/>
			
				<form:errors  path="password" class="text-light"/>
				<br/>
				<form:input   type="password" class="input" path="password" placeholder="Password"/>
				         
				<form:errors  path="confirm" class="text-light"/>
				<form:input   type="password" class="input" path="confirm" placeholder="Confirm Password" />
				
				<input class="input" type="submit" value="Submit"/>
				 
			</form:form>
			<hr>
			<form:form action="/login" method="post" modelAttribute="newLogin">
			
				<form:errors path="email" class="text-light"/>
				<form:input  class="input" path="email" placeholder="Email"/>
				<br/>
				<form:errors path="password" class="text-light"/>
				<form:input  type="password" class="input" path="password" placeholder="Password"/>
				           
				<input class="input" type="submit" value="Submit"/>
				
			</form:form>
			</div>
		</div>
	</body>
</html>