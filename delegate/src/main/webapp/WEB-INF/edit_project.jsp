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
<title>Edit Project</title>
</head>
<body class="bg-secondary">

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

<div class="container">
	<h4 class="mainText">Edit Project!</h4>
	<a class="linkBtn" href="/dashboard" >Cancel</a>
	<hr/>
		<form:form action="/projects/edit/${project.id}" method="post" modelAttribute="project">
			<div class="form-row">
				<form:label  path="title"  for="title">Title:</form:label>
			 	<form:errors path="title" class="text-danger"/>
				<form:input class="input" path="title" value="${project.title}"/>
			</div>
			<div class="form-row">
				<form:label path="description"  for="description">Description:</form:label>
				<form:errors path="description" class="text-danger"/>
				<form:textarea rows="4" class="input" path="description" value="${project.description}"/>
			</div>
			<div class="form-row">
				<form:label path="deadline"  for="dueDate">Due Date:</form:label>
			     <br/>
			    <form:errors path="deadline" class="text-danger"/>
				<form:input path="deadline" type="date" value="${project.deadline}"/>
			</div>
			  <input class="input" type="submit" value="Submit"/>
		</form:form>
	</div>
</body>
</html>