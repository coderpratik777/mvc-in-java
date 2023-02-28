<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<title>Add customer</title>
</head>
<style>
body{
background-color:black;
}
 .main{
 background-color:white;
 width:500px;
 margin:auto;
 padding:40px;
 margin-top:70px;
 box-shadow:1px 1px 8px white;
 border-radius:6px;
 }
</style>
<body>
<div class="main">
	<form action="add-customer">
  <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" name="name">
    </div>
  <div class="mb-3">
    <label for="email" class="form-label">Email</label>
    <input type="email" class="form-control" name="email">
  </div>
    <div class="mb-3">
    <label for="city" class="form-label">City</label>
    <input type="text" class="form-control" name="city">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</body>
</html>