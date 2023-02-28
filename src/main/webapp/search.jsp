<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<title>Search Customer</title>
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
<form action="fetch-all-cutomers">
  <div class="mb-3">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" name="name" placeholder="Enter the name">
    </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  <div class="mb-3">
    <label for="id" class="form-label">Customer id</label>
    <input type="text" class="form-control" name="id" placeholder="Enter the Customer id">
    </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  <button type="submit" class="btn btn-primary">Fetch All Customers</button>
  <c:if test="${cust !=null }">
  <div class="main2">
    <h3>Displaying the information of the user</h3>
    <p>Name: ${cust.getName() }<p>
  	<p>Email: ${cust.getEmail()}<p>
  	<p>City: ${cust.getCity()}<p>
  </div>
  </c:if>
  <c:forEach items="${listOfCustomers }" var="key">
  <p>
  	Customer ID: ${key.id }<br>
  	Name : ${key.name }<br>
  	email :${key.email }<br>
  	city :${key.city }<br>
  </p>
  </c:forEach>
  
</form>
</div>
</body>
</html>