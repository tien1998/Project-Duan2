<%-- 
    Document   : sualoaihinh-content
    Created on : Dec 2, 2018, 2:20:49 AM
    Author     : QUOCTRONG
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href='<%=request.getContextPath()%>/resources/css/bootstrap.min.css'/>

    </head>
    <body>


        <!------ Include the above in your HEAD tag ---------->

        <form:form  method="POST" action="" items="${NAME_CATEGORY}"  class="form-horizontal">

            <fieldset>

                <!--  -->

                <div class="form-group">
                    <label class="col-md-4 control-label" >ID</label>  
                    <div class="col-md-4">
                        <input   name="id" readonly="" type="text" placeholder="ID" value="${NAME_CATEGORY.id}" class="form-control input-md" required="true"/>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" >TÊN LOẠI HÌNH CŨ</label>  
                    <div class="col-md-4">
                        <input   name="nameold" readonly="" type="text" placeholder="Nhập tên loại hình mới" value="${NAME_CATEGORY.name}" class="form-control input-md" required="true"/>

                    </div>
                </div>        
                <div class="form-group">
                    <label class="col-md-4 control-label" >TÊN LOẠI HÌNH MỚI</label>  
                    <div class="col-md-4">
                        <input   name="name" type="text" placeholder="Nhập tên loại hình mới" value="${STAFFS.username}" class="form-control input-md" required="true"/>

                    </div>
                </div>



                <div class="form-group">

                    <div class="col-md-4">
                        <input type="submit" class="btn btn-primary" style="margin-left: 150%" value="CẬP NHẬT">

                    </div>
                </div>

            </fieldset>

        </form:form>


    </body>
</html>

