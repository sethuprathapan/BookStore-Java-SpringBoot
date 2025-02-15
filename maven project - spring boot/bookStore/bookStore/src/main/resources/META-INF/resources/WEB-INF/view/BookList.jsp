<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>New_Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
  <script>
 
  function showMessage(id) {
	    var result = confirm('Are you sure you want to proceed?');
	    if (result) {
	        alert('Confirmed! Proceeding...');
	        window.location.href = 'deleteBook?id='+id;
	    } else {
	        // User clicked cancel or closed the dialog
	        // You can handle this case if needed
	    }
	}

</script>
  
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="home">BookStore</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="MyBookList">MyBooks</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="New_Book">New Book</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="BookList">BookList</a>
        </li>
      </ul>
      <ul  class="navbar-nav me-auto mb-2 mb-lg-0"><li class="nav-item">
          <a class="nav-link" href="Book_register">New Book Register</a>
        </li></ul>
    </div>
  </div>
</nav>
<div class="container">

<table class="table my-5">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${book}" var="b" >
  
    <tr >
      <!-- <th scope="row" ></th> -->
      
      <td >${b.id}</td>
      <td >${b.name}</td>
      <td >${b.author}</td>
      <td >${b.price}</td>
      <td ><button type="button" class="btn btn-success" ><a href="mylist?id=${b.id}">Add to Mybook</a>
</button></td>
<td ><button type="button" class="btn btn-secondary" ><a href="edit?id=${b.id}">Edit</a>
</button></td>
<td ><button type="button" onclick="showMessage(${b.id})" class="btn btn-danger" >Delete
</button></td>
    </tr>
    
    </c:forEach>
   
  </tbody>
</table>
</div>

</body>
</html>