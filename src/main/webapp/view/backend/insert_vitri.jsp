<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<meta charset="UTF-8"> 
		<title>ADMIN</title>
			<style type="text/css">
 			 <%@include file="index.css" %>
		</style>
	</head>
	<body>
		<h1>Insert</h1>
		<div class="update">
			<div class="khung">
				<form:form method="POST"
					action="/insertvitri"
					modelAttribute="Vitri">
					<p>Nhập kinh độ</p>
					<form:input type="text" 
						
						placeholder="Không được để trống"
						path="vtkinhdo"
					/><br/>
					<form:errors path="vtkinhdo" class="error"/> <br> 
					<p>Nhập vĩ độ</p>
					<form:input type="text" 
						
						placeholder="Không được để trống"
						path="vtvido"
					/><br/>
					<form:errors path="vtvido" class="error"/> <br> 
					<p></p>
					<div name="error"></div>
					<div class="update">
						<div><input class="btn btn-success button1"  type="submit" value="Insert"/></div>
					</div>
				</form:form>
				
			</div>
		</div>
		<div class="goback">
			<div></div>
			<div><button class="btn btn-secondary"><a href="/vitri">Go Back</a></button></div>
		</div>
	</body>
</html>