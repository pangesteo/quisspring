<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<section class="content-header">
	<h1>User Form Update</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-book"></i> Home</a></li>
		<li class="active">Master</li>
	</ol>
</section>

<!-- Main content -->
<section class="content">

	<div class="box">

		<div class="form-container">



			<form:form method="POST" modelAttribute="user"
				class="form-horizontal" action="update">

				<%-- 		<form action="#" th:action="@{/update}" th:object="${product}" --%>
				<%--             method="post"> --%>
				<div class="box-body">
					<div class="form-group">
						<label class="col-md-3" for="id">ID</label>
						<div class="col-md-7">
							<form:input type="text" path="id" id="id"
								class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="name" class="help-inline" />
							</div>
						</div>
					</div>

					<div class="form-group">
						<label class="col-md-3" for="name">Name</label>
						<div class="col-md-7">
							<form:input type="text" path="name" id="name"
								class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="name" class="help-inline" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3" for="email">Email</label>
						<div class="col-md-7">
							<form:input type="text" path="email" id="email"
								class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="email" class="help-inline" />
							</div>
						</div>
					</div>

				</div>

				<div class="box-footer">
					<input type="submit" value="Register"
						class="btn btn-primary btn-sm">
				</div>


			</form:form>
		</div>
	</div>
</section>
