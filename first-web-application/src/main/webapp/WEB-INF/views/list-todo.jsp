<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 60px;
	background-color: #f5f5f5;
}
</style>
</head>

<body>

	<!--<nav class="navbar navbar-default">

		<a href="/" class="navbar-brand">Priority_ToDo_List_App</a>

		<ul class="nav navbar-nav">
			<li class="active"><a href="/list-todo.do">Home</a></li>
			<li><a href="/list-todo.do">Todos</a></li>
		</ul>

		<ul class="nav navbar-nav navbar-right">
			<li><a href="/logout.do" class="button btn-danger">Logout</a></li>
		</ul>
	</nav>-->
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ToDo_List_App</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/list-todo.do">Home</a></li>
      <li class="active"><a href="/list-todo.do" >Todos</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
			<li><a href="/logout.do" class="btn btn-danger navbar-btn">Logout</a></li>
		</ul>
  </div>
</nav>
	<div class="container">
		<H1>Welcome ${name}</H1>
		<table class="table table-striped">
		<caption>${name}'s Todos are</caption>
		<thead>
		<th>Description</th>
		<th>category</th>
		<th>Actions</th>
		</thead>
		<tbody>
		<c:forEach items="${todos}" var="todo">
		<tr>
		<td>${todo.name}</td>
		<td>${todo.category}</td>
		<td>&nbsp;&nbsp;<a class="btn btn-danger" href="/delete-todo.do?todo=${todo.name}&category=${todo.category}">Delete</a></td>
		</tr>
		</c:forEach>
		<tr>			
		</tr>
		</tbody>
		</table>
		<p>
			<font color="red">${errorMessage}</font>
		</p>
		<a class="btn btn-success" href="/add-todo.do">Add New Todo</a>
	</div>

	<footer class="footer">
		<div>footer content</div>
	</footer>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>