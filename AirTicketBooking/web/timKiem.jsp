<%-- 
    Document   : timKiem
    Created on : Mar 1, 2022, 10:30:58 PM
    Author     : admin
--%>

<%@page import="model.ChuyenBay"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <!-- Mirrored from www.tooplate.com/templates/2093_flight/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 May 2018 11:20:22 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <!--
        
        Template 2093 Flight
        
        http://www.tooplate.com/view/2093-flight
        
        -->
        <title>Flight - Contact Page</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.html">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/tooplate-style.css">
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="Shortcut Icon" href="img/logo-i.png"  type="img/x-icon" /> 

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">



        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Spectral:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
        
        

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

        <style>
            @media (min-width: 768px){
                .navbar-nav{
                    margin: 0 auto;
                    display: table;
                    table-layout: fixed;
                    float:none;
                }
            }
        </style>

    </head>

    <body>
        
        <div class="navbar navbar-inverse navbar-fixed">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    
                </div>
                <div class="collapse navbar-collapse">
                    <a class="navbar-brand" href="index.html">HE151243</a>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="#about">Contact</a></li>
                        <li><a href="index.html">Logout</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>


        <section class="page-heading" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="logo">
                            <img src="img/logo.png" alt="Flight Template">
                        </div>
                    </div>
<!--                    <div class="col-md-6">
                        <div class="page-direction-button">
                            <a href="index.html"><i class="fa fa-home"></i>Go Back Home</a>
                        </div>
                    </div>-->
                </div>
            </div>
        </section>



        <section class="contact-us">
            <div class="container">

                <div class="row">
                    <div class="col-md-9">
                        <div class="section-heading">
                            <h2>Các chuyến bay</h2>
                            <p> Pellentesque quis turpis et lectus auctor gravida ut vel orci. Proin et tempus nunc. Proin sed justo neque. Donec et tempus ligula, et gravida elit. Vivamus vitae placerat metus.</p>
                        </div>
                    </div>



                    <div class="col-md-3">
                        <div class="section-heading">
                            <h2>Tùy Chọn</h2>
                            <p> Pellentesque quis turpis et lectus auctor gravida ut vel orci. Proin et tempus nunc. Proin sed justo neque. Donec et tempus ligula, et gravida elit. Vivamus vitae placerat metus.</p>
                        </div>
                    </div>


                    <c:set var="trip" value="${tripSTT}"/>
                    <c:if test="${trip==null}">                  <!-- Một chiều -->
                        <c:set var="listFrom" value="${listCb}"/>
                        <c:if test="${listFrom.isEmpty()}">
                            <div class="col-md-9">
                                <h1 style="text-align: center"><b>${from} <i class='fas fa-arrow-circle-right' style="font-size: 15px"></i> ${to}</b></h1>
                                <h1 style="text-align: center"><b>Rất tiếc! Hiện tại không còn chuyến bay nào!</b></h1>
                            </div>
                        </c:if>
                        <c:if test="${!listFrom.isEmpty()}">
                            <div class="col-md-8 " style="font-size: 1.2rem">
                                <form action="DsChuyenBay" method="post">    
                                    <input hidden="" value="booking" name="go">
                                    <input hidden="" name="cus" value="${cus}">
                                    <table id="dtDynamicVerticalScrollExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th colspan="7">
                                                    <h1 style="text-align: center"><b>${from} <i class='fas fa-arrow-circle-right' style="font-size: 15px"></i> ${to}</b></h1>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th class="th-sm">Số thứ tự 
                                                </th>
                                                <th class="th-sm">Hãng bay
                                                </th>                   
                                                <th class="th-sm">Thời gian đi
                                                </th>
                                                <th class="th-sm">Thời gian đến
                                                </th>
                                                <th colspan="2" class="th-sm">Ngày khởi hành
                                                </th>
                                                <th  class="th-sm">Giá vé
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody id="data">
                                            <c:forEach var="cb" items="${listCb}" varStatus="i">
                                                <tr>
                                                    <td>${i.index+1}</td>
                                                    <td>${cb.name}</td>
                                                    <td>${cb.timeFrom}</td>
                                                    <td>${cb.timeTo}</td>
                                                    <td colspan="2">${cb.dateFrom}</td>
                                                    <td>${cb.price}00đ</td>
                                                    <td><button class="btn-danger" style="border-radius: 6px; font-size: 15px" name="bookingInfo" value="${cb},${cus}"> Chọn Vé</button></td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </form>
                            </div>
                        </c:if>
                    </c:if>
                    <c:set var="trip" value="${tripSTT}"/>
                    <c:if test="${trip!=null}">                          <!--Khứ hồi-->

                        <div class=" col-md-8 col-xs-12 col-sm-12" style="font-size: 1.2rem">

                            <form action="DsChuyenBay" method="post">
                                <input hidden="" name="go" value="booking">
                                <input hidden="" name="cus" value="${cus}">
                                <table style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th class="th-sm" id="titleFrom" style="text-align: center; font-size: 2rem">
                                                <b>Chiều đi: ${from} <i class='fas fa-arrow-circle-right' style="font-size: 15px"></i> ${to}</b>
                                            </th>
                                            <th id="titleReturn" hidden="" class="th-sm" style="text-align: center; font-size: 2rem">
                                                <b>Chiều về: ${to} <i class='fas fa-arrow-circle-right' style="font-size: 15px"></i> ${from}</b>
                                            </th>                   

                                        </tr>
                                    </thead>
                                    <tbody >
                                        <tr>
                                            <td style="padding: 0 5px" id="dataFrom"> <!-- Chiều đi-->
                                                <c:set var="listFrom" value="${listCb}"/>
                                                <c:if test="${listFrom.isEmpty()}">
                                                    <h1><b>Rất tiếc! Hiện tại không còn chuyến bay nào!</b></h1>
                                                </c:if>
                                                <c:if test="${!listFrom.isEmpty()}">
                                                    <table id="dtDynamicVerticalScrollExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                                                        <thead>
                                                            <tr>
                                                                <th class="th-sm">Số thứ tự
                                                                </th>
                                                                <th class="th-sm">Hãng bay
                                                                </th>                   
                                                                <th class="th-sm">Thời gian đi
                                                                </th>
                                                                <th class="th-sm">Thời gian đến
                                                                </th>
                                                                <th class="th-sm">Ngày khởi hành
                                                                </th>
                                                                <th class="th-sm" colspan="2" style="text-align: center">Giá vé
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="dataTo">
                                                            <c:forEach var="cb" items="${listCb}" varStatus="i">
                                                                <tr>
                                                                    <td>${i.index+1}</td>
                                                                    <td>${cb.name}</td>
                                                                    <td>${cb.timeFrom}</td>
                                                                    <td>${cb.timeTo}</td>
                                                                    <td>${cb.dateFrom}</td>
                                                                    <td>${cb.price}00đ</td>
                                                                    <td><button type="button" class="btn-danger" onclick="fromm('${cb}')" style="border-radius: 6px;" name="bookingInfo" value=""> Chọn Vé</button></td>
                                                                </tr>
                                                            </c:forEach>

                                                        </tbody>
                                                    </table>
                                                    <input hidden="" id="paramFrom" name="bookingInfo">

                                                </c:if>

                                            </td>
                                            <td id="dataReturn" hidden="" style="padding: 0 5px"> <!-- Chiều về -->
                                                <c:set var="listReturn" value="${listCbReturn}"/>
                                                <c:if test="${listReturn.isEmpty()}">
                                                    <h1 style="text-align: center"><b>Rất tiếc! Hiện tại không còn chuyến bay nào!</b></h1>
                                                </c:if>
                                                <c:if test="${!listReturn.isEmpty()}">
                                                    <table id="dtDynamicVerticalScrollExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
                                                        <thead>
                                                            <tr>
                                                                <th class="th-sm">Số thứ tự
                                                                </th>
                                                                <th class="th-sm">Hãng bay
                                                                </th>                   
                                                                <th class="th-sm">Thời gian đi
                                                                </th>
                                                                <th class="th-sm">Thời gian đến
                                                                </th>
                                                                <th class="th-sm">Ngày khởi hành
                                                                </th>
                                                                <th colspan="2" class="th-sm" style="text-align: center">Giá vé
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="dataReturn">
                                                            <c:forEach var="cbr" items="${listCbReturn}" varStatus="i">
                                                                <tr>
                                                                    <td>${i.index+1}</td>
                                                                    <td>${cbr.name}</td>
                                                                    <td>${cbr.timeFrom}</td>
                                                                    <td>${cbr.timeTo}</td>
                                                                    <td>${cbr.dateFrom}</td>
                                                                    <td>${cbr.price}00đ</td>
                                                                    <td style="text-align: center">
                                                                        <button class="btn-danger" style="border-radius: 6px;" name="bookingInfoReturn" value="${cbr}"> Đặt Vé</button> 
                                                                        <button type="button" class="btn-danger" onclick="selectFromAgain()" style="border-radius: 6px;" > Chọn chiều đi</button>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>



                        </div>

                    </c:if>

                    <div class="col-md-4  col-xs-12 col-sm-12" style="font-size: 1.5rem">
                        <div class="section-heading">
                            <div class="filters" style="margin-bottom: 10px"> <button class="btn btn-success" type="button" data-toggle="collapse" data-target="#mobile-filter" aria-expanded="true" aria-controls="mobile-filter">Bộ Lọc<span class="px-1 fas fa-filter"></span></button> </div>
                            <!--                            <div id="mobile-filter">
                                                            <div class="py-3">
                                                                <h5 class="font-weight-bold">Categories</h5>
                                                                <ul class="list-group">
                                                                    <li class="list-group-item list-group-item-action d-flex justify-content-between align-items-center category"> vegetables <span class="badge badge-primary badge-pill">328</span> </li>
                                                                    <li class="list-group-item list-group-item-action d-flex justify-content-between align-items-center category"> Fruits <span class="badge badge-primary badge-pill">112</span> </li>
                                                                    <li class="list-group-item list-group-item-action d-flex justify-content-between align-items-center category"> Kitchen Accessories <span class="badge badge-primary badge-pill">32</span> </li>
                                                                    <li class="list-group-item list-group-item-action d-flex justify-content-between align-items-center category"> Chefs Tips <span class="badge badge-primary badge-pill">48</span> </li>
                                                                </ul>
                                                            </div>
                                                            <div class="py-3">
                                                                <h5 class="font-weight-bold">Brands</h5>
                                                                <form class="brand">
                                                                    <div class="form-inline d-flex align-items-center py-1"> <label class="tick">Royal Fields <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                    <div class="form-inline d-flex align-items-center py-1"> <label class="tick">Crasmas Fields <input type="checkbox" checked> <span class="check"></span> </label> </div>
                                                                    <div class="form-inline d-flex align-items-center py-1"> <label class="tick">Vegetarisma Farm <input type="checkbox" checked> <span class="check"></span> </label> </div>
                                                                    <div class="form-inline d-flex align-items-center py-1"> <label class="tick">Farmar Field Eve <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                    <div class="form-inline d-flex align-items-center py-1"> <label class="tick">True Farmar Steve <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                </form>
                                                            </div>
                                                            <div class="py-3">
                                                                <h5 class="font-weight-bold">Rating</h5>
                                                                <form class="rating">
                                                                    <div class="form-inline d-flex align-items-center py-2"> <label class="tick"><span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                    <div class="form-inline d-flex align-items-center py-2"> <label class="tick"> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star px-1 text-muted"></span> <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                    <div class="form-inline d-flex align-items-center py-2"> <label class="tick"><span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                    <div class="form-inline d-flex align-items-center py-2"> <label class="tick"><span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                    <div class="form-inline d-flex align-items-center py-2"> <label class="tick"> <span class="fas fa-star"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                </form>
                                                            </div>
                                                        </div>-->
                            <div class="content py-md-0 py-3" style="border: groove; background: #f9f9f9;">
                                <section id="sidebar">
                                    <div class="py-3">
                                        <h5 class="font-weight-bold">Sắp xếp</h5>
                                        <form class="brand" style="border: groove; margin: 5px; background: white">
                                            <!--                                            <input type="radio" name="sx" value="totaltime" onclick="sapxep1('totaltime');"> totaltime
                                                                                        <input type="radio" name="sx" value="price" onclick="sapxep1('price');"> price
                                                                                        <input type="radio" name="sx" value="timeFrom" onclick="sapxep1('timeFrom');"> timeFrom
                                                                                        <input type="radio" name="sx" value="brand" onclick="sapxep1('brand');"> brand-->
                                            <div class="form-inline d-flex align-items-center py-1"> <label class="tick"><input type="radio" name="sx" value="totaltime" onclick="sapxep('totaltime', '${tripSTT}', '${from}', '${to}', '${dateFrom}', '${dateReturn}', '${totalSeat}', '${cus}');"> <span class="check">Tổng thời gian bay </span> </label> </div>
                                            <div class="form-inline d-flex align-items-center py-1"> <label class="tick"><input type="radio" name="sx" value="price" onclick="sapxep('price', '${tripSTT}', '${from}', '${to}', '${dateFrom}', '${dateReturn}', '${totalSeat}', '${cus}');"> <span class="check"> Giá(Thấp tới Cao) </span> </label> </div>
                                            <div class="form-inline d-flex align-items-center py-1"> <label class="tick"><input type="radio" name="sx" value="timeFrom" onclick="sapxep('timeFrom', '${tripSTT}', '${from}', '${to}', '${dateFrom}', '${dateReturn}', '${totalSeat}', '${cus}');"> <span class="check">Thời gian khởi hành </span> </label> </div>
                                            <div class="form-inline d-flex align-items-center py-1"> <label class="tick"><input type="radio" name="sx" value="brand" onclick="sapxep('brand', '${tripSTT}', '${from}', '${to}', '${dateFrom}', '${dateReturn}', '${totalSeat}', '${cus}');"> <span class="check">Hãng hàng không </span> </label> </div>
                                        </form>
                                    </div>
                                    <div class="py-3">
                                        <h5 class="font-weight-bold">Chọn Lọc</h5>
                                        <form class="brand" style="border: groove; margin: 5px; background: white">
                                            <div class="form-inline d-flex align-items-center py-1"> <label class="tick"><input type="checkbox"> <span class="check">Vietnam Airlines </span> </label> </div>
                                            <div class="form-inline d-flex align-items-center py-1"> <label class="tick"><input type="checkbox" checked>BamBoo Airways  <span class="check"></span> </label> </div>
                                            <div class="form-inline d-flex align-items-center py-1"> <label class="tick"><input type="checkbox" checked> <span class="check">VietjetAir </span> </label> </div>
                                            <div class="form-inline d-flex align-items-center py-1"> <label class="tick"><input type="checkbox"> <span class="check">Vietravel Airlines	 </span> </label> </div>
                                        </form>
                                    </div>
                                    <!--                                    <div class="py-3">
                                                                            <h5 class="font-weight-bold">Rating</h5>
                                                                            <form class="rating">
                                                                                <div class="form-inline d-flex align-items-center py-2"> <label class="tick"><span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                                <div class="form-inline d-flex align-items-center py-2"> <label class="tick"> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star px-1 text-muted"></span> <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                                <div class="form-inline d-flex align-items-center py-2"> <label class="tick"><span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                                <div class="form-inline d-flex align-items-center py-2"> <label class="tick"><span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                                <div class="form-inline d-flex align-items-center py-2"> <label class="tick"> <span class="fas fa-star"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <span class="far fa-star px-1 text-muted"></span> <input type="checkbox"> <span class="check"></span> </label> </div>
                                                                            </form>
                                                                        </div>-->
                                </section>
                            </div>
                        </div>
                        <section id="first-tab-group" class="tabgroup" style="margin-top: 10px; background-color: rgba(250, 250, 250, 0.95);">
                            <div id="tab1">
                                <div class="submit-form">

                                    <h4 style="text-align: center">Đặt Vé Khác</h4>
                                    <form id="form-submit" action="DsChuyenBay" method="get">
                                        <input hidden="" name="go" value="booking">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <fieldset>
                                                    <label for="from">Điểm khởi hành:</label>
                                                    <select required name='from' onchange='this.form'>
                                                        <option value="">Chọn địa điểm...</option>
                                                        <option value="HaNoi">Hà Nội</option>
                                                        <option value="HaiPhong">Hải Phòng</option>
                                                        <option value="TP.HCM">TP.HCM</option>
                                                        <option value="DaNang">Đà Nẵng</option>
                                                        <option value="PhuQuoc">Phú Quốc</option>
                                                        <option value="CanTho">Cần Thơ</option>
                                                        <option value="QuyNhon">Quy Nhơn</option>
                                                        <option value="DienBien">Điện Biên</option>
                                                        <option value="ConDao">Côn Đảo</option>
                                                        <option value="NhaTrang">Nha Trang</option>
                                                    </select>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-6">
                                                <fieldset>
                                                    <label for="to">Điểm đến:</label>
                                                    <select required name='to' onchange='this.form'>
                                                        <option value="">Chọn địa điểm...</option>
                                                        <option value="HaNoi">Hà Nội</option>
                                                        <option value="HaiPhong">Hải Phòng</option>
                                                        <option value="TP.HCM">TP.HCM</option>
                                                        <option value="DaNang">Đà Nẵng</option>
                                                        <option value="PhuQuoc">Phú Quốc</option>
                                                        <option value="CanTho">Cần Thơ</option>
                                                        <option value="QuyNhon">Quy Nhơn</option>
                                                        <option value="DienBien">Điện Biên</option>
                                                        <option value="ConDao">Côn Đảo</option>
                                                        <option value="NhaTrang">Nha Trang</option>
                                                    </select>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12">
                                                <fieldset>
                                                    <label for="timeFrom">Ngày đi:</label>
                                                    <input name="timeFrom" type="text" class="form-control date" id="timeFrom" placeholder="Chọn ngày..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12">
                                                <fieldset id="invoiceDetails" class="invoice status hidden">
                                                    <label for="timeReturn">Ngày về:</label>
                                                    <input name="timeReturn"  type="text" class="form-control date" id="timeReturn" placeholder="Chọn ngày..."  onchange='this.form'>
                                                </fieldset>
                                            </div>

                                            <div class="col-md-4">
                                                <fieldset>
                                                    <label for="NguoiLon">Người lớn</label>
                                                    <input name="NguoiLon" type="number" class="form-control SoNguoi" id="NguoiLon" placeholder="Số người..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-4">
                                                <fieldset>
                                                    <label for="TreEm">Trẻ em</label>
                                                    <input name="TreEm" type="number" class="form-control SoNguoi" id="TreEm" placeholder="Số người..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-4">
                                                <fieldset>
                                                    <label for="EmBe">Em bé</label>
                                                    <input name="EmBe" type="number" class="form-control SoNguoi" id="EmBe" placeholder="Số người..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="radio-select">
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <label for="round" >Khứ hồi</label>
                                                            <input type="checkbox" class="k-checkbox" onclick="timeRe()" id="chkInvoiceStatusActive" asp-for="InvoiceStatus" data-rel="invoiceDetails" name="trip" id="round" value="round" onchange="this.form">
                                                        </div>
                                                        <!--                                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                                                                                                <label for="oneway" style="font-size: 11px">Một chiều</label>
                                                                                                                <input type="radio" name="trip" id="oneway" value="one-way" required="required"onchange='this.form.()'>
                                                                                                            </div>-->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <fieldset>
                                                    <button type="submit" id="form-submit" class="btn">Tìm kiếm</button>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </section>
                    </div>

                    <div class="col-md-6">
                        <img src="img/contact-01.jpg" alt="">
                    </div>
                    <div class="col-md-6">
                        <img src="img/contact-02.jpg" alt="">
                    </div>
                    <div class="col-md-4">
                        <h6>Proin dignissim rhoncus</h6>
                        <p>Aliquam elit metus, varius in ligula sed, posuere aliquam nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis vel rhoncus lectus.</p>
                    </div>
                    <div class="col-md-4">
                        <h6>Duis vehicula quis elit</h6>
                        <p>Donec nisl felis, eleifend eu diam ut, condimentum finibus erat. Aliquam luctus commodo ultricies. Etiam in tellus mi. Nam lobortis est magna, et rutrum ipsum lacinia id.</p>
                    </div>
                    <div class="col-md-4">
                        <h6>Duis vel rhoncus lectus</h6>
                        <p>Mauris aliquet eget lorem a tempor. Morbi in dui sed orci placerat ultrices sed a mi. Praesent eget porttitor enim. In tempor eros mi. Morbi a lobortis ante. Sed blandit vitae diam commodo ultricies.</p>
                    </div>
                </div>
            </div>
        </section>



        <section class="contact-form">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h2>Leave us a message</h2>
                        </div>
                    </div>
                    <div class="col-md-6 col-md-offset-3">
                        <form id="contact" action="#" method="post">
                            <div class="row">
                                <div class="col-md-6">
                                    <fieldset>
                                        <input name="name" type="text" class="form-control" id="name" placeholder="Your name..." required="">
                                    </fieldset>
                                </div>
                                <div class="col-md-6">
                                    <fieldset>
                                        <input name="email" type="text" class="form-control" id="email" placeholder="Your email..." required="">
                                    </fieldset>
                                </div>
                                <div class="col-md-12">
                                    <fieldset>
                                        <textarea name="message" rows="6" class="form-control" id="message" placeholder="Your message..." required=""></textarea>
                                    </fieldset>
                                </div>
                                <div class="col-md-12">
                                    <fieldset>
                                        <button type="submit" id="form-submit" class="btn">Submit Your Message</button>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>



        <section class="map">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="map">
                            <!-- How to change your own map point
                                1. Go to Google Maps
                                2. Click on your location point
                                3. Click "Share" and choose "Embed map" tab
                                4. Copy only URL and paste it within the src="" field below
                            -->
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7895.485196115994!2d103.85995441789784!3d1.2880401763270322!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7fb4e58ad9cd826e!2sSingapore+Flyer!5e0!3m2!1sen!2sth!4v1505825620371" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="primary-button">
                            <a href="#" class="scroll-top">Back To Top</a>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <ul class="social-icons">
                            <li><a href="https://www.facebook.com/tooplate"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-md-12">
                        <p>Copyright &copy; 2018 Flight Tour and Travel Company</p>
                    </div>
                </div>
            </div>
        </footer>





        <script src="../../../ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/datepicker.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">

                                                                function selectFromAgain() {
                                                                    document.getElementById("titleFrom").removeAttribute("hidden");
                                                                    document.getElementById("dataFrom").removeAttribute("hidden");
                                                                    document.getElementById("titleReturn").setAttribute("hidden", "hidden");
                                                                    document.getElementById("dataReturn").setAttribute("hidden", "hidden");
                                                                }

                                                                function fromm(cb) {

                                                                    document.getElementById("titleReturn").removeAttribute("hidden");
                                                                    document.getElementById("dataReturn").removeAttribute("hidden");
                                                                    document.getElementById("titleFrom").setAttribute("hidden", "hidden");
                                                                    document.getElementById("dataFrom").setAttribute("hidden", "hidden");
                                                                    document.getElementById("paramFrom").setAttribute("value", cb);

                                                                }

                                                                function sapxep1(ip, localFrom, localTo, dateFrom, dateReturn, totalSeat, cus) {
                                                                    $.ajax({
                                                                        url: "/AirTicketBooking/filterControl",
                                                                        type: "get", //send it through get method
                                                                        data: {
                                                                            service: 'round',
                                                                            inputValue: ip,
                                                                            localFrom: localFrom,
                                                                            localTo: localTo,
                                                                            dateFrom: dateFrom,
                                                                            dateReturn: dateReturn,
                                                                            totalSeat: totalSeat,
                                                                            cus: cus,
                                                                        },
                                                                        success: function (response) {
                                                                            //Do Something
                                                                            document.getElementById("dataReturn").innerHTML = response;
                                                                        },
                                                                        error: function (xhr) {
                                                                            //Do Something to handle error
                                                                        }
                                                                    });
                                                                }

                                                                function sapxep(ip, tripSTT, localFrom, localTo, dateFrom, dateReturn, totalSeat, cus) {
                                                                    $.ajax({
                                                                        url: "/AirTicketBooking/filterControl",
                                                                        type: "get", //send it through get method
                                                                        data: {
                                                                            tripSTT: tripSTT,
                                                                            service: 'oneWay',
                                                                            inputValue: ip,
                                                                            localFrom: localFrom,
                                                                            localTo: localTo,
                                                                            dateFrom: dateFrom,
                                                                            dateReturn: dateReturn,
                                                                            totalSeat: totalSeat,
                                                                            cus: cus,
                                                                        },
                                                                        success: function (response) {
                                                                            //Do Something
                                                                            if (tripSTT == '') {
                                                                                document.getElementById("data").innerHTML = response;
                                                                            }

                                                                            if (tripSTT != '') {
                                                                                document.getElementById("dataTo").innerHTML = response;
                                                                                sapxep1(ip, localFrom, localTo, dateFrom, dateReturn, totalSeat, cus);
                                                                            }



                                                                        },
                                                                        error: function (xhr) {
                                                                            //Do Something to handle error
                                                                        }
                                                                    });
                                                                }

                                                                function timeRe() {
                                                                    $(function () {
                                                                        $("input[type='checkbox']").each(function (i, el) {
                                                                            var chk = $(el);
                                                                            if (chk.is(":checked")) {
                                                                                document.getElementById("timeReturn").setAttribute("required", "required");
                                                                            }
                                                                        });
                                                                        $("input[type='checkbox']").change(function (e) {
                                                                            if ($(this).is(":checked")) {
                                                                                document.getElementById("timeReturn").setAttribute("required", "required");
                                                                            } else {
                                                                                document.getElementById("timeReturn").removeAttribute("required");
                                                                            }
                                                                        });
                                                                    });
                                                                }

                                                                $(function () {
                                                                    $("input[type='checkbox']").each(function (i, el) {
                                                                        var chk = $(el);
                                                                        if (chk.is(":checked")) {
                                                                            $("#" + chk.data("rel")).removeClass("hidden");
                                                                        }
                                                                    });
                                                                    $("input[type='checkbox']").change(function (e) {
                                                                        if ($(this).is(":checked")) {
                                                                            $("#" + $(this).data("rel")).removeClass("hidden");
                                                                        } else {
                                                                            $("#" + $(this).data("rel")).addClass("hidden");
                                                                        }
                                                                    });
                                                                });
                                                                $(document).ready(function () {
                                                                    // navigation click actions 
                                                                    $('.scroll-link').on('click', function (event) {
                                                                        event.preventDefault();
                                                                        var sectionID = $(this).attr("data-id");
                                                                        scrollToID('#' + sectionID, 750);
                                                                    });
                                                                    // scroll to top action
                                                                    $('.scroll-top').on('click', function (event) {
                                                                        event.preventDefault();
                                                                        $('html, body').animate({scrollTop: 0}, 'slow');
                                                                    });
                                                                    // mobile nav toggle
                                                                    $('#nav-toggle').on('click', function (event) {
                                                                        event.preventDefault();
                                                                        $('#main-nav').toggleClass("open");
                                                                    });
                                                                });
                                                                // scroll function
                                                                function scrollToID(id, speed) {
                                                                    var offSet = 0;
                                                                    var targetOffset = $(id).offset().top - offSet;
                                                                    var mainNav = $('#main-nav');
                                                                    $('html,body').animate({scrollTop: targetOffset}, speed);
                                                                    if (mainNav.hasClass("open")) {
                                                                        mainNav.css("height", "1px").removeClass("in").addClass("collapse");
                                                                        mainNav.removeClass("open");
                                                                    }
                                                                }
                                                                if (typeof console === "undefined") {
                                                                    console = {
                                                                        log: function () { }
                                                                    };
                                                                }

                                                                $(document).ready(function () {
                                                                    $('#dtVerticalScrollExample').DataTable({
                                                                        "scrollY": "200px",
                                                                        "scrollCollapse": true,
                                                                    });
                                                                    $('.dataTables_length').addClass('bs-select');
                                                                });
                                                                $(document).ready(function () {



                                                                    // navigation click actions 
                                                                    $('.scroll-link').on('click', function (event) {
                                                                        event.preventDefault();
                                                                        var sectionID = $(this).attr("data-id");
                                                                        scrollToID('#' + sectionID, 750);
                                                                    });
                                                                    // scroll to top action
                                                                    $('.scroll-top').on('click', function (event) {
                                                                        event.preventDefault();
                                                                        $('html, body').animate({scrollTop: 0}, 'slow');
                                                                    });
                                                                    // mobile nav toggle
                                                                    $('#nav-toggle').on('click', function (event) {
                                                                        event.preventDefault();
                                                                        $('#main-nav').toggleClass("open");
                                                                    });
                                                                });
                                                                // scroll function
                                                                function scrollToID(id, speed) {
                                                                    var offSet = 0;
                                                                    var targetOffset = $(id).offset().top - offSet;
                                                                    var mainNav = $('#main-nav');
                                                                    $('html,body').animate({scrollTop: targetOffset}, speed);
                                                                    if (mainNav.hasClass("open")) {
                                                                        mainNav.css("height", "1px").removeClass("in").addClass("collapse");
                                                                        mainNav.removeClass("open");
                                                                    }
                                                                }
                                                                if (typeof console === "undefined") {
                                                                    console = {
                                                                        log: function () { }
                                                                    };
                                                                }

                                                                $(document).ready(function () {
                                                                    $('#dtVerticalScrollExample').DataTable({
                                                                        "scrollY": "200px",
                                                                        "scrollCollapse": true,
                                                                    });
                                                                    $('.dataTables_length').addClass('bs-select');
                                                                });
        </script>
    </body>

    <!-- Mirrored from www.tooplate.com/templates/2093_flight/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 May 2018 11:20:28 GMT -->
</html>


