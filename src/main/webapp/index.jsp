<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    


<!DOCTYPE html>
<html lang="en">
<head>
   	<meta charset="utf-8">
   	<title>
   	To Do List
   	</title>
   	<meta name="viewport" content="width=device-width, initial-scale=1.0">
   	<link href="assets/css/bootstrap.css" rel="stylesheet">
   	<style>
   		body { padding-top: 60px; /* 60px to make the container go all the way
   		to the bottom of the topbar */ }
   	</style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    <script src="jquery-1.8.3.js"></script> 
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
        			</ul>
      			</div><!-- /.nav-collapse -->
    		</div><!-- /.container -->
  		</div><!-- /.navbar-inner -->
	</div><!-- /.navbar -->
	
    <div class="container">
    	<div class="hero-unit">
        	<div>
          		<h1>
            		Welcome to your To Do List!
          		</h1>
          		<p>
            		To get started, we need to enter a task.
          		</p>
        	</div>
        	<a class="btn btn-primary" href="addTask.html">
          		Add Task »
        	</a>
        
        	<a class="btn btn-primary" href="getListElements.html">
          		View To Do List »
        	</a>
        
      </div>      
	</div>

    
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>
