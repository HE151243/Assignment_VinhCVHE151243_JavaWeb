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
                            <li><a href="user">Booked</a></li>
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
                                                <h2>C??c chuy???n bay</h2>
                                                <p> Pellentesque quis turpis et lectus auctor gravida ut vel orci. Proin et tempus nunc. Proin sed justo neque. Donec et tempus ligula, et gravida elit. Vivamus vitae placerat metus.</p>
                                            </div>
                                        </div>
                    
                                        <div class="col-md-3">
                                            <div class="section-heading">
                                                <h2>T??y Ch???n</h2>
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
                                                    <td style="padding-left: 30px"><p>Ng??y bay: <fmt:formatDate pattern="dd-MM-yyyy" value="${cb.dateFrom}"/></p></td>
                                                </tr>
                                                <tr>
                                                    <td><p><img src="${hb.logo}" style="max-width: 40px; margin: 0"></p></td>
                                                    <td><p>SE1620A${cb.id}</p></td>
                                                    <td style="padding-left: 30px"><p>${cb.timeFrom} - ${cb.timeTo}</p></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3"><p>M??y bay: ${mb.getTenMayBay()} ${mb.getMaMayBay()}  </p></td>
                                                </tr>

                                                <c:set var="a" value="${cbr}"></c:set>
                                                <c:if test="${a!=null}">
                                                    <tr>
                                                        <td colspan="2"><p>${cbr[2]} <i class='fas fa-arrow-circle-right' style="font-size: 15px"></i> ${cbr[3]}</p></td>
                                                        <td style="padding-left: 30px"><p>Ng??y bay: <fmt:parseDate pattern="yyyy-MM-dd" value="${cbr[6]}" var="date"/> 
                                                                <fmt:formatDate pattern="dd-MM-yyyy" value="${date}"/></p></td>
                                                    </tr>
                                                    <tr>
                                                        <td><p><img src="${hbr.logo}" style="max-width: 40px; margin: 0"></p></td>
                                                        <td><p>SE1620A${cbr[0]}</p></td>
                                                        <td style="padding-left: 30px"><p>${cbr[4]} - ${cbr[5]}</p></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3"><p>M??y bay: ${mbr.getTenMayBay()} ${mbr.getMaMayBay()}  </p></td>
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
                                                <td><p>V?? ng?????i l???n</p></td>
                                                <td style="padding: 0 20px"><p> x${NL}=</p></td>
                                                <td style="padding: 0 5px; text-align: right"><p><fmt:formatNumber type="number" maxFractionDigits="3" value="${cbr==null? NL*cb.price*1000 : NL*(cb.price+cbr[7])*1000 }"></fmt:formatNumber><u>??</u></p></td>
                                            </tr>
                                            <c:set var="te" value="${TE}"/>
                                            <c:if test="${te > 0}">
                                                <tr>
                                                    <td><p>V?? tr??? em</p></td>
                                                    <td style="padding: 0 20px"><p> x${TE}=</p></td>
                                                    <td style="padding: 0 5px; text-align: right"><p><fmt:formatNumber type="number" maxFractionDigits="3" value="${cbr==null? TE*cb.price*75/100*1000 : NL*(cb.price+cbr[7])*75/100*1000}"></fmt:formatNumber><u>??</u></p></td>
                                                </tr>
                                            </c:if>
                                            <c:set var="eb" value="${EB}"/>
                                            <c:if test="${eb > 0}">
                                                <tr>
                                                    <td><p>V?? em b??</p></td>
                                                    <td style="padding: 0 20px"><p> x${EB}=</p></td>
                                                    <td style="padding: 0 5px; text-align: right"><p><fmt:formatNumber type="number" maxFractionDigits="3" value="${cbr==null? EB*cb.price*50/100*1000 : NL*(cb.price+cbr[7])*50/100*1000}"></fmt:formatNumber><u>??</u></p></td>
                                                </tr>
                                            </c:if>
                                            <c:set var="totalPrice" value="${NL*(cb.price+cbr[7])+TE*(cb.price+cbr[7])*75/100+EB*(cb.price+cbr[7])*50/100}"/>
                                            <tr>
                                                <td colspan="2" style="padding:"><p>T???ng gi?? v??</p></td>
                                                <td style="padding:0 5px; text-align: right"><p style="color: red"><fmt:formatNumber type="number" maxFractionDigits="3" value="${totalPrice*1000}"></fmt:formatNumber><u>??</u></p></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="col-md-12 datve">
                                <table>                                   
                                    <tbody>
                                        <tr>
                                            <td colspan="4"><p><b>H??? v?? t??n ng?????i bay</b>(vd: Nguy???n V??n A)</p></td>
                                        </tr>
                                        <c:forEach begin="1" end="${NL}">
                                            <tr>
                                                <td>
                                                    <p><select name="gt-NL" onchange='this.form' style="font-size: 15px; width: 100%">
                                                            <option value="Anh">Anh</option>
                                                            <option value="Ch???">Ch???</option>
                                                            <option value="??ng">??ng</option>
                                                            <option value="B??">B??</option>
                                                        </select></p>
                                                </td>
                                                <td colspan="3" style="padding-left: 20px">
                                                    <p><input style="font-size: 15px; width: 125%" type="text" placeholder="Nh???p h??? t??n..." name="nlName" required="" onchange='this.form'></p>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                        <c:set var="te" value="${TE}"/> <!--N???u c?? tr??? em-->
                                        <c:if test="${te > 0}">
                                            <c:forEach begin="1" end="${TE}">
                                                <tr>
                                                    <td>
                                                        <p><select  name="gt-TE" onchange='this.form' style="font-size: 15px; width: 100%">
                                                                <option value="Tr??? em trai">Tr??? em trai</option>
                                                                <option value="Tr??? em g??i">Tr??? em g??i</option>
                                                            </select></p>
                                                    </td>
                                                    <td colspan="3" style="padding-left: 20px">
                                                        <p><input style="font-size: 15px; width: 125%" type="text" placeholder="Nh???p h??? t??n..." name="teName" required="" onchange='this.form'></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <p>Ng??y sinh:</p>
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

                                        <c:set var="eb" value="${EB}"/><!--N???u c?? em b??-->
                                        <c:if test="${eb > 0}">
                                            <c:forEach begin="1" end="${EB}">
                                                <tr>
                                                    <td>
                                                        <p><select  name="gt-EB" onchange='this.form' style="font-size: 15px; width: 100%">
                                                                <option value="Em b?? trai">Em b?? trai</option>
                                                                <option value="Em b?? g??i">Em b?? g??i</option>
                                                            </select></p>
                                                    </td>
                                                    <td colspan="3" style="padding-left: 20px">
                                                        <p><input style="font-size: 15px; width: 125%" type="text" placeholder="Nh???p h??? t??n..." name="ebName" required="" onchange='this.form'></p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <p>Ng??y sinh:</p>
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
                                            <td colspan="2"><p><b>Th??ng tin li??n h???</b></p></td>                                          
                                        </tr>
                                        <tr>
                                            <td colspan="2"><p style="color: red"><b>${mess}</b></p></td>                                          
                                        </tr>
                                        <tr>
                                            <td><p>T??n li??n h???</p></td>
                                            <td style="padding-left: 30px">
                                                <p><input style="font-size: 15px; width: 150%" type="text" placeholder="Nh???p t??n li??n h???..." name="tenNDV" required="" onchange='this.form'></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><p>??i???n tho???i</p></td>
                                            <td style="padding-left: 30px">
                                                <p><input style="font-size: 15px; width: 150%" type="text" placeholder="Nh???p s??? ??i???n tho???i..." name="sdtNDV" required="" onchange='this.form'></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><p>Email</p></td>
                                            <td style="padding-left: 30px">
                                                <p><input style="font-size: 15px; width: 150%" type="text" placeholder="Nh???p email..." name="emailNDV" required="" onchange='this.form'></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><p>?????a ch???</p></td>
                                            <td style="padding-left: 30px">
                                                <p><input style="font-size: 15px; width: 150%" type="text" placeholder="Nh???p ?????a ch???..." name="diachiNDV" required="" onchange='this.form'></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><p>CCCD</p></td>
                                            <td style="padding-left: 30px">
                                                <p><input style="font-size: 15px; width: 150%" type="text" placeholder="Nh???p CCCD..." name="cccdNDV" required="" onchange='this.form'></p>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="col-md-12" style="text-align: center">
                                <button type="submit" class="btn btn-primary bt-book">?????t V??</button>
                            </div>
                        </form>

                        <!--                        <div class="col-md-12" style="text-align: center">
                                                    <form>
                                                        <button type="submit" class="btn btn-primary bt-book">Ch???n l???i chuy???n bay</button>
                                                    </form>
                                                </div>-->

                    </div>



                    <div class="col-md-3 section-heading" style="font-size: 1.5rem">
                        <div class="section-heading">
                        </div>
                        <section id="first-tab-group" class="tabgroup" style="margin-top: 10px; background-color: rgba(250, 250, 250, 0.95);">
                            <div id="tab1">
                                <div class="submit-form">

                                    <h4 style="text-align: center">?????t V?? Kh??c</h4>
                                    <form id="form-submit" action="DsChuyenBay" method="get">
                                        <input hidden="" name="go" value="search">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <fieldset>
                                                    <label for="from">??i???m kh???i h??nh:</label>
                                                    <select required name='from' onchange='this.form'>
                                                        <option value="">Ch???n ?????a ??i???m...</option>
                                                        <option value="H?? N???i">H?? N???i</option>
                                                        <option value="H???i Ph??ng">H???i Ph??ng</option>
                                                        <option value="TP. H??? Ch?? Minh">TP.HCM</option>
                                                        <option value="???? N???ng">???? N???ng</option>
                                                        <option value="Ph?? Qu???c">Ph?? Qu???c</option>
                                                        <option value="C???n Th??">C???n Th??</option>
                                                        <option value="Quy Nh??n">Quy Nh??n</option>
                                                        <option value="??i???n Bi??n">??i???n Bi??n</option>
                                                        <option value="C??n ?????o">C??n ?????o</option>
                                                        <option value="Nha Trang">Nha Trang</option>
                                                    </select>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-6">
                                                <fieldset>
                                                    <label for="to">??i???m ?????n:</label>
                                                    <select required name='to' onchange='this.form'>
                                                        <option value="">Ch???n ?????a ??i???m...</option>
                                                        <option value="H?? N???i">H?? N???i</option>
                                                        <option value="H???i Ph??ng">H???i Ph??ng</option>
                                                        <option value="TP. H??? Ch?? Minh">TP.HCM</option>
                                                        <option value="???? N???ng">???? N???ng</option>
                                                        <option value="Ph?? Qu???c">Ph?? Qu???c</option>
                                                        <option value="C???n Th??">C???n Th??</option>
                                                        <option value="Quy Nh??n">Quy Nh??n</option>
                                                        <option value="??i???n Bi??n">??i???n Bi??n</option>
                                                        <option value="C??n ?????o">C??n ?????o</option>
                                                        <option value="Nha Trang">Nha Trang</option>
                                                    </select>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12">
                                                <fieldset>
                                                    <label for="timeFrom">Ng??y ??i:</label>
                                                    <input name="timeFrom" type="text" class="form-control date" id="timeFrom" placeholder="Ch???n ng??y..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12">
                                                <fieldset id="invoiceDetails" class="invoice status hidden">
                                                    <label for="timeReturn">Ng??y v???:</label>
                                                    <input name="timeReturn"  type="text" class="form-control date" id="timeReturn" placeholder="Ch???n ng??y..."  onchange='this.form'>
                                                </fieldset>
                                            </div>

                                            <div class="col-md-12">
                                                <fieldset>
                                                    <label for="NguoiLon">Ng?????i l???n</label>
                                                    <input name="NguoiLon" type="number" class="form-control SoNguoi" id="NguoiLon" placeholder="S??? ng?????i..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12">
                                                <fieldset>
                                                    <label for="TreEm">Tr??? em</label>
                                                    <input name="TreEm" type="number" class="form-control SoNguoi" id="TreEm" placeholder="S??? ng?????i..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>
                                            <div class="col-md-12">
                                                <fieldset>
                                                    <label for="EmBe">Em b??</label>
                                                    <input name="EmBe" type="number" class="form-control SoNguoi" id="EmBe" placeholder="S??? ng?????i..." required="" onchange='this.form'>
                                                </fieldset>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="radio-select">
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <label for="round" >Kh??? h???i</label>
                                                            <input type="checkbox" class="k-checkbox" onclick="timeRe()" id="chkInvoiceStatusActive" asp-for="InvoiceStatus" data-rel="invoiceDetails" name="trip" id="round" value="round" onchange="this.form">
                                                        </div>
                                                        <!--                                                    <div class="col-md-6 col-sm-6 col-xs-6">
                                                                                                                <label for="oneway" style="font-size: 11px">M???t chi???u</label>
                                                                                                                <input type="radio" name="trip" id="oneway" value="one-way" required="required"onchange='this.form.()'>
                                                                                                            </div>-->
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <fieldset>
                                                    <button type="submit" id="form-submit" class="btn">T??m ki???m</button>
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
                    <th class="th-sm">S??? th??? t???
                    </th>
                    <th class="th-sm">H??ng bay
                    </th>                   
                    <th class="th-sm">Th???i gian ??i
                    </th>
                    <th class="th-sm">Th???i gian ?????n
                    </th>
                    <th class="th-sm">Ng??y kh???i h??nh
                    </th>
                    <th class="th-sm">Gi?? v??
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
    <td>${cb.price}00??</td>
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
