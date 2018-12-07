<%-- 
    Document   : chitiet
    Created on : Nov 28, 2018, 6:17:35 PM
    Author     : QUOCTRONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết</title>
<link href="css/css_chitiet.css" rel="stylesheet"/>
</head>

<body>
<div class="container">
<div class="header">
<div class="image">
<img src="image/logo.png" style="width:300px; height:100px; margin-top:1px">
</div>
<div id="menu">
  <ul>
    <li><a href="#"><img src="image/index.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">TRANG CHỦ</span></a></li>
    <li><a href="#"><img src="image/building.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">CĂN HỘ</span></a></li>
    <li><a href="#"><img src="image/house.jpg" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">NHÀ NGUYÊN CĂN</span></a></li>
    <li><a href="#"><img src="image/motel.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">NHÀ TRỌ</span></a></li>
    <li><a href="#"><img src="image/plus.jpg" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">KHÁC</span></a>
      <ul class="sub-menu">
        <li><a href="#"><span style="color:black">Thuê khách sạn, biệt thự</span></a></li>
        <li><a href="#"><span style="color:black">Thuê kho xưởng</span></a></li>
      </ul>
    </li>
    <li><a href="#"><img src="image/blog.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">BLOG</span></a></li>
    <li><a href="#"><img src="image/mess.png" style="width:30px; height:30px; margin-top:10px"></br><span style="color:black">ĐĂNG TIN</span></a></li>
  </ul>
</div>
</div>
<div class="body">
	<h3 style="margin-top: 55px; margin-left: 80px; position: absolute">Tên:</h3><textarea row="1" cols="50" style="position: absolute; margin-left: 190px; margin-top: 50px; width: 690px; height: 25px"></textarea>
	<h3 style="margin-top: 115px; margin-left: 80px; position: absolute">Địa chỉ:</h3><textarea row="1" cols="50" style="position: absolute; margin-left: 190px; margin-top: 110px; width: 690px; height: 25px"></textarea>
	<h3 style="margin-top: 175px; margin-left: 80px; position: absolute">Email:</h3><textarea row="1" cols="50" style="position: absolute; margin-left: 190px; margin-top: 170px; width: 690px; height: 25px"></textarea>
	<textarea row="50" cols="50" style="position: absolute; margin-left: 80px; margin-top: 230px; width: 800px; height: 200px"></textarea>
	<div class="chitiet1">
	</div>
	<div class="chitiet2">
	</div>
	<div class="chitiet3">
	</div>
	<h3 style="position: absolute; margin-top: 920px; margin-left: 80px">ĐỂ LẠI Ý KIẾN CỦA BẠN</h3>
	<h4 style="position: absolute; margin-top: 960px; margin-left: 80px">Email của bạn sẽ không được hiển thị công khai.</h4>
	<textarea row="50" cols="50" style="position: absolute; margin-left: 80px; margin-top: 1000px; width: 1010px; height: 190px"></textarea>
	<input type="text" name="name" placeholder="Name" style="position: absolute; margin-top: 1220px; margin-left: 80px; width: 330px; height: 30px">
	<input type="text" name="email" placeholder="Email" style="position: absolute; margin-top: 1220px; margin-left: 420px; width: 330px; height: 30px">
	<input type="text" name="website" placeholder="Website" style="position: absolute; margin-top: 1220px; margin-left: 760px; width: 330px; height: 30px">
	<input type="submit" name="phanhoi" value="PHẢN HỒI" style="position: absolute; margin-top: 1280px; margin-left: 80px; width: 90px; font-size: 40px">
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
					<a href="" style="text-decoration: none; color: silver"><p style="margin-left: 30px">* Thuê kho xưởng Đà N

