<%@ page import="model.Service" %>
<%@ page import="model.Master" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Apointment" %><%--
  Created by IntelliJ IDEA.
  User: And
  Date: 30.11.2019
  Time: 2:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Barber</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->

    <style>
        .table_col {
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
            font-size: 14px;
            width: 330px;
            background: white;
            text-align: left;
            border-collapse: collapse;
            color: #3E4347;
        }
        .table_col th:first-child, .table_col td:first-child {
            color: #F5F6F6;
            border-left: none;

        }
        .table_col th {
            font-weight: normal;
            border-bottom: 2px solid #F5E1A6;
            border-right: 20px solid white;
            border-left: 20px solid white;
            padding: 8px 10px;
        }
        .table_col td {
            border-right: 20px solid white;
            border-left: 20px solid white;
            padding: 12px 10px;
            color: #8b8e91;
        }

        #a{
           text-align: center;
        }
    </style>

</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<%List<Service> allService = (List<Service>) request.getSession().getAttribute("allService");%>
<%List<Master> allMaster = (List<Master>) request.getSession().getAttribute("allMaster");%>
<%List<Apointment> allAppointment = (List<Apointment>) request.getAttribute("allAppointment");%>
<header>
    <div class="header-area ">
        <div id="sticky-header" class="main-header-area">
            <div class="container-fluid p-0">
                <div class="row align-items-center no-gutters">
                    <div class="col-xl-3 col-lg-3">
                        <div class="logo-img">
                            <a href="index.jsp">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="main-menu  d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a class="active" href="index.jsp">home</a></li>
                                    <li><a href="about.jsp">About</a></li>
                                    <li><a href="service.jsp">service</a></li>
                                    <li><a class="popup-with-form" href="#test-form2">login </a></li>
                                    <li><a href="#">blog <i class="ti-angle-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="blog.jsp">blog</a></li>
                                            <li><a href="single-blog.jsp">single-blog</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">pages <i class="ti-angle-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="elements.jsp">elements</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                        <div class="book_room">
                            <div class="book_btn d-none d-lg-block">
                                <a class="popup-with-form" href="#test-form">Make an Appointment</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="slider_area">
    <div class="single_slider d-flex align-items-center justify-content-center slider_bg_1 overlay2">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="slider_text text-center">
                        <img src="img/banner/barber_text.png" alt="">
                        <h3></h3>
                        <p>Please reserve another time,
                            your chosen time is taken</p><hr>
                        <div id="a">
                            <table class="table_col">
                            <colgroup>
                                <col style="background:#C7DAF0;">
                            </colgroup>
                                <tr>
                                    <th>Occupation hour</th>

                                </tr>
                                <tr>
                                    <td>from</td>
                                    <td>before</td>
                                </tr>

                            <% for (Apointment apointment : allAppointment) { %>
                            <tr>
<%--                                <td>Occupation hour</td>--%>
                                <td><%=apointment.getTime()%></td>
                                <td><%=apointment.getTime().plusMinutes(30)%></td>
                            </tr>
                            <% } %>
                        </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<form id="test-form" class="white-popup-block mfp-hide" action="/addAppointment" method="post">
    <div class="popup_box ">
        <div class="popup_inner">
            <h3>Make an Appointment</h3>
            <form action="#">
                <div class="row">
                    <div class="col-xl-6 col-md-6">
                        <input id="datepicker" name="date" placeholder="Date">
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <input id="timepicker" placeholder="time" name="time">
                    </div>
                    <div class="col-xl-6 col-md-6">

                        <select class="form-select wide" id="default-select" class="" name="service_id">

                            <option data-display="Choose services">Choose services</option>
                            <%for (Service service : allService) { %>

                            <option name="service_id" value="<%=service.getId()%>"><%=service.getName()%>
                            </option>
                            <% }%>

                            <%--                            <option value="2">Choose services 3</option>--%>
                            <%--                            <option value="3">Choose services 4</option>--%>
                        </select>
                    </div>

                    <div class="col-xl-6 col-md-6">
                        <select class="form-select wide" id="default-select" class="" name="master_id">

                            <option data-display="Choose Barbers">Choose Barbers</option>

                            <%
                                for (Master master : allMaster) {%>
                            <option value="<%=master.getId()%>" name="master_id"><%=master.getName()%>
                            </option>
                            <%--                            <option value="2">Ronky</option>--%>
                            <%--                            <option value="3">kalu</option>--%>

                            <% }%>
                        </select>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <input type="text" placeholder="name" name="name">
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <input type="text" placeholder="phoneNumber" name="phoneNumber">
                    </div>
                    <div class="col-xl-12">
                        <input type="email" placeholder="Your email" name="email">
                    </div>
                    <div class="col-xl-12">
                        <button type="submit" class="boxed-btn3">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</form>

<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/ajax-form.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/scrollIt.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/nice-select.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/gijgo.min.js"></script>

<!--contact js-->
<script src="js/contact.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>

<script src="js/main.js"></script>
<script>
    $('#datepicker').datepicker({
        iconsLibrary: 'fontawesome',
        format:'yyyy-mm-dd',
        disableDaysOfWeek: [0, 0],
        //     icons: {
        //      rightIcon: '<span class="fa fa-caret-down"></span>'
        //  }
    });
    $('#datepicker2').datepicker({
        iconsLibrary: 'fontawesome',
        icons: {
            rightIcon: '<span class="fa fa-caret-down"></span>'
        }

    });
    var timepicker = $('#timepicker').timepicker({
        format: 'HH:MM'
    });
</script>
</body>