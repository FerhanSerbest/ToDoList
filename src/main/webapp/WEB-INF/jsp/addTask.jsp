<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>
    <spring:message code="task.add"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <style>
      body { padding-top: 60px; /* 60px to make the container go all the way
      to the bottom of the topbar */ }
    </style>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">    
	<script type="text/javascript" src="jquery-1.8.3.js"></script>

	<script type="text/javascript">
		$(document).ready(
			function() {
				$.getJSON('<spring:url value="urgencies.json"/>', {
					ajax : 'true'
				}, function(data){
					var html = '<option value=""><spring:message code="task.urgencies"/></option>';
					var len = data.length;
					for (var i = 0; i < len; i++) {
						html += '<option value="' + data[i].desc + '">'
								+ data[i].desc + '</option>';
					}
					html += '</option>';
					
					$('#urgencies').html(html);
				});
				
			});
		
	</script>
	<style>
		.error {
			color: #ff0000;
		}
		
		.errorblock {
			color: #000;
			background-color: #ffEEEE;
			border: 3px solid #ff0000;
			padding: 8px;
			margin: 16px;
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
          		<spring:message code="task.add"/>
        	</h1>
      	</div>
      	<br/>
      	<form:form commandName="task">
      		<div class="control-group">
        		<label for="textinput1">
        	   	<spring:message code="task.title"/>
        		</label>
        		<form:input path="title"/>  
        	</div>
        	
        	<form:errors path="*" cssClass="errorblock" element="div" />
        	<div class="control-group">
        	  <label for="textinput1">
        	    <spring:message code="task.timer"/>
        	  </label>
        	  <form:input path="timer"/>
        	  <form:errors path="title" cssClass="error" />
        	</div>
        
        	<div class="control-group">
        	  <label for="selectinput1">
        	    <spring:message code="task.urgency" />
        	  </label>
        	  <form:select id="urgencies" path="urgency" />
        	</div>
        
		
			<input type="submit" class="btn" value="<spring:message code="task.button.enter"/>"/>
		
		</form:form>
      

	</div>
</div>
<script src="assets/js/bootstrap.js"></script>
</body>
</html>




















