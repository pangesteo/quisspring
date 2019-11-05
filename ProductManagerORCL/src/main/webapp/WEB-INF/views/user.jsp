<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Master User

      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-book"></i> Home</a></li>
        <li class="active">User</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
    
    <div class="box">
            <div class="box-header">
              <h3 class="box-title">Display All User Data In Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            <div class="form-group">
            	<button type="submit" class="btn btn-success" onclick=" add()">Add</button>
            	</div>
              <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap"><div class="row"><div class="col-sm-6"></div><div class="col-sm-6"></div></div><div class="row"><div class="col-sm-12"><table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                <thead>
                <tr role="row">
                	<th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">ID</th>
                	<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">Name</th>
                	<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">Email</th>
                	<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">Actions</th>
                </tr>
                </thead>
                <tbody>
				<!-- loop over and print our customers -->
      			<c:forEach var="tempUser" items="${listUsers}">

       			<!-- construct an "update" link with customer id -->
       			<c:url var="updateLink" value="/update/${tempUser.id}">
<%--         		<c:param name="userId" value="${tempUser.id}" /> --%>
       			</c:url>

       			<!-- construct an "delete" link with customer id -->
       			<c:url var="deleteLink" value="/delete/${tempUser.id}">
<%--         		<c:param name="userId" value="${tempUser.id}" /> --%>
       			</c:url>

       			<tr>
        		<td>${tempUser.id}</td>
        		<td>${tempUser.name}</td>
        		<td>${tempUser.email}</td>

        		<td>
         			<!-- display the update link --> <a href="${updateLink}">Update</a>
         | 			<a href="${deleteLink}"
         			onclick="if (!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a>
        		</td>

       			</tr>

      			</c:forEach>
               </tbody>
              
              </table>
              </div>
              </div>
              
               </div>
            </div>
            <!-- /.box-body -->
          </div>
      
    </section>
    <!-- /.content --> 

<script>
function add()
{
     location.href = "/useradded";
} 
</script>
