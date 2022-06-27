<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="webjars/jquery/3.0.0/jquery.min.js"></script>
		<meta charset="UTF-8"> 
		<title>ADMIN</title>
			<style type="text/css">
 			 <%@include file="index.css" %>
		</style>
	</head>
	<body>
		<h1>Update</h1>
		<div class="update">
			<div class="khung">
				<form:form method="POST"
					action="/home/update/${Diadiemdulich.getDddl_id()}"
					enctype="multipart/form-data"
					modelAttribute="Diadiemdulich">
					<p>Nhập tên địa điểm du lịch</p>
					<form:input type="text" 
						value="${Diadiemdulich.getDddl_ten()}" 
						placeholder="Không được để trống"
						path="dddl_ten"
					/><br/>
					<form:errors path="dddl_ten" class="error"/> <br> 
					<p>Nhập mô tả</p>
					<form:input type="text" 
						value="${Diadiemdulich.getDddl_mota()}" 
						placeholder="Không được để trống"
						path="dddl_mota"
					/><br/>
					<form:errors path="dddl_mota" class="error"/> <br> 
					<p>Thêm hình ảnh</p>
					<div class="col-md-12">
                                <div class="form-group">
                                    <label for="file">Tập tin ảnh</label>
                                    <!-- Tạo khung div hiển thị ảnh cho người dùng Xem trước khi upload file lên Server -->
                                    <div class="preview-img-container">
                                        <img width=200px height=200px src="${Diadiemdulich.getDddl_path()}" id="preview-img" width="200px" />
                                    </div>
                                    <!-- Input cho phép người dùng chọn FILE -->
                                    <input class="form-control" type="file"  name="file" path="dddl_path"  id="file" />
                                </div>
                     </div>
                     <form:errors path="dddl_path" class="error"/> <br> 
					<p>Chọn miền </p>					
					<form:select path="mien">
			            <c:forEach var="Mien" items="${Mien}">
							<form:option value="${Mien.getIdmien()}">
			                   	${Mien.getTenmien()}
			                </form:option>
			            </c:forEach>                        
			        </form:select>
			        <br/>
					<div class="update">
						<div><input  class="btn btn-info button1" type="submit" value="Update"/></div>
					</div>
				</form:form>
				
			</div>
		</div>
		<div class="goback">
			<div></div>
			<div><a href="/home"><button class="btn btn-secondary button1">Go Back</button></a></div>
		</div>
		<!-- Liên kết script -->
		<script>
			const reader = new FileReader();
			const fileInput = document.getElementById("file");
			const img = document.getElementById("preview-img");
			reader.onload = e => {
				img.src = e.target.result;
			}
			fileInput.addEventListener('change', e => {
				const f = e.target.files[0];
				reader.readAsDataURL(f);
			})
		</script>
		<!-- Liên kết script -->
	</body>
</html>