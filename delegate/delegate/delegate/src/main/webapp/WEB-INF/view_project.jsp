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
		
		<!--Details  -->
		<div class="container">
		<h4>Project Details</h4>
		<hr/>
			<table>
			    <tbody>
			    	<tr>
			            <td>Project: <c:out value="${project.title}"></c:out></td>
			        </tr>
			        
			        <tr>
			            <td>Description: <c:out value="${project.description}"></c:out></td>
			        </tr>
			        
			        <tr>
			            <td>Due Date: <fmt:formatDate value="${project.dueDate}" pattern="MMMM dd"/></td>
			        </tr>
			    </tbody>
			</table>
			<br/>
			<c:if test = "${project.lead.id==userId}">
			    <h6><a href="/projects/delete/${project.id}" >Delete Project</a></h6>
			</c:if>
		</div>
</body>
</html>