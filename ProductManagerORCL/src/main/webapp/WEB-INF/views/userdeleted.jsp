<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Product Form</title>
	
	<script>
	function gouserlist()
	{
	     location.href = "/";
	} 
	</script>
</head>

<body>
<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Product Form
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-book"></i> Home</a></li>
        <li class="active">Master</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
	 <div class="box">

 	<div class="form-container">
 	<div class="box-body">
 	<div class="form-group" style="align-content:center; align-items:center ">
		<label class="col-md-10" style="align-content:center ">The User Item Has Been Deleted Successfully.</label>
	</div>
	<div class="form-group">
        <button style="align-content:center " type="submit" class="btn btn-success" onclick=" gouserlist()">Go To User List</button>    	
	</div>
	</div>
	</div>
 </div>
 </section>
</body>
