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

        <form:form  method="POST" action="" items="${POSTER}" modelAttribute="poster" enctype="multipart/form-data" class="form-horizontal">

            <fieldset>

                <!--  -->
                <div class="form-group">
                    <label class="col-md-4 control-label" >TIÊU ĐỀ</label>  
                    <div class="col-md-4">
                        <input   name="title" type="text" placeholder="" value="${POSTER.title}" class="form-control input-md" required="true"/>

                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-md-4 control-label" >TÊN LOẠI HÌNH</label>  
                    <div class="col-md-4">
                        <select name ="category.id" class="form-control input-md">
                            <c:forEach var ="item" items="${COMBOBOX}">
                                <option value="${item.id}"">${item.name}</option>
                            </c:forEach>
                        </select>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" >TÊN NGƯỜI GỬI</label>  
                    <div class="col-md-4">
                        <input   name="name" type="text" placeholder="" value="${POSTER.name}" class="form-control input-md" required="true"/>

                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" >E-MAIL NGƯỜI GỬI</label>  
                    <div class="col-md-4">
                        <input   name="email" type="text" placeholder="" value="${POSTER.email}" class="form-control input-md" required="true"/>

                    </div>
                </div>
                        <div class="form-group">
                    <label class="col-md-4 control-label" >NỘI DUNG</label>  
                    <div class="col-md-4">
                        <input   name="info" type="text" placeholder="" value="${POSTER.info}" class="form-control input-md" required="true"/>

                    </div>
                </div>
                        <div class="form-group">
                    <label class="col-md-4 control-label" >ẢNH</label>  
                    <div class="col-md-4">
                        <input   name="file" type="file" value="" class="form-control input-md" required="true"/>

                    </div>
                </div>
                        <div class="form-group">
                    <label class="col-md-4 control-label" >ĐỊA CHỈ</label>  
                    <div class="col-md-4">
                        <input   name="address" type="text" placeholder="" value="${POSTER.address}" class="form-control input-md" required="true"/>

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

