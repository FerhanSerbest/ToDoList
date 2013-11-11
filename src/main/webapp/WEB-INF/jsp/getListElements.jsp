<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <title>
    	<spring:message code="list.title"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <style>
      body { padding-top: 60px; /* 60px to make the container go all the way
      to the bottom of the topbar */ }
    </style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">  
    <script src="jquery-1.8.3.js"></script>  
    <style>
		.centered{
    		margin: 0 auto;
    		text-align: center;
		}
	</style>
</head>
<body>
	<div class="navbar navbar-fixed-top">
  		<div class="navbar-inner">
    		<div class="container">
      			<a class="brand" href="index.jsp">To Do List</a>
      			<div class="nav-collapse">
        			<ul class="nav">
          				<li class="active"><a href="index.jsp"><i class="icon-home icon-white"></i> Home</a></li>
          				<li><a href="addTask.html">Add Task</a></li>
          				<li><a href="getListElements.html">View List</a></li>
          				<li class="dropdown">
            				<a href="#" class="dropdown-toggle" data-toggle="dropdown">Language <b class="caret"></b></a>
            				<ul class="dropdown-menu">
              					<li><a href="?language=en">English</a></li>
              					<li><a href="?language=fr">Français</a></li>
            				</ul>
          				</li>
        			</ul>
      			</div><!-- /.nav-collapse -->
    		</div><!-- /.container -->
  		</div><!-- /.navbar-inner -->
	</div><!-- /.navbar -->


        
<div class="container">
	<div class="hero-unit">
    	<div>
        	<h1>
            	<spring:message code="list.titletop" />
          	</h1>
        </div>
        <p>
        	<c:choose>
        		<c:when test="${!empty timerTotal}">
        			<spring:message code="list.notEmpty1"/>
        			${timerTotal[0]}
        			<spring:message code="list.notEmpty2"/>
        			${timerTotal[1]}
        			<spring:message code="list.notEmpty3"/>
        		</c:when>
        		<c:otherwise>
        			<spring:message code="list.empty"/>
        		</c:otherwise>
        	</c:choose>
		</p>
    	<br /><br />
	 	<table class="centered">
			<c:forEach items="${listElements}" var="listElement">
				<tr>
					<td>
						<c:choose>
							<c:when test="${listElement.taskUrgency == 'High'}">
								<div class="alert alert-danger">
								<strong>${listElement.taskTitle}</strong>
								</div>
							</c:when>
							<c:when test="${listElement.taskUrgency == 'Medium'}">
								<div class="alert">
								<strong>${listElement.taskTitle}</strong>
								</div>
							</c:when>
							<c:otherwise>
								<div class="alert alert-info">
								<strong>${listElement.taskTitle}</strong>
							</div>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
<script src="assets/js/bootstrap.js"></script>
</body>
</html>