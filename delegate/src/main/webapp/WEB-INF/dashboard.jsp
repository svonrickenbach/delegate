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
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>${user.firstName}'s home page</title>
</head>
<body class="bg-secondary">

<!-- Navbar links -->
	<div class="row justify-content-center">
	  	<div class="d-flex-row align-items-center">
			  <nav class="navbar" style="background-color: #000000;">
		        <ul class="navbar-nav mx-3">
		          <li class="nav-item text-light">
		            <h3>Welcome,  <c:out value=" ${user.firstName}"/>!</h3>
		          </li>
		        </ul>
		        <ul class="navbar-nav mx-3">
		          <li class="nav-item">
		            <a href="/logout" class="nav-link link-light">Logout</a>
		          </li>
		        </ul>
		        <ul class="navbar-nav mx-3">
		          <li class="nav-item">
		            <a href="/projects/new" class="nav-link link-light"> + Add Project</a>
		          </li>
		        </ul>
			</nav>
	  	</div>
	</div>
	
	<div class="container">
	<h4>Listed Projects</h4>
	<hr/>
		<table class="table">
		    <thead> 
		    	<tr>
		    		<th>Project</th>
		    		<th>Deadline</th>
		    		<th>......</th>
		    	</tr>
		    </thead>
		    <tbody>
		    	<c:forEach var="project" items="${unassignedProjects}">
				<tr>
					<c:if test = "${project.lead.id!=user.id}">
						<td><a href="/projects/${project.id}">${project.title}</a></td>
						<td><fmt:formatDate value="${project.deadline}" pattern="MMMM dd"/></td>
					    <td><a href="/dashboard/join/${project.id}">Join Team</a></td>
				    </c:if>
				</tr>	
				</c:forEach>
		    </tbody>
		</table>
	</div>
<hr>

<div class="container">
	<h4>Your Projects</h4>
		<table class="table">
		    <thead> 
		    	<tr>
		    		<th>Project</th>
		    		<th>Team Lead</th>
		    		<th>Deadline</th>
		    		<th>Actions</th>
		    	</tr>
		    </thead>
		    <tbody>
		    	<c:forEach var="project" items="${assignedProjects}">
				<tr>
					<td><a href="/projects/${project.id}">${project.title}</a></td>
					<td><c:out value="${project.lead.firstName}"></c:out></td>
					<td><fmt:formatDate value="${project.deadline}" pattern="MMMM dd"/></td>
					<c:if test = "${project.lead.id==user.id}">
				       <td><a href="/projects/edit/${project.id}">Edit Project</a></td>
				    </c:if>
				    <c:if test = "${project.lead.id!=user.id}">
				       <td><a href="/dashboard/leave/${project.id}">Leave Team</a></td>
				    </c:if>
				</tr>	
			</c:forEach>
		    </tbody>
		</table>
	</div>
</body>
</html>