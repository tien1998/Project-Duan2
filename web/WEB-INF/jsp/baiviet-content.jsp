<%-- 
    Document   : baiviet-content
    Created on : Dec 1, 2018, 3:29:41 PM
    Author     : QUOCTRONG
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Table with Add and Delete Row Feature</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    body {
        color: #404E67;
        background: #F5F7FA;
		font-family: 'Open Sans', sans-serif;
	}
	.table-wrapper {
		width: 1000px;
		margin: 30px auto;
        background: #fff;
        padding: 20px;	
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .table-title {
        padding-bottom: 10px;
        margin: 0 0 10px;
    }
    .table-title h2 {
        margin: 6px 0 0;
        font-size: 22px;
    }
    
    .table-title .add-new {
        float: right;
		height: 30px;
                
		font-weight: bold;
		font-size: 12px;
		text-shadow: none;
		min-width: 100px;
		border-radius: 50px;
		line-height: 13px;
    }
	.table-title .add-new i {
		margin-right: 4px;
	}
    table.table {
        table-layout: auto;
    }
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
    }
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }
    table.table th:last-child {
        width: 100px;
    }
      
    table.table td a.insert {
        color: #27C46B;
    }
    table.table td button.insert {
        color: #27C46B;
        width: 75px;
    }
    table.table td a.edit {
        color: #FFC107;
    }
    table.table td button.edit {
        color: #FFC107;
        margin-right: 5px;
        width: 50px;
    }
    table.table td a.delete {
        color: #E34724;
    }
    table.table td button.delete {
        color: #E34724;
        width: 50px;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table td a.add i {
        font-size: 24px;
    	margin-right: -1px;
        position: relative;
        top: 3px;
    }    
    table.table .form-control {
        height: 32px;
        line-height: 32px;
        box-shadow: none;
        border-radius: 2px;
    }
	table.table .form-control.error {
		border-color: #f50000;
	}
	table.table td .add {
		display: none;
	}
        
</style>
<script type="text/javascript">
//$(document).ready(function(){
//	$('[data-toggle="tooltip"]').tooltip();
//	var actions = $("table td:last-child").html();
//	// Append table with add row form on add new button click
//    $(".add-new").click(function(){
//		$(this).attr("disabled", "disabled");
//		var index = $("table tbody tr:last-child").index();
//        var row = '<tr>' +
//            
//            '<td><input type="text" class="form-control" name="name" id="name"></td>' +
//			'<td>' + actions + '</td>' +
//        '</tr>';
//    	$("table").append(row);		
//		$("table tbody tr").eq(index + 1).find(".add, .edit").toggle();
//        $('[data-toggle="tooltip"]').tooltip();
//    });
//	// Add row on add button click
//	$(document).on("click", ".add", function(){
//		var empty = false;
//		var input = $(this).parents("tr").find('input[type="text"]');
//        input.each(function(){
//			if(!$(this).val()){
//				$(this).addClass("error");
//				empty = true;
//			} else{
//                $(this).removeClass("error");
//            }
//		});
//		$(this).parents("tr").find(".error").first().focus();
//		if(!empty){
//			input.each(function(){
//				$(this).parent("td").html($(this).val());
//			});			
//			$(this).parents("tr").find(".add, .edit").toggle();
//			$(".add-new").removeAttr("disabled");
//		}		
    });
//	// Edit row on edit button click
//	$(document).on("click", ".edit", function(){		
//        $(this).parents("tr").find("td:not(:last-child)").each(function(){
//			$(this).html('<input type="text" class="form-control" value="' + $(this).text() + '">');
//		});		
//		$(this).parents("tr").find(".add, .edit").toggle();
//		$(".add-new").attr("disabled", "disabled");
//    });
//	// Delete row on delete button click
//	$(document).on("click", ".delete", function(){
//        $(this).parents("tr").remove();
//		$(".add-new").removeAttr("disabled");
//    });
});
</script>
</head>
<body>
    <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>QUẢN LÝ <b>BÀI VIẾT</b></h2></div>
                    
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th><b>ID</b></th>
                        <th><b>TIÊU ĐỀ</b></th>
                        
                        <th><b>LOẠI HÌNH</b></th>
                        
                        <th><b>NGƯỜI GỬI</b></th>
                        
                        <th><b>E-MAIL NGƯỜI GỬI</b></th>

                        <th><b>NỘI DUNG</b></th>
                        
                        <th><b>ẢNH</b></th>
                        
                        <th><b>ĐỊA CHỈ</b></th>
                        
                        <th><b>HÀNH ĐỘNG</b></th>
                    </tr>
                    
                </thead>
                
                <tbody>
                    

                    <c:forEach var = "item" items="${LIST_POSTER}">
                        
                    <tr>
                            <td>${item.id}</td>
                            <td>${item.title}</td>
                            
                            <td>${item.getCategory().getName()}</td>
                            
                            <td>${item.name}</td>
                            <td>${item.email}</td>
                            <td>${item.info}</td>
                            <td><img src='${item.image}'height="42" width="42"></td>
                            <td>${item.address}</td>
                            
                        
                        <td>
                           
                           
                            
                            <a href="suabaiviet.htm?id=${item.id}" class="edit" title="Sửa" data-toggle="tooltip">
                                <i class="material-icons">&#xE254;</i>
                                
                            </a>
                            <a href="xoabaiviet.htm?id=${item.id}" onclick="return confirm('Bạn thực sự muốn xoá bài viết này?')" class="delete" title="Xoá" data-toggle="tooltip">
                                <i class="material-icons">&#xE872;</i>
                            </a>
                        </td>
                            
                    </tr> 
                    
                    </c:forEach>
                    <tr>
                        <f:form action="baiviet123.htm" method="POST" modelAttribute="poster" enctype="multipart/form-data">
                            <td><input type="text"  class="form-control" name="id" readonly="" value="Tự động"></td>
                            <td><input type="text" class="form-control" name="title"></td>
                            <td>
                                
                                <select  name="category.id">
                                    <c:forEach var = "item" items="${CATEGORY}">
                                <option value="category.id" >${item.name}</option>
                                    </c:forEach>
                                </select>
                                
                            </td>
                            <td><input type="text" class="form-control" name="name"></td>
                            <td><input type="text" class="form-control" name="email"></td>
                            <td><input type="text" class="form-control" name="info"></td>
                            <td><input type="file" class="form-control" name="file" accept="image/*"></td>
                            <td><input type="text" class="form-control" name="address"></td>
                            <td>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <button class="btn btn-info add-new"><i class="fa fa-plus"></i>THÊM MỚI</button>
                                    </div>
                                </div>
                            </td>
                            </f:form>
                    </tr>
                    
                </tbody>
            </table>
        </div>
    </div>     
</body>
</html>  
