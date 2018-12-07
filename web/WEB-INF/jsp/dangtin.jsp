<%-- 
    Document   : dangtin
    Created on : Nov 24, 2018, 10:55:58 AM
    Author     : QUOCTRONG
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
<title>Đăng tin</title>
<link href="css/css_dangtin.css" rel="stylesheet"/>
</head>

<body>
<div class="container">
<div class="header">
<div class="image">
<img src="image/logo.png" style="width:300px; height:100px; margin-top:1px">
</div>
<div id="menu">
  <ul>
    <li><a href="trangchu.htm"><img src="image/index.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">TRANG CHỦ</span></a></li>
    <li><a href="canho.htm"><img src="image/building.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">CĂN HỘ</span></a></li>
    <li><a href="nhanguyencan.htm"><img src="image/house.jpg" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">NHÀ NGUYÊN CĂN</span></a></li>
    <li><a href="phongtro.htm"><img src="image/motel.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">NHÀ TRỌ</span></a></li>
    <li><a href="#"><img src="image/plus.jpg" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">KHÁC</span></a>
      <ul class="sub-menu">
        <li><a href="ks_bt.htm"><span style="color:black">Thuê khách sạn, biệt thự</span></a></li>
        <li><a href="kho.htm"><span style="color:black">Thuê kho xưởng</span></a></li>
      </ul>
    </li>
    <li><a href="#"><img src="image/blog.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">BLOG</span></a></li>
    <li><a href="dangtin.htm"><img src="image/mess.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">ĐĂNG TIN</span></a></li>
  </ul>
</div>
</div>
<div class="body">
    <f:form method="POST" action="" modelAttribute="poster" enctype="multipart/form-data">
	<h3 style="margin-top: 100px; margin-left: 100px">Name</h3>
            <input type="text" name="name" style="position: absolute; margin-left: 300px; margin-top: -50px; width: 400px;height:35px">
	<h3 style="margin-top: 50px; margin-left: 100px">Email</h3>
            <input type="text" name="email" style="position: absolute; margin-left: 300px; margin-top: -50px; width: 400px;height:35px">
	<h3 style="margin-top: 50px; margin-left: 100px">Tiêu đề</h3>
            <input type="text" name="title" style="position: absolute; margin-left: 300px; margin-top: -50px; width: 400px;height:35px">
	<h3 style="margin-top: 50px; margin-left: 100px">Hình ảnh</h3>
            <!--<input type="text" name="image" style="position: absolute; margin-left: 300px; margin-top: -50px; width: 400px;height:35px">-->
            <input type="file" name="file" accept="image/*" style="position: absolute; margin-left: 300px; margin-top: -45px; width: 400px;"/>
        <h3 style="margin-top: 50px; margin-left: 100px">Thông tin nhà</h3>
            <textarea row="50" cols="50" name="info" style="position: absolute; margin-left: 300px; margin-top: -45px; width: 400px; height: 200px"></textarea>
	<h3 style="margin-top: 225px; margin-left: 100px">Địa chỉ</h3>
            <input type="text" name="address" style="position: absolute; margin-left: 300px; margin-top: -50px; width: 400px;height:35px">
	<h3 style="margin-top: 50px; margin-left: 100px">Loại hình</h3>
	<select name ="category.id" style="position: absolute; margin-top: -48px; margin-left: 299px; height: 40px; width: 130px">
            <c:forEach var="CATEGORY" items="${LIST_CATEGORY}">	
            <option value="${CATEGORY.id}">${CATEGORY.name}</option>
            </c:forEach>
	</select>
	<input type="submit" name="dangtin" value="Đăng tin" style="margin-left: 300px; margin-top: 20px; height: 100px; width:150px; position: absolute; font-size: 35px">
    </f:form>
    </div>
<div class="footer">
	<div class="ft">
		<div class="fttrai">
			<h4 style="margin-left: 30px; position: absolute">GIỚI THIỆU CHUNG</h4><hr style="color: silver; width: 345px; position: absolute; margin-top: 57px; margin-left: 30px">
			<p style="margin-left: 30px; color: silver; text-align: justify; width: 345px; position: absolute; margin-top: 90px">Bạn đang cần tìm thuê nhà nguyên căn tại Đà Nẵng ? bạn muốn nhà thuê có giá rẻ nhất thị trường? Hãy đến với chúng tôi, dịch vụ hỗ trợ tìm nhà cho thuê Đà Nẵng chuyên nghiệp nhất tại Đà Nẵng.</p></br>
			<p style="margin-left: 30px; color: silver; text-align: justify; width: 345px; position: absolute; margin-top: 195px">Dịch vụ hỗ trợ tìm kiếm nhà nguyên căn, căn hộ mini, căn hộ cao cấp theo nhu cầu khách hàng. Ngoài ra, chúng tôi là dịch vụ cho thuê nhà đất Đà Nẵng chính chủ, giá rẻ, vị trí đẹp, đường rộng.</p></br>
			<p style="margin-left: 30px; color: silver; text-align: justify; width: 345px; position: absolute; margin-top: 300px">Cập nhật thông tin mua cho thuê nhà tại Đà Nẵng, nhanh nhất, nhà mặt tiền, nhà kiệt, phòng trọ...</p>
		</div>
		<div class="ftphai">
			<div class="ftphaitren">
				<div class="tren1">
					<h4 style="margin-left: 30px">THÔNG TIN WEBSITE</h4><hr style="color: silver; width: 185px">
					<a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Giới thiệu</p></a>
					<a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Trang chủ</p></a>
					<a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Liên hệ</p></a>
				</div>
				<div class="tren2">
					<h4 style="margin-left: 30px">DANH MỤC</h4><hr style="color: silver; width: 185px">
					<a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê nhà Đà Nẵng</p></a>
					<a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê phòng trọ Đà Nẵng</p></a>
					<a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê căn hộ Đà Nẵng</p></a>
				</div>
				<div class="tren3">
					<h4 style="margin-left: 30px">DANH MỤC</h4><hr style="color: silver; width: 185px">
					<a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê khách sạn, biệt thự</p></a>
					<a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê kho xưởng Đà Nẵng</p></a>
					<a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê mặt bằng Đà Nẵng</p></a>
				</div>
			</div>
			<div class="ftphaiduoi">
				<h4 style="margin-left: 30px">LIÊN HỆ VỚI CHÚNG TÔI</h4><hr style="color: silver; width: 690px">
				<p style="margin-left: 30px; color: silver">Địa chỉ: Tầng Lửng, Toà Nhà Savico, 66 Võ Văn Tần, Phường Chính Gián, Quận Thanh Khê, Đà Nẵng 590000</p>
				<p style="margin-left: 30px; color: silver">Di động: 0905 801 816</p>
				<p style="margin-left: 30px; color: silver">Fax: 089 924 25 99</p>
				<p style="margin-left: 30px; color: silver">Email: contact@thuenha24h.net</p>
			</div>
		</div>
	</div>
<hr style="color: silver; width: 1100px">
	<div class="fd">
		<p style="margin-left: 30px; color: silver">Copyright © 2015. Kênh thông tin nhà cho thuê và cho thuê nhà hàng đầu. All rights reserved</p>
	</div>
</div>
</div>
</body>
</html>


