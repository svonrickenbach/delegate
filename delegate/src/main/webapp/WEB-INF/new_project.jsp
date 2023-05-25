<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/home.css"/>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>${user.firstName}'s page</title>
</head>
<body class="bg-secondary">

<!-- Navbar links -->
	<div class="row justify-content-center">
	  	<div class="d-flex-row align-items-center">
			  <nav class="navbar" style="background-color: #000000;">
		        <ul class="navbar-nav mx-3">
		          <li class="nav-item text-light">
		            <h3>Workspace</h3>
		          </li>
		        </ul>
		        <ul class="navbar-nav mx-3">
		          <li class="nav-item">
		            <a href="/dashboard" class="nav-link link-light"> Home</a>
		          </li>
		        </ul>
		        <ul class="navbar-nav mx-3">
		          <li class="nav-item">
		            <a href="/logout" class="nav-link link-light">Logout</a>
		          </li>
		        </ul>
			</nav>
	  	</div>
	</div>

<!--Project Creation -->
<div class="container">
<h4 class="mainText">Plan a new project!</h4>
<a class="linkBtn" href="/dashboard" >Cancel</a>
<hr/>
		<form:form action="/projects/new" method="post" modelAttribute="project">
			<div class="form-row">
		        <form:label  path="title"  for="title">Title:</form:label>
		        <form:errors path="title" class="text-danger"/>
				<form:input  path="title" class="input"/>
		    </div>
		    <div class="form-row">
		        <form:label path="description"  for="description">Description:</form:label>
		        <form:errors path="description" class="text-danger"/>
				<form:textarea path="description" rows="4" class="input" />
		    </div>
		    <div class="form-row">
		        <form:label path="deadline"  for="deadline">Deadline:</form:label>
		        <br/>
				<form:input  path="deadline" type="date"/>
		        <form:errors path="deadline" class="text-danger"/>
		   </div>
		        <form:errors path="lead" class="error"/>
				<form:input type="hidden" path="lead" value="${userId}" class="form-control"/>

		        <input class="input" type="submit" value="Submit" class="btn btn-danger btn-lg"
	              style="padding-left: 2.5rem; padding-right: 2.5rem;"/>
		</form:form>
	</div>
</body>
</html>