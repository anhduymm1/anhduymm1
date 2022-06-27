<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		
		<meta charset="UTF-8"> 
			<style type="text/css">
 			 <%@include file="index.css" %>
		</style>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fontawesome/fontawesome-free-6.1.1-web/css/all.min.css">
		<title>ADMIN</title>
	</head>
	<body>
	<!-- header -->
	<div class="web">
		<div class="header">
				<div id="text1">
					<span>Vị trí</span>
				</div>
				<div id="search">
				</div>
				<div id="login" class="mini-login">
					<div class="login" >
						<b class="cart-text">Đăng nhập</b>
					</div>
					<div class="login-detail">
						<div class="detail">
							<div id="lg" class="dangnhap">
								<a href="./Dangnhap.html" style="text-decoration:none;color:white"><b>Đăng nhập</b></a>
							</div>
							<div id="register">
								<a href="./Dangki.html" style="text-decoration:none;color:white"><b>Tạo tài khoản</b></a>
							</div>
							<div id="img">
								<img width="100%" src="https://i-amp.ex-cdn.com/mgn.vn/files/news/2022/05/11/spy-x-family-spoil-nhe-tap-6-anya-va-nhung-nguoi-ban-moi-ngay-dau-nhap-hoc-eden-030118.jpg"></img>
							</div>
						</div>
					</div>
				</div>
				<div class="login-main">
					<div id="login-main-img">
					</div>
				</div>
		</div>
		<!-- main -->
		<div class=main>
			<div class="container-fuild">
					<div class="row " style="width: 100%;">
						<div class="col-md-3 my-sidebar" style="width: 17%;">
							<h4 style="text-align: center; padding:20px 0px 10px 0px; font-family: 'Space Mono', monospace; text-decoration: none;color: red !important;font-size:30px;"><span style="border-bottom:2px solid gray">Mục lục</span></h4>
					 
							<ul class="ul1">
								<a class="a1" href="/home">
									<li class="li1" style="cursor:pointer;">
									<i style="color:red;" ></i>&ensp;<i class="fa-solid fa-earth-asia"></i>&ensp;<span class="list-a" style="font-weight:bold">Địa điểm du lịch</span>
									</li >
								</a>
								<a class="a1" href="/vitri">
									<li class="li1" style="cursor:pointer;">
									<i style="color:red"></i>&ensp;<i class="fa-solid fa-location-dot"></i>&ensp;<span class="list-a" style="font-weight:bold">Vị trí</span>
									</li >
								</a>
							</ul>
						</div> 
						  <div class="col-md div-danhsachsanpham" style="width: 90%;padding-right: 0px;margin-left:50px;margin-right:40px;margin-bottom:40px;margin-top:40px;">
                <div class="card shadow mb-4" style="min-height: 800px;">
                    <div class="card-header py-3"style="box-shadow: 0 6px 12px rgb(158, 148, 154);">
                        <h1 style="color: #4d4d4d !important;"class="h2 text-gray-800 text-center m-0 font-weight-bold text-primary">Danh sách vị trí</h1>
                    </div>
                    <div class="col-md-12 mt-3">
                      <a href="/insertvitri"><button class="btn btn-success button1">Insert</button></a>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="tblDanhSach" class="table mx-auto table-bordered table-hover">
                                <thead class="thead-dark">
                                    <tr class="text-center" style="background:#c0c0c0">
                                      <th>ID</th>
									<th>Kinh độ</th>
									<th>Vĩ độ</th>	
									<th>Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                             		<c:forEach var="Vitri" items="${Vitri}">
                                     <tr>
                                       <td class="text-center align-middle">${Vitri.getVitriid()}</td>
                                            <td class="text-center align-middle">${Vitri.getVtkinhdo()}</td>
                                             <td class="text-center align-middle">${Vitri.getVtvido()}</td>
                                           <td class="action"><a href="/vitri/vitri_view/${Vitri.getVitriid()}"><button class="btn btn-info button1">Update</button></a><br/>
											<form:form 
											        method="POST"
											        action="/deletevitri/${Vitri.getVitriid()}"
											        onsubmit="return confirm('Are you sure you want to delete this?') ? true: false"
											        style="text-align: center;" 
											       	>
											        <input class="btn btn-danger button1" type="submit" value="Delete"/>
								   		 	</form:form></td> 
					                   </tr>
					            </c:forEach>
                                </tbody>
                            </table>
                            <div class="goback">
								<div></div>
								<div><a href="/home"><button class="btn btn-secondary button1">Go Back</button></a></div>
							</div>
						</div>
				
					</div>
				</div>
			
			</div>
			</div>
		<!-- footer -->
		<div class="footer">
				<span style="color: white">Copyright © 2022 NHOM1. All Rights Reserved.</span>
			</div>
		<script src="https://code.jquery.com/jquery-3.0.0.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	</div>
	</body>
</html>