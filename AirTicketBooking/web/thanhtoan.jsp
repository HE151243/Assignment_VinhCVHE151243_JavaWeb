<%-- 
    Document   : timKiem
    Created on : Mar 1, 2022, 10:30:58 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">

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
                        <c:if test="${a.status==1}">
                            <li><a href="Edit">Admin</a></li>
                            </c:if>
                            <c:if test="${a!=null}"> 
                            <li><a href="user">Booked</a></li>
                            <li><a href="home?go=logout">Logout</a></li>
                            </c:if>
                            <c:if test="${a==null}"> 
                            <li><a href="account?go=login">Login</a></li>
                            </c:if>

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
            <div class="container" >

                <div class="row" style="margin: 0 auto; width: 60%">
                    <div style="text-align: center"><h1><b>Thanh toán đơn hàng SE1620A${veDi}${veVe!=null ? "_" : ""}${veVe!=null ? veVe : ""}</b></h1></div>
                    <div style="width: 100%; ">
                        <section style="background-color: #eee; border-radius: 10px">
                            <div style="margin: 10px 10px 10px 20px;">
                                <h1 style="text-align: center"><b>Thông tin chuyến bay</b></h1>
                                <!--<h1>-->
                                <table>
                                    <tbody>
                                        <tr>
                                            <td><h3>Số tiền:</h3></td>
                                            <td style="padding-left: 30px"><h3><span style="color: red">${totalPrice}00đ</span></h3></td>
                                        </tr>
                                        <c:forEach begin="0" end="${fn:length(tenNL)-1}" varStatus="i">
                                            <tr>
                                                <td> <h3>${GTNL[i.index]}</h3> </td>
                                                <td style="padding-left: 30px"> <h3>${tenNL[i.index]}</h3> </td>
                                            </tr>
                                        </c:forEach>

                                        <c:set var="soTE" value="${fn:length(tenTE)}"></c:set>
                                        <c:if test="${soTE>0}"> <!-- Neu co tre em-->
                                            <c:forEach begin="0" end="${fn:length(tenTE)-1}" varStatus="i">
                                                <tr>
                                                    <td> <h3>${GTTE[i.index]}</h3> </td>
                                                    <td style="padding-left: 30px"> <h3>${tenTE[i.index]}</h3> </td>
                                                </tr>
                                                <tr>
                                                    <td> <h3></h3> </td>
                                                    <td style="padding-left: 30px"> <p>${dayTE[i.index]}/${monthTE[i.index]}/${yearTE[i.index]}</p> </td>
                                                </tr>
                                            </c:forEach>
                                        </c:if>

                                        <c:set var="soEB" value="${fn:length(tenEB)}"></c:set>
                                        <c:if test="${soEB>0}">                     <!--Neu co em be-->
                                            <c:forEach begin="0" end="${fn:length(tenEB)-1}" varStatus="i">
                                                <tr>
                                                    <td> <h3>${GTEB[i.index]}</h3> </td>
                                                    <td style="padding-left: 30px"> <h3>${tenEB[i.index]}</h3> </td>
                                                </tr>
                                                <tr>
                                                    <td> <h3></h3> </td>
                                                    <td style="padding-left: 30px"> <p>${dayEB[i.index]}/${monthEB[i.index]}/${yearEB[i.index]}</p> </td>
                                                </tr>
                                            </c:forEach>
                                        </c:if>
                                        <tr>
                                            <td><h3>Hành trình:</h3></td>
                                            <td style="padding-left: 30px"><h3>${cb.localFrom} <i class='fas fa-arrow-circle-right' style="font-size: 15px"></i> ${cb.localTo}</h3></td>
                                        </tr>

                                        <tr>
                                            <td><h3>Thời gian:</h3></td>
                                            <td style="padding-left: 30px"><h3>${cb.timeFrom} - ${cb.timeTo}</h3></td>
                                        </tr>
                                        <tr>
                                            <td><h3>Ngày bay:</h3></td>
                                            <td style="padding-left: 30px"><h3><fmt:formatDate pattern="dd-MM-yyyy" value="${cb.dateFrom}"/> </h3></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><h3><img src="${hb.logo}" style="max-width: 40px; margin: 0"> <span>&nbsp;&nbsp;&nbsp;&nbsp;SE1620A${cb.id}</span> </h3></td>
                                        </tr>
                                        <c:set var="a" value="${cbr[0]}"></c:set>
                                        <c:if test="${a!=null}">
                                            <tr>
                                                <td><h3>Chiều về: </h3></td>
                                                <td style="padding-left: 30px"><h3>${cbr[2]} <i class='fas fa-arrow-circle-right' style="font-size: 15px"></i> ${cbr[3]}</h3></td>
                                            </tr>
                                            <tr>
                                                <td><h3>Thời gian:</h3></td>
                                                <td style="padding-left: 30px"><h3>${cbr[4]} - ${cbr[5]}</h3></td>
                                            </tr>
                                            <tr>
                                                <td><h3>Ngày bay:</h3></td>
                                                <td style="padding-left: 30px"><h3><fmt:parseDate pattern="yyyy-MM-dd" value="${cbr[6]}" var="date"/> 
                                                        <fmt:formatDate pattern="dd-MM-yyyy" value="${date}"/></h3></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><h3><img src="${hbr.logo}" style="max-width: 40px; margin: 0"> <span>&nbsp;&nbsp;&nbsp;&nbsp;SE1620A${cbr[0]}</span> </h3></td>
                                            </tr>
                                        </c:if>
                                    </tbody>
                                </table>
                                <!--</h1>-->


                            </div>
                            <hr>
                            <div style="margin: 10px 10px 10px 20px;">
                                <h2 style="text-align: center"><b>Thanh toán qua chuyển khoản</b></h2>
                                <h3>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td>Ngân hàng</td>
                                                <td style="padding-left: 50px">:&nbsp;&nbsp;&nbsp;&nbsp; Vietcombank</td>
                                            </tr>
                                            <tr>
                                                <td>Tên tài khoản</td>
                                                <td style="padding-left: 50px">:&nbsp;&nbsp;&nbsp;&nbsp; HE151243</td>
                                            </tr>
                                            <tr>
                                                <td>Số tài khoản</td>
                                                <td style="padding-left: 50px">:&nbsp;&nbsp;&nbsp;&nbsp; 18711103</td>
                                            </tr>
                                            <tr>
                                                <td>Số tiền</td>
                                                <td style="padding-left: 50px">:&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: red"> ${totalPrice}00đ</span></td>
                                            </tr>
                                            <tr>
                                                <td>Ghi nội dung</td>
                                                <td style="padding-left: 50px">:&nbsp;&nbsp;&nbsp;&nbsp; SE1620A${veDi}${veVe!=null ? "_" : ""}${veVe!=null ? veVe : ""}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </h3>

                                <h4 style="color: red">Vui lòng ghi đúng thông tin chuyển khoản!</h4>
                            </div>
                        </section>
                    </div>


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


