<%-- 
    Document   : home
    Created on : Mar 11, 2022, 5:32:32 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <!-- Mirrored from www.tooplate.com/templates/2093_flight/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 May 2018 10:39:09 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <!--
        
        Template 2093 Flight
        
        http://www.tooplate.com/view/2093-flight
        
        -->
        <title>Flight - HE151243</title>

        <meta name="description" content="">
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
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
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
                    <a class="navbar-brand" href="#"> 
                        <c:set var="a" value="${userS}"/>
                        <c:if test="${a!=null}"> 
                            <a class="navbar-brand" href="home">Welcome ${userS.username}</a>
                        </c:if>
                        <c:if test="${a==null}"> 
                            <a class="navbar-brand" href="home">HE151243 - FLIGHT</a>
                        </c:if>
                    </a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="home">Home</a></li>
                        <li><a href="#about">Contact</a></li>
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


        <section class="banner" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="left-side">
                            <div class="logo">
                                <img src="img/logo.png" alt="Flight Template">
                            </div>
                            <div class="tabs-content">
                                <h4>Choose Your Direction:</h4>
                                <ul class="social-links">
                                    <li><a href="https://www.facebook.com/Share-Source-Code-Website-189970988225280/">Find us on <em>Facebook</em><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="http://youtube.com/">Our <em>YouTube</em> Channel<i class="fa fa-youtube"></i></a></li>
                                    <li><a href="http://instagram.com/">Follow our <em>instagram</em><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                            <div class="page-direction-button">
                                <a href="contact.html"><i class="fa fa-phone"></i>Contact Us Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 col-md-offset-1">
                        <section id="first-tab-group" class="tabgroup">
                            <div id="tab1">
                                <div class="submit-form">
                                    <h4>Đặt Vé Máy Bay</h4>
                                    <form id="form-submit" action="DsChuyenBay" method="get" >
                                        <input type="hidden" name="go" value="search">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <fieldset>
                                                    <label for="from">Điểm khởi hành:</label>
                                                    <select required name='from' onchange='this.form'>
                                                        <option value="">Chọn địa điểm...</option>
                                                        <option value="Hà Nội">Hà Nội</option>
                                                        <option value="Hải Phòng">Hải Phòng</option>
                                                        <option value="TP. Hồ Chí Minh">TP.HCM</option>
                                                        <option value="Đà Nẵng">Đà Nẵng</option>
                                                        <option value="Phú Quốc">Phú Quốc</option>
                                                        <option value="Cần Thơ">Cần Thơ</option>
                                                        <option value="Quy Nhơn">Quy Nhơn</option>
                                                        <option value="Điện Biên">Điện Biên</option>
                                                        <option value="Côn Đảo">Côn Đảo</option>
                                                        <option value="Nha Trang">Nha Trang</option>
                                                    </select>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-6">
                                                <fieldset>
                                                    <label for="to">Điểm đến:</label>
                                                    <select required name='to' onchange='this.form'>
                                                        <option value="">Chọn địa điểm...</option>
                                                        <option value="Hà Nội">Hà Nội</option>
                                                        <option value="Hải Phòng">Hải Phòng</option>
                                                        <option value="TP. Hồ Chí Minh">TP.HCM</option>
                                                        <option value="Đà Nẵng">Đà Nẵng</option>
                                                        <option value="Phú Quốc">Phú Quốc</option>
                                                        <option value="Cần Thơ">Cần Thơ</option>
                                                        <option value="Quy Nhơn">Quy Nhơn</option>
                                                        <option value="Điện Biên">Điện Biên</option>
                                                        <option value="Côn Đảo">Côn Đảo</option>
                                                        <option value="Nha Trang">Nha Trang</option>
                                                    </select>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12">
                                                <fieldset>
                                                    <label for="timeFrom">Ngày đi:</label>
                                                    <input name="timeFrom" type="text" class="form-control date" id="timeFrom" placeholder="Chọn ngày..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12" >
                                                <fieldset id="invoiceDetails" class="invoice status hidden">
                                                    <label for="timeReturn">Ngày về:</label>
                                                    <input name="timeReturn"  type="text" class="form-control date" id="timeReturn" placeholder="Chọn ngày..." onchange='this.form'>
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
                                                            <input type="checkbox" onclick="timeRe()" class="k-checkbox" id="chkInvoiceStatusActive" asp-for="InvoiceStatus" data-rel="invoiceDetails"  name="trip"  id="round" value="round" onchange='this.form'>
                                                        </div>
                                                        <!--                                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                                                                                                <label for="oneway" style="font-size: 10px">Một chiều</label>
                                                                                                                <input type="radio" name="trip" id="oneway" value="one-way" onchange='this.form.()'>
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
                </div>
            </div>
        </section>



        <div class="tabs-content" id="weather">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="section-heading">
                            <h2>Các hình thức thanh toán</h2>
                            <hr>
                            <div class="list-group">
                                <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h3 class="mb-1" style="color: #0b1e6f"><b>List group item heading</b></h3>
                                    </div>
                                    <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                </a>
                                <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h3 class="mb-1" style="color: #0b1e6f"><b>List group item heading</b></h3>
                                    </div>
                                    <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                </a>
                                <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h3 class="mb-1" style="color: #0b1e6f"><b>List group item heading</b></h3>
                                    </div>
                                    <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                </a>
                                <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h3 class="mb-1" style="color: #0b1e6f"><b>List group item heading</b></h3>
                                    </div>
                                    <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="wrapper">
                        <div class="col-md-6">
                            <div class="section-heading">
                                <h2>Cách đặt vé tại ABC</h2>
                                <hr>
                                <div class="list-group">
                                    <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h3 class="mb-1" style="color: #0b1e6f"><b>List group item heading</b></h3>
                                        </div>
                                        <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                    </a>
                                    <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h3 class="mb-1" style="color: #0b1e6f"><b>List group item heading</b></h3>
                                        </div>
                                        <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                    </a>
                                    <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h3 class="mb-1" style="color: #0b1e6f"><b>List group item heading</b></h3>
                                        </div>
                                        <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                    </a>
                                    <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                        <div class="d-flex w-100 justify-content-between">
                                            <h3 class="mb-1" style="color: #0b1e6f"><b>List group item heading</b></h3>
                                        </div>
                                        <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>












        <section id="most-visited">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-heading">
                            <h2>Most Visited Places</h2>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div id="owl-mostvisited" class="owl-carousel owl-theme">
                            <div class="item col-md-12">
                                <div class="visited-item">
                                    <img src="img/place-01.jpg" alt="">
                                    <div class="text-content">
                                        <h4>River Views</h4>
                                        <span>New York</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-md-12">
                                <div class="visited-item">
                                    <img src="img/place-02.jpg" alt="">
                                    <div class="text-content">
                                        <h4>Lorem ipsum dolor</h4>
                                        <span>Tokyo</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-md-12">
                                <div class="visited-item">
                                    <img src="img/place-03.jpg" alt="">
                                    <div class="text-content">
                                        <h4>Proin dignissim</h4>
                                        <span>Paris</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-md-12">
                                <div class="visited-item">
                                    <img src="img/place-04.jpg" alt="">
                                    <div class="text-content">
                                        <h4>Fusce sed ipsum</h4>
                                        <span>Hollywood</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-md-12">
                                <div class="visited-item">
                                    <img src="img/place-02.jpg" alt="">
                                    <div class="text-content">
                                        <h4>Vivamus egestas</h4>
                                        <span>Tokyo</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-md-12">
                                <div class="visited-item">
                                    <img src="img/place-01.jpg" alt="">
                                    <div class="text-content">
                                        <h4>Aliquam elit metus</h4>
                                        <span>New York</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-md-12">
                                <div class="visited-item">
                                    <img src="img/place-03.jpg" alt="">
                                    <div class="text-content">
                                        <h4>Phasellus pharetra</h4>
                                        <span>Paris</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-md-12">
                                <div class="visited-item">
                                    <img src="img/place-04.jpg" alt="">
                                    <div class="text-content">
                                        <h4>In in quam efficitur</h4>
                                        <span>Hollywood</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-md-12">
                                <div class="visited-item">
                                    <img src="img/place-01.jpg" alt="">
                                    <div class="text-content">
                                        <h4>Sed faucibus odio</h4>
                                        <span>NEW YORK</span>
                                    </div>
                                </div>
                            </div>
                            <div class="item col-md-12">
                                <div class="visited-item">
                                    <img src="img/place-02.jpg" alt="">
                                    <div class="text-content">
                                        <h4>Donec varius porttitor</h4>
                                        <span>Tokyo</span>
                                    </div>
                                </div>
                            </div>
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
                            <li><a href="https://www.facebook.com/Share-Source-Code-Website-189970988225280/"><i class="fa fa-facebook"></i></a></li>
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
        </script>
    </body>

    <!-- Mirrored from www.tooplate.com/templates/2093_flight/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 28 May 2018 10:39:55 GMT -->
</html>
