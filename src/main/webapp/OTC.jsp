<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OTC HAND Book</title>
</head>

<head>
<style>
.button {
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  <!--display: inline-block;-->
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white;
  color: black;
  border: 2px solid #4CAF50;
  margin-top: 100px;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}

.button2 {
  background-color: white;
  color: black;
  border: 2px solid #008CBA;
  margin-top: 150px;
  margin-left:200px
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

.divB {
background-color:#008CBA;
}

</style>
</head>
<body style="background-color:#FFFF29;">
<div class="divB">
</div>

<div>
<button type="button" class="button button1" onclick="alert('Hello')">Black</button>
</div>
<button class="button button2" onclick="document.location='http://localhost:8080/OTCHandBook/hello.html'">Blue</button>
</body>
</html>