<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HỆ THỐNG HỖ TRỢ TÌM KIẾM ĐỊA ĐIỂM DU LỊCH</</title>

		<link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css" integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ==" crossorigin=""/>
    	<script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js" integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ==" crossorigin=""></script>
   		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet-routing-machine/3.2.5/leaflet-routing-machine.css" />
   		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/perliedman-leaflet-control-geocoder/1.5.5/Control.Geocoder.min.css" />
   		<script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet-routing-machine/3.2.5/leaflet-routing-machine.js"></script> 
   		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/perliedman-leaflet-control-geocoder/1.5.5/Control.Geocoder.min.js"></script> 
   		<script src="https://d3js.org/d3.v3.min.js"></script>
    	<script src="https://d3js.org/topojson.v0.min.js"></script>
     	<script src="https://cdn.jsdelivr.net/npm/leaflet.locatecontrol@0.76.0/dist/L.Control.Locate.min.js" charset="utf-8"></script>
    	
    	<link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.3.0/dist/MarkerCluster.css" />
		<link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.3.0/dist/MarkerCluster.Default.css" />
    	<script src="https://unpkg.com/leaflet.markercluster@1.3.0/dist/leaflet.markercluster.js"></script>
    	
    	
    	<!-- sssssssss -->
    	<link rel="stylesheet" href="https://api.mapbox.com/mapbox-gl-js/v0.42.1/mapbox-gl.css" />    	
    	<script src="https://api.mapbox.com/mapbox-gl-js/v0.42.1/mapbox-gl.js" charset="utf-8"></script>
    	<script src="https://unpkg.com/osmtogeojson@2.2.12/osmtogeojson.js"></script>
    	
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css">
    	
    	<style>
    		#mapid{
				width:100%;
				height:500px;
			}
			#mapid1{
				width:700px;
				height:500px;
			}
			.place{
			  width: 100%;
			  display: flex;
			  justify-content: center;
			  align-items: center;
			  flex-wrap: wrap;
			}
			.place__card{
			  border-radius: 15px;
			  max-width: 32%;
			  margin-left: 20px;
			  min-height: 300px;
			  background: rgba(0,0,0,0.1);
			  flex: 4 0 30%;
			  font-family: "open sans", sans-serif;
			  transition-duration: 1s;
				margin-bottom:20px;
			}
			.infor{
			  width: 100%;
			  
			  display: flex;
			  align-items: flex-start;
			  justify-content: flex-start;
			  align-content: center;
			  background-image: url("https://images.unsplash.com/photo-1538477080496-24fefe5fe161?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80");
			  background-size: cover;
			}
			.infor__text{
			  flex-basis: 700px;
			  padding-left: 15px;
    		  padding-top: 95px;
			}
    	</style>
    	
<style>


</style>
</head>
<body>
	<div class="main">

		<div class="head">
			<div class="brand">
				<a href="">HỆ THỐNG HỖ TRỢ TÌM KIẾM ĐỊA ĐIỂM DU LỊCH</a>
				<ul class="menu">
					<li><a class="menu_link">Trang chủ</a></li>
					<li><a class="menu_link" href="./login">Đăng nhập</a></li>
					<li>Dịch vụ</li>
					<li>Dự án</li>
				</ul>
			</div>
		</div>
		<div class="content">
			<div class="image">
				<div class="image-text">
					<span>Hỗ trợ tìm kiếm thông tin địa điểm và đường đi một
						cách nhanh nhất</span>
					<button onclick="Click()">
						<span>Bắt đầu ngay</span>
					</button>
				</div>

			</div>
			<div class="location">
				<ul class="nav">
					<li onclick = "test(1213)">Miền Bắc</li>
					<li>Miền Trung</li>
					<li>Miền Nam</li>
				</ul>
							
				<div class="place">
				<c:forEach var="Diadiemdulich" items="${Diadiemdulich}">
					<div class="place__card"  onclick=" ModalClick(),MapClick(${Diadiemdulich.vitri.getVtkinhdo()},${Diadiemdulich.vitri.getVtvido()})">
						<span style="display:none">
							${Diadiemdulich.vitri.getVtkinhdo()}
						</span>
						<span style="display:none">
							${Diadiemdulich.vitri.getVtvido()}
						</span>
						<img
							src="${pageContext.request.contextPath}${Diadiemdulich.getDddl_path()}"
							alt="">
						<div class="place__content">
							<h3>${Diadiemdulich.getDddl_ten()}</h3>
							<h5>${Diadiemdulich.mien.getTenmien()}</h5>
							<p>${Diadiemdulich.getDddl_mota()}</p>														
						</div>
					</div>
				</c:forEach>
										
			</div>
			<div class="infor" id="i4">
				<div class="infor__image">
					<div id="mapid1"></div>
				</div>
				<div class="infor__text">
					<span>Thể hiện thông tin địa điểm trên bảng đồ</span>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
						do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
						enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
						reprehenderit in voluptate velit esse cillum dolore eu fugiat
						nulla pariatur. Excepteur sint occaecat cupidatat non proident,
						sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					<button>
						<span>Thêm về chúng tôi</span>
					</button>
				</div>
			</div>
			<div class="footer">
				<h3>Copyright © 2022 by Theas</h3>
			</div>
			<div id="myModal" class="modal">

				<!-- Modal content -->
				<div class="modal-content">
						<div id="mapid" >
						<!-- content -->
						</div>
					<span class="close" onclick="CloseModal()">&times;</span>
				</div>
			</div>
		</div>
	</div>
	
	   <script src="${pageContext.request.contextPath}/resources/js/map1.js"></script>
	   <script src="${pageContext.request.contextPath}/resources/js/map_index.js"></script>
	   <script src="${pageContext.request.contextPath}/resources/js/index1.js"></script>
	
</body>
</html>