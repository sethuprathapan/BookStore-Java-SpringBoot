<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Book_register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">BookStore</a>
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
  <div class="container p-5 my-5" style="border:1px solid black;">
  <form class="col-md-4 offset-md-4" action="save" method="post" object="${book }">
  <h2 class="text-center">Edit Book here..</h2>
  <div class="mb-3">
  <input type="text" value="${book.id }"> 
    <label for="name" class="form-label">Book name</label>
    <input type="text" class="form-control" id="name" name="name" value="${book.name }">
    
  </div>
   <div class="mb-3">
    <label for="Author" class="form-label">Author</label>
    <input type="text" class="form-control" id="Author" name="author" value="${book.author }">
    
  </div>
   <div class="mb-3">
    <label for="price" class="form-label">price</label>
    <input type="text" class="form-control" id="price" name="price" value="${book.price }">
    
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  
</form></div>

</body>
</html>