<%-- 
    Document   : timKiem
    Created on : Mar 1, 2022, 10:30:58 PM
    Author     : admin
--%>

<%@page import="javax.mail.internet.MailDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
        
        <style>
            .datve{

                border-radius: 6px;
                margin: 5px 0;
                background-color: #EFEFEF; 

            }
            .bt-book{
                font-size: 200%;
                width: 70%; 
                margin: 5px 0; 
                border-radius: 6px
            }
            
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
                    <!--<a class="navbar-brand" href="home">HE151243</a>-->
                    <c:set var="a" value="${userS}"/>
                        <c:if test="${a!=null}"> 
                            <a class="navbar-brand" href="home">Welcome ${userS.username}</a>
                        </c:if>
                        <c:if test="${a==null}"> 
                            <a class="navbar-brand" href="home">HE151243 - FLIGHT</a>
                        </c:if>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="home">Home</a></li>
                        <!--<li><a href="#about">Contact</a></li>-->
                        <!--<li><a href="home?go=logout">Logout</a></li>-->
                        <c:set var="a" value="${userS}"/>
                            <c:if test="${a!=null}"> 
                            <li><a href="home?go=logout">Logout</a></li>
                            </c:if>
                            <c:if test="${a==null}"> 
                            <li><a href="account?go=login">Login</a></li>
                            </c:if>
                            <c:if test="${a.status==1}">
                            <li><a href="Edit">Admin</a></li>
                            </c:if>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>


        <section class="page-heading" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
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
<!--                    <div class="col-md-9">
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
                    </div>-->



                    <div class="col-md-9">
                        <form action="DsChuyenBay" method="post">
                            <input hidden="" name="go" value="thanhtoan">
                            <input hidden="" name="mb" value="${mb}">
                            <input hidden="" name="cb" value="${cb}">                            
                            <input hidden="" name="NL" value="${NL}">
                            <input hidden="" name="TE" value="${TE}">
                            <input hidden="" name="EB" value="${EB}">
                            <input hidden="" name="cbr" value="${cbr[0]},${cbr[1]},${cbr[2]},${cbr[3]},${cbr[4]},${cbr[5]},${cbr[6]},${cbr[7]},${cbr[8]}">                           
                            <input hidden="" name="totalPrice" value="${cbr==null ? NL*cb.price+TE*cb.price*75/100+EB*cb.price*50/100 : NL*(cb.price+cbr[7])+TE*(cb.price+cbr[7])*75/100+EB*(cb.price+cbr[7])*50/100}">
                            <div class="col-md-12 datve row">

                                <div class="col-md-7 row">
                                    <div class="col-md-12">

                                        <table style="width: 100%">
                                            <tbody>
                                                <tr>
                                                    <td colspan="2"><p>${cb.localFrom} <i class='fas fa-arrow-circle-right' style="font-size: 15px"></i> ${cb.localTo}</p></td>
                                                    <td style="padding-left: 30px"><p>Ngày bay: <fmt:formatDate pattern="dd-MM-yyyy" value="${cb.dateFrom}"/></p></td>
                                                </tr>
                                                <tr>
                                                    <td><p><img src="${hb.logo}" style="max-width: 40px; margin: 0"></p></td>
                                                    <td><p>SE1620A${cb.id}</p></td>
                                                    <td style="padding-left: 30px"><p>${cb.timeFrom} - ${cb.timeTo}</p></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3"><p>Máy bay: ${mb.getTenMayBay()} ${mb.getMaMayBay()}  </p></td>
                                                </tr>

                                                <c:set var="a" value="${cbr}"></c:set>
                                                <c:if test="${a!=null}">
                                                    <tr>
                                                        <td colspan="2"><p>${cbr[2]} <i class='fas fa-arrow-circle-right' style="font-size: 15px"></i> ${cbr[3]}</p></td>
                                                        <td style="padding-left: 30px"><p>Ngày bay: <fmt:parseDate pattern="yyyy-MM-dd" value="${cbr[6]}" var="date"/> 
                                                                                                    <fmt:formatDate pattern="dd-MM-yyyy" value="${date}"/></p></td>
                                                    </tr>
                                                    <tr>
                                                        <td><p><img src="${hbr.logo}" style="max-width: 40px; margin: 0"></p></td>
                                                        <td><p>SE1620A${cbr[0]}</p></td>
                                                        <td style="padding-left: 30px"><p>${cbr[4]} - ${cbr[5]}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3"><p>Máy bay: ${mbr.getTenMayBay()} ${mbr.getMaMayBay()}  </p></td>
                                                    </tr>
                                                </c:if>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>


                                <div class="col-md-5">
                                    <table style="width: 100%">
                                        <tbody>
                                            <tr>
                                                <td><p>Vé người lớn</p></td>
                                                <td style="padding: 0 20px"><p> x${NL}=</p></td>
                                                <td style="padding: 0 5px; text-align: right"><p>${cbr==null? NL*cb.price : NL*(cb.price+cbr[7]) }00<u>đ</u></p></td>
                                            </tr>
                                            <c:set var="te" value="${TE}"/>
                                            <c:if test="${te > 0}">
                                                <tr>
                                                    <td><p>Vé trẻ em</p></td>
                                                    <td style="padding: 0 20px"><p> x${TE}=</p></td>
                                                    <td style="padding: 0 5px; text-align: right"><p>${cbr==null? TE*cb.price*75/100 : NL*(cb.price+cbr[7])*75/100}00<u>đ</u></p></td>
                                                </tr>
                                            </c:if>
                                            <c:set var="eb" value="${EB}"/>
                                            <c:if test="${eb > 0}">
                                                <tr>
                                                    <td><p>Vé em bé</p></td>
                                                    <td style="padding: 0 20px"><p> x${EB}=</p></td>
                                                    <td style="padding: 0 5px; text-align: right"><p>${cbr==null? EB*cb.price*50/100 : NL*(cb.price+cbr[7])*50/100}00<u>đ</u></p></td>
                                                </tr>
                                            </c:if>
                                            <c:set var="totalPrice" value="${NL*(cb.price+cbr[7])+TE*(cb.price+cbr[7])*75/100+EB*(cb.price+cbr[7])*50/100}"/>
                                            <tr>
                                                <td colspan="2" style="padding:"><p>Tổng giá vé</p></td>
                                                <td style="padding:0 5px; text-align: right"><p style="color: red">${totalPrice}00<u>đ</u></p></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="col-md-12 datve">
                                <table>                                   
                                    <tbody>
                                        <tr>
                                            <td colspan="4"><p><b>Họ và tên người bay</b>(vd: Nguyễn Văn A)</p></td>
                                        </tr>
                                        <c:forEach begin="1" end="${NL}">
                                            <tr>
                                                <td>
                                                    <p><select name="gt-NL" onchange='this.form' style="font-size: 15px; width: 100%">
                                                            <option value="Anh">Anh</option>
                                                            <option value="Chị">Chị</option>
                                                            <option value="Ông">Ông</option>
                                                            <option value="Bà">Bà</option>
                                                        </select></p>
                                                </td>
                                                <td colspan="3" style="padding-left: 20px">
                                                    <p><input style="font-size: 15px; width: 125%" type="text" placeholder="Nhập họ tên..." name="nlName" required="" onchange='this.form'></p>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                        <c:set var="te" value="${TE}"/> <!--Nếu có trẻ em-->
                                        <c:if test="${te > 0}">
                                            <c:forEach begin="1" end="${TE}">
                                                <tr>
                                                    <td>
                                                        <p><select  name="gt-TE" onchange='this.form' style="font-size: 15px; width: 100%">
                                                                <option value="Trẻ em trai">Trẻ em trai</option>
                                                                <option value="Trẻ em gái">Trẻ em gái</option>
                                                            </select></p>
                                                    </td>
                                                    <td colspan="3" style="padding-left: 20px">
                                                        <p><input style="font-size: 15px; width: 125%" type="text" placeholder="Nhập họ tên..." name="teName" required="" onchange='this.form'></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <p>Ngày sinh:</p>
                                                    </td>
                                                    <td style="padding-left: 20px">
                                                        <p><select name="day-TE"  onchange='this.form' style="font-size: 15px; width: 100%">
                                                                <c:forEach begin="1" end="31" varStatus="i">
                                                                    <option value="${i.index}">${i.index}</option>
                                                                </c:forEach>
                                                            </select></p>
                                                    </td>
                                                    <td style="padding-left: 2px">
                                                        <p><select name="month-TE"  onchange='this.form' style="font-size: 15px; width: 100%">
                                                                <c:forEach begin="1" end="12" varStatus="i">
                                                                    <option value="${i.index}">${i.index}</option>
                                                                </c:forEach>
                                                            </select></p>
                                                    </td>
                                                    <td style="padding-left: 2px">
                                                        <p><select  name="year-TE" onchange='this.form' style="font-size: 15px; width: 100%">
                                                                <jsp:useBean id="now" class="java.util.Date" />
                                                                <fmt:formatDate var="year" value="${now}" pattern="yyyy" />
                                                                <c:forEach begin="${year-12}" end="${year-2}" varStatus="i">
                                                                    <option value="${i.index}">${i.index}</option>
                                                                </c:forEach>
                                                            </select></p>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:if>

                                        <c:set var="eb" value="${EB}"/><!--Nếu có em bé-->
                                        <c:if test="${eb > 0}">
                                            <c:forEach begin="1" end="${EB}">
                                                <tr>
                                                    <td>
                                                        <p><select  name="gt-EB" onchange='this.form' style="font-size: 15px; width: 100%">
                                                                <option value="Em bé trai">Em bé trai</option>
                                                                <option value="Em bé gái">Em bé gái</option>
                                                            </select></p>
                                                    </td>
                                                    <td colspan="3" style="padding-left: 20px">
                                                        <p><input style="font-size: 15px; width: 125%" type="text" placeholder="Nhập họ tên..." name="ebName" required="" onchange='this.form'></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <p>Ngày sinh:</p>
                                                    </td>
                                                    <td style="padding-left: 20px">
                                                        <p><select  name="day-EB" onchange='this.form' style="font-size: 15px; width: 100%">
                                                                <c:forEach begin="1" end="31" varStatus="i">
                                                                    <option value="${i.index}">${i.index}</option>
                                                                </c:forEach>
                                                            </select></p>
                                                    </td>
                                                    <td style="padding-left: 2px">
                                                        <p><select name="month-EB"  onchange='this.form' style="font-size: 15px; width: 100%">
                                                                <c:forEach begin="1" end="12" varStatus="i">
                                                                    <option value="${i.index}">${i.index}</option>
                                                                </c:forEach>
                                                            </select></p>
                                                    </td>
                                                    <td style="padding-left: 2px">
                                                        <p><select  name="year-EB" onchange='this.form' style="font-size: 15px; width: 100%">

                                                                <fmt:formatDate var="year" value="${now}" pattern="yyyy" />
                                                                <c:forEach begin="${year-2}" end="${year}" varStatus="i">
                                                                    <option value="${i.index}">${i.index}</option>
                                                                </c:forEach>
                                                            </select></p>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </c:if>
                                    </tbody>
                                </table>
                            </div>

                            <div class="col-md-12 datve">
                                <table>                                  
                                    <tbody>
                                        <tr>
                                            <td colspan="2"><p><b>Thông tin liên hệ</b></p></td>                                          
                                        </tr>
                                        <tr>
                                            <td><p>Tên liên hệ</p></td>
                                            <td style="padding-left: 30px">
                                                <p><input style="font-size: 15px; width: 150%" type="text" placeholder="Nhập tên liên hệ..." name="tenNDV" required="" onchange='this.form'></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><p>Điện thoại</p></td>
                                            <td style="padding-left: 30px">
                                                <p><input style="font-size: 15px; width: 150%" type="text" placeholder="Nhập số điện thoại..." name="sdtNDV" required="" onchange='this.form'></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><p>Email</p></td>
                                            <td style="padding-left: 30px">
                                                <p><input style="font-size: 15px; width: 150%" type="text" placeholder="Không bắt buộc..." name="emailNDV" onchange='this.form'></p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="col-md-12" style="text-align: center">
                                <button type="submit" class="btn btn-primary bt-book">Đặt Vé</button>
                            </div>
                        </form>

<!--                        <div class="col-md-12" style="text-align: center">
                            <form>
                                <button type="submit" class="btn btn-primary bt-book">Chọn lại chuyến bay</button>
                            </form>
                        </div>-->

                    </div>



                    <div class="col-md-3 section-heading" style="font-size: 1.5rem">
                        <div class="section-heading">
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

                                            <div class="col-md-12">
                                                <fieldset>
                                                    <label for="NguoiLon">Người lớn</label>
                                                    <input name="NguoiLon" type="number" class="form-control SoNguoi" id="NguoiLon" placeholder="Số người..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12">
                                                <fieldset>
                                                    <label for="TreEm">Trẻ em</label>
                                                    <input name="TreEm" type="number" class="form-control SoNguoi" id="TreEm" placeholder="Số người..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12">
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

<!--                    <div class="col-md-6">
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
                    </div>-->
                </div>
            </div>
        </section>



<!--        <section class="contact-form">
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
        </section>-->



<!--        <section class="map">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="map">
                             How to change your own map point
                                1. Go to Google Maps
                                2. Click on your location point
                                3. Click "Share" and choose "Embed map" tab
                                4. Copy only URL and paste it within the src="" field below
                            
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7895.485196115994!2d103.85995441789784!3d1.2880401763270322!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7fb4e58ad9cd826e!2sSingapore+Flyer!5e0!3m2!1sen!2sth!4v1505825620371" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>-->



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

<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.html">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/tooplate-style.css">
        <link rel="Shortcut Icon" href="img/logo-i.png"  type="img/x-icon" /> 

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>-->
<!--        <div style="width: 60%">
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
                    <th class="th-sm">Giá vé
                    </th>
                </tr>
            </thead>
            <tbody>
<c:forEach var="cb" items="${listCb}" varStatus="i">
<tr>
    <td>${i.index+1}</td>
    <td>${cb.name}</td>
    <td>${cb.timeFrom}</td>
    <td>${cb.timeTo}</td>
    <td>${cb.dateFrom}</td>
    <td>${cb.price}00đ</td>
</tr>
</c:forEach>
    
</tbody>
<tfoot>
</div>-->

<!--            <script src="../../../ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

            <script src="js/vendor/bootstrap.min.js"></script>

            <script src="js/datepicker.js"></script>
            <script src="js/plugins.js"></script>
            <script src="js/main.js"></script>

            <script src="../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript">-->
<!--                $(document).ready(function () {
                    $('#dtVerticalScrollExample').DataTable({
                        "scrollY": "200px",
                        "scrollCollapse": true,
                    });
                    $('.dataTables_length').addClass('bs-select');
                });-->

<!--        </body>
        </html>-->
